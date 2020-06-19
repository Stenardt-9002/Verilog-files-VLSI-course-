///8 bit Barrel Shifter Verilog Code
///////////////////////////////////////
// iverilog testshifter.v testshiftertb.v -o l12


module barrel_shifter_8bit (a, shiftamnt, b);
  input  [7:0] a;
  input [3:0] shiftamnt;
  output [7:0] b;
  wire [7:0] x,y;

//4bit shift right
mux2_1  ins_17 (.in0(a[7]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[7]));
mux2_1  ins_16 (.in0(a[6]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[6]));
mux2_1  ins_15 (.in0(a[5]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[5]));
mux2_1  ins_14 (.in0(a[4]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[4]));
mux2_1  ins_13 (.in0(a[3]),.in1(a[7]),.sel(shiftamnt[2]),.b(x[3]));
mux2_1  ins_12 (.in0(a[2]),.in1(a[6]),.sel(shiftamnt[2]),.b(x[2]));
mux2_1  ins_11 (.in0(a[1]),.in1(a[5]),.sel(shiftamnt[2]),.b(x[1]));
mux2_1  ins_10 (.in0(a[0]),.in1(a[4]),.sel(shiftamnt[2]),.b(x[0]));

//2 bit shift right

mux2_1  ins_27 (.in0(x[7]),.in1(1'b0),.sel(shiftamnt[1]),.b(y[7]));
mux2_1  ins_26 (.in0(x[6]),.in1(1'b0),.sel(shiftamnt[1]),.b(y[6]));
mux2_1  ins_25 (.in0(x[5]),.in1(x[7]),.sel(shiftamnt[1]),.b(y[5]));
mux2_1  ins_24 (.in0(x[4]),.in1(x[6]),.sel(shiftamnt[1]),.b(y[4]));
mux2_1  ins_23 (.in0(x[3]),.in1(x[5]),.sel(shiftamnt[1]),.b(y[3]));
mux2_1  ins_22 (.in0(x[2]),.in1(x[4]),.sel(shiftamnt[1]),.b(y[2]));
mux2_1  ins_21 (.in0(x[1]),.in1(x[3]),.sel(shiftamnt[1]),.b(y[1]));
mux2_1  ins_20 (.in0(x[0]),.in1(x[2]),.sel(shiftamnt[1]),.b(y[0]));

//1 bit shift right
mux2_1  ins_07 (.in0(y[7]),.in1(1'b0),.sel(shiftamnt[0]),.b(b[7]));
mux2_1  ins_06 (.in0(y[6]),.in1(y[7]),.sel(shiftamnt[0]),.b(b[6]));
mux2_1  ins_05 (.in0(y[5]),.in1(y[6]),.sel(shiftamnt[0]),.b(b[5]));
mux2_1  ins_04 (.in0(y[4]),.in1(y[5]),.sel(shiftamnt[0]),.b(b[4]));
mux2_1  ins_03 (.in0(y[3]),.in1(y[4]),.sel(shiftamnt[0]),.b(b[3]));
mux2_1  ins_02 (.in0(y[2]),.in1(y[3]),.sel(shiftamnt[0]),.b(b[2]));
mux2_1  ins_01 (.in0(y[1]),.in1(y[2]),.sel(shiftamnt[0]),.b(b[1]));
mux2_1  ins_00 (.in0(y[0]),.in1(y[1]),.sel(shiftamnt[0]),.b(b[0]));

endmodule

/////////////////////////
//2X1 Mux
/////////////////////////

module mux2_1( in0,in1,sel,b);
input in0,in1;
input sel;
output b;
assign b=(sel)?in1:in0;
endmodule
