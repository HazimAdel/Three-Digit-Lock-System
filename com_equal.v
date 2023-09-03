module com_equal (p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,out);

input  p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11;
output out;

wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11, wire1 , wire2 , wire3 , wire4 , wire5 , wire6;

xnorgate x0(p0,q0,w0);
xnorgate x1(p1,q1,w1);
xnorgate x2(p2,q2,w2);
xnorgate x3(p3,q3,w3);
xnorgate x4(p4,q4,w4);
xnorgate x5(p5,q5,w5);
xnorgate x6(p6,q6,w6);
xnorgate x7(p7,q7,w7);
xnorgate x8(p8,q8,w8);
xnorgate x9(p9,q9,w9);
xnorgate x10(p10,q10,w10);
xnorgate x11(p11,q11,w11);

andgate3 a1(w0,w1,w2,wire1);
andgate3 a2(w3,w4,w5,wire2);
andgate3 a3(w6,w7,w8,wire3);
andgate3 a4(w9,w10,w11,wire4);

andgate3 b1(wire1,wire2,wire3,wire5);
andgate  b2 (wire4,wire5,out);


endmodule 