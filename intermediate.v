
module intermediate
        (
            //inputs
            a,
            b,
            c,
            d,
            e,
            //output
            out
        );
  //port definitions
  input a;
  input b;
  input c;
  input d;
  input e;

  output out;

  wire wire_cd;
  wire wire_acd;
  wire wire_be;

  //design implematation
  assign wire_cd = c | d;
  assign wire_be = b & e;
  assign wire_acd = wire_cd & a;
  assign out = ~wire_acd | wire_be;

endmodule


