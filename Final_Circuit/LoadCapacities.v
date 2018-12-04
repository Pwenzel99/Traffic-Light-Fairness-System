module LoadCapacities(LaneCap,StateAE,Out,c1,c2,c3,c4,Cap1,Cap2,Cap3,Cap4,CapC);
	input [3:0] LaneCap,c1,c2,c3,c4;
	input [4:0] StateAE;
	output [8:0] Out;
	output [3:0] Cap1,Cap2,Cap3,Cap4,CapC;
	reg [8:0] Out;
	reg [3:0] Cap1,Cap2,Cap3,Cap4,CapC;
	integer j=0;
	
	always @(*)begin
		if(c1==4'b0000)begin
			CapC[0]=1'b1;
		end
		else begin
			CapC[0]=1'b0;
		end
		if(c2==4'b0000)begin
			CapC[1]=1'b1;
		end
		else begin
			CapC[1]=1'b0;
		end
		if(c3==4'b0000)begin
			CapC[2]=1'b1;
		end
		else begin
			CapC[2]=1'b0;
		end
		if(c4==4'b0000)begin
			CapC[3]=1'b1;
		end
		else begin
			CapC[3]=1'b0;
		end
		if(StateAE[0]==1'b1 || StateAE==4'b0000)begin
			for(j=8;j>=0;j=j-1)begin
				Out[j]=1'b0;
			end
		end
		if(StateAE[1]==1'b1)begin
			for(j=0;j<4;j=j+1)begin
				Cap1[j] = LaneCap[j];
				Out[j] = LaneCap[j];
			end
			Out[8] = 1'b0;
			Out[7] = 1'b0;
			Out[6] = 1'b1;
			Out[5] = 1'b0;
			Out[4] = 1'b0;
		end
		if(StateAE[2]==1'b1)begin
			for(j=0;j<4;j=j+1)begin
				Cap2[j] = LaneCap[j];
				Out[j] = LaneCap[j];
			end
			Out[8] = 1'b1;
			Out[7] = 1'b0;
			Out[6] = 1'b1;
			Out[5] = 1'b0;
			Out[4] = 1'b1;
		end
		if(StateAE[3]==1'b1)begin
			for(j=0;j<4;j=j+1)begin
				Cap3[j] = LaneCap[j];
				Out[j] = LaneCap[j];
			end
			Out[8] = 1'b0;
			Out[7] = 1'b1;
			Out[6] = 1'b1;
			Out[5] = 1'b1;
			Out[4] = 1'b0;
		end
		if(StateAE[4]==1'b1)begin
			for(j=0;j<4;j=j+1)begin
				Cap4[j] = LaneCap[j];
				Out[j] = LaneCap[j];
			end
			Out[8] = 1'b1;
			Out[7] = 1'b1;
			Out[6] = 1'b1;
			Out[5] = 1'b1;
			Out[4] = 1'b1;
		end
	end
endmodule 