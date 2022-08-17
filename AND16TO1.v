module AND16TO1 (input wire [15:0] A,
                input wire B,
                output wire [15:0] Y);

//First Byte
AND gate1(.A(A[0]), .B(B), .Y(Y[0]));
AND gate2(.A(A[1]), .B(B), .Y(Y[1]));
AND gate3(.A(A[2]), .B(B), .Y(Y[2]));
AND gate4(.A(A[3]), .B(B), .Y(Y[3]));

//Second Byte
AND gate5(.A(A[4]), .B(B), .Y(Y[4]));
AND gate6(.A(A[5]), .B(B), .Y(Y[5]));
AND gate7(.A(A[6]), .B(B), .Y(Y[6]));
AND gate8(.A(A[7]), .B(B), .Y(Y[7]));

//Third Byte
AND gate9(.A(A[8]), .B(B), .Y(Y[8]));
AND gate10(.A(A[9]), .B(B), .Y(Y[9]));
AND gate11(.A(A[10]), .B(B), .Y(Y[10]));
AND gate12(.A(A[11]), .B(B), .Y(Y[11]));

//Fourth Byte
AND gate13(.A(A[12]), .B(B), .Y(Y[12]));
AND gate14(.A(A[13]), .B(B), .Y(Y[13]));
AND gate15(.A(A[14]), .B(B), .Y(Y[14]));
AND gate16(.A(A[15]), .B(B), .Y(Y[15]));

endmodule
`default_nettype wire