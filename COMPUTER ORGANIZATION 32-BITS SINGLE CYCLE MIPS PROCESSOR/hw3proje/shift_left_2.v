module shift_left_2 (
 output [31:0] shifted_address,
 input [31:0] address);
 
and and1(shifted_address[2], address[0], 1'b1);
and and2(shifted_address[3], address[1], 1'b1);
and and3(shifted_address[4], address[2], 1'b1);
and and4(shifted_address[5], address[3], 1'b1);
and and5(shifted_address[6], address[4], 1'b1);
and and6(shifted_address[7], address[5], 1'b1);
and and7(shifted_address[8], address[6], 1'b1);
and and8(shifted_address[9], address[7], 1'b1);
and and9(shifted_address[10], address[8], 1'b1);
and and10(shifted_address[11], address[9], 1'b1);
and and11(shifted_address[12], address[10], 1'b1);
and and12(shifted_address[13], address[11], 1'b1);
and and13(shifted_address[14], address[12], 1'b1);
and and14(shifted_address[15], address[13], 1'b1);
and and15(shifted_address[16], address[14], 1'b1);
and and16(shifted_address[17], address[15], 1'b1);
and and17(shifted_address[18], address[16], 1'b1);
and and18(shifted_address[19], address[17], 1'b1);
and and19(shifted_address[20], address[18], 1'b1);
and and20(shifted_address[21], address[19], 1'b1);
and and21(shifted_address[22], address[20], 1'b1);
and and22(shifted_address[23], address[21], 1'b1);
and and23(shifted_address[24], address[22], 1'b1);
and and24(shifted_address[25], address[23], 1'b1);
and and25(shifted_address[26], address[24], 1'b1);
and and26(shifted_address[27], address[25], 1'b1);
and and27(shifted_address[28], address[26], 1'b1);
and and28(shifted_address[29], address[27], 1'b1);
and and29(shifted_address[30], address[28], 1'b1);
and and30(shifted_address[31], address[29], 1'b1);
and and31(shifted_address[0],1'b0, 1'b0);
and and32(shifted_address[1],1'b0, 1'b0);




 
 
endmodule