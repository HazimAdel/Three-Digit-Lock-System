module Trials(set,lock,unlock,storage,status_sel,clk,reset,O1,O0);
input lock,unlock,storage,status_sel,clk,reset,set;
output O1,O0;
wire w0,w1,w2,not_p,not_s,S;

invgate inv2(storage,w0);
invgate inv3(status_sel,w1);

andgate g1(w0,w1,S);

inc_stay inc(set,unlock,lock,O1,O0,D1,D0);

mux1 mx2(D1, 0, S, m1);
mux1 mx3(D0, 0, S, m0);

dff1 df1(m1,reset,clk,O1);
dff1 df0(m0,reset,clk,O0);
endmodule 