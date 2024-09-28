 /*
19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 01/10/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	Define and initialize a string and use any 3 string methods and display the results. 
*/

module strings ();

string my_string = "My name is Arpit.";
string my_new_string;

initial begin
  $display ("My String = %s",my_string);

  // Assign new string of different size
  //my_string = "Du bist weltmister";
  //$display ("My String = %s",my_string);

  // Change to uppercase and assign to new string
  my_new_string = my_string.toupper();
  $display ("My New String = %s",my_new_string);

  // Get the length of sting
  $display ("Length of new string %0d",my_new_string.len());

  // Compare variable to another variable
  if (my_string.tolower() == my_new_string.tolower()) begin 
    $display("String Compare matches");
  end

  // Compare variable to variable
  if (my_string.toupper() == my_new_string) begin 
    $display("String Variable Compare matches");
  end
   $finish;
end

endmodule
