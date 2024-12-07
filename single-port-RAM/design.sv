// Single Port RAM design 

module single_port_ram(
  input [7:0] data, // ip data
  input [5:0] addr, // address
  input we, //enable
  input clk, //clock
  output [7:0] q //op data
);
  
  reg [7:0] ram [63:0];
  reg [5:0] addr_reg;
  
  always @ (posedge clk)
    begin
      if(we)
        ram[addr] <= data;
      else
        addr_reg <= addr;
    end
  
  assign q = ram[addr_reg];
  
endmodule
