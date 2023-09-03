module com_less(P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,F);
input P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11;
output F;
wire f0,f1,f2;

assign f0 = ~P3 | (~P2 & ~P1) ;
assign f1 = ~P7 | (~P6 & ~P5);
assign f2 = ~P11 | (~P10 & ~P9);

assign F = f0 & f1 & f2;

endmodule 
