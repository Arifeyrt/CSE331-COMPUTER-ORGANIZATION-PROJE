module xor_32bit_to_1bit(
  input [31:0] a,
  input b,
  output [31:0] result
);

  xor x0(result[0], a[0], b);
  xor x1(result[1], a[1], b);
  xor x2(result[2], a[2], b);
  xor x3(result[3], a[3], b);
  xor x4(result[4], a[4], b);
  xor x5(result[5], a[5], b);
  xor x6(result[6], a[6], b);
  xor x7(result[7], a[7], b);
  xor x8(result[8], a[8], b);
  xor x9(result[9], a[9], b);
  xor x10(result[10], a[10], b);
  xor x11(result[11], a[11], b);
  xor x12(result[12], a[12], b);
  xor x13(result[13], a[13], b);
  xor x14(result[14], a[14], b);
  xor x15(result[15], a[15], b);
  xor x16(result[16], a[16], b);
  xor x17(result[17], a[17], b);
  xor x18(result[18], a[18], b);
  xor x19(result[19], a[19], b);
  xor x20(result[20], a[20], b);
  xor x21(result[21], a[21], b);
  xor x22(result[22], a[22], b);
  xor x23(result[23], a[23], b);
  xor x24(result[24], a[24], b);
  xor x25(result[25], a[25], b);
  xor x26(result[26], a[26], b);
  xor x27(result[27], a[27], b);
  xor x28(result[28], a[28], b);
  xor x29(result[29], a[29], b);
  xor x30(result[30], a[30], b);
  xor x31(result[31], a[31], b);

endmodule
