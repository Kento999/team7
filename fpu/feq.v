

`timescale 1ns / 100ps
`default_nettype none


module feq
    (input wire signed [31:0] input_a,
     input wire signed [31:0] input_b,
     output wire bool);
    
    assign bool = (input_a[30:23] == 8'b0 && input_b[30:23] == 8'b0) ? 1'b1 : (input_a == input_b);
    
endmodule

`default_nettype wire