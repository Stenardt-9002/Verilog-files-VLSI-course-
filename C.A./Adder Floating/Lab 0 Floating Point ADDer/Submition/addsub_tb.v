// iverilog add12sub.v addsub_tb.v -o mit

module top;
reg [4:0] a;
reg [4:0] b;
reg add_sub;	  // if this is 1, add; else subtract
// input clk,
wire selec1;
wire [5:0] result;


addsubexp s1(a,b,add_sub,selec1,result);
// addsub s1(a,b,add_sub,select1,result);


initial
begin

a = 5'b00011;b = 5'b00010;add_sub = 1;#10;
a = 5'b00101;b = 5'b00110;add_sub = 0;#10;

a = 5'b00111;b = 5'b00111;add_sub = 1;#10;
a = 5'b00111;b = 5'b01111;add_sub = 0;#10;
a = 5'b00111;b = 5'b00011;add_sub = 1;#10;


a = 5'b01111;b = 5'b00000;add_sub = 0;#10;
a = 5'b11100; b= 5'd22;add_sub = 1;#10;
a = 5'b11110; b= 5'd12;add_sub = 0;#10;

a = 5'b10100; b= 5'd15;add_sub = 0;#10;

a = 5'b11110; b= 5'd22;add_sub = 1;#10;



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
$monitor("time = %2d,  addorsub=%d, a=%d, b=%d Ans=%d sign = %d", $time,add_sub,a, b,result,selec1);
$dumpfile("daddering.vcd");
$dumpvars(0,top);
end



endmodule // top
