// iverilog finaladdsub.v tbfinaladdsub.v -o mina5

module addsub7only(dataa,datab,add_sub,siwz1,result1,select1);

	input [7:0] dataa;
	input [7:0] datab;
	input add_sub;	  // if this is 1; add; else subtract
	// input clk;
	// output reg [16:0] result
	output [7:0] result1;
	// output cout;
	reg [8:0] result;
	input [4:0]siwz1;//for telling whenever the answer is negative or not

	output  select1;


	always @ (add_sub,dataa,datab)
	begin
		if (add_sub==1)
			begin
			 result <= dataa + datab;
			 // assign cout = result[16];
			 end
		else
			begin
			result <= dataa - datab;
			// assign cout = 0;
			// assign result1 = result[15:0];
			end

			 // result1[15:0] = result[15:0];

	end
	assign result1[7:0] = result[7:0];
	assign select1 = result1[7];


endmodule
