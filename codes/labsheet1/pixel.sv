/* Module -  pixel.sv
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 01/10/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	Create a user define type to store the pixel values of an image
	Create 5 pixels and initialize them with values corresponding to red, violet and pink. You may use the following link to find out intensity values for different colours
	(https://a.atmos.washington.edu/~ovens/javascript/colorpicker.html)
	Store the pixels in a packed array and display the values using foreach loops.
*/
/*typedef struct {
	bit[23:0] arraypacked[4:0];
}
pixel_s;
*/
module pixel;
 typedef bit[23:0] arraypacked[4:0];
initial begin
	arraypacked element;
	element[0] = 24'hffff66; 
	element[1] = 24'h00ccff;
	element[2] = 24'h009900;
	element[3] = 24'h660066;
	element[4] = 24'hffffff;
	foreach(element[i])
	$display("\Element[%0d] = %0h",i,element[i]);


end
endmodule
