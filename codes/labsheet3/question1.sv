

class packet;
bit[3:0] data;
bit[1:0] address;
bit[3:0] memory [3:0];

    function new();
        address = 0;
    for (int i = 0; i < 16; i++)
     begin
      memory[i] = i;
     end
    endfunction //new()

    function void WriteMem(input bit[1:0] mem_address, input bit[3:0] write_data);
    // WriteMem function
    memory[mem_address] = write_data;
    endfunction

    function bit[3:0] ReadMem(input bit[1:0] mem_address);
    // ReadMem function
    return memory[mem_address];
    endfunction

     task Display;
    // Display function
    $display("Data: %h, Address: %h", data, address);
    $display("Memory Contents:");
    for (int i = 0; i < 16; i++) begin
      $display("Memory[%0d] = %h", i, memory[i]);
    end
    endtask


endclass //className


module mymodule;
// Declare two handles pkt_h1 and pkt_h2 for the packet class
packet pkt_h1, pkt_h2;

initial begin
  // Create object pkt_h1
  pkt_h1 = new();
  
  // Print the statement "Before writing to memory"
  $display("Before writing to memory");
  
  // Read and print all the memory contents
  pkt_h1.Display();
  
  // Assign random values to data and address
  pkt_h1.data = $urandom_range(0, 16);  // Assign a random 4-bit value
  pkt_h1.address = $urandom_range(0, 4);  // Assign a random 2-bit value
  
  // Write the data to the memory
  pkt_h1.WriteMem(pkt_h1.address, pkt_h1.data);
  
  // Print the statement "After writing to memory"
  $display("After writing to memory");
  
  // Read and print all the memory contents again
  pkt_h1.Display();
end

// Display the value of data and address of pkt_h1
$display("Data and Address of pkt_h1 before duplication - Data: %h, Address: %h", pkt_h1.data, pkt_h1.address);

// Assign pkt_h1 to pkt_h2
pkt_h2 = pkt_h1;

// Display the values of data and address of pkt_h1 and pkt_h2
$display("Data and Address of pkt_h1 after duplication - Data: %h, Address: %h", pkt_h1.data, pkt_h1.address);
$display("Data and Address of pkt_h2 after duplication - Data: %h, Address: %h", pkt_h2.data, pkt_h2.address);

// Modify the values of data and address using handle pkt_h2
pkt_h2.data = $urandom_range(0, 16);  // Assign a random 4-bit value
pkt_h2.address = $urandom_range(0, 4);  // Assign a random 2-bit value

// Display the values of data and address of pkt_h1 and pkt_h2 after modification
$display("Data and Address of pkt_h1 after modification - Data: %h, Address: %h", pkt_h1.data, pkt_h1.address);
$display("Data and Address of pkt_h2 after modification - Data: %h, Address: %h", pkt_h2.data, pkt_h2.address);


endmodule 

