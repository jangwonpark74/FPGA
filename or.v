
module simple_or
        (
            //input
            a,
            b,
            //output
            c
        );
  //port definition
  input a;
  input b;

  output c;
  //design implemetation
  assign c = a | b;

endmodule
