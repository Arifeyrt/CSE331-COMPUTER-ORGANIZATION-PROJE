module testbench();

reg clk_tb;


mips Mips(
.clock(clk_tb)
);


initial begin
    clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
end




endmodule
//00011100001101000000000000000000
//00011100001101011111111111110110
//00011101000101101111111111110110