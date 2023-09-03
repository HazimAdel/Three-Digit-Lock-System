module status ( status_sel ,Reset,clk , out );
input  status_sel,Reset,clk;
output out ;

dff1 df0(status_sel,Reset,clk,out);

endmodule 