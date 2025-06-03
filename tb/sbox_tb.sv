`timescale 1ns/1ps

module sbox_tb ();

s_box #(
    .CYCLES_PER_SEC(50000000)
) dut (
    .i_clk(clk),
    .i_address_in(i_address_in),
    .o_data_out(o_data_out)
);

property check_sbox_output;
    @(posedge clk) test
endproperty