/*
19ECE347 - Assignment 3 - LabSheet#2
Module: topM
Description:This top-level module instantiates and interconnects the components of an arbiter system. 
The system consists of an arbiter module (arbiter), a testbench module (arbiter_testbench),and a monitor module (arbiter_monitor). 
The arbiter system's primary function is to manage access between two competing requests by employing 
a straightforward priority-based arbitration scheme.
we will follow the same procedure but we will implement with modports. 
             
Inputs:
- clock: Input clock signal to synchronize the modules

Author: Abinav Balachandar
Create Date: 27/10/23
Version: 1.0

Change History: 
- Version 1.0: 27/10/23 - Initial version created

*/

//Interface with modports

interface arb_if(input bit clk);
	logic [1:0] grant, request;
	bit rst;
	
	modport TEST ( output request, rst ,input grant, clk);

	modport DUT ( input request, rst, clk, output grant);

	modport MONITOR ( input request, grant, rst, clk);
endinterface


//Arbeiter Model 

module arb_with_mp (arb_if.DUT arbif);
always @(posedge arbif.clk or posedge arbif.rst)
begin
if(arbif.rst)
  arbif.grant<='0;
else if (arbif.request[0])
  arbif.grant <= 2'b01;
else if (arbif.request[1])
  arbif.grant <= 2'b10;
else 
  arbif.grant <= '0;
end
endmodule

//Test bench using modports 
module test_with_mp (arb_if.TEST arbif);
initial begin
  @(posedge arbif.clk);
  arbif.request <= 2'b01;
  $display ("@%0t:", $time);
  repeat(2) @(posedge arbif.clk);
  if (arbif.grant != 2'b01)
  $display("@%0t: Error: grant!=2'b01",$time);
  //$finish - we can ignore this if we don't want it. 
 end
endmodule

//Arbiter monitor design (arb.monitor.sv)
module monitor(arb_if.MONITOR arbif);

always @(posedge arbif.request[0]) begin
 $display("@%0t: request[0] asserted",$time);
 @(posedge arbif.grant[0]);
 $display("@%0t: grant[0] asserted",$time);
end

always @(posedge arbif.request[1]) begin
 $display("@%0t: request[1] asserted",$time);
 @(posedge arbif.grant[1]);
 $display("@%0t: grant[1] asserted",$time);
end
endmodule

module topM;
logic[1:0] grant,request;
bit clk;
always #50 clk = ~clk;
arb_if arbif(clk); 
arb_with_mp a1(arbif.DUT);
test_with_mp t1(arbif.TEST);
monitor m1(arbif);
endmodule :topM