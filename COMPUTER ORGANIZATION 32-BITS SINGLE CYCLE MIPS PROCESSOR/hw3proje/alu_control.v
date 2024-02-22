module alu_control (
 output [2:0] alu_ctr,
 input [5:0] function_code,
 input [2:0] ALUop);
 
 
wire add_function,sub_function,and_fuction,or_function,slt_function,r_type_function;
wire notfunctioncode0,notfunctioncode1,notfunctioncode2,notfunctioncode3,notfunctioncode4,notfunctioncode5;
wire not_rtype_function,opalu0,opalu1,opalu2;

not not1(notfunctioncode0,function_code[0]);
not not2(notfunctioncode1,function_code[1]);
not not3(notfunctioncode2,function_code[2]);
not not4(notfunctioncode3,function_code[3]);
not not5(notfunctioncode4,function_code[4]);
not not6(notfunctioncode5,function_code[5]);


and and6(r_type_function,ALUop[0],ALUop[1],ALUop[2]);
and and1(add_function,notfunctioncode5,notfunctioncode4,notfunctioncode3,notfunctioncode2,function_code[1],notfunctioncode0,r_type_function);
and and2(sub_function,notfunctioncode5,notfunctioncode4,notfunctioncode3,notfunctioncode2,function_code[1],function_code[0],r_type_function);
and and3(or_function,notfunctioncode5,notfunctioncode4,notfunctioncode3,function_code[2],notfunctioncode1,function_code[0],r_type_function);
and and4(and_function,notfunctioncode5,notfunctioncode4,notfunctioncode3,function_code[2],notfunctioncode1,notfunctioncode0,r_type_function);
and and5(slt_function,notfunctioncode5,notfunctioncode4,notfunctioncode3,function_code[2],function_code[1],function_code[0],r_type_function);

not not7(not_rtype_function,r_type_function);

and and9(opalu0,not_rtype_function,ALUop[0]);
and and7(opalu1,not_rtype_function,ALUop[1]);
and and8(opalu2,not_rtype_function,ALUop[2]);

or or1(alu_ctr[0],or_function,add_function,opalu0);
or or2(alu_ctr[1],sub_function,opalu1);
or or3(alu_ctr[2],sub_function,add_function,slt_function,opalu2);

 
endmodule