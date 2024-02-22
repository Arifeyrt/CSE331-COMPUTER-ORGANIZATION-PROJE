module instruction_block(
 output reg[31:0] instruction,
 input [31:0] pc

);


reg [31:0] instructions [255:0];

initial begin
	$readmemb("instructions.mem",instructions);
end


always @(pc)begin
   instruction = instructions[pc];
	$display("instruction: %b", instruction);
	$display("pc: %b", pc);
	end

endmodule
