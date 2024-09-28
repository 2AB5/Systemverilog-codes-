/*
 Module - Fork_Join ; Fork_Join_any ; Fork_Join_none 
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 5 labsheet#4
 Roll no - CB.EN.U4ECE20101
 Change history: 17/11/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
 Descrpition:
    Aim to implement fork_join ; Fork_join_any and fork_join_none
*/

//Fork_Join
initial begin

    $display("@%0t: Start Fork_Join Example",$time);
#10 $display("@%0t: Sequential after #10", $time);

fork 
     $display("@%0t: Parallel Start", $time);
 #50 $display("@%0t: Parallel After #50", $time);
 #10 $display("@%0t: Parallel After #10", $time);
begin
 #30 $display("@%0t: Sequential After #30", $time);
 #10 $display("@%0t: Sequential After #10", $time);
end
join
$display("@%0t: After Join", $time);
#80 $display("@%0t: Finish After #80",$time);

end

//Fork_join_none
initial begin

    $display("@%0t: Start Fork_Join Example",$time);
#10 $display("@%0t: Sequential after #10", $time);

fork 
     $display("@%0t: Parallel Start", $time);
 #50 $display("@%0t: Parallel After #50", $time);
 #10 $display("@%0t: Parallel After #10", $time);
begin
 #30 $display("@%0t: Sequential After #30", $time);
 #10 $display("@%0t: Sequential After #10", $time);
end
join_none
$display("@%0t: After Join", $time);
#80 $display("@%0t: Finish After #80",$time);

end

//Fork_join_any
initial begin

    $display("@%0t: Start Fork_Join Example",$time);
#10 $display("@%0t: Sequential after #10", $time);

fork 
     $display("@%0t: Parallel Start", $time);
 #50 $display("@%0t: Parallel After #50", $time);
 #10 $display("@%0t: Parallel After #10", $time);
begin
 #30 $display("@%0t: Sequential After #30", $time);
 #10 $display("@%0t: Sequential After #10", $time);
end
join_any
$display("@%0t: After Join", $time);
#80 $display("@%0t: Finish After #80",$time);

end