module StateDecider(State,StateAE,GF);
	input [3:0] State;
	output [4:0] StateAE;
	output [1:0] GF;
	reg [1:0] GF;
	reg [4:0] StateAE;
	
	always @(State)
		begin
			case(State)
				4'b0000: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b0000001;
				4'b0001: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b0000010;
				4'b0010: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b0000100;
				4'b0100: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b0001000;
				4'b1000: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b0010000;
				4'b1111: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b0100000;
				4'b1110: {GF[1],GF[0],StateAE[4],StateAE[3],StateAE[2],StateAE[1],StateAE[0]} = 7'b1000000;
			endcase
		end
	endmodule