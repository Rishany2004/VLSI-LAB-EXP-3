module ha(a,b,s,c);
input a,b;
output s,c;
xor(s,a,b);
and(c,a,b);
endmodule
module fa(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
ha ha1(a,b,w1,w2);
ha ha2(w1,c,sum,w3);
or g1(carry,w3,w2);
endmodule
module multi4bit(a,b,p);
input [3:0]a,b;
output [7:0]p;
wire pph01,pph02,ppf03,ppf04,ppf05,ppf06,pph07,pph08,pph09,ppf10,ppf11,ppf12,ppf13,ppf14,ppf15,pph16,pph17,ppf18,ppf19,ppf20,ppf21,ppf22,ppf23,c1,c2,c3,c4,c5,c6,c7,c8,c9;
and g1(p[0],a[0],b[0]);
and g2(pph01,a[1],b[0]);
and g3(pph02,a[0],b[1]);
and g4(ppf03,a[2],b[0]);
and g5(ppf04,a[1],b[1]);
and g6(ppf05,a[3],b[0]);
and g7(ppf06,a[2],b[1]);
and g8(pph07,a[3],b[1]);
ha ha1(pph01,pph02,p[1],c1);
fa fa1(ppf03,ppf04,c1,pph09,c2);
fa fa2(ppf06,ppf05,c2,ppf11,c3);
ha ha2(pph07,c3,ppf13,ppf14);
and g9(pph08,a[0],b[2]);
and g10(ppf10,a[1],b[2]);
and g11(ppf12,a[2],b[2]);
and g12(ppf15,a[3],b[2]);
ha ha3(pph08,pph09,p[2],c4);
fa fa3(ppf10,ppf11,c4,pph17,c5);
fa fa4(ppf12,ppf13,c5,ppf19,c6);
fa fa5(ppf14,ppf15,c6,ppf21,ppf22);
and g13(pph16,a[0],b[3]);
and g14(ppf18,a[1],b[3]);
and g15(ppf20,a[2],b[3]);
and g16(ppf23,a[3],b[3]);
ha ha4(pph16,pph17,p[3],c7);
fa fa6(ppf18,ppf19,c7,p[4],c8);
fa fa7(ppf20,ppf21,c8,p[5],c9);
fa fa8(ppf22,ppf23,c9,p[6],p[7]);
endmodule





