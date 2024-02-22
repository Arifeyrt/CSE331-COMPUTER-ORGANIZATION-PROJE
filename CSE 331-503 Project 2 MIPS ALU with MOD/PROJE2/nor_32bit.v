module nor_32bit(
  input [31:0] a,
  input [31:0] b,
  output [31:0] result
);

  nor n0(result[0], a[0], b[0]);
  nor n1(result[1], a[1], b[1]);
  nor n2(result[2], a[2], b[2]);
  nor n3(result[3], a[3], b[3]);
  nor n4(result[4], a[4], b[4]);
  nor n5(result[5], a[5], b[5]);
  nor n6(result[6], a[6], b[6]);
  nor n7(result[7], a[7], b[7]);
  nor n8(result[8], a[8], b[8]);
  nor n9(result[9], a[9], b[9]);
  nor n10(result[10], a[10], b[10]);
  nor n11(result[11], a[11], b[11]);
  nor n12(result[12], a[12], b[12]);
  nor n13(result[13], a[13], b[13]);
  nor n14(result[14], a[14], b[14]);
  nor n15(result[15], a[15], b[15]);
  nor n16(result[16], a[16], b[16]);
  nor n17(result[17], a[17], b[17]);
  nor n18(result[18], a[18], b[18]);
  nor n19(result[19], a[19], b[19]);
  nor n20(result[20], a[20], b[20]);
  nor n21(result[21], a[21], b[21]);
  nor n22(result[22], a[22], b[22]);
  nor n23(result[23], a[23], b[23]);
  nor n24(result[24], a[24], b[24]);
  nor n25(result[25], a[25], b[25]);
  nor n26(result[26], a[26], b[26]);
  nor n27(result[27], a[27], b[27]);
  nor n28(result[28], a[28], b[28]);
  nor n29(result[29], a[29], b[29]);
  nor n30(result[30], a[30], b[30]);
  nor n31(result[31], a[31], b[31]);

endmodule
