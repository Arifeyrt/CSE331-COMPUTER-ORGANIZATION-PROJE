module memory_block (
output reg[31:0] read_data,
input byteOperations, 
input [17:0] address,
input [31:0] write_data,
input memRead,
input memWrite);

reg [31:0] writeDatas [255:0];

initial begin
$readmemb("memory.mem", writeDatas);
end

always @(*) begin
if(byteOperations & 1'b1) begin
      if (memRead & 1'b1) begin
		read_data[7:0]=writeDatas[address][7:0];
		read_data[31:8]=24'b0;
		
      end else if (memWrite & 1'b1) begin
      writeDatas[address][7:0] = write_data[7:0];
		$writememb("memory.mem",  writeDatas);
		read_data=writeDatas[address];
	  
      end else begin
	   read_data=write_data;
    
    end
end

else begin
   if (memRead & 1'b1) begin
		 read_data=writeDatas[address];
		
    end else if (memWrite & 1'b1) begin
    writeDatas[address] = write_data;
	 $writememb("memory.mem",  writeDatas);
	 read_data =writeDatas[address];
    end else begin
	 read_data=write_data;
    
    end
 end
end
  


endmodule