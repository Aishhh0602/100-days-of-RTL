//Testbench for 8x3 encoder

module tb;
  reg [7:0] d;
  wire [2:0] y;
  
  encoder_8x3 dut (d,y);
  initial
    begin
  $display("Time   d ,y");
        $monitor("%4t   %b   %b", $time, d, y);
  
  	   d= 8'b0000_0001; #10;
 	   d= 8'b0000_0010; #10;
       d= 8'b0000_0100; #10;
       d= 8'b0000_1000; #10;
       d= 8'b0001_0000; #10;
       d= 8'b0010_0000; #10;
       d= 8'b0100_0000; #10;
       d= 8'b1000_0000; #10;
  
  //Invalid cases
  d= 8'b0000_0000; #10;
  d= 8'b0000_0011; #10;
  
  
  #500 $finish();
    end
  
   initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule