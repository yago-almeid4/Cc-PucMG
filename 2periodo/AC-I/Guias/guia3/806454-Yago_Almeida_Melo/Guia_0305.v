/*
	Guia_0305.v
	806454 - Yago Almeida Melo
*/
module Guia_0305;
 // define data
 reg [7:0] s1 = 0;
 reg [7:0] s2 = 0;
 reg [7:0] frac = 0;
 reg [7:0] result = 0;
 // actions
 initial
  begin : main
   $display ( "Guia_0305 - Subtracao" );
   s1 = 6'b110011;
   s2 = 6'b001101;
   result = s1 - s2;
   $display("a) %b - %b = %b", s1 , s2, result);
   s1 = 7'b101_1101;
   s2 = 6'o3_3;
   result = s1 - s2;
   $display("b) %b - %o = %b,%b", s1 , s2, result[7:4], result[3:0]);
   s1 = 7'b0101101;
   s2 = 8'he;
   result = s1 - s2;
   $display("c) %o%o%o - %h = %b", s1[5:4],s1[3:2],s1[1:0] , s2, result);
   s1 = 8'hd4;
   s2 = 8'b1011101;
   result = s1 - s2;
   $display("d) %h - %b = %b", s1 , s2, result);
   s1 = 67;
   s2 = 8'h3b;
   result = s1 - s2;
   $display("e) %d - %h = %b", s1 , s2, result);
  end // main
 endmodule // Guia_0305
