module tb;
  reg a,b;
  wire s,c;
  ha dut (a,b,s,c);
  initial
    begin
      $display("Simulation started");
      a=1'b0; b=1'b0;
      #10 	a=1'b0; b=1'b1;
      #10 	a=1'b1; b=1'b0;
      #10  	a=1'b1; b=1'b1;
      $display("Simulation ended at time=%0t",$time);
      #50 $finish;
      $display("Simulation finished at time=%0t",$time);
    end
  
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars;
    end
endmodule
 