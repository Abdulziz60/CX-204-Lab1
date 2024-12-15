`timescale 1ns / 1ps


module register_file #( 
    parameter REGF_WIDTH = 16 
)(
        input  logic clk,
//        input  logic rst,
        input  logic  [  1 : 0 ] rs1,
        input  logic  [  1 : 0 ] rs2,
        input  logic  [  1 : 0 ] rd,
        input  logic  [ REGF_WIDTH - 1: 0 ] alu_input ,
        output logic  [ REGF_WIDTH - 1: 0 ] reg_out_op1, reg_out_op2  
);


logic [ REGF_WIDTH - 1 : 0 ] reg_file [ 3 : 0 ];
       
       //home/it/Computer_Architecture/cx-204/Lab_1/CX-204-Lab1/support_files
//initial $readmemh("./support_files/fib_im.mem", test_memory); // For Hexadecimal File
initial begin 
$readmemb("/home/it/Computer_Architecture/cx-204/Lab_1/CX-204-Lab1/support_files/fib_rf.mem", reg_file); // For Binary File
end
always @ ( posedge clk ) begin 
//    if (!rst  ) begin 
//        reg_file[0]  <= 0;
//        reg_file[1]  <= 0;
//        reg_file[2]  <= 0;
//        reg_file[3]  <= 0;
//    end
//    else begin 
        reg_file[rd] <= alu_input ;
        
end
    assign reg_out_op1 = reg_file[rs1];  // Read from rs1 register
    assign reg_out_op2 = reg_file[rs2];  // Read from rs2 register
    
    
    
endmodule