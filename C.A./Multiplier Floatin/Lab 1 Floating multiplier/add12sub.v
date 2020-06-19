
`include "add1toval.v"

module addsubexp(dataa,datab,add_sub,sign12,answer);
input [4:0] dataa;
input [4:0] datab;
input add_sub;	  // if this is 1; add; else subtract
// input clk,
// output reg selec1,
input sign12;//add 1 extra
output [5:0]answer;

reg [5:0] result;
wire [5:0]temp;

reg selec1;
// reg [4:0]tmptobeadded = 5'b00001;
// assign add_sub = 1'b0;
	// always @ (posedge clk)
	always @(*)
	begin
		if (add_sub)
			begin
			result = dataa + datab;
			selec1 = 0;
			end
			// self
		else
			// result <= dataa - datab;
			begin
			result = dataa - datab;

			selec1 = 1&result[5];
			end

	end
	// always @ ( result ) begin
	 assign temp[0] = !result[0]&&selec1||result[0]&&!selec1;
	 assign temp[1] = !result[1]&&selec1||result[1]&&!selec1;
	 assign temp[2] = !result[2]&&selec1||result[2]&&!selec1;
	 assign temp[3] = !result[3]&&selec1||result[3]&&!selec1;
	 assign temp[4] = !result[4]&&selec1||result[4]&&!selec1;
	 assign temp[5] = !result[5]&&selec1||result[5]&&!selec1;
	 // assign temp[6] = !result[6]&&selec1||result[6]&&!selec1;
	 // assign temp[7] = !result[7]&&selec1||result[7]&&!selec1;
	 // assign temp[8] = !result[8]&&selec1||result[8]&&!selec1;



	// end
	// if ((selec1&&!add_sub)==1)
	// begin
	// 		assign  answer = -result;
	// // 		result = -result;
	// 	// temp = temp+tmptobeadded;
	// end

	// assign sign12 = selec1&&!add_sub;

	add1toval a1(temp,sign12,answer);
	// add1toval a1(temp,1'b1,answer);




endmodule
