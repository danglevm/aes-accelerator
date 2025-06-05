module sub_bytes #(
	//No. of cycles per second of wall clock time
	parameter CYCLES_PER_SEC = 50000000
)(
	input i_clk, 
	input [127:0] i_data_in,
	output [127:0] o_data_out
);

localparam num_sbox = 16;



/* instantiate all 16 s_box */
genvar i;
generate
	for (i = 0; i < num_sbox; i = i + 1) 
	begin: gen_sbox
		s_box sb (.i_clk(i_clk), 
		.i_address_in(i_data_in[(i*8 + 7) : (i*8)]), 
		.o_data_out(o_data_out[(i*8 + 7) : (i*8)]));
	end
endgenerate

endmodule