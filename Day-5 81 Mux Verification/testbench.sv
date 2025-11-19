// Code your testbench here
// or browse Examples

module mux_tb;
  reg [7:0]a;
  reg [2:0]sel;
  wire y;
  mux81 dut(a,sel,y);
  integer i;
  
  initial
    begin
      a=8'b1010_0101;
      $display("The value given is a=%8b", a);
      for(i=0;i<8;i=i+1)
        begin
          sel =i;
          #20;
          $display("The value of sel and y is sel=%b, y=%b", sel,y);
        end
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
      endmodule
      
      