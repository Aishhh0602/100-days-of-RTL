//Testbench

module tb;
  
  reg i0,i1,i2,i3,i4,i5,i6,i7;
  reg s2,s1,s0;
  wire y;
  
  mux_81 dut (y,i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0);
  
  initial
    begin
      {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b0000_0000;
      {s2,s1,s0} = 3'b000;
      
      #5;
      {i7,i6,i5,i4,i3,i2,i1,i0} = $random;
      repeat (8)
        begin
      #10 {s2,s1,s0} = {s2,s1,s0} + 1'b1;
    end
      
      #200 $finish();
    end
  
 
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
  
endmodule
      
      