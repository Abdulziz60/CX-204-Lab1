`timescale 1ns / 1ps

module program_counter #( PROG_VALUE = 3) (
    input  logic clk, rst, 
//    input  logic [ PROG_VALUE - 1 : 0 ] D,
    output logic [ $clog2(PROG_VALUE) - 1 : 0 ] Q
);
    
    always_ff @ ( posedge clk , negedge rst) begin 
    if ( !rst ) begin 
        Q <= 0;  
    end 
    
    else begin 
        Q <= Q + 1;
    end
end

endmodule
    

