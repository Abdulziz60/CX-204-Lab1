`timescale 1ns / 1ps

module alu #( parameter ALU_WIDTH = 16 ) (
    
    input  logic [ ALU_WIDTH - 1 : 0 ] op1, op2,
    input  logic [ 1 : 0 ]opcode,
    output logic [ ALU_WIDTH - 1 : 0 ] alu_result
    
);

    always @ (*) begin 
    
        if (opcode == 00 ) begin 
            //ADD
            alu_result = op1 + op2;   
        end
        else if ( opcode == 01 ) begin 
            //SUB
            alu_result = op1 - op2;               
        end
        else if ( opcode == 10 ) begin
            //AND
            alu_result = op1 & op2;
        end
        else if ( opcode == 11 ) begin
            //OR
            alu_result = op1 | op2;
        end
        
    end
endmodule