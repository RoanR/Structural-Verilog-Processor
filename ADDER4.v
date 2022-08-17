`default_nettype none
module ADDER4 (input wire [3:0] A,
             input wire [3:0] B,
             input wire C_in,
             output wire [3:0] Y,
             output wire C_out);

wire [2:0] internal;

ADDER bit_1(.A(A[0]), .B(B[0]), .C_in(C_in), .Y(Y[0]), .C_out(internal[0]));
ADDER bit_2 (.A(A[1]), .B(B[1]), .C_in(internal[0]), .Y(Y[1]), .C_out(internal[1]));
ADDER bit_3 (.A(A[2]), .B(B[2]), .C_in(internal[1]), .Y(Y[2]), .C_out(internal[2]));
ADDER bit_4 (.A(A[3]), .B(B[3]), .C_in(internal[2]), .Y(Y[3]), .C_out(C_out));

endmodule
`default_nettype wire