Experiment 3
SystemVerilog Data Types and Looping statements                                                                                              
AIM: 
To familiarize with the different data types and flow controls statements in SystemVerilog.
TOOLS USED:  ModelSim
Questions:
Variables Declarations
•	Declare variables to store the following types and initialize each with any value.
o	2-state - 8 bit, 16 bit, 32 bit and 64 bit signed integer
o	2-state 32-bit unsigned integer
•	Declare a dynamic array ‘data_da’ of int data type.
•	Declare queues ‘data_q’ and ‘addr_q’ of int data type
•	Declare associative array ‘data_mem’ of int data type and indexed with bit[7:0]

Usage of Variables
•	Allocate 10 memory locations for the dynamic array & initialize all the locations with some random values less than 25
o	Display the array
o	Call the array reduction method sum which returns the sum of all elements of the array and collect the return value to the variable result
o	Display the sum of elements, result
o	Sort the result and display the sorted array
•	Queues
o	Use methods including size, insert, delete, push_front, pop_front on data_q and display content of data_q after execution of each method.
o	Generate 10 random addresses using repeat loop and push them in to addr_q and display the value of addr_q
•	Associative array
o	Update the associate array with random data based on the address stored in addr_q (you may use pop to get the address).
o	Display the contents of the associate array using the ‘foreach’ loop
o	Display the first index of the array by using associative array method ‘first’
o	Display the first element of the array
o	Display the last index of the array by using associative array method ‘last’
o	Display the last element of the array
•	User defined type
o	Create a user define type to store the pixel values of an image
o	Create 5 pixels and initialize them with values corresponding to red, violet and pink. You may use the following link to find out intensity values for different colours
(https://a.atmos.washington.edu/~ovens/javascript/colorpicker.html)
o	Store the pixels in a packed array and display the values using foreach loops.
•	Enumerated types
o	Write code for any state machine using enumerated type for state names and display the state names. 
•	Strings
Define and initialize a string and use any 3 string methods and display the results. 

