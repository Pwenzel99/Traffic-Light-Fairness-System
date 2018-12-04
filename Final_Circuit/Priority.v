module Priority(Lanes,Priority);
	input [3:0] Lanes;
	output [3:0] Priority;
	
	reg [3:0] Priority;
	
	always @(Lanes)
		begin
			case({Lanes})
				4'b0000: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0000;
				4'b0001: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0001;
				4'b0010: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0010;
				4'b0011: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0011;
				4'b0100: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0100;
				4'b0101: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0101;
				4'b0110: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0110;
				4'b0111: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b0110;
				4'b1000: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1000;
				4'b1001: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1001;
				4'b1010: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1010;
				4'b1011: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1010;
				4'b1100: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1100;
				4'b1101: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1100;
				4'b1110: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1100;
				4'b1111: {Priority[3],Priority[2],Priority[1],Priority[0]} = 4'b1100;
			endcase
		end
	endmodule 