/* Module -  Associative array.sv
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 01/10/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	Update the associate array with random data based on the address stored in addr_q (you may use pop to get the address).
	Display the contents of the associate array using the ?foreach? loop
	Display the first index of the array by using associative array method ?first?
	Display the first element of the array
	Display the last index of the array by using associative array method ?last?
	Display the last element of the array

*/

module AssociativeArray;

    	int data_mem[int];    
	int addr_q[$];
	int i;
	int value;

initial begin

         repeat(10) begin
              addr_q.push_front($urandom);
         end
        foreach(addr_q[i]) 
                $display("\taddr_q[%0d] = %0d",i,addr_q[i]);

      // copy the address from queue to associative array
        $display(" stored address in associative arrays ");
        repeat(10) begin
                value=addr_q.pop_front();
                data_mem[i]=value;
                i++;
        end
        foreach(data_mem[i]) 
                $display("\tdata_mem[%0d] = %0d",i,data_mem[i]); 
        // find the first element of the associative array 
        data_mem.first(i);
        $display("\First entry is \t a_array[%0d] = %0d",i,data_mem[i]); 
        // find the last element of the associative array
        data_mem.last(i);
        $display("\last entry is \t a_array[%0d] = %0d",i,data_mem[i]);
	
	
end
endmodule
