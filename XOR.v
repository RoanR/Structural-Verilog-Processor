`default_nettype none

module XOR (input wire A,
             input wire B,
             output wire Y);

wire internal, wire internalA, wire internalB;

NAND gate_nand_ab(.A(A), .B(B), .Y(internal));
NAND gate_nand_a(.A(A), .B(internal), .Y(internalA));
NAND gate_nand_b(.A(B), .B(internal), .Y(internalB));
NAND gate_nand_y(.A(internalA), .B(internalB), .Y(Y));

endmodule
`default_nettype wire