module segdriver_status (status,a,b,c,d,e,f,g);
input status;
output a,b,c,d,e,f,g;

assign a = 1;
assign b = ~status;
assign c = ~status;
assign d = 0;
assign e = 0;
assign f = 0;
assign g = 1;

endmodule 