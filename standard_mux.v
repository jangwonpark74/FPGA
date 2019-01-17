

module standard_mux
         (
             //Inputs
             in_1,
             in_2,
             in_3,
             //Outpus
             out_1,
         );

    input   [3:0]  in_1;
    input   [3:0]  in_2;
    input          in_3;

    output [3:0]    out_1;

    // ---------------design implementation --------
    
    assign out_1 = in_3 ? in_2: in_1;
endmodule
    

