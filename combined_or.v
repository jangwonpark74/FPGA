
module combined_or
        (
            //inputs
            a,
            b,
            c,
            //output
            out
        );

//port definitions
  input a;
  input b;
  input c;

  output out;

//design implementatioa
  assign out = a | b | c;

endmodule
