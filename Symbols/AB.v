module AB(clk,aslane,s,as1,as2,as3,as4,cur1,cur2,cur3,cur4,Lights,sin);
	input[3:0] aslane,cur1,cur2,cur3,cur4;
	input[1:0] sin;
	input clk;
	output [3:0] s,Lights;
	output [1:0] as1,as2,as3,as4;
	reg [3:0] s,Lights;
	reg [1:0] as1,as2,as3,as4;
	reg [2:0] fl1,fl2,fl3,fl4,lane;
	
	
	always @(posedge clk)begin
		if(sin==2'b11 || sin==2'b00)begin
			{as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000000000000;
			lane=3'b001;
		end
		if(sin==2'b01)begin
				lane=3'b001;
				case({aslane})
					4'b0000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000000000000;
					4'b0001: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0100000000010000;
					4'b0010: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0001000000100000;
					4'b0100: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000010001000000;
					4'b1000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000110000000;
			endcase
			end
		if(sin==2'b10)begin
					if(lane==3'b001)begin
						if(fl1==3'b101)begin
							lane=lane+1'b1;
							fl1=3'b000;
						end
						else begin
							if(cur1==4'b0000)begin
								lane=lane+1'b1;
								fl1=3'b000;
							end
							else begin
								case({aslane})
									4'b0000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b1000000000010001;
									4'b0001: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000000000001;
									4'b0010: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b1001000000110001;
									4'b0100: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b1000010001010001;
									4'b1000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b1000000110010001;
								endcase
								fl1=fl1+1'b1;
							end
						end
					end
					if(lane==3'b010)begin
						if(fl2==3'b101)begin
							lane=lane+1'b1;
							fl2=3'b000;
						end
						else begin
							if(cur2==4'b0000)begin
								lane=lane+1'b1;
								fl2=3'b000;
							end
							else begin
								case({aslane})
									4'b0000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0010000000100010;
									4'b0001: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0110000000110010;
									4'b0010: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000000000010;
									4'b0100: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0010010001100010;
									4'b1000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0010000110100010;
								endcase
								fl2=fl2+1'b1;
							end
						end
					end
					if(lane==3'b011)begin
						if(fl3==3'b101)begin
							lane=lane+1'b1;
							fl3=3'b000;
						end
						else begin 
							if(cur3==4'b0000)begin
								lane=lane+1'b1;
								fl3=3'b000;
							end
							else begin
								case({aslane})
									4'b0000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000100001000100;
									4'b0001: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0100100001010100;
									4'b0010: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0001100001100100;
									4'b0100: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000000000100;
									4'b1000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000100111000100;
								endcase
								fl3=fl3+1'b1;
							end
						end
					end
						if(lane==3'b100)begin
							if(fl4==3'b101)begin
								lane=3'b001;
								fl4=3'b000;
							end
							else begin
								if(cur4==4'b0000)begin
									lane=3'b001;
									fl4=3'b000;
								end
								else begin
									case({aslane})
										4'b0000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000001010001000;
										4'b0001: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0100001010011000;
										4'b0010: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0001001010101000;
										4'b0100: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000011011001000;
										4'b1000: {as1[1],as1[0],as2[1],as2[0],as3[1],as3[0],as4[1],as4[0],s[3],s[2],s[1],s[0],Lights[3],Lights[2],Lights[1],Lights[0]} = 16'b0000000000001000;
									endcase
									fl4=fl4+1'b1;
								end
							end
						end
					end	
			end
endmodule 