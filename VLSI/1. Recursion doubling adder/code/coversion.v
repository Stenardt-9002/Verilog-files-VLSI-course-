module conversion(in,out);
input [16:0][1:0]in;
output [16:0] out;
 
assign out[0] = in[0][1]&in[0][1];
assign out[1] = in[1][1]&in[1][1];
assign out[2] = in[2][1]&in[2][1];
assign out[3] = in[3][1]&in[3][1];
assign out[4] = in[4][1]&in[4][1];
assign out[5] = in[5][1]&in[5][1];
assign out[6] = in[6][1]&in[6][1];
assign out[7] = in[7][1]&in[7][1];
assign out[8] = in[8][1]&in[8][1];
assign out[9] = in[9][1]&in[9][1];
assign out[10] = in[10][1]&in[10][1];
assign out[11] = in[11][1]&in[11][1];
assign out[12] = in[12][1]&in[12][1];
assign out[13] = in[13][1]&in[13][1];
assign out[14] = in[14][1]&in[14][1];
assign out[15] = in[15][1]&in[15][1];
assign out[16] = in[16][1]&in[16][1];
// assign out[0] = in[0][1]&in[0][1];

endmodule