// iverilog addsub.v addsub_tb.v -o pl1


module top;
reg [7:0] a;
reg [7:0] b;
reg add_sub;	  // if this is 1, add; else subtract
// input clk,
wire selec1;
wire [8:0] result;


addsub s1(a,b,add_sub,selec1,result);
// addsub s1(a,b,add_sub,select1,result);


initial
begin

a = 8'b00000011;b = 8'b00000010;add_sub = 1;#10;
a = 8'b00000101;b = 8'b00000110;add_sub = 1;#10;

a = 8'b00000111;b = 8'b00000111;add_sub = 1;#10;
a = 8'b00000111;b = 8'b00001111;add_sub = 0;#10;
a = 8'b00000111;b = 8'b00000111;add_sub = 1;#10;


a = 8'b00001111;b = 8'b00001010;add_sub = 0;#10;
a = 8'b11111100; b= 8'd252;add_sub = 1;#10;
a = 8'b11111110; b= 8'd252;add_sub = 0;#10;

a = 8'b11111100; b= 8'd255;add_sub = 0;#10;

a = 8'b11111110; b= 8'd22;add_sub = 1;#10;



// a = 16'b0000000000000011;b=16'b0000000000000010;cin = 1'b0; #10;sgn = 1;
//
//     a = 16'b0000000000000000;b=16'b0000000000000000;cin = 1'b0;#10;sgn = 1;
//     a = 16'b0000000000000001;b=16'b0000000000000000;cin = 1'b0;#10;sgn = 1;
//      a = 16'b0000000000001011;b=16'b0000000000000111;cin = 1'b0; #10;sgn = 1;
//      a = 16'b0000001100001111;b=16'b0000000000001111;cin = 1'b0; #10;sgn = 1;
//     // a = 16'd12;b=16'd24;cin = 1'b1; #10;sgn = 1;
//     a = 16'b0000101100001111;b=16'b0000000000101111;cin = 1'b0; #10;sgn = 1;
//     a = 16'b0000101100001111;b=16'b0000000010001011;cin = 1'b0; #10;sgn = 1;
//     a = 16'b0001001100001111;b=16'b0000000000011101;cin = 1'b0; #10;sgn = 1;
//     a = 16'b0001001100001111;b=16'b0000000001001111;cin = 1'b0; #10;sgn = 1;
//     a = 16'b0001000001010110;b=16'b0000000001011101;cin = 1'b0; #10;sgn = 1;
//     a = 16'd5560;b=16'd101;cin = 1'b0; #10;sgn = 0;
//     a = 16'd61560;b=16'd60101;cin = 1'b0; #10;sgn = 0;
//     a = 16'd65530;b=16'd60101;cin = 1'b0; #10;sgn = 0;

    // b = !b;


end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d,  sign=%d, a=%d, b=%d Ans=%d sign = %d", $time,add_sub,a, b,result,selec1);
$dumpfile("dadderng.vcd");
$dumpvars(0,top);
end



endmodule // top
