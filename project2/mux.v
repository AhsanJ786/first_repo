module mux(a,b,s,y);
input a,b,s;
output y;
wire a,b,s;
reg y;
always @*
begin
case(s)
	1'b0 : y=b;
	1'b1 : y=a;
endcase
end
endmodule
