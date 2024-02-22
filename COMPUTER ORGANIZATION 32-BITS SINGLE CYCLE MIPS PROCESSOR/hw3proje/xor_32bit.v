module xor_32bit(
input [31:0]a,
input [31:0]b,
output [31:0]result
);

  xor x0(result[0], a[0], b[0]);
  xor x1(result[1], a[1], b[1]);
  xor x2(result[2], a[2], b[2]);
  xor x3(result[3], a[3], b[3]);
  xor x4(result[4], a[4], b[4]);
  xor x5(result[5], a[5], b[5]);
  xor x6(result[6], a[6], b[6]);
  xor x7(result[7], a[7], b[7]);
  xor x8(result[8], a[8], b[8]);
  xor x9(result[9], a[9], b[9]);
  xor x10(result[10], a[10], b[10]);
  xor x11(result[11], a[11], b[11]);
  xor x12(result[12], a[12], b[12]);
  xor x13(result[13], a[13], b[13]);
  xor x14(result[14], a[14], b[14]);
  xor x15(result[15], a[15], b[15]);
  xor x16(result[16], a[16], b[16]);
  xor x17(result[17], a[17], b[17]);
  xor x18(result[18], a[18], b[18]);
  xor x19(result[19], a[19], b[19]);
  xor x20(result[20], a[20], b[20]);
  xor x21(result[21], a[21], b[21]);
  xor x22(result[22], a[22], b[22]);
  xor x23(result[23], a[23], b[23]);
  xor x24(result[24], a[24], b[24]);
  xor x25(result[25], a[25], b[25]);
  xor x26(result[26], a[26], b[26]);
  xor x27(result[27], a[27], b[27]);
  xor x28(result[28], a[28], b[28]);
  xor x29(result[29], a[29], b[29]);
  xor x30(result[30], a[30], b[30]);
  xor x31(result[31], a[31], b[31]);

endmodule



