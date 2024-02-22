module testbench_control_unit;
  reg [5:0] function_code;
    reg [2:0] ALUop;
    wire [2:0] alu_ctr;

    // Instantiate the alu_control module
    alu_control u1 (.function_code(function_code), .ALUop(ALUop), .alu_ctr(alu_ctr));

    initial begin
        // Initialize function_code and ALUop
        function_code = 6'b000000;
        ALUop = 3'b000;

        // Apply a sequence of function codes and ALU operations
        #10 function_code = 6'b000000; ALUop = 3'b000;
        #10 function_code = 6'b000000; ALUop = 3'b001;
        #10 function_code = 6'b000000; ALUop = 3'b010;
        #10 function_code = 6'b000000; ALUop = 3'b011;
        #10 function_code = 6'b000000; ALUop = 3'b100;
        #10 function_code = 6'b000000; ALUop = 3'b101;
        #10 function_code = 6'b000000; ALUop = 3'b110;
        #10 function_code = 6'b000010; ALUop = 3'b111;
        #10 function_code = 6'b000101; ALUop = 3'b111;
        #10 function_code = 6'b000011; ALUop = 3'b111;
        #10 function_code = 6'b000111; ALUop = 3'b111;

        // End the simulation
    end

    // Monitor the outputs
    initial begin
        $monitor("At time %d: function_code=%b, ALUop=%b, alu_ctr=%b", $time, function_code, ALUop, alu_ctr);
    end

endmodule