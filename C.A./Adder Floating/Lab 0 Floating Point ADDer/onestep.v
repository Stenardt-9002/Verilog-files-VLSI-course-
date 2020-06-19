`include "action.v"
module onestep(carryin,carryout);
input[16:0] [1:0]carryin;
output [16:0] [1:0]carryout;

// 01 for 1
// 12 for 2

assign carryout[0] = carryin[0];
action m1 (carryout[1],carryin[0],carryin[1]);
action m2 (carryout[2],carryin[1],carryin[2]);
action m3 (carryout[3],carryin[2],carryin[3]);
action m4 (carryout[4],carryin[3],carryin[4]);
action m5 (carryout[5],carryin[4],carryin[5]);
action m6 (carryout[6],carryin[5],carryin[6]);
action m7 (carryout[7],carryin[6],carryin[7]);
action m8 (carryout[8],carryin[7],carryin[8]);
action m9 (carryout[9],carryin[8],carryin[9]);
action m10 (carryout[10],carryin[9],carryin[10]);
action m11 (carryout[11],carryin[10],carryin[11]);
action m12 (carryout[12],carryin[11],carryin[12]);
action m13(carryout[13],carryin[12],carryin[13]);
action m14 (carryout[14],carryin[13],carryin[14]);
action m15(carryout[15],carryin[14],carryin[15]);
action m16(carryout[16],carryin[15],carryin[16]);

initial
begin

$monitor("time = %2d,  carry =%b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b", $time,carryin[15],carryin[14],carryin[13],carryin[12],carryin[11],carryin[10],carryin[9],carryin[8],carryin[7],carryin[6],carryin[5],carryin[4],carryin[3],carryin[2],carryin[1],carryin[0]);
end

endmodule


