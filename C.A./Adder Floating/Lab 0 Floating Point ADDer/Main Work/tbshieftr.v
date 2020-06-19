// iverilog shifter1.v tbshieftr.v -o shift12


// module top;
// reg [7:0] a;
// reg [2:0]mag;	  // if this is 1, add; else subtract
// wire [7:0] b;
//
//
// toshift s1(a,b,mag);
//
//
// initial
// begin
// a = 8'b00000010;mag = 3'b000;#10;
//
// a = 8'b00000010;mag = 3'b101;#10;
// a = 8'b00100110;mag = 3'b111;#10;
//
// a = 8'b00000111;mag = 3'b001;#10;
// a = 8'b11101111;mag = 3'b001;#10;
// a = 8'b00110111;mag = 3'b101;#10;
//
// //
// // a = 8'b00001111;mag = 3'b101;#10;
// // a = 8'b11111100;mag = 3'b101;#10;
// // a = 8'b11111110;mag = 3'b101;#10;
//
//
//
// end
//
// initial
// begin
// // $monitor("time = %2d,")
// $monitor("time = %2d,  a=%d, amnt = %d, b=%d ", $time,a, mag , b);
// $dumpfile("rng.vcd");
// $dumpvars(0,top);
// end
//
//
//
// endmodule // top








module barrel_shifter_11bit_tb;
  reg [10:0] in;
  reg [4:0] ctrl;
  wire [10:0] out;
  reg lftorrght;

barrel_shifter_11bit uut(.a(in), .shiftamnt(ctrl), .b(out));

initial
 begin
        in= 8'd0;  ctrl=3'd0; //no shift
    #10 in=8'd128; ctrl= 3'd4; //shift 4 bit
    #10 in=8'd128; ctrl= 3'd2;
    #10 in=8'd128; ctrl= 3'd1;
    #10 in=8'd255; ctrl= 3'd7;
    #10 in=10'd1023; ctrl= 4'd9;
    #10 in=10'd1023; ctrl= 4'd11;


  end

    initial
    begin
    // $monitor("time = %2d,")
    $monitor("time = %2d,  a=%d, amnt = %d, b=%d ", $time,in,ctrl,out);
    $dumpfile("rng.vcd");
    $dumpvars(0,barrel_shifter_8bit_tb);
    end

endmodule
