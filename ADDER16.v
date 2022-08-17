`default_nettype none
module ADDER16 (input wire [15:0] A,
             input wire [15:0] B,
             input wire C_in,
             output wire [15:0] Y,
             output wire C_out);

wire [2:0] internal;

ADDER4 byte_1 (.A(A[3:0]), .B(B[3:0]), .C_in(C_in), .Y(Y[3:0]), .C_out(internal[0]));
ADDER4 byte_2 (.A(A[7:4]), .B(B[7:4]), .C_in(internal[0]), .Y(Y[7:4]), .C_out(internal[1]));
ADDER4 byte_3 (.A(A[11:8]), .B(B[11:8]), .C_in(internal[1]), .Y(Y[11:8]), .C_out(internal[2]));
ADDER4 byte_4 (.A(A[15:12]), .B(B[15:12]), .C_in(internal[2]), .Y(Y[15:12]), .C_out(C_out));

endmodule
`default_nettype wire