
// iverilog addsub.v addsub_tb.v -o pl1
// iverilog add12sub.v addsub_tb.v -o mit
//
// module addsubexp
// (
// 	input [4:0] dataa,
// 	input [4:0] datab,
// 	input add_sub,	  // if this is 1, add; else subtract
// 	// input clk,
// 	// output reg selec1,
// 	output sign12,//output is 1 then negative(answer is 1 less) else positive
// 	output [5:0]asnwer
// );

module addsubexp(dataa,datab,add_sub,sign12,asnwer);
input [4:0] dataa;
input [4:0] datab;
input add_sub;	  // if this is 1; add; else subtract
// input clk,
// output reg selec1,
output sign12;//output is 1 then negative(answer is 1 less) else positive
output [5:0]asnwer;

reg [5:0] result;
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
			// always @ ( result )
			// begin
			//
			// if (result>256)
			// begin
			// 	result = -result;
			// end
			// end

	end
	// always @ ( result ) begin
	 assign asnwer[0] = !result[0]&&selec1||result[0]&&!selec1;
	 assign asnwer[1] = !result[1]&&selec1||result[1]&&!selec1;
	 assign asnwer[2] = !result[2]&&selec1||result[2]&&!selec1;
	 assign asnwer[3] = !result[3]&&selec1||result[3]&&!selec1;
	 assign asnwer[4] = !result[4]&&selec1||result[4]&&!selec1;
	 assign asnwer[5] = !result[5]&&selec1||result[5]&&!selec1;
	 // assign asnwer[6] = !result[6]&&selec1||result[6]&&!selec1;
	 // assign asnwer[7] = !result[7]&&selec1||result[7]&&!selec1;
	 // assign asnwer[8] = !result[8]&&selec1||result[8]&&!selec1;



	// end
	// if ((selec1&&!add_sub)==1)
	// begin
	// 		assign  answer = -result;
	// // 		result = -result;
	// 	// asnwer = asnwer+tmptobeadded;
	// end

	assign sign12 = selec1&&!add_sub;


endmodule
