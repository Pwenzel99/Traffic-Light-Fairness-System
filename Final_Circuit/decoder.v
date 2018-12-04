module decoder(w0, w1, En, y0, y1, y2, y3);
     input w0, w1, En;
     output y0, y1, y2, y3;
	  
     assign y0 = ~w1&~w0&En;
     assign y1 = ~w1&w0&En;
     assign y2 = w1&~w0&En;
     assign y3 = w1&w0&En;

endmodule