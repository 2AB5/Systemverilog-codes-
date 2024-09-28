/*
19ECE347 - Assignment 3 - Labsheet#2
Module: top_arb
Description: Making use of clocking blocks to prevent it from going into race conditions. 

Author: Abinav 
create Date: 27/10/23
version: 1.0
*/


interface arb_if (input bit clk);

logic [1:0] grant, request; bit rst;
// Declare cb
clocking cb @(posedge clk);
output #2ps request;
input #1 grant;
endclocking
// Use cb 
modport TEST (clocking cb, output rst);
modport DUT (input request, rst, clk, output grant);
modport MONITOR (input request, grant, rst, clk);

endinterface


module test_arb(arb_if.TEST arbif);

initial begin
@arbif.cb;
arbif.cb.request <= 2'b01;
@arbif.cb;
$display ("@%0t: Grant = %b", $time, arbif.cb.grant); 
@arbif.cb;
$display("@%0t: Grant = %b", $time, arbif.cb.grant);
$finish;
end

endmodule


module top_cb;

logic [1:0] grant, request;
bit clk;
always #50 clk = ~clk;
arb_if arbif(clk);
DUT_arb al (arbif.DUT);
test_arb t1 (arbif.TEST);
monitor_arb m1 (arbif.MONITOR);
endmodule


module monitor_arb (arb_if.MONITOR arbif);

always 
@(posedge arbif.request[0]) 
begin 
$display ("@%0t: request [0] asserted", $time);
 @(posedge arbif.grant [0]);
 $display ("@%0t: grant [0] asserted", $time); 
end

always @(posedge arbif.request [1])
 begin 
$display ("@%0t: request [1] asserted", $time); 
@(posedge arbif.grant [1]); 
$display ("@%0t: grant [1] asserted", $time); 
end

endmodule


module DUT_arb (arb_if.DUT arbif);

      always @ (posedge arbif.clk or posedge arbif.rst)
      begin 
          if(arbif.rst)
             arbif.grant<='0;
          else if (arbif.request[0])
             arbif.grant<=2'b01; 
          else if (arbif.request[1])
             arbif.grant<=2'b10; 
          else
             arbif.grant<='0;
      end

endmodule
