module segdriver_trials(D1,D0,a,b,c,d,e,f,g);
input D1,D0;
output a,b,c,d,e,f,g;

assign a = ~D1 & D0;
assign b = 0;
assign c = D1 & ~D0;
assign d = ~D1 & D0;
assign e = D0;
assign f = D1 | D0;
assign g = ~D1;

endmodule 