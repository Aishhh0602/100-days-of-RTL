//Testbench for decimal to BCD encoder

module tb;
  reg [9:0] d;
  wire [3:0] y;
  
  dec_to_bcd_encoder dut (d,y);
  initial
    begin
  $display("Time   d ,y");
        $monitor("%4t   %b   %b", $time, d, y);
  
  	   d= 10'b00000_00001; #10;
 	   d= 10'b00000_00010; #10;
       d= 10'b00000_00100; #10;
       d= 10'b00000_01000; #10;
       d= 10'b00000_10000; #10;
       d= 10'b00001_00000; #10;
       d= 10'b00010_00000; #10;
       d= 10'b00100_00000; #10;
  	   d= 10'b01000_00000; #10;
       d= 10'b10000_00000; #10;
      
      
  //Invalid cases
  d= 10'b00000_00000; #10;
  d= 10'b00000_00011; #10;
  
  
  #500 $finish();
    end
  
   initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule
