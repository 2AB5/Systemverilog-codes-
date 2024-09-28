/* Module -  variableDec.sv
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 30/09/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	Allocate 10 memory locations for the dynamic array & initialize all the locations with some random values less than 25
o	Display the array
o	Call the array reduction method sum which returns the sum of all elements of the array and collect the return value to the variable result
o	Display the sum of elements, result
o	Sort the result and display the sorted array

*/

module DynArray;

int data_da[];
int result;

initial begin

	data_da = new[10]; // adding 10 elements to data_da.

	for (int i = 0; i<10; i++) begin  // filling them with their index values.
	  data_da[i] = i;
   	end
	foreach(data_da[i])   
	$display("\td_array[%0d] = %0d",i, data_da[i]); // displaying each value.

	result = data_da.sum(); 
    	$display("Sum = \t%0d",result); //caluculating the sum and printing it.

	data_da = new[11](data_da);
	data_da[10] = 2; // 2 to the last element to show sorting operation.
	$display("before:\t %p",data_da);
	data_da.sort();
	$display("After :\t %p",data_da);  // using .sort to sort and displaying it.
   end

endmodule

