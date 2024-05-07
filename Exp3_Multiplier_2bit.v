module ha(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule
module mux2bit(A,B,C);
input [1:0]A,B;
output [3:0]C;
wire W1,W2,W3,W4;
and g1(C[0],A[0],B[0]);
and g2(W1,A[0],B[1]);
and g3(W2,A[1],B[0]);
and g4(W3,A[1],B[1]);
ha ha1(W1,W2,C[1],W4);
ha ha2(W4,W3,C[3],C[2]);
endmodule

