//Testbench for 4x2 encoder

module tb;
  reg [3:0]d;
  wire [1:0] y;
  
  decoder_4x2 dut (d,y);
  initial
    begin
        $display("Time   d     y");
        $monitor("%4t   %b   %b", $time, d, y);
         
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0100; #10;
        d = 4'b1000; #10;

        // Invalid cases
        d = 4'b0000; #10;
        d = 4'b0011; #10;

      #500 $finish();
    end
  
   initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule