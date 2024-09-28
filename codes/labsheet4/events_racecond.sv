/*
 Events example 
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 5 labsheet#4
 Roll no - CB.EN.U4ECE20101
 Change history: 17/11/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
 */

event e1, e2;

initial begin
    $display("@%0t: 1: Before Trigger",$time);
    -> e1;
    wait (e2.triggered);
    $display("@%0t: 1: After Trigger",$time);
end

initial begin
    $display("@%0t: 2: Before Trigger", $time);
    -> e2;
    wait (e2.triggered);
    $display("@%0t: 2: After Trigger", $time);
end