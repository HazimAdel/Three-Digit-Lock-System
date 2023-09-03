module circuit1(P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,reset,set,clk,unlock,lock,a,b,c,d,e,f,g,a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,as,bs,cs,ds,es,fs,gs,at,bt,ct,dt,et,ft,gt);
input reset,set,clk,unlock,lock,P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11 ;
output a,b,c,d,e,f,g,a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,as,bs,cs,ds,es,fs,gs,at,bt,ct,dt,et,ft,gt ;

wire storage,per_lock,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,trials1,trials0,com_less,com_equal;

andgate g0(trials1,trials0,per_lock);

com_less cmL(P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,com_less);

storage st(set,per_lock,com_less,storage);

com_equal cmE(P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,com_equal);

status_sel(per_lock,com_equal,set,unlock,status_out,status_sel);

//PASSCODE
PassCode pass(P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,storage,reset,clk,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11);

segdriver_PASSCODE n1(Q3,Q2,Q1,Q0,a,b,c,d,e,f,g);
segdriver_PASSCODE n2(Q7,Q6,Q5,Q4,a1,b1,c1,d1,e1,f1,g1);
segdriver_PASSCODE n3(Q11,Q10,Q9,Q8,a2,b2,c2,d2,e2,f2,g2);

//*************************************************************************************************************

//Status
status ( status_sel ,reset,clk , status_out );

segdriver_status state(status_out,as,bs,cs,ds,es,fs,gs);

//*************************************************************************************************************

//Trials

Trials t(set,lock,unlock,storage,status_sel,clk,reset,trials1,trials0);

segdriver_trials tr(trials1,trials0,at,bt,ct,dt,et,ft,gt);

//*************************************************************************************************************


endmodule 

