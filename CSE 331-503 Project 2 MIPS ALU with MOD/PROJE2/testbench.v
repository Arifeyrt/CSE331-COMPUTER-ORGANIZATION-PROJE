`timescale 1ns/1ps

module testbench;

  // Inputs
  reg [31:0] A, B;
  reg [2:0] Aluop;
  reg clk, reset;

  // Output
  wire [31:0] result;

  // Instantiate the alu32 module
  alu_32 uut (
    .A(A),
	 .B(B),
	 .Aluop(Aluop),
	 .clk(clk),
	 .reset(reset),
	 .result(result)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk;

  // Initial block
  initial begin
    // Initialize inputs
    A = 32'b00000000000000000000000000100011;
    B = 32'b00000000000000000000000000001111;
    Aluop = 3'b000;
    reset = 1;

   // Apply test cases
	// Apply reset
    #9 reset = 0;

    #10 Aluop = 3'b000; // AND
    #10 Aluop = 3'b001; // OR
    #10 Aluop = 3'b010; // XOR
    #10 Aluop = 3'b011; // NOR
    #10 Aluop = 3'b100; // SLT
    #10 Aluop = 3'b101; // ADD
    #10 Aluop = 3'b110; // SUB
    #10 Aluop = 3'b111; // Mod

    // Stop simulation
    #10$finish;
  end

  // Stimulate inputs
  always @(posedge clk) $display("Time=%t in1=%b in2=%b AluOP=%b result=%b", $time, A, B, Aluop, result);

endmodule