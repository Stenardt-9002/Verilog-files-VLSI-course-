// `include "action.v"
module fivestep(carryin,carryout);
input[16:0] [1:0]carryin;
output [16:0] [1:0]carryout;

// 01 bfor 1
// 12 for 2
// 16 jump

assign carryout[0] = carryin[0];
assign carryout[1] = carryin[1];

assign carryout[2] = carryin[2];
assign carryout[3] = carryin[3];

assign carryout[4] = carryin[4];
assign carryout[5] = carryin[5];

assign carryout[6] = carryin[6];
assign carryout[7] = carryin[7];


assign carryout[8] = carryin[8];
assign carryout[9] = carryin[9];

assign carryout[10] = carryin[10];
assign carryout[11] = carryin[11];

assign carryout[12] = carryin[12];
assign carryout[13] = carryin[13];

assign carryout[14] = carryin[14];
assign carryout[15] = carryin[15];

// action m2 (carryout[4],carryin[0],carryin[2]);
// action m3 (carryout[3],carryin[1],carryin[3]);
// action m4 (carryout[4],carryin[0],carryin[4]);
// action m5 (carryout[5],carryin[1],carryin[5]);
// action m6 (carryout[6],carryin[2],carryin[6]);
// action m7 (carryout[7],carryin[3],carryin[7]);
// action m8 (carryout[8],carryin[0],carryin[8]);
// action m9 (carryout[9],carryin[1],carryin[9]);
// action m10 (carryout[10],carryin[2],carryin[10]);
// action m11 (carryout[11],carryin[3],carryin[11]);
// action m12 (carryout[12],carryin[4],carryin[12]);
// action m13(carryout[13],carryin[5],carryin[13]);
// action m14 (carryout[14],carryin[6],carryin[14]);
// action m15(carryout[15],carryin[7],carryin[15]);
action m16(carryout[16],carryin[0],carryin[16]);

endmodule