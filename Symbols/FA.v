module FA(X,Y,Cin,Cout,S);
	input X,Y,Cin;
	output Cout,S;
	
	assign Cout = ((~X&Y&Cin)|(X&~Y&Cin)|(X&Y));
	assign S = ((~X&~Y&Cin)|(~X&Y&~Cin)|(X&~Y&~Cin)|(X&Y&Cin));
	
endmodule