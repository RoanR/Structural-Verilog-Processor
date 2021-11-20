`default_nettype none
module OR (input wire A,
           input wire B,
           output wire Y);

wire in_A;
wire in_B;
NAND nand1(.A(A), .B(A), .Y(in_A));
NAND nand1(.A(B), .B(B), .Y(in_B));
NAND nand3(.A(in_A), .B(in_B), .Y(Y));

endmodule
`default_nettype wire
