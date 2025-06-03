module s_box #(
    parameter CYCLES_PER_SEC = 50000000 //50 Mhz clock
) (
    input i_clk,
    input [7:0] i_address_in,
    output [7:0] o_data_out
);

sbox sbox_inst (
	.address (i_address_in),
	.clock (i_clk),
	.q (o_data_out)
);

endmodule