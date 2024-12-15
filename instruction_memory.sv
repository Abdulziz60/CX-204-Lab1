module instruction_memory #(
    parameter IMEM_DEPTH = 64
) (
    input logic  [ $clog2 (IMEM_DEPTH) - 1 : 0 ] addr,
    output logic [ 7 : 0 ] inst);
    
    
    logic [7:0] imem [0: IMEM_DEPTH -1];
    
    initial begin 
    ///home/it/Computer_Architecture/cx-204/Lab_1/CX-204-Lab1/support_files
//      $readmemh("./support_files/fib_im.mem", test_memory); // For Hexadecimal File
      $readmemb("/home/it/Computer_Architecture/cx-204/Lab_1/CX-204-Lab1/support_files/fib_im.mem", imem); // For Binary File    end
    end
//    assign imem[0] = 8'b00000000;
//    assign imem[1] = 8'b11010101;
    
    assign inst = imem[addr];
    
endmodule 