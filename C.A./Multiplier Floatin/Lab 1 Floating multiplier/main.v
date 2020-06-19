`include "add12sub.v"
// `include "shifter1.v"
// `include "expaddsub.v"
// `include "encoder1.v"
// `include "add1toval.v"
`include "moduleswap1.v"
// `include "assignmdoule1.v"
`include "Wallac16bit.v"


module mutiplier1super (inp1,inp2,outputmin1);

input [15:0] inp1;//first one reserved for before floating point
input [15:0] inp2;//first one reserved for before floating point
reg sgn1,sgn2;
// output [31:0]outputmin1;
output [15:0]outputmin1;

// reg [10:0] inp1;//first one reserved for before floating point
// reg [10:0] inp2;//first one reserved for before floating point

reg [4:0] exp1;
reg [4:0] exp2;
wire [5:0] sum1m;
wire [5:0] sum2m;

reg [5:0] tempe1xp; //used in alwasy block and assign to outexp
wire [5:0] diifeexp; //for comupation of exponent difference
reg okincreexp; ///select for case when output in sum msb is 1
reg [3:0]valuetobeanswerexpshif;// when final answer prioirty bit is found it has to be made msb
wire greatrornot;
wire [4:0]tmexp1;//used for keeping larger exonent abve
wire [4:0]tmexp2;//used for keeping larger exonent abve
wire [15:0]tempinp1;//used for keeping larger exonent abve
wire [15:0]tempinp2;//used for keeping larger exonent abve
wire [31:0]outinp2;//used for keeping larger exonent abve
wire [11:0]outinpmain;//used for keeping larger exonent abve
reg [9:0]mantissa1;

wire tempsign1,tempsign2;//used for keeping larger exonent abve
wire whethertoaddorsub; //passed on basis of sign of operatin and second oopertor

assign tmexp1 = inp1[14:10];
assign tmexp2 = inp2[14:10];
assign tempinp2[9:0] = inp2[9:0];
assign tempinp1[9:0] = inp1[9:0];
assign tempinp2[15:10] = 6'b000001;
assign tempinp1[15:10] = 6'b000001;


// swap1m start(inp1,sgn1,exp1,inp2,sgn2,exp2,tempinp1,tempsign1,tmexp1,tempinp2,tempsign2 ,tmexp2);

// addsubexp m0112(.dataa(tmexp1),.datab(tmexp2),.add_sub(1'b1),.sign12(signansexp),.asnwer(diifeexp) );
// wall16bit am(tempinp1,tempinp2,outinp2);
wall16bit am(tempinp1,tempinp2,outinp2);
// shift 10 bits
// assign outputmin1 = outinp2<<10;

// assign outinpmain = outinp2[19:0];
// assign outputmin1[9:0] = outinp2[20:11];
// assign outputmin1[9:0] = outinp2[21:12];
// assign outputmin1[9:0] = outinp2[20:11];


assign outinpmain[11:0] = outinp2[21:10];

// assign outputmin1[]


// assign outputmin1[15:10] = 6'b000000;
assign outputmin1[15] = inp1[15]^inp2[15];

always @ ( outinpmain ) begin


if (outinpmain[11]==1'b1)
begin
  // assign outputmin1[9:0] = outinpmain[10:1];//if overflow
 mantissa1[9:0] <= outinpmain[10:1];//if overflow

// mantissa1
end

else
begin
  // assign outputmin1[9:0] = outinpmain[9:0];//if overflow
 mantissa1[9:0] <= outinpmain[9:0];//if overflow


end
end


addsubexp a1(inp1[14:10],inp2[14:10],1'b1,outinpmain[11],sum1m); //if overflow add 1
// assign sum2m = sum1m[4:0]-5'b01111;
assign sum2m = sum1m-6'b001111;

//
// always @ ( sum2m[5] ) begin
//
// if (sum2m[5]==1)
// begin
//
//     // $display("Overflow");
//     $display("Error");
//
// end
//
// end
// always @ ( sum1m[5] ) begin
//
// if (sum1m[5]==1)
// begin
//
//     $display("Overflow");
// end
//
// end



assign outputmin1[14:10] = sum1m[4:0]-5'b1111;
// assign outputmin1[14:10] = sum2m[4:0];
// assign outputmin1[14:10] = sum1m[4:0];


assign outputmin1[9:0] = mantissa1;

always @ ( * ) begin

if (sum1m>6'b101110)//46
begin

    $display("Overflow");
    // sum2m <= 6'dx;
end
else if (sum1m<6'b001111)//15
begin

    $display("Underflow");
    // sum2m <= 6'dx;
end

end








endmodule // mutipliera,b,output1
