module mod_dp(
input we,
input re,
input s,
input [31:0]A,
input [31:0]B,
input CLK,
output reg [31:0]result,
output x);

reg  [31:0] temp;
wire [31:0] mux_out1;
wire [31:0] mux_out2;
wire [31:0] a_or_sub;



always @(posedge CLK)
	begin
		$display ("%d-%d-%d",s,we,re);

	if(we)begin
		temp <= a_or_sub;
	end
 end
 
	
always @(*)
	begin
	if(re)begin
		result <= temp;
	end
end

assign mux_out1 = s ? temp : A;
assign mux_out2 = s ? B : 1'b0;

sub_add_32bit sub1(mux_out1 ,mux_out2,1'b1,a_or_sub);//a_or_sub=temp-B
comparator_32bit com1(a_or_sub,B,x);//x 1 se result git 
endmodule
