`default_nettype none
module NOT (input wire A,
             output wire Y);

assign Y = ~A;

endmodule
`default_nettype wire
