// iverilog shifter1.v tbshieftr.v -o shift12

// `include "mutilplexer2-1.v"
// // Main Work/mutilplexer2-1.v
// module toshift (a1,bout,shiftmount);
//
//
//     input  [7:0] a1;
//     output  [7:0] bout;
//     input [2:0]   shiftmount;
//     wire [7:0]    tem1p,temp2;
//     mux_21 ok10 (1'b0,  a1[0], tem1p[0], shiftmount[0]);
//     mux_21 ok11 (a1[0], a1[1], tem1p[1], shiftmount[0]);
//     mux_21 ok12 (a1[1], a1[2], tem1p[2], shiftmount[0]);
//     mux_21 ok13 (a1[2], a1[3], tem1p[3], shiftmount[0]);
//     mux_21 ok14 (a1[3], a1[4], tem1p[4], shiftmount[0]);
//     mux_21 ok15 (a1[4], a1[5], tem1p[5], shiftmount[0]);
//     mux_21 ok16 (a1[5], a1[6], tem1p[6], shiftmount[0]);
//     mux_21 ok17 (a1[6], a1[7], tem1p[7], shiftmount[0]);
//     mux_21 ok101 (1'b0  , tem1p[0], temp2[0], shiftmount[1]);
//     mux_21 ok111 (1'b0  , tem1p[1], temp2[1], shiftmount[1]);
//     mux_21 ok122 (tem1p[0], tem1p[2], temp2[2], shiftmount[1]);
//     mux_21 ok133 (tem1p[1], tem1p[3], temp2[3], shiftmount[1]);
//     mux_21 ok144 (tem1p[2], tem1p[4], temp2[4], shiftmount[1]);
//     mux_21 ok155 (tem1p[3], tem1p[5], temp2[5], shiftmount[1]);
//     mux_21 ok166 (tem1p[4], tem1p[6], temp2[6], shiftmount[1]);
//     mux_21 ok177 (tem1p[5], tem1p[7], temp2[7], shiftmount[1]);
//     mux_21 ok190 (1'b0  , temp2[0], bout[0], shiftmount[2]);
//     mux_21 ok191 (1'b0  , temp2[1], bout[1], shiftmount[2]);
//     mux_21 ok192 (1'b0  , temp2[2], bout[2], shiftmount[2]);
//     mux_21 ok193 (1'b0  , temp2[3], bout[3], shiftmount[2]);
//     mux_21 ok194 (temp2[0], temp2[4], bout[4], shiftmount[2]);
//     mux_21 ok195 (temp3[1], temp2[5], bout[5], shiftmount[2]);
//     mux_21 ok196 (temp2[2], temp2[6], bout[6], shiftmount[2]);
//     mux_21 ok917 (temp2[3], temp2[7], bout[7], shiftmount[2]);
//















///8 bit Barrel Shifter Verilog Code
///////////////////////////////////////

module barrel_shifter_11bit (a, shiftamnt, b);
// module barrel_shifter_8bit (a, shiftamnt, b,lftorrght);

  input  [10:0] a;
  input [4:0] shiftamnt;
  output [10:0] b;
  wire [7:0] x,y;
  reg [10:0]a1 ;
  reg lftorrght;
  wire slect12;
//4bit shift right
// mux2_1  ins_17 (.in0(a[7]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[7]));
// mux2_1  ins_16 (.in0(a[6]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[6]));
// mux2_1  ins_15 (.in0(a[5]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[5]));
// mux2_1  ins_14 (.in0(a[4]),.in1(1'b0),.sel(shiftamnt[2]),.b(x[4]));
// mux2_1  ins_13 (.in0(a[3]),.in1(a[7]),.sel(shiftamnt[2]),.b(x[3]));
// mux2_1  ins_12 (.in0(a[2]),.in1(a[6]),.sel(shiftamnt[2]),.b(x[2]));
// mux2_1  ins_11 (.in0(a[1]),.in1(a[5]),.sel(shiftamnt[2]),.b(x[1]));
// mux2_1  ins_10 (.in0(a[0]),.in1(a[4]),.sel(shiftamnt[2]),.b(x[0]));
//
// //2 bit shift right
//
// mux2_1  ins_27 (.in0(x[7]),.in1(1'b0),.sel(shiftamnt[1]),.b(y[7]));
// mux2_1  ins_26 (.in0(x[6]),.in1(1'b0),.sel(shiftamnt[1]),.b(y[6]));
// mux2_1  ins_25 (.in0(x[5]),.in1(x[7]),.sel(shiftamnt[1]),.b(y[5]));
// mux2_1  ins_24 (.in0(x[4]),.in1(x[6]),.sel(shiftamnt[1]),.b(y[4]));
// mux2_1  ins_23 (.in0(x[3]),.in1(x[5]),.sel(shiftamnt[1]),.b(y[3]));
// mux2_1  ins_22 (.in0(x[2]),.in1(x[4]),.sel(shiftamnt[1]),.b(y[2]));
// mux2_1  ins_21 (.in0(x[1]),.in1(x[3]),.sel(shiftamnt[1]),.b(y[1]));
// mux2_1  ins_20 (.in0(x[0]),.in1(x[2]),.sel(shiftamnt[1]),.b(y[0]));
//
// //1 bit shift right
// mux2_1  ins_07 (.in0(y[7]),.in1(1'b0),.sel(shiftamnt[0]),.b(b[7]));
// mux2_1  ins_06 (.in0(y[6]),.in1(y[7]),.sel(shiftamnt[0]),.b(b[6]));
// mux2_1  ins_05 (.in0(y[5]),.in1(y[6]),.sel(shiftamnt[0]),.b(b[5]));
// mux2_1  ins_04 (.in0(y[4]),.in1(y[5]),.sel(shiftamnt[0]),.b(b[4]));
// mux2_1  ins_03 (.in0(y[3]),.in1(y[4]),.sel(shiftamnt[0]),.b(b[3]));
// mux2_1  ins_02 (.in0(y[2]),.in1(y[3]),.sel(shiftamnt[0]),.b(b[2]));
// mux2_1  ins_01 (.in0(y[1]),.in1(y[2]),.sel(shiftamnt[0]),.b(b[1]));
// mux2_1  ins_00 (.in0(y[0]),.in1(y[1]),.sel(shiftamnt[0]),.b(b[0]));


// assign b[8] = shiftamnt[4]&&b[8];
// assign b[9] = 0;

// if (shiftamnt[4]==1)
// begin
//     b = a>>shiftamnt;
// end


assign b = a>>shiftamnt;



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
