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
  
  add1 a0 (a[0], b[0], ci, s[0], c[0]);
  add1 a1 (a[1], b[1], c[0], s[1], c[1]);
  add1 a2 (a[2], b[2], c[1], s[2], c[2]);
  add1 a3 (a[3], b[3], c[2], s[3], co);
endmodule 

module addsub4(a, b, c, sub, s, co);
  input [3:0] a, b;
  input   ci;
  input   sub;
  
  output [3:0] s;
  output co;
  
  wire [3:0] bx = b ^{4{sub}};
  wire  cix = ci ^ sub;
  wire [2:0] c;
  
  add1 a0 (a[0], bx[0], cix, s[0], c[0]);
  add1 a1 (a[1], bx[1], c[0], s[1], c[1]);
  add1 a2 (a[2], bx[2], c[1], s[2], c[2]);
  add1 a3 (a[3], bx[3], c[2], s[3], co);
endmodule
