module segdriver_PASSCODE(n3,n2,n1,n0,a,b,c,d,e,f,g);
input n3,n2,n1,n0;
output a,b,c,d,e,f,g;

assign a = n2&~n1&~n0 | ~n3&~n2&~n1&n0;
assign b = n2&~n1&n0 | n2&n1&~n0;
assign c = ~n2&n1&~n0;
assign d = ~n2&~n1&n0 | n2&~n1&~n0 | n2&n1&n0;
assign e = n0 | n2&~n1;
assign f = ~n2&n1 | n1&n0 | ~n3&~n2&n0;
assign g = ~n3&~n2&~n1 | n2&n1&n0;

endmodule 