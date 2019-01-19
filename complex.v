
module complex_in_n_out
        (
            //input
            a.
            b,
            c.
            //output
            out
        );
 //port definition
 input a;
 input b;
 input c;

 output out;

 //design implematation
 assign out = (a &  ~b) | c;

endmodule
