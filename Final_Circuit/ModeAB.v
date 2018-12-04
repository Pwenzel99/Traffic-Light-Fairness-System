module ModeAB(sin,lane,aslane);
	input [1:0] sin;
	input [3:0] lane;
	output [3:0] aslane;
	reg [3:0] aslane;
	
	always @(*)
		begin
			case({sin,lane})
				6'b000000: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000001: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000010: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000011: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000100: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000101: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000110: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b000111: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001000: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001001: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001010: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001011: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001100: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001101: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001110: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b001111: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b011000: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011001: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011010: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011011: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011100: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011101: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011110: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b011111: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b010100: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b010101: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b010110: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b010111: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b010010: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0010;
				6'b010011: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0010;
				6'b010001: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0001;
				6'b010000: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
				6'b101000: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101001: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101010: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101011: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101100: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101101: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101110: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b101111: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b1000;
				6'b100100: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b100101: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b100110: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b100111: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0100;
				6'b100010: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0010;
				6'b100011: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0010;
				6'b100001: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0001;
				6'b100000: {aslane[3],aslane[2],aslane[1],aslane[0]} = 4'b0000;
			endcase
		end
endmodule 
				