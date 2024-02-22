module control_unit (
 output regDst,
 output branch,
 output memRead, 
 output memWrite,
 output [2:0] ALUop, 
 output ALUsrc,
 output regWrite,
 output jump,
 output byteOperations, 
 output move, 
 input [5:0] opcode);
 
 
 wire opnot0,opnot1,opnot2,opnot3,opnot4,opnot5;
 wire r_type_ins,andi_,ori_,slti_,lb_,sb_,lw_,sw_,addi_,subi_,beq_,bne_,jump_,jal_;
 
 
 
 
 // not all of op
not not1(opnot0,opcode[0]);
not not2(opnot1,opcode[1]);
not not3(opnot2,opcode[2]);
not not4(opnot3,opcode[3]);
not not5(opnot4,opcode[4]);
not not6(opnot5,opcode[5]);
 


and and1(r_type_ins,opnot5,opnot4,opnot3,opnot2,opnot1,opnot0);
and and2(addi_,opnot5,opnot4,opnot3,opnot2,opcode[1],opnot0);
and and3(subi_,opnot5,opnot4,opnot3,opnot2,opcode[1],opcode[0]);
and and4(andi_,opnot5,opnot4,opnot3,opcode[2],opnot1,opnot0);
and and5(ori_,opnot5,opnot4,opnot3,opcode[2],opnot1,opcode[0]);
and and6(lw_,opnot5,opnot4,opcode[3],opnot2,opnot1,opnot0);
and and7(sw_,opnot5,opcode[4],opnot3,opnot2,opnot1,opnot0);
and and8(lb_,opnot5,opnot4,opcode[3],opnot2,opnot1,opcode[0]);
and and9(sb_,opnot5,opcode[4],opnot3,opnot2,opnot1,opcode[0]);
and and10(slti_,opnot5,opnot4,opnot3,opcode[2],opcode[1],opcode[0]);
and and11(bne_,opcode[5],opnot4,opnot3,opcode[2],opcode[1],opcode[0]);
and and12(beq_,opcode[5],opnot4,opnot3,opnot2,opcode[1],opcode[0]);
and and13(jump_,opcode[5],opcode[4],opcode[3],opnot2,opnot1,opnot0);
and and15(move_,opcode[5],opnot4,opnot3,opnot2,opnot1,opnot0);
 
 
 
or or1(regDst,r_type_ins);
or or2(branch,beq_,bne_);
or or3(memRead,lw_,lb_);
or or4(memWrite, sw_,sb_);
or or5(ALUsrc,addi_,subi_,andi_,ori_,lw_,lb_,sw_,sb_,slti_);
or or6(regWrite,r_type_ins,addi_,subi_,andi_,ori_,lw_,lb_,jal_,slti_,move_);
or or7(jump,jump_);
or or8(byteOperations,lb_,sb_);
or or9(move,move_);

or or10(ALUop[2],addi_,lb_,sb_,lw_,sw_,slti_,subi_,beq_,bne_,r_type_ins);
or or11(ALUop[1],subi_,beq_,bne_,r_type_ins);
or or12(ALUop[0],ori_,addi_,lb_,sb_,lw_,sw_,r_type_ins);
 
 
 endmodule
 