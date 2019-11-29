`include "HA.v"
`include "FA.v"
module wallace(a,b,product);
input [7:0] a;
input [7:0] b;
output [15:0] product;

wire [7:0]r0,r1,r2,r3,r4,r5,r6,r7;
// generating partial product

genvar i;
for(i=0; i<8; i=i+1)
begin
assign r0[i] = a[i] & b[0];
end
for(i=0; i<8; i=i+1)
begin
assign r1[i] = a[i] & b[1];
end
for(i=0; i<8; i=i+1)
begin
assign r2[i] = a[i] & b[2];
end
for(i=0; i<8; i=i+1)
begin
assign r3[i] = a[i] & b[3];
end
for(i=0; i<8; i=i+1)
begin
assign r4[i] = a[i] & b[4];
end
for(i=0; i<8; i=i+1)
begin
assign r5[i] = a[i] & b[5];
end
for(i=0; i<8; i=i+1)
begin
assign r6[i] = a[i] & b[6];
end
for(i=0; i<8; i=i+1)
begin
assign r7[i] = a[i] & b[7];
end


//iteration-1
wire [9:0]t0;
wire [7:0]c0;
assign t0[0]=r0[0];
HA h0(r0[1],r1[0],t0[1],c0[0]);

FA f0(r0[2],r1[1],r2[0],t0[2],c0[1]);
FA f1(r0[3],r1[2],r2[1],t0[3],c0[2]);
FA f2(r0[4],r1[3],r2[2],t0[4],c0[3]);
FA f3(r0[5],r1[4],r2[3],t0[5],c0[4]);
FA f4(r0[6],r1[5],r2[4],t0[6],c0[5]);
FA f5(r0[7],r1[6],r2[5],t0[7],c0[6]);

HA h1(r1[7],r2[6],t0[8],c0[7]);
assign t0[9]=r2[7];


wire [9:0]t1;
wire [7:0]c1;
assign t1[0]=r3[0];
HA h2(r3[1], r4[0],t1[1],c1[0]);

FA f6(r3[2], r4[1],r5[0],t1[2],c1[1]);
FA f7(r3[3], r4[2],r5[1],t1[3],c1[2]);
FA f8(r3[4], r4[3],r5[2],t1[4],c1[3]);
FA f9(r3[5], r4[4],r5[3],t1[5],c1[4]);
FA f10(r3[6],r4[5],r5[4],t1[6],c1[5]);
FA f11(r3[7],r4[6],r5[5],t1[7],c1[6]);

HA h3(r4[7],r5[6],t1[8],c1[7]);
assign t1[9]=r5[7];


//iteration-2
wire [12:0]t2;
wire [7:0]c2;
assign t2[0]=t0[0];
assign t2[1]=t0[1];
HA h4(t0[2],c0[0],t2[2],c2[0]);

FA f12(t0[3],c0[1],t1[0],t2[3],c2[1]);
FA f13(t0[4],c0[2],t1[1],t2[4],c2[2]);
FA f14(t0[5],c0[3],t1[2],t2[5],c2[3]);
FA f15(t0[6],c0[4],t1[3],t2[6],c2[4]);
FA f16(t0[7],c0[5],t1[4],t2[7],c2[5]);
FA f17(t0[8],c0[6],t1[5],t2[8],c2[6]);
FA f18(t0[9],c0[7],t1[6],t2[9],c2[7]);

assign t2[10]=t1[7];
assign t2[11]=t1[8];
assign t2[12]=t1[9];
///////////////////////

wire [9:0]t3;
wire [7:0]c3;
assign t3[0]=c1[0];
HA h5(c1[1],r6[0],t3[1],c3[0]);

FA f19(c1[2],r6[1],r7[0],t3[2],c3[1]);
FA f20(c1[3],r6[2],r7[1],t3[3],c3[2]);
FA f21(c1[4],r6[3],r7[2],t3[4],c3[3]);
FA f22(c1[5],r6[4],r7[3],t3[5],c3[4]);
FA f23(c1[6],r6[5],r7[4],t3[6],c3[5]);
FA f24(c1[7],r6[6],r7[5],t3[7],c3[6]);

HA h14(r6[7],r7[6],t3[8],c3[7]);
assign t3[9]=r7[7];


//iteration-3
wire [14:0]t4;
wire [9:0]c4;
assign t4[0]=t2[0];
assign t4[1]=t2[1];
assign t4[2]=t2[2];
HA h6(t2[3],c2[0],t4[3],c4[0]);
HA h7(t2[4],c2[1],t4[4],c4[1]);

FA f25(t2[5],c2[2],t3[0],t4[5],c4[2]);
FA f26(t2[6],c2[3],t3[1],t4[6],c4[3]);
FA f27(t2[7],c2[4],t3[2],t4[7],c4[4]);
FA f28(t2[8],c2[5],t3[3],t4[8],c4[5]);
FA f29(t2[9],c2[6],t3[4],t4[9],c4[6]);
FA f30(t2[10],c2[7],t3[5],t4[10],c4[7]);

HA h8(t2[11],t3[6],t4[11],c4[8]);//
HA h9(t2[12],t3[7],t4[12],c4[9]);
assign t4[13]=t3[8];
assign t4[14]=t3[9];


//iteration-4
wire [14:0]t5;
wire [10:0]c5;
assign t5[0]=t4[0];
assign t5[1]=t4[1];
assign t5[2]=t4[2];
assign t5[3]=t4[3];
HA h10(t4[4],c4[0],t5[4],c5[0]);
HA h11(t4[5],c4[1],t5[5],c5[1]);
HA h12(t4[6],c4[2],t5[6],c5[2]);

FA f31(t4[7],c4[3],c3[0],t5[7],c5[3]);
FA f32(t4[8],c4[4],c3[1],t5[8],c5[4]);
FA f33(t4[9],c4[5],c3[2],t5[9],c5[5]);
FA f34(t4[10],c4[6],c3[3],t5[10],c5[6]);
FA f35(t4[11],c4[7],c3[4],t5[11],c5[7]);
FA f36(t4[12],c4[8],c3[5],t5[12],c5[8]);
FA f37(t4[13],c4[9],c3[6],t5[13],c5[9]);

HA h15(t4[14],c3[7],t5[14],c5[10]);


//last iteration
wire [10:0]carry;
assign product[0]=t5[0];
assign product[1]=t5[1];
assign product[2]=t5[2];
assign product[3]=t5[3];
assign product[4]=t5[4];

FA f38(t5[5],c5[0],1'b0,product[5],carry[0]);
FA f39(t5[6],c5[1],carry[0],product[6],carry[1]);
FA f40(t5[7],c5[2],carry[1],product[7],carry[2]);
FA f41(t5[8],c5[3],carry[2],product[8],carry[3]);
FA f42(t5[9],c5[4],carry[3],product[9],carry[4]);

FA f43(t5[10],c5[5],carry[4],product[10],carry[5]);
FA f44(t5[11],c5[6],carry[5],product[11],carry[6]);
FA f45(t5[12],c5[7],carry[6],product[12],carry[7]);
FA f46(t5[13],c5[8],carry[7],product[13],carry[8]);
FA f47(t5[14],c5[9],carry[8],product[14],carry[9]);

HA h13(c5[10],carry[9],product[15],carry[10]);
endmodule
