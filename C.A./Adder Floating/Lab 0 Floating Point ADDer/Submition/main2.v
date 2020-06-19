// iverilog main2.v tbmain.v -o min1a

// iverilog tobeoperatedupon.v tobeoperatedon_tb.v -o main1

`include "add12sub.v"
`include "shifter1.v"
`include "expaddsub.v"
`include "encoder1.v"
`include "add1toval.v"
`include "moduleswap1.v"
`include "assignmdoule1.v"





module floatingptoper (inp1,sgn1,exp1,inp2,sgn2,exp2,operatin,out,sgnout,outexp);
//////////////////// mant  sign exp  mantis sig exp outman outsign outex
input [9:0] inp1;//first one reserved for before floating point
input [9:0] inp2;//first one reserved for before floating point
input sgn1,sgn2;
input [4:0] exp1;
input [4:0] exp2;
input operatin; //0 means add shit
wire [4:0] dif1f;
wire [5:0] ert1;
wire diffcout;
reg nwinpu[9:0];
output wire [10:0]out ; //first two reserved for before floating point
reg [10:0]tmpotu; //created to contain out in always condn
output [5:0] outexp ;//no overflow
reg [5:0] tempe1xp; //used in alwasy block and assign to outexp
wire [5:0] diifeexp; //for comupation of exponent difference
reg okincreexp; ///select for case when output in sum msb is 1
reg [3:0]valuetobeanswerexpshif;// when final answer prioirty bit is found it has to be made msb
output sgnout;
wire [4:0]tmexp1;//used for keeping larger exonent abve
wire [4:0]tmexp2;//used for keeping larger exonent abve
wire [9:0]tempinp1;//used for keeping larger exonent abve
wire [9:0]tempinp2;//used for keeping larger exonent abve
wire tempsign1,tempsign2;//used for keeping larger exonent abve
wire whethertoaddorsub; //passed on basis of sign of operatin and second oopertor

// t[7:0] in1,in2;
wire signansexp;
wire [9:0]shiftedinput;//when inp2 is shifter
wire [3:0] firstone;//position of one in out (answer)
// module addsubexp(dataa,datab,add_sub,sign12,asnwer);
// addsubexp m0112(.dataa(exp1),.datab(exp2),.add_sub(1'b0),.sign12(signansexp),.asnwer(diifeexp) );
//   tempsign1   <= sgn1;
// end
swap1m start(inp1,sgn1,exp1,inp2,sgn2,exp2,tempinp1,tempsign1,tmexp1,tempinp2,tempsign2 ,tmexp2);
// addsubexp m0112(.dataa(exp1),.datab(exp2),.add_sub(1'b0),.sign12(signansexp),.asnwer(diifeexp) );
addsubexp m0112(.dataa(tmexp1),.datab(tmexp2),.add_sub(1'b0),.sign12(signansexp),.asnwer(diifeexp) );
//
// if (tempsign1 == 1)
// begin
//   assign tempinp1 =tempinp1;
// end

assign whethertoaddorsub = tempsign2^operatin; //if both 0 then add if both 1 then add

// barrel_shifter_8bit a123(inp2,diifeexp[4:0],shiftedinput);
barrel_shifter_8bit a123(tempinp2,diifeexp[4:0],shiftedinput);

// assign sgnout = signansexp ; //just for printing purpose remove later
// assign out = shiftedinput; //just for printing purpose remove later

// addsub exp1m(inp1,shiftedinput,1'b1,sgnout,out);
// addsub exp1m(tempinp1,shiftedinput,1'b1,sgnout,out);
addsub exp1m(tempinp1,shiftedinput,whethertoaddorsub,sgnout,out);


pri_encoder_using_if findingpro(firstone,out,1'b1); //finding priotiy bit in output
always @ ( firstone )
begin
  if (firstone == 4'b1010)
  begin
  okincreexp = 1'b1; //if overflow incrementt exponent
  // out = out>>1;
  tmpotu = out>>1;
  tempe1xp = tmexp1+1;
  end
  else if(firstone<4'd10 && firstone >=4'd0)
  begin
  okincreexp = 1'b0; //no increment
  valuetobeanswerexpshif = 4'd9-firstone;
  // now left shift answer (out) and decrement exponent
  // out = out<<valuetobeanswerexpshif; //left shift and decrement exponent
  tmpotu = out<<valuetobeanswerexpshif; //left shift and decrement exponent


  // outexp = outexp-valuetobeanswerexpshif;
  tempe1xp = tmexp1-valuetobeanswerexpshif;//everything made to exp1 equal

  out = tmpotu;
  end

end


assign outexp = tempe1xp;
// assign outexp = tmexp1;
// assing1mod a2399(tmpotu,out);
// assign out = tmpotu;
//
// always @ ( tmpotu )
// begin
//
// end



// add1toval ifmsb1(outexp,okincreexp,outexp);
//speial caswe for size 10
// assign out = inp2 >> exp1-exp2;


// assign outexp = 6'd0;
// assign exp1 = 5'd0;
// model time-series anomaly detection for IoT

endmodule // floatingptoper
