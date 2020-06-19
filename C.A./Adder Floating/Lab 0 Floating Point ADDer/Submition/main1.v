// iverilog main1.v tbmain.v -o min1a

// iverilog tobeoperatedupon.v tobeoperatedon_tb.v -o main1

`include "add12sub.v"
`include "shifter1.v"
`include "expaddsub.v"
`include "encoder1.v"
`include "add1toval.v"





module floatingptoper (inp1,sgn1,exp1,inp2,sgn2,exp2,out,sgnout,outexp);
//////////////////// mant  sign exp  mantis sig exp outman outsign outex
input [9:0] inp1;//first one reserved for before floating point
input [9:0] inp2;//first one reserved for before floating point
input sgn1,sgn2;
input [4:0] exp1;
input [4:0] exp2;
wire [4:0] dif1f;
wire [5:0] ert1;
wire diffcout;
reg nwinpu[9:0];
output [10:0]out ; //first two reserved for before floating point
reg [10:0]tmpotu; //created to contain out in always condn
output [5:0] outexp ;//no overflow
reg [5:0] tempe1xp; //used in alwasy block and assign to outexp
wire [5:0] diifeexp; //for comupation of exponent difference
reg okincreexp; ///select for case when output in sum msb is 1
reg [3:0]valuetobeanswerexpshif;// when final answer prioirty bit is found it has to be made msb
output sgnout;
reg [4:0]tmexp1;
reg [4:0]tmexp2;
// t[7:0] in1,in2;
wire signansexp;
wire [9:0]shiftedinput;//when inp2 is shifter
wire [3:0] firstone;//position of one in out (answer)
// module addsubexp(dataa,datab,add_sub,sign12,asnwer);
addsubexp m0112(.dataa(exp1),.datab(exp2),.add_sub(1'b0),.sign12(signansexp),.asnwer(diifeexp) );
// assign
//if this iw rritten then stop undo
// always @ ( * ) begin
// if (signansexp>0) begin //means sign is negative swap things
//   inp1<=inp2;
//   inp2<=inp1;
//   sgn1<=sgn2;
//   sgn2<=sgn1;
//   exp1<=exp2;
//   exp2<=exp1;
// end
// end

barrel_shifter_8bit a123(inp2,diifeexp[4:0],shiftedinput);
// assign sgnout = signansexp ; //just for printing purpose remove later
// assign out = shiftedinput; //just for printing purpose remove later
addsub exp1m(inp1,shiftedinput,1'b1,sgnout,out);
pri_encoder_using_if findingpro(firstone,out,1'b1); //finding priotiy bit in output
always @ ( firstone ) begin
  if (firstone == 4'b1010)
  begin
  okincreexp = 1'b1; //if overflow incrementt exponent
  // out = out>>1;
  tmpotu = out>>1;
  tempe1xp = exp1+1;
  end
  else if(firstone<4'd10 && firstone >=4'd0)
  begin
  okincreexp = 1'b0; //no increment
  valuetobeanswerexpshif = 4'd9-firstone;
  // now left shift answer (out) and decrement exponent
  // out = out<<valuetobeanswerexpshif; //left shift and decrement exponent
  tmpotu = out<<valuetobeanswerexpshif; //left shift and decrement exponent


  // outexp = outexp-valuetobeanswerexpshif;
  tempe1xp = exp1-valuetobeanswerexpshif;//everything made to exp1 equal


  end

end
assign outexp = tempe1xp;
// add1toval ifmsb1(outexp,okincreexp,outexp);
//speial caswe for size 10
// assign out = inp2 >> exp1-exp2;


// assign outexp = 6'd0;
// assign exp1 = 5'd0;
// model time-series anomaly detection for IoT

endmodule // floatingptoper
