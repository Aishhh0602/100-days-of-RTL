module mux21_tb;
  reg a,b,sel;
  wire y;
  mux21 dut (a,b,sel,y);
  initial
    begin
      a=0;b=1; sel=0; sel=1;
      #10 sel=1; sel=0;
      #50 $finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
      
endmodule