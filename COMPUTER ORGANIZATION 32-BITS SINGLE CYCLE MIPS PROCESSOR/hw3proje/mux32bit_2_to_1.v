module mux32bit_2_to_1(output [31:0]result,input [31:0]a,input [31:0]b ,input sel);

wire notsel;
wire [31:0]notsel32;
wire [31:0]sel32;
wire [31:0]sel_and_a;
wire [31:0]notsel_and_b;

not not1(notsel,sel);

extend32 ex(sel32,sel);
extend32 ex1(notsel32,notsel);


and_32bit and1( a,sel32,sel_and_a);
and_32bit and2( b,notsel32,notsel_and_b);

or_32bit or1(sel_and_a,notsel_and_b,result);

endmodule
