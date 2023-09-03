module mux1 (I1, I0, S, out);
input I1, I0, S;
output out;


assign out = (~S & I0) | (S & I1);

endmodule 