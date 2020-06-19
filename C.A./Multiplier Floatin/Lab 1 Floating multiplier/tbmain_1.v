module top;

reg [15:0] inp1;//first one reserved for before floating point
reg [15:0] inp2;//
// wire [31:0]outputmin1;
wire [15:0]outputmin1;

mutiplier1super m1(inp1,inp2,outputmin1);

initial
begin


    inp1 = 16'd23275;inp2=16'd16995; #10;
    inp1 = 16'd1024;inp2=16'd1024; #10;
    inp1 = 16'd512;inp2=16'd512; #10;
    inp1 = 16'd0;inp2=16'd0; #10;
    inp1 = 16'b1101101011101011 ; inp2 = 16'b0100001001100011;#10;
    inp1 = 16'b1111101011101011 ; inp2 = 16'b0110001001100011;#10;
    inp1 = 16'b1100010100000000;  inp2 = 16'b1100010100000000;#10;
    inp1 = 16'b1100010100000000;  inp2 = 16'b0000000000000000;#10;




end




initial
begin
// $monitor("time = %2d,")


// $monitor($time, "inp1 = %d_%d,   exp1 = %d,   inp2 = %d_%d,    exp2 = %d,,aout = %d,\n",inp1[15],inp1[9:0],inp1[14:10],inp2[15],inp2[9:0],inp2[14:10],outputmin1);
$monitor($time, "   inp1 = %b_%b.%b,   exp1 = %b,   inp2 = %b_%b.%b,    exp2 = %b,aoutexp = %b, aout = %b_%b.%b,\n",
inp1[15],1'b1,inp1[9:0],inp1[14:10],inp2[15],1'b1,inp2[9:0],inp2[14:10],outputmin1[14:10],outputmin1[15],1'b1,outputmin1[9:0]);


$dumpfile("mianfile.vcd");
$dumpvars(0,top);
end


endmodule // top
