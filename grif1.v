//NAME: Griffin, Faith Juliamae O. SECTION: S11

`timescale 1ns / 1ps
module hdl_project1_behavior(F,A,B,C,D);
	input A,B,C,D; 
	output reg F;
	
	always @(A,B,C,D)
		begin
			F = (A&~B | ~A&B) & (C | ~D); //F = (AB' + A'B)(C+D')
		end
endmodule