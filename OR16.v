`default_nettype none
module OR16 (input wire [15:0] A,
           input wire [15:0] B,
           output wire [15:0] Y);

//First Byte
OR gate1(.A(A[0]), .B(B[0]), .Y(Y[0]));
OR gate2(.A(A[1]), .B(B[1]), .Y(Y[1]));
OR gate3(.A(A[2]), .B(B[2]), .Y(Y[2]));
OR gate4(.A(A[3]), .B(B[3]), .Y(Y[3]));

//Second Byte
OR gate5(.A(A[4]), .B(B[4]), .Y(Y[4]));
OR gate6(.A(A[5]), .B(B[5]), .Y(Y[5]));
OR gate7(.A(A[6]), .B(B[6]), .Y(Y[6]));
OR gate8(.A(A[7]), .B(B[7]), .Y(Y[7]));

//Third Byte
OR gate9(.A(A[8]), .B(B[8]), .Y(Y[8]));
OR gate10(.A(A[9]), .B(B[9]), .Y(Y[9]));
OR gate11(.A(A[10]), .B(B[10]), .Y(Y[10]));
OR gate12(.A(A[11]), .B(B[11]), .Y(Y[11]));

//Fourth Byte
OR gate13(.A(A[12]), .B(B[12]), .Y(Y[12]));
OR gate14(.A(A[13]), .B(B[13]), .Y(Y[13]));
OR gate15(.A(A[14]), .B(B[14]), .Y(Y[14]));
OR gate16(.A(A[15]), .B(B[15]), .Y(Y[15]));


endmodule
`default_nettype wire
