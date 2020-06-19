// iverilog tobeoperatedupon.v tobeoperatedon_tb.v -o main1


`include "finaladdsub.v"
`include "finaladdsubforexpinebet.v"


module floatingptoper (inp1,sgn1,exp1,inp2,sgn2,exp2,out,sgnout,outexp);
input [15:0] inp1;//first one reserved for before floating point
input [15:0] inp2;//first one reserved for before floating point
input sgn1,sgn2;
input [7:0] exp1;
input [7:0] exp2;
wire [7:0] dif1f;
wire diffcout;
output [15:0]out ; //first two reserved for before floating point
output [7:0] outexp ;//no overflow
output sgnout;
reg [7:0]tmexp1;
reg [7:0]tmexp2;
// t[7:0] in1,in2;
wire select;
// wire [7:0] difference1 = exp1-exp2;
// wire sign_of_difference = difference1[7];
// assign select = sign_of_difference? 0:1;

// addsub7only m11(exp1,exp2,1'b0,5'd7,dif1f,select);
//
// always @ (*)
// begin
// //   // if (exp1 >exp2)
//   if (select==1)
//   begin
// //     // addsub h1(exp1,exp2,1'b0,dif1f);
// //     // exp2 is greater
//   dif1f <= exp2-exp1;
//  // dif1f[7] = 0;
//  // assign outexp[7] = 0;
//     end
// //   // else
// //   // begin
// //   //   addsub h2(exp2,exp1,1'b0,dif1f);
// //   //   end
// //
// //   // dif1f = exp2-exp1;
// //
// end
// assign tmexp1 = exp1;
// assign tmexp2 = exp2;

// always @ (select,dif1f)
// begin
//   if (select==1)
//   begin
//
//   tmexp1<=exp2;
//   tmexp2<=exp1;
//  // assign outexp[7] = 0;
//     end
//   else
//   begin
// //   //   addsub h2(exp2,exp1,1'b0,dif1f);
// tmexp1<=exp1;
// tmexp2<=exp2;
//
//     end
// //
// //   // dif1f = exp2-exp1;
// //
// end

addsub7only m12(tmexp1,tmexp2,1'b0,5'd7,dif1f,select);

assign outexp[7:0] = dif1f[7:0];

// assign outexp[7:0] = dif1f[7:0];
// always @ ( * ) begin
// end
// assign outexp[1] = dif1f[1];
//
// assign outexp[2] = dif1f[2];
// assign outexp[3] = dif1f[3];
// assign outexp[4] = dif1f[4];
// assign outexp[5] = dif1f[5];
// assign outexp[6] = dif1f[6];
// assign outexp[7] = dif1f[7];


// model time-series anomaly detection for IoT



endmodule // floatingptoper
