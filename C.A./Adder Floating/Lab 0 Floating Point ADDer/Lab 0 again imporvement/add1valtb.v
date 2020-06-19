// iverilog add1toval.v  add1valtb.v -o oknwe

module top;
reg [9:0] a;
reg add_sub;	  // if this is 1, add; else keep same
// input clk,
wire [10:0] result;


add1toval s1(a,add_sub,result);
// addsub s1(a,b,add_sub,select1,result);


initial
begin

a = 5'b00011;add_sub = 1;#10;
a = 5'b00101;add_sub = 1;#10;

a = 5'b00111;add_sub = 1;#10;
a = 5'b00111;add_sub = 1;#10;
a = 5'b00111;add_sub = 1;#10;


a = 5'b01111;add_sub = 1;#10;
a = 5'b11100; add_sub = 1;#10;
a = 5'b11110; add_sub = 0;#10;

a = 5'b10100; add_sub = 1;#10;

a = 5'b11111; add_sub = 1;#10;



end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d, a=%d,enable = %d Ans=%d ", $time,a, add_sub ,result);
$dumpfile("dadderingyesbutno.vcd");
$dumpvars(0,top);
end



endmodule // top
