module fa_tb;
  reg a,b,cin;
  wire s,cout;
  fa dut (a,b,cin,s,cout);
  initial
    begin
      a=0;b=0;cin=0;
      #10 a=0;b=0;cin=1;
       #10 a=0;b=1;cin=0;
       #10 a=0;b=1;cin=1;
       #10 a=1;b=0;cin=0;
       #10 a=1;b=0;cin=1;
       #10 a=1;b=1;cin=0;
       #10 a=1;b=1;cin=1;
      
      #100 $finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars;
    end
  
endmodule