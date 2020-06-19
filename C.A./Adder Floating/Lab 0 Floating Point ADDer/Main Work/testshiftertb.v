
// iverilog testshifter.v testshiftertb.v -o l12



module barrel_shifter_8bit_tb;
  reg [7:0] in;
  reg [3:0] ctrl;
  wire [7:0] out;

barrel_shifter_8bit uut(.a(in), .shiftamnt(ctrl), .b(out));

initial
 begin
        in= 8'd0;  ctrl=3'd0; //no shift
    #10 in=8'd128; ctrl= 3'd4; //shift 4 bit
    #10 in=8'd128; ctrl= 3'd2; //shift 2 bit
    #10 in=8'd128; ctrl= 3'd1; //shift by 1 bit
    #10 in=8'd255; ctrl= 3'd7; //shift by 7bit
  end

    initial
    begin
    // $monitor("time = %2d,")
    $monitor("time = %2d,  a=%d, amnt = %d, b=%d ", $time,in,ctrl,out);
    $dumpfile("rng.vcd");
    $dumpvars(0,barrel_shifter_8bit_tb);
    end

endmodule
