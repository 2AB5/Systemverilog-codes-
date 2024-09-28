/* Module -  variableDec.sv
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 30/09/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	Declare variables to store the following types and initialize each with any value.
	2-state - 8 bit, 16 bit, 32 bit and 64 bit signed integer
	2-stae 32-bit unsigned integer
	Declare a dynamic array ?data_da? of int data type.
	Declare queues ?data_q? and ?addr_q? of int data type
	Declare associative array ?data_mem? of int data type and indexed with bit[7:0]

*/

module VariableDec ;
	
	byte bit8;  //byte
	shortint bit16; //ShortInt
 	int bit32; // int
	longint bit64; // long int
        
	int unsigned unsigned_32; //32bit unsigned integer

	int data_da[]; //declaration of dynamic array.

	int data_q[$];
	int addr_q[$]; // Queues

	int data_mem [7:0]; // assocative array 

	

initial begin


// 2 state signed and un-signed declaration & display.

	bit8 = -(4'b1111);
	bit16 =  10;
	bit32 = 4'b1110;
	bit64 = -10;

	$display("output 8bit   = %0d",bit8);
	$display("output 16bit    = %0d",bit16);
	$display("output 32bit    = %0d",bit32);
	$display("output 64bit    = %0d",bit64);

        unsigned_32 = 33;
	$display("Output Unsigned =%0d",unsigned_32);
 
end
endmodule



