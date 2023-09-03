module inc_stay(set,unlock,lock,D1,D0,C1,C0);
input unlock,lock,set,D1,D0;
output C1,C0;


assign C1 = D1 | ~set & unlock & D0 ;


assign C0 = ~unlock & D0 | set & D0 | D0 & D1 | unlock & ~set & ~D0;


endmodule 