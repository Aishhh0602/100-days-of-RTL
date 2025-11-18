module mux_tb;
  reg a,b,c,d,s0,s1;
  wire y;
  mux41 dut (a,b,c,d,s0,s1);
  initial
    begin
      a=1; b=0; c=1; d=0; s0=1'b0; s1=1'b0;
      $display("The values at time=%0t are a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b",$time, a,b,c,d,s0,s1);
      
      #10 s0=1'b0; s1=1'b1;
       $display("The values at time=%0t are a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b",$time, a,b,c,d,s0,s1);
      #10 s0=1'b1; s1=1'b0;
      $display("The values at time=%0t are a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b",$time, a,b,c,d,s0,s1);
      #10 s0=1'b1; s1=1'b1;
      $display("The values at time=%0t are a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b",$time, a,b,c,d,s0,s1);
      #50 $finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule

      