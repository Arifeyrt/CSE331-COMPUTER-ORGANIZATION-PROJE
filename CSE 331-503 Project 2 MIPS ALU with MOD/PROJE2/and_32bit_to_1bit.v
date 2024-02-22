module and_32bit_to_1bit(
output [31:0] result,
input b
  
);

  and a0(result[0], 1'b1, b);
  and a1(result[1], 1'b0, b);
  and a2(result[2], 1'b0, b);
  and a3(result[3], 1'b0, b);
  and a4(result[4], 1'b0, b);
  and a5(result[5], 1'b0, b);
  and a6(result[6],1'b0, b);
  and a7(result[7], 1'b0, b);
  and a8(result[8], 1'b0, b);
  and a9(result[9], 1'b0, b);
  and a10(result[10], 1'b0, b);
  and a11(result[11], 1'b0, b);
  and a12(result[12], 1'b0, b);
  and a13(result[13], 1'b0, b);
  and a14(result[14], 1'b0, b);
  and a15(result[15], 1'b0, b);
  and a16(result[16], 1'b0, b);
  and a17(result[17],1'b0, b);
  and a18(result[18],1'b0, b);
  and a19(result[19], 1'b0, b);
  and a20(result[20], 1'b0, b);
  and a21(result[21], 1'b0, b);
  and a22(result[22], 1'b0, b);
  and a23(result[23], 1'b0, b);
  and a24(result[24], 1'b0, b);
  and a25(result[25],1'b0, b);
  and a26(result[26],1'b0, b);
  and a27(result[27], 1'b0, b);
  and a28(result[28],1'b0, b);
  and a29(result[29], 1'b0, b);
  and a30(result[30], 1'b0, b);
  and a31(result[31], 1'b0, b);

endmodule
