module storage (set,per_lock,com_less,selection_line);
input set,per_lock,com_less;
output selection_line;

wire not_per_lock;

invgate per (per_lock,not_per_lock);

andgate3 selection (set,com_less,not_per_lock,selection_line);

endmodule 