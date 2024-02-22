module mips(input clock);

//
wire [25:0]jump_for_address;
reg [31:0]pc;//instruction memorye giren pc 
wire [31:0]instruction;//instruction memoryden cıkan instruction

initial begin
    pc = 32'b0;
end
initial begin
    $display("pc: %b", pc);
end

wire regDst, branch, memRead, memWrite,  ALUsrc, regWrite, jump, byteOperations,  move; //controlden çıkan sinyaller
wire [5:0]opcode;//controle giren 6 bitlik opcode instructionon 31-26 sı
wire [5:0]notopcode;
wire [2:0]ALUop;

wire [31:0]read_data1;
wire [31:0]read_data2;
wire [31:0]read_data2_temp;
wire [31:0]write_data;
wire [4:0]read_reg1;
wire [4:0]read_reg2; 
wire [4:0]write_reg;
wire [4:0]read_reg2_temp;//20-16 instruction 
wire [4:0]read_reg3_mux;//15-11 instruction
wire [4:0]write_reg_temp;//ilk muxdab cıkan rt mi rd mi olsun

wire [31:0]sign_ext_imm;
wire [15:0]imm; 

wire [2:0] alu_ctr;
wire [5:0] function_code;
wire [5:0] not_function_code;
wire zero_bit;
wire [31:0] read_data;

wire [17:0] address;
wire [31:0] alu_result;
wire [31:0] result_mem;

wire [31:0] address_shift;
wire [31:0]add_pc_result;
wire [31:0]add_alu_pc_result;

//beq
wire beq_result;
wire bneq_result;
wire sinyal_pc;
wire not_zero_bit;
wire [31:0]new_pc;
wire [31:0]new_pc_temp;


wire jal_sinyal;//jal için kullanılacak sinyal
wire jal_or_jump_sinyal;
wire [31:0]jump_jal_address;
wire [31:0]new_pc_or_jal;
wire [31:0]jal_or_mem_result;
wire jr_sinyal;


assign opcode=instruction[31:26];
assign read_reg1=instruction[25:21];
assign read_reg2=instruction[20:16];
assign read_reg2_temp=instruction[20:16];
assign imm=instruction[15:0];
assign function_code=instruction[5:0];
assign jump_for_address=instruction[25:0];
assign read_reg3_mux=instruction[15:11];

not not5(notopcode[0],opcode[0]);
not not6(notopcode[1],opcode[1]);
not not7(notopcode[2],opcode[2]);
not not8(notopcode[3],opcode[3]);
not not9(notopcode[4],opcode[4]);
not not10(notopcode[5],opcode[5]);

not not21(not_function_code[0],function_code[0]);
not not22(not_function_code[1],function_code[1]);
not not23(not_function_code[2],function_code[2]);
not not24(not_function_code[3],function_code[3]);
not not25(not_function_code[4],function_code[4]);
not not26(not_function_code[5],function_code[5]);

and and21(jr_sinyal,not_function_code[5],not_function_code[4],function_code[3],not_function_code[2],not_function_code[1],not_function_code[0]);

wire jal;
and and11(jal,opcode[5],opcode[4],opcode[3],notopcode[2],notopcode[1],opcode[0]);

and and6(jal_sinyal,opcode[5],opcode[4],opcode[3],notopcode[2],notopcode[1],opcode[0]);


//assign jump_jal_address={pc[31:28],jump_for_address,2'b00};
assign jump_jal_address={pc[31:26],jump_for_address};

wire bnq_sinyal;
and and15(bnq_sinyal,opcode[5],notopcode[4],notopcode[3],opcode[2],opcode[1],opcode[0]);

not not1(not_zero_bit,zero_bit);
and and1(beq_result,zero_bit,branch);
and and2(bneq_result,not_zero_bit,bnq_sinyal);

or or1(sinyal_pc,bneq_result,beq_result);



instruction_block insclock(instruction,pc);
control_unit contr(regDst,branch,memRead,memWrite,ALUop,ALUsrc,regWrite,jump,byteOperations,move,opcode); 
//imm reg mux
mux_5bit_2_to_1 mux1(read_reg2_temp,read_reg3_mux,regDst,write_reg_temp);
//jal_mux
mux_5bit_2_to_1 mux2(write_reg_temp,5'b11111,jal_sinyal,write_reg);
wire temp_regwrite,not_jr_sinyal;
not not27(not_jr_sinyal,jr_sinyal);
and and22(temp_regwrite,not_jr_sinyal,regWrite);
register_block regblock(read_data1,read_data2_temp,byteOperations,write_data,read_reg1,read_reg2,write_reg,temp_regwrite);

sign_extend sig(sign_ext_imm,imm);

mux32bit_2_to_1 mux3(read_data2,sign_ext_imm,read_data2_temp,ALUsrc);

alu_control aluc(alu_ctr,function_code,ALUop);

alu alu1(alu_result,zero_bit,read_data1,read_data2,alu_ctr);

assign address=alu_result[17:0];

memory_block memo(read_data,byteOperations,address,read_data2_temp,memRead,memWrite);

mux32bit_2_to_1 mux4(result_mem,read_data,alu_result,memRead);
//shift_left_2 shift(sign_ext_imm,address_shift);
//pc+1
adder_32bit adder33(pc,32'b1,1'b0,add_pc_result);

//pc+1+imm

adder_32bit adder32(add_pc_result,sign_ext_imm,1'b0,add_alu_pc_result);




mux32bit_2_to_1 mux5(new_pc_temp,add_alu_pc_result,add_pc_result,sinyal_pc);

mux32bit_2_to_1 mux6(new_pc,read_data1,new_pc_temp,function_code == 6'b001000);

mux32bit_2_to_1 mux7(new_pc_or_jal,jump_jal_address,new_pc,jal|jump);

//jal için mux
mux32bit_2_to_1 mux8(jal_or_mem_result,add_pc_result,result_mem,jal_sinyal);
 
 
//move için mux
mux32bit_2_to_1 mux9(write_data,read_data1,jal_or_mem_result,move);



always @(posedge clock)begin
pc=new_pc_or_jal;
$display("pc: %b", pc);

end

 
 
 
 
 
 
 
 
 
 


 





endmodule