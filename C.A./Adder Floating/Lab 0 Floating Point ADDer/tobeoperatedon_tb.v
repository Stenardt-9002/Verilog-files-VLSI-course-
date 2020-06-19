// iverilog doubling_recursion.v doubletb.v -o main2
// iver
// iverilog tobeoperatedupon.v tobeoperatedon_tb.v -o main1
module top ;

// reg [16:1] a;
// reg [16:1] b;

reg [15:0] a;
reg [15:0] b;
reg sign1,sign2;
reg [7:0] a1;
reg [7:0] b1;
wire signout;
wire [15:0] aout;
wire [7:0] expout;
reg cin;

	// Outputs
// wire [16:1] sum;
// wire [16:1] carry1;
// wire [16:0][1:0]carry;
wire [16:0] ans1;

// RCA16bit m1(a,b,cin,sum,cout);
floatingptoper m2(a,sign1,a1,b,sign2,b1,aout,signout,expout);

initial
begin


    a = 16'b0000000000000000;b=16'b0000000000000000;;   sign1 = 0;a1 = 8'd17;sign2 = 0;b1 =8'd11 ; #10;
    a = 16'b0000000000000001;b=16'b0000000000000000;sign1 = 0;a1 = 8'd17;sign2 = 0;b1 =8'd11 ;#10;
     a = 16'b0000000000000011;b=16'b0000000000000011;sign1 = 0;a1 = 8'd14;sign2 = 0;b1 =8'd11 ; #10;
     a = 16'b0000000000001011;b=16'b0000000000000111;sign1 = 0;a1 = 8'd11;sign2 = 0;b1 =8'd11 ; #10;
     a = 16'b0000001100001111;b=16'b0000000000001111;sign1 = 0;a1 = 8'd9;sign2 = 0;b1 =8'd11 ; #10;



end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d, a = %d,sign1 = %d,a1 = %d,b = %d,sign2 = %d,b1 = %d,aout = %d,signout = %d,expout = %d", $time,a,sign1,a1,b,sign2,b1,aout,signout,expout);
$dumpfile("mianfile.vcd");
$dumpvars(0,top);
end

endmodule
