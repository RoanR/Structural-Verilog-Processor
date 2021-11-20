`default_nettype none
module AND (input wire A,
             input wire B,
             output wire Y);

assign Y = A.B;

endmodule
`default_nettype wire
