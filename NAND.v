`default_nettype none

module NAND (input wire A,
             input wire B,
             output wire Y);

wire internal;
AND gate_and(.A(A), .B(B), .Y(internal));
NOT gate_not(.A(internal), .Y(Y));

endmodule
`default_nettype wire
