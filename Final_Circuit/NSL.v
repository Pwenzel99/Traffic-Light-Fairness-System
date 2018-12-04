module NSL(y2, y1, y0, z, Q2, Q1, Q0);
     input y2, y1, y0;
	  input [2:0] z;
     output Q2, Q1, Q0;     
     assign Q2 = (z[2]&y2)|(z[0]&y2&y0)|(z[0]&y2&y1)|(z[1]&y2&y0)|(z[2]&~z[1]&~z[0])|(z[2]&~z[0]&~y1&~y0);
     assign Q1 = (z[1]&y1)|(~z[2]&z[1]&~y2)|(z[0]&y2&y1)|(z[2]&z[0]&y1)|(z[1]&~z[0]&~y2&~y0)|(z[2]&~z[1]&~z[0]&y2&y0);
     assign Q0 = (z[0]&y0)|(~z[2]&z[0]&~y2)|(~z[2]&z[0]&~y1)|(z[2]&z[1]&y0)|(~z[1]&z[0]&y2&~y1)|(z[2]&~z[0]&y2&y1);
endmodule