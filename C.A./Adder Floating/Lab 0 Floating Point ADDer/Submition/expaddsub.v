// iverilog expaddsub.v expaddsubtb.v -o p4jul
`include "add1toval.v"
module addsub
(
	input [10:0] dataa,
	input [10:0] datab,
	input add_sub,	  // if this is 1, add; else subtract
	// input clk,
	// output reg selec1,
	output sign12,//output is 1 then negative(answer is 1 less) else positive
	output [11:0]answer
);
reg [11:0] result;
reg selec1;
wire [11:0]temp;
// reg [10:0]tmptobeadded = 10'b0000000001;

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

			selec1 = 1&result[11];
			end

	end
	// always @ ( result ) begin
	 assign temp[0] = !result[0]&&selec1||result[0]&&!selec1;
	 assign temp[1] = !result[1]&&selec1||result[1]&&!selec1;
	 assign temp[2] = !result[2]&&selec1||result[2]&&!selec1;
	 assign temp[3] = !result[3]&&selec1||result[3]&&!selec1;
	 assign temp[4] = !result[4]&&selec1||result[4]&&!selec1;
	 assign temp[5] = !result[5]&&selec1||result[5]&&!selec1;
	 assign temp[6] = !result[6]&&selec1||result[6]&&!selec1;
	 assign temp[7] = !result[7]&&selec1||result[7]&&!selec1;
	 assign temp[8] = !result[8]&&selec1||result[8]&&!selec1;
   assign temp[9] = !result[9]&&selec1||result[9]&&!selec1;
   assign temp[10] = !result[10]&&selec1||result[10]&&!selec1;
	 assign temp[11] = !result[11]&&selec1||result[11]&&!selec1;



	// end
	// if ((selec1&&!add_sub)==1)
	// begin
	// 		assign  answer = -result;
	// // 		result = -result;
	// 	// temp = temp+tmptobeadded;
	// end

	assign sign12 = selec1&&!add_sub;
	add1toval a1(temp,sign12,answer);//convert to final 2's complemetn



endmodule
