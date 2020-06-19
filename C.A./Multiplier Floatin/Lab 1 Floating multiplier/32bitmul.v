`include "Wallac16bit.v"
module wall32bit (a,b,asn);



input [31:0] a;
input [31:0] b;
output [63:0] asn;

wire [31:0] in1,tmp1,tmp2,tmp3,tmp4;
wire [47:0] in2,in3;
wire [63:0] in4;



wall16bit w12(a[15:0],b[15:0],tmp1);
wall16bit w22(a[15:0],b[31:16],tmp2);//ml nh
wall16bit w33(a[31:16],b[15:0],tmp3);//mh nl
wall16bit w44(a[31:16],b[31:16],tmp4);


assign in1 = tmp1;
assign in2 = tmp2<<16;
assign in3 = tmp3<<16;
assign in4 = tmp4<<32;


assign asn= in1+in2+in3+in4;

endmodule // wall32bit
