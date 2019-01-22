
module simple_mux
        (
            //inputs
            in_1,
            in_2,
            in_3,

            //outputs
            out_1
        );

    //port definition
    input   [3:0]   in_1;
    input   [3:0]   in_2;
    input           in_3;

    output  [3:0]   out_1;

    //design implematation
    
    assign out_1 = in_3 ? in_2 : in_1;

endmodule
