//8:1 mux using 4:1 mux and 2:1 mux
 
module mux_81 (y,i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0);
  output y;
  input i0,i1,i2,i3,i4,i5,i6,i7;
  input s2,s1,s0;
  
  mux_41 m1 (y0,i0,i1,i2,i3,s1,s0);
  mux_41 m2 (y1,i4,i5,i6,i7,s1,s0);
  mux_21 m3 (y,y0,y1,s2);
endmodule


//Logic for 4:1 mux 
module mux_41 (
  output y0,
  input i0,i1,i2,i3,s1,s0
);
  wire w1,w2,a,b,c,d;
  
  not n1(w1,s1);
  not n2(w2,s0);
  
  and a1(a,w1,w2,i0);
  and a2(b,w1,s0,i1);
  and a3(c,s1,w2,i2);
  and a4(d,s1,s2,i3);
  
  or o1(y0,a,b,c,d);
endmodule


//Logic for 2:1 mux
module mux_21 (
  output y,
  input y0,y1,
  input s2
);
  wire w,e,f;
  
  not n3(w,s2);
  
  and a5 (e,w,y0);
  and a6 (f,s2,y1);
  
  or o2(y,e,f);
endmodule
  
  
