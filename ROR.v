`default_nettype none
module ASR (input wire [15:0] A,
           output wire [15:0] Y);

//First Byte
OR gate1(.A(A[0]), .B('b0), .Y(Y[15]));
OR gate2(.A(A[1]), .B('b0), .Y(Y[0]));
OR gate3(.A(A[2]), .B('b0), .Y(Y[1]));
OR gate4(.A(A[3]), .B('b0), .Y(Y[2]));

//Second Byte
OR gate5(.A(A[4]), .B('b0), .Y(Y[3]));
OR gate6(.A(A[5]), .B('b0), .Y(Y[4]));
OR gate7(.A(A[6]), .B('b0), .Y(Y[5]));
OR gate8(.A(A[7]), .B('b0), .Y(Y[6]));

//Third Byte
OR gate9(.A(A[8]), .B('b0), .Y(Y[7]));
OR gate10(.A(A[9]), .B('b0), .Y(Y[8]));
OR gate11(.A(A[10]), .B('b0), .Y(Y[9]));
OR gate12(.A(A[11]), .B('b0), .Y(Y[10]));

//Fourth Byte
OR gate13(.A(A[12]), .B('b0), .Y(Y[11]));
OR gate14(.A(A[13]), .B('b0), .Y(Y[12]));
OR gate15(.A(A[14]), .B('b0), .Y(Y[13]));
OR gate16(.A(A[15]), .B('b0), .Y(Y[14]));

endmodule
`default_nettype wire
