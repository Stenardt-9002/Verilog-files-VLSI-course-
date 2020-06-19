// // iverilog encoder1.v tbencoder1.v -o p1
//
// module top;
// reg [9:0] a;
// // reg [4:0] b;
// reg endable;	  // if this is 1, add; else subtract
// // input clk,
// // wire selec1;
// wire [3:0] result;
//
//
// // addsubexp s1(a,b,endable,selec1,result);
// // addsub s1(a,b,endable,select1,result);
//
// pri_encoder_using_if s1(result,a,endable);
//
// initial
// begin
//
// a = 10'b1001000011;endable = 1;#10;
// a = 10'b1001000101;endable = 1;#10;
//
// a = 10'b1001001111;endable = 1;#10;
// a = 10'b0001100111;endable = 1;#10;
// a = 10'b1001010111;endable = 1;#10;
//
//
// a = 10'b0011001111;endable = 0;#10;
// a = 10'b0101011100; endable = 1;#10;
// a = 10'b1101001010; endable = 0;#10;
//
// a = 10'b1101000110; endable = 0;#10;
//
// a = 10'b1101001111; endable = 1;#10;
//
//
//
// // a = 16'b0000000000000011;b=16'b0000000000000010;cin = 1'b00; #10;sgn = 1;
// //
// //     a = 16'b0000000000000000;b=16'b0000000000000000;cin = 1'b0;#10;sgn = 1;
// //     a = 16'b0000000000000001;b=16'b0000000000000000;cin = 1'b0;#10;sgn = 1;
// //      a = 16'b0000000000001011;b=16'b0000000000000111;cin = 1'b0; #10;sgn = 1;
// //      a = 16'b0000001100001111;b=16'b0000000000001111;cin = 1'b0; #10;sgn = 1;
// //     // a = 16'd12;b=16'd24;cin = 1'b1; #10;sgn = 1;
// //     a = 16'b0000101100001111;b=16'b0000000000101111;cin = 1'b0; #10;sgn = 1;
// //     a = 16'b0000101100001111;b=16'b0000000010001011;cin = 1'b0; #10;sgn = 1;
// //     a = 16'b0001001100001111;b=16'b0000000000011101;cin = 1'b0; #10;sgn = 1;
// //     a = 16'b0001001100001111;b=16'b0000000001001111;cin = 1'b0; #10;sgn = 1;
// //     a = 16'b0001000001010110;b=16'b0000000001011101;cin = 1'b0; #10;sgn = 1;
// //     a = 16'd5560;b=16'd101;cin = 1'b0; #10;sgn = 0;
// //     a = 16'd61560;b=16'd60101;cin = 1'b0; #10;sgn = 0;
// //     a = 16'd65530;b=16'd60101;cin = 1'b0; #10;sgn = 0;
//
//     // b = !b;
//
//
// end
//
// initial
// begin
// // $monitor("time = %2d,")
// $monitor("time = %2d, a=%d, enavle = %d ,b = %d", $time,a,endable, result);
// $dumpfile("encodering.vcd");
// $dumpvars(0,top);
// end
//
//
//
// endmodule // top






//again for modified encoder



// iverilog encoder1.v tbencoder1.v -o p1

module top;
reg [11:0] a;
// reg [4:0] b;

reg endable;	  // if this is 1, add; else subtract
// input clk,
// wire selec1;
wire [3:0] result;


// addsubexp s1(a,b,endable,selec1,result);
// addsub s1(a,b,endable,select1,result);

pri_encoder_using_if s1(result,a,endable);

initial
begin

a = 12'b01001000011;endable = 1;#10;
a = 12'b01001000101;endable = 1;#10;

a = 12'b01001001111;endable = 1;#10;
a = 12'b00001100111;endable = 1;#10;
a = 12'b01001010111;endable = 1;#10;


a = 12'b00011001111;endable = 0;#10;
a = 12'b00101011100; endable = 1;#10;
a = 12'b01101001010; endable = 0;#10;

a = 12'b01101000110; endable = 0;#10;

a = 12'b01101001111; endable = 1;#10;



end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d, a=%d, enable = %d ,b = %d", $time,a,endable, result);
$dumpfile("encodering.vcd");
$dumpvars(0,top);
end



endmodule // top
