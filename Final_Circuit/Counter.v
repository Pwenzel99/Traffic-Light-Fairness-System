module Counter(clk,updn,count,cap,s,n);
	input clk,s;
	input [1:0] updn;
	input [3:0] cap,n;
	output [3:0] count;
	integer z=0;
	reg [3:0] count;
	
always @(posedge clk) begin
	if((updn[0]==1 && updn[1] == 1)||(updn[1]==0&&updn[0]==0)||(s==0))begin
		count = count + 1'b0;
	end
	else begin
		if(updn[0] == 1 && !(n[3]==cap[3] && n[2]==cap[2] && n[1]==cap[1] && n[0]==cap[0])) begin
			count = count + 1'b1;
		end 
		else begin
			count = count +1'b0;
		end
		if(updn[1] == 1 && !(n[3]==z && n[2]==z && n[1]==z && n[0]==z)) begin
			count = count - 1'b1;
			end
		else begin
			count = count-1'b0;
		end
	end
end
endmodule