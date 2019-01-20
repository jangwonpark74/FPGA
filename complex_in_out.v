
module complex_in_n_out 
        (
            //inputs
            a,
            b,
            c,
            //out
            out
        );
    //port definitions
    
    input a;
    input b;
    input c;

    output out;

    //---- design implementation
    
    assign out = (a & ~b) | c;

endmodule
