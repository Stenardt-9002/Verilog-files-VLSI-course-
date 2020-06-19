// iverilog doubling_recursion.v doubletb.v -o main2

module top ;

// reg [16:1] a;
// reg [16:1] b;

reg [15:0] a;
reg [15:0] b;
reg cin;

	// Outputs
// wire [16:1] sum;
// wire [16:1] carry1;
// wire [16:0][1:0]carry;
wire [16:0] ans1;

// RCA16bit m1(a,b,cin,sum,cout);
doubling_recursion m2(a,b,cin,ans1);

initial
begin


    a = 16'b0000000000000000;b=16'b0000000000000000;cin = 1'b0;
    #10
    a = 16'b0000000000000001;b=16'b0000000000000000;cin = 1'b0;#10
     a = 16'b0000000000000011;b=16'b0000000000000011;cin = 1'b0; #10;
     a = 16'b0000000000001011;b=16'b0000000000000111;cin = 1'b0; #10;
     a = 16'b0000001100001111;b=16'b0000000000001111;cin = 1'b0; #10;
    // a = 16'd12;b=16'd24;cin = 1'b1; #10;
    a = 16'b0000001100001111;b=16'b0000000000101111;cin = 1'b0; #10;
    a = 16'b0000001100001111;b=16'b0000000010001011;cin = 1'b0; #10;
    a = 16'b0000001100001111;b=16'b0000000000011101;cin = 1'b0; #10;
    a = 16'b0000001100001111;b=16'b0000000001001111;cin = 1'b0; #10;
    a = 16'b0000000001010110;b=16'b0000000001011101;cin = 1'b0; #10;
    a = 16'd5560;b=16'd8101;cin = 1'b0; #10;
    a = 16'd61560;b=16'd60101;cin = 1'b0; #10;



end

initial
begin
// $monitor("time = %2d,")
$monitor("time = %2d,  cin=%d, a=%d, b=%d, Ans=%d", $time,cin,a, b,ans1);
$dumpfile("doubling.vcd");
$dumpvars(0,top);
end

endmodule
