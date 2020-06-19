// iverilog expaddsub.v expaddsubtb.v -o p4jul


module top;
reg [10:0] a;
reg [10:0] b;
reg add_sub;	  // if this is 1, add; else subtract
// input clk,
wire selec1;
wire [11:0] result;


addsub s1(a,b,add_sub,selec1,result);
// addsub s1(a,b,add_sub,select1,result);


initial
begin

a = 11'b00000011;b = 11'b00000010;add_sub = 1;#10;
a = 11'b00000101;b = 11'b00000110;add_sub = 1;#10;

a = 11'b00000111;b = 11'b00000111;add_sub = 1;#10;
a = 11'b00000111;b = 11'b00001111;add_sub = 0;#10;
a = 11'b00000111;b = 11'b00000111;add_sub = 1;#10;


a = 11'b00001111;b = 11'b00001010;add_sub = 0;#10;
a = 11'b11111100; b= 11'd252;add_sub = 1;#10;
a = 11'b11111110; b= 11'd752;add_sub = 1;#10;
a = 11'b11111101; b= 11'd52;add_sub = 1;#10;

a = 11'b11111100; b= 11'd255;add_sub = 0;#10;

a = 11'b11111110; b= 11'd22;add_sub = 1;#10;
a = 11'b10000000000; b= 11'b11111111111;add_sub = 0;#10;




end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d,  addorsub=%d, a=%d, b=%d Ans=%d sign = %d", $time,add_sub,a, b,result,selec1);
$dumpfile("youmisswedupname.vcd");
$dumpvars(0,top);
end



endmodule // top
