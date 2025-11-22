module fs_tb;
  reg a,b,bin;
  wire d,bout;
  fs dut (a,b,bin,d,bout);
  initial
    begin
      a=0;b=0;bin=0;
      #10 a=0;b=0;bin=1;
       #10 a=0;b=1;bin=0;
       #10 a=0;b=1;bin=1;
       #10 a=1;b=0;bin=0;
       #10 a=1;b=0;bin=1;
       #10 a=1;b=1;bin=0;
       #10 a=1;b=1;bin=1;
      
      #100 $finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars;
    end
  
endmodule
