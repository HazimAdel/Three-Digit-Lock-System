module status_sel(per_lock,com_equal,set,unlock,status,out);
input per_lock,com_equal,set,unlock,status;
output out;


invgate inv0(per_lock,notper_lock);
invgate inv1(set,not_set);

andgate g0(unlock,com_equal,wire1);

mux1 mx0(wire1,status,not_set,m);
mux1 mx1(m, 0,notper_lock ,out);

endmodule 