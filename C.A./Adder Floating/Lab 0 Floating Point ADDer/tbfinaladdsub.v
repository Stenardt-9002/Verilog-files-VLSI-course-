// iverilog doubling_recursion.v doubletb.v -o main2
// iverilog finaladdsub.v tbfinaladdsub.v -o mina5
module top ;

// reg [16:1] a;
// reg [16:1] b;

reg [15:0] a;
reg [15:0] b;
reg cin;
reg sgn;
	// Outputs
// wire [16:1] sum;
// wire [16:1] carry1;
// wire [16:0][1:0]carry;
wire [15:0] ans1;
wire cout;
wire select1;
// RCA16bit m1(a,b,cin,sum,cout);
addsub m2(a,b,sgn,5'd16,ans1,select1);

initial
begin

#10;
    a = 16'b0000000000000000;b=16'b0000000000000000;cin = 1'b0;#10;sgn = 1;
    a = 16'b0000000000000001;b=16'b0000000000000000;cin = 1'b0;#10;sgn = 1;
     a = 16'b0000000000000011;b=16'b0000000000000011;cin = 1'b0; #10;sgn = 1;
     a = 16'b0000000000001011;b=16'b0000000000000111;cin = 1'b0; #10;sgn = 1;
     a = 16'b0000001100001111;b=16'b0000000000001111;cin = 1'b0; #10;sgn = 1;
    // a = 16'd12;b=16'd24;cin = 1'b1; #10;sgn = 1;
    a = 16'b0000001100001111;b=16'b0000000000101111;cin = 1'b0; #10;sgn = 1;
    a = 16'b0000001100001111;b=16'b0000000010001011;cin = 1'b0; #10;sgn = 1;
    a = 16'b0000001100001111;b=16'b0000000000011101;cin = 1'b0; #10;sgn = 1;
    a = 16'b0000001100001111;b=16'b0000000001001111;cin = 1'b0; #10;sgn = 1;
    a = 16'b0000000001010110;b=16'b0000000001011101;cin = 1'b0; #10;sgn = 1;
    a = 16'd5560;b=16'd8101;cin = 1'b0; #10;sgn = 1;
    a = 16'd61560;b=16'd60101;cin = 1'b0;sgn = 0; #10;
    a = 16'd1560;b=16'd100;cin = 1'b0; #10;sgn = 0;
    a = 16'd1260;b=16'd1101;cin = 1'b0; #10;sgn = 0;
    a = 16'd1560;b=16'd100;cin = 1'b0; #10;sgn = 0;
    a = 16'd1260;b=16'd2101;cin = 1'b0; #10;sgn = 0;



    // a = 16'd61560;b=16'd64101;cin = 1'b0; #10;sgn = 0;


    // a = 16'd65536;b=16'd65537;cin = 1'b0; #10;sgn = 0;

    // b = !b;


end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d,   a=%d, b=%d, Ans=%d,sgn = %d,neg = %d", $time,a, b,ans1,sgn,select1);
$dumpfile("doubling.vcd");
$dumpvars(0,top);
end

endmodule
