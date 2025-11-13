//2:1 mux design code

module mux21 (a,b,sel,y);
  input a,b,sel;
  output reg y;
  always@(*)
    if(sel==1)
      y=b;
  else
    y=a;
 
      
endmodule