`default_nettype none
`timescale 1ps/1ps
module tb_module;
	reg [1:0] tb_in;
	wire tb_out;
	top_module tb(
		.in1(tb_in[0]),
		.in2(tb_in[1]),
		.out(tb_out)
	);
	initial begin
	$dumpfile("sim_output.vcd");
	$dumpvars(0, tb_module);
	tb_in = 2'b00;
	#50;
	$finish;
	end
	always begin
	#5 tb_in[0] = ~ tb_in[0];
	end
	always begin
	#10 tb_in[1] = ~ tb_in[1];
	end
endmodule
