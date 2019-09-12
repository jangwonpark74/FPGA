module add1(a, b, ci, s, co);
  input a, b, ci;
  output s, co;
  assign s = a ^ b ^ ci;
  assign co = a & b | b & ci | ci & a;
endmodule

module add4 (a, b, ci, s, co)
  input [3:0] a, b;
  input ci;
  output [3:0] s;
  output co;
  wire  [2:0] c;
  
  add1 a0 (a[0], b[0], ci, s, co);
  add1 a1 (a[1], b[1], c[0], s[0], c[0]);
  add1 a2 (a[2], b[2], c[1], s[1], c[1]);
  add1 a3 (a[3], b[3], c[2], s[2], c[2]);
endmodule 
