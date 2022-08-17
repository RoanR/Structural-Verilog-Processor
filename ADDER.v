`default_nettype none
module ADDER (input wire A,
             input wire B,
             input wire C_in,
             output wire Y
             output wire C_out);

//for the Sum
wire int_ab;
XOR gate_ab(.A(A), .B(B), .Y(int_ab));
XOR gate_cab(.A(int_ab), .B(C_in), .Y(Y));

//for the Carry
wire int_abc, wire int_abb;
AND gate_and_abc(.A(int_ab), .B(C_in), .Y(int_abc));
AND gate_and_ab(.A(A), .B(B), .Y(int_abb));
OR gate_or(.A(int_abc), .B(int_abb), .Y(C_out));

endmodule
`default_nettype wire