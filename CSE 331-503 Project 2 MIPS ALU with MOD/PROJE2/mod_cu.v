module mod_cu(
input reset,
input CLK,
input x,
output reg we,
output reg s,
output reg re
);


reg [2:0] curr_state, next_state;

localparam  START =3'b000,
            SUB=3'b001,
				RESULT=3'b100;

always @(posedge CLK)
  begin
    if (reset)
      curr_state <= START;
    else 
       curr_state <= next_state;
  end
  
  
    
always @(*) 
	begin
	if(reset) begin next_state = START; end
	else
	case (curr_state)
     START:	begin
					next_state = SUB;
				end
				
				
	  SUB:	begin
				if (x) //lessthan temp<B oldugunda 1 döndürecek olmadığında tekrar suba dönecek
				next_state = RESULT;
								 
			   else  
				next_state = SUB;				 
				end
				
     RESULT: begin
				 end
   endcase
   end
	
	
	
//Output Logic
always @(*)
	begin
	s = 1'b0;
	we = 1'b0;
	re=1'b0;
	case(curr_state)
	START: 	begin
	        s = 1'b0;
	        we = 1'b1;
	        re=1'b0;
			end
	
	SUB: begin
	        s = 1'b1;
	        we = 1'b1;
	        re=1'b0;
		  end
	
	RESULT: begin
	        s = 1'b0;
	        we = 1'b0;
	        re=1'b1;
			 
			 end
	
	endcase
	end	

	
	
	endmodule
	