// Decimal to BCD encoder

module dec_to_bcd_encoder (d,y);
  input [9:0] d;
  output reg [3:0] y;
  
  always @(*)
    begin
      case (d)
        10'b00000_00001: y = 4'b0000;
 		10'b00000_00010: y = 4'b0001;
        10'b00000_00100: y = 4'b0010;
        10'b00000_01000: y = 4'b0011;
        10'b00000_10000: y = 4'b0100;
        10'b00001_00000: y = 4'b0101;
        10'b00010_00000: y = 4'b0110;
        10'b00100_00000: y = 4'b0111;
        10'b01000_00000: y = 4'b1000;
        10'b10000_00000: y = 4'b1001;
        default: y=4'bxxxx;
      endcase
    end
endmodule
