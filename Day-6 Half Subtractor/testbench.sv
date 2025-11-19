module tb;
  reg a,b;
  wire d,bo;
  hs dut(a,b,d,bo);
  initial
    begin
      a=0; b=0;
      #10 $display("The values are a=%1b,b=%1b,d=%1b,bo=%1b",a,b,d,bo);
      #10 a=0; b=1;
      $display("The values are a=%1b,b=%1b,d=%1b,bo=%1b",a,b,d,bo);
      #10 a=1; b=0;
      $display("The values are a=%1b,b=%1b,d=%1b,bo=%1b",a,b,d,bo);
      #10 a=1; b=1;
      $display("The values are a=%1b,b=%1b,d=%1b,bo=%1b",a,b,d,bo);
      
      #30 $finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
      
      
