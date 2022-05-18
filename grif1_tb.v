//NAME: Griffin, Faith Juliamae O. SECTION: S11

`timescale 1ns/1ps
module hdl_project1_behavior_tb();
	reg[3:0] t_input;
	wire t_F;
	integer i;
	hdl_project1_behavior dut(t_F, t_input[3], t_input[2], t_input[1], t_input[0]);
	
	initial
		begin
			t_input = 4'b0000;
			for (i=1; i<=16; i=i+1)
			begin
				#10 t_input = i;
			end
		end
	initial
		begin
			$display("Name: Griffin, Faith Juliamae O.");
			$display("Boolean Function: F = (AB' + A'B)(C+D')");
			$display("Verilog Model: Behavioral Model");
			$monitor("Time = %0d\t",$time, "Input_A = %b\tInput_B = %b\tInput_C = %b\tInput_D = %b\tOutput_F = %b", t_input[3], t_input[2], t_input[1], t_input[0], t_F);
			$dumpfile("grif1.vcd");
			$dumpvars();    
	end
endmodule