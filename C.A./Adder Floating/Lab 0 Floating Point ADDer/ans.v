module ans(ans,sum,carry);
input [16:0]carry;
input [15:0]sum;
output [16:0]ans;
assign ans[0] = carry[0]^sum[0];
assign ans[1] = carry[1]^sum[1];
assign ans[2] = carry[2]^sum[2];
assign ans[3] = carry[3]^sum[3];
assign ans[4] = carry[4]^sum[4];
assign ans[5] = carry[5]^sum[5];
assign ans[6] = carry[6]^sum[6];
assign ans[7] = carry[7]^sum[7];
assign ans[8] = carry[8]^sum[8];
assign ans[9] = carry[9]^sum[9];
assign ans[10] = carry[10]^sum[10];
assign ans[11] = carry[11]^sum[11];
assign ans[12] = carry[12]^sum[12];
assign ans[13] = carry[13]^sum[13];
assign ans[14] = carry[14]^sum[14];
assign ans[15] = carry[15]^sum[15];
assign ans[16] = carry[16];
endmodule