module test;
reg a,b,s;
wire y;
mux uut ( .a(a),
	.b(b),
	.s(s),
	.y(y)
);
initial begin
	s=0;a=0;b=0;
	#100 s=0;a=0;b=1;
	#100 s=0;a=1;b=0;
	#100 s=0;a=1;b=1;
	#100 s=1;a=0;b=0;
	#100 s=1;a=0;b=1;
	#100 s=1;a=1;b=0;
	#100 s=1;a=1;b=1;
end
initial begin
	$monitor($time,"a=%b,b=%b,s=%b,y=%b",a,b,s,y);
end
endmodule
