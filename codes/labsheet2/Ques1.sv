
/*
19ECE347 - Assignment 3 - LabSheet#2
Module: top
Description:This top-level module instantiates and interconnects the components of an arbiter system. 
The system consists of an arbiter module (arbiter), a testbench module (arbiter_testbench),and a monitor module (arbiter_monitor). 
The arbiter system's primary function is to manage access between two competing requests by employing 
a straightforward priority-based arbitration scheme.
             
Inputs:
- clock: Input clock signal to synchronize the modules

Author: Abinav Balachandar
Create Date: 26/10/23
Version: 1.0

Change History: 
- Version 1.0: 26/10/23 - Initial version created
- Version 1.1: 27/10/23 - Added Arbiter monitor block

*/

// Interface design arb_if.sv
interface arb_if(input bit clk);
	logic [1:0] grant, request;
	bit rst;
endinterface

//Arbiter block design arb.sv
module arb_with_ifc(arb_if arbif);
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

//Arbiter TB design (arb_tb.sv)
module test_with_ifc (arb_if arbif);
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
module monitor(arb_if arbif);

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

//Top module (arb_top.sv)
module top;
bit clk;
always #50 clk = ~clk;
arb_if arbif(clk); 
arb_with_ifc a1(arbif);
test_with_ifc t1(arbif);
monitor m1(arbif);
endmodule :top