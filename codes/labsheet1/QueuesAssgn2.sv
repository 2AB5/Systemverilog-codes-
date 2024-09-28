/* Module -  Queues Assgn2.sv
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 01/10/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	Use methods including size, insert, delete, push_front, pop_front on data_q and display content of data_q after execution of each method.
	Generate 10 random addresses using repeat loop and push them in to addr_q and display the value of addr_q


*/



module QueuesAssgn2;

	int data_q[$];
	int addr_q[$:11];
	int i;
	int j;
  int popfront;
initial begin

	data_q = {33,11,4,5};

	$display("\t Queue Size is %0d",data_q.size());

        // Delete operation
	data_q.delete(2);
	foreach(data_q[i])
	$display("\tdata_q[%0d] = %0d",i,data_q[i]);

	//Insert operation
	data_q.insert(2,25);
	foreach(data_q[i])
	$display("\tdata_q[%0d] = %0d",i,data_q[i]);

	//Push Front
	data_q.push_front(63);
	$display("\t Queue Size is %0d",data_q.size());
	foreach(data_q[i])
	$display("\tdata_q[%0d] = %0d",i,data_q[i]);

	//pop front
	 popfront = data_q.pop_front();
	$display("\tdata_q pop_front value is %0d",popfront);
	foreach(data_q[i])
	$display("\tdata_q[%0d] = %0d",i,data_q[i]);

	 // filling them with their index values for the second queue.
	for (int j = 0; j<10; j++) begin 
	  addr_q.push_front(j);
   	end
	$display("\taddr_q[%0d] = %0d",j, addr_q[j]);

end
endmodule
