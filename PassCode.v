module PassCode (P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,selection_line,Reset,clk,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11);
input P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,selection_line,Reset,clk;
output Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11;

wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;


mux1 Mux0 (P0, Q0, selection_line, w0);
dff1 Part0 (w0,Reset,clk,Q0);

mux1 Mux1 (P1, Q1, selection_line, w1);
dff1 Part1 (w1,Reset,clk,Q1);

mux1 Mux2 (P2, Q2, selection_line, w2);
dff1 Part2 (w2,Reset,clk,Q2);

mux1 Mux3 (P3, Q3, selection_line, w3);
dff1 Part3 (w3,Reset,clk,Q3);

mux1 Mux4 (P4, Q4, selection_line, w4);
dff1 Part4 (w4,Reset,clk,Q4);

mux1 Mux5 (P5, Q5, selection_line, w5);
dff1 Part5 (w5,Reset,clk,Q5);

mux1 Mux6 (P6, Q6, selection_line, w6);
dff1 Part6 (w6,Reset,clk,Q6);

mux1 Mux7 (P7, Q7, selection_line, w7);
dff1 Part7 (w7,Reset,clk,Q7);

mux1 Mux8 (P8, Q8, selection_line, w8);
dff1 Part8 (w8,Reset,clk,Q8);

mux1 Mux9 (P9, Q9, selection_line, w9);
dff1 Part9 (w9,Reset,clk,Q9);

mux1 Mux10 (P10, Q10, selection_line, w10);
dff1 Part10 (w10,Reset,clk,Q10);

mux1 Mux11 (P11, Q11, selection_line, w11);
dff1 Part11 (w11,Reset,clk,Q11);

endmodule 