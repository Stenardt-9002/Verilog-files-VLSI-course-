// iverilog moduleswap1.v tbswapmodile.v -o sapwa

module top;
reg [9:0] inp1;//first one reserved for before floating point
reg [9:0] inp2;//first one reserved for before floating point
reg sgn1,sgn2;
reg [4:0] exp1;
reg [4:0] exp2;

wire [9:0] outinp1;//first one reserved for before floating point
wire [9:0] outinp2;//first one reserved for before floating point
wire outsign1,outsgn2;
wire [4:0] outexp1;
wire [4:0] outexp2;


swap1m v1(inp1,sgn1,exp1,inp2,sgn2,exp2,outinp1,outsign1,outexp1,outinp2,outsgn2,outexp2);
// addsub s1(a,b,add_sub,select1,result);


initial
begin



inp1 = 10'b0000000000;inp2 = 10'd32;sgn1 = 0;exp1 = 5'd17;sgn2 = 0;exp2 =5'd11 ; #10;
inp1 = 10'b0000000001;inp2 = 10'b0000000000;sgn1 = 0;exp1 = 5'd17;sgn2 = 0;exp2 =5'd11 ;#10;
 inp1 = 10'b0000000011;inp2 = 10'b0000000001;sgn1 = 0;exp1 = 5'd14;sgn2 = 0;exp2 =5'd11 ; #10;
 inp1 = 10'd14;        inp2 = 10'd3;         sgn1 = 0;exp1 = 5'd11;sgn2 = 0;exp2 =5'd11 ; #10;
 inp1 = 10'd484;       inp2 = 10'd391;sgn1 = 0;exp1 = 5'd9;sgn2 = 0;exp2 =5'd11 ; #10;
 inp1 = 10'd897       ;inp2 = 10'd141;sgn1 = 0;exp1 = 5'd29;sgn2 = 0;exp2 =5'd27 ; #10;



     inp1 = 10'b0000000000;inp2 = 10'd32;sgn1 = 0;exp1 = 5'd17;sgn2 = 0;exp2 =5'd11 ; #10;
     inp1 = 10'b0000000001;inp2 = 10'b0000000000;sgn1 = 0;exp1 = 5'd17;sgn2 = 0;exp2 =5'd11 ;#10;
      inp1 = 10'b0000000011;inp2 = 10'b0000000001;sgn1 = 0;exp1 = 5'd14;sgn2 = 0;exp2 =5'd11 ; #10;
      inp1 = 10'd14;        inp2 = 10'd3;         sgn1 = 0;exp1 = 5'd11;sgn2 = 0;exp2 =5'd11 ; #10;
      inp1 = 10'd484;       inp2 = 10'd391;sgn1 = 0;exp1 = 5'd9;sgn2 = 0;exp2 =5'd11 ; #10;
      inp1 = 10'd897       ;inp2 = 10'd141;sgn1 = 0;exp1 = 5'd29;sgn2 = 0;exp2 =5'd27 ; #10;



end

initial
begin
// $monitor("time = %2d,")
// $monitor("time = %2d,  addorsub=%d, a=%d, b=%d Ans=%d sign = %d", $time,add_sub,a, b,result,selec1);
$monitor("time = %2d, inp1 = %d,sgn1 = %d,exp1 = %d,inp2 = %d,sgn2 = %d,exp2 = %d,outinp1 = %d,outsign1 = %d,outexp1 = %d,outinp2 = %d,outsgn2 = %d,outexp2 = %d", $time,inp1,sgn1,exp1,inp2,sgn2,exp2,outinp1,outsign1,outexp1,outinp2,outsgn2,outexp2);

$dumpfile("Sarpcreterds.vcd");
$dumpvars(0,top);
end



endmodule // top
