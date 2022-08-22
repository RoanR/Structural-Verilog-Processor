`default_nettype none
module SHIFT (input wire [15:0] A,
             input wire [1:0] op,
             input wire C_in,
             output wire [15:0] Y,
             output wire C_out);

//operations for no shift          
wire [15:0] nil; 
wire [1:0] cc;
wire nil_result;
NOT gate_not1(.A(op[0]), .Y(cc[0]));
NOT gate_not2(.A(op[1]), .Y(cc[1]));
AND gate_and1(.A(cc[0]), .B(cc[1]), .Y[nil_result]);
AND16TO1 gate_filter1(.A(A), .B(nil_result), .Y(nil));

//operations for ASR
wire [15:0] asr;
wire asr_result;
ASR gate_asr(.A(A), .Y(asr));
AND gate_and2(.A(op[1]), .B(cc[0]), .Y(asr_result));
AND16TO1 gate_filter2(.A(asr), .B(asr_result), .Y(asr));

//operations for ROR
wire [15:0] ror;
wire ror_result;
ROR gate_ror(.A(A), .Y(ror));
AND gate_and3(.A(op[0]), .B(cc[1]), .Y(ror_result));
AND16TO1 gate_filter3(.A(ror), .B(ror_result), .Y(ror));

//operations for RRC
wire [15:0] rrc;
wire rrc_result; //control
wire rrc_carry; //carry out 
RRC gate_rrc(.A(A), .C_in(C_in) .Y(rrc), .C_out(rrc_carry));
AND gate_and4(.A(op[1]), .B(op[0]), .Y(rrc_result));
AND16TO1 gate_filter4(.A(rrc), .B(rrc_result), .C_in(C_in), .Y(rrc));
//carry calculations for RRC 
wire carry_internal, carry_internal2, carry_internal3;
NOT gate_not(.A(rrc_result), .Y(carry_internal));
AND gate_and5(.A(C_in), .B(carry_internal), .Y(carry_internal2));
AND gate_and6(.A(rrc_carry), .B(rrc_result), .Y(carry_internal3));
OR gate_or4(.A(carry_internal2), .B(carry_internal3), .Y(C_out));

wire [15:0] internal;
wire [15:0] internal2;

OR16 gate_or(.A(nil), .B(asr), .Y(internal));
OR16 gate_or1(.A(ror), .B(rrc), .Y(internal2));
OR16 gate_or3(.A(internal), .B(internal2), .Y(Y))

endmodule
`default_nettype wire