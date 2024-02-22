module sign_extend (
 output [31:0] sign_ext_imm,
 input [15:0] imm);
 

and and1(sign_ext_imm[0], imm[0], 1'b1);
and and2(sign_ext_imm[1], imm[1], 1'b1);
and and3(sign_ext_imm[2], imm[2], 1'b1);
and and4(sign_ext_imm[3], imm[3], 1'b1);
and and5(sign_ext_imm[4], imm[4], 1'b1);
and and6(sign_ext_imm[5], imm[5], 1'b1);
and and7(sign_ext_imm[6], imm[6], 1'b1);
and and8(sign_ext_imm[7], imm[7], 1'b1);
and and9(sign_ext_imm[8], imm[8], 1'b1);
and and10(sign_ext_imm[9], imm[9], 1'b1);
and and11(sign_ext_imm[10], imm[10], 1'b1);
and and12(sign_ext_imm[11], imm[11], 1'b1);
and and13(sign_ext_imm[12], imm[12], 1'b1);
and and14(sign_ext_imm[13], imm[13], 1'b1);
and and15(sign_ext_imm[14], imm[14], 1'b1);
and and16(sign_ext_imm[15], imm[15], 1'b1);
and and17(sign_ext_imm[16], imm[15], 1'b1);
and and18(sign_ext_imm[17], imm[15], 1'b1);
and and19(sign_ext_imm[18], imm[15], 1'b1);
and and20(sign_ext_imm[19], imm[15], 1'b1);
and and21(sign_ext_imm[20], imm[15], 1'b1);
and and22(sign_ext_imm[21], imm[15], 1'b1);
and and23(sign_ext_imm[22], imm[15], 1'b1);
and and24(sign_ext_imm[23], imm[15], 1'b1);
and and25(sign_ext_imm[24], imm[15], 1'b1);
and and26(sign_ext_imm[25], imm[15], 1'b1);
and and27(sign_ext_imm[26], imm[15], 1'b1);
and and28(sign_ext_imm[27], imm[15], 1'b1);
and and29(sign_ext_imm[28], imm[15], 1'b1);
and and30(sign_ext_imm[29], imm[15], 1'b1);
and and31(sign_ext_imm[30], imm[15], 1'b1);
and and32(sign_ext_imm[31], imm[15], 1'b1);

 
 


 
endmodule 

