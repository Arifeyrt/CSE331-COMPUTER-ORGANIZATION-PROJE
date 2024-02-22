module mod_tb;

    reg clk, reset;
    reg [31:0] A, B;
    wire [31:0] mod_result;


    // Instantiate mod module
    mod uut (
        A,
		  B,
		  clk,
		  reset,
		  mod_result
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Initializations
    initial begin
        clk = 0;
        reset = 1;
        A = 32'd35;
        B = 32'd15;
        
        // Apply reset
        #9 reset = 0;

        #200 $finish;
    end
	 always @(posedge clk) $display("Time=%t in1=%d in2=%d result=%d", $time, A,B,mod_result);

endmodule