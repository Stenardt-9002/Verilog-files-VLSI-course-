// iverilog finaladdsub.v tbfinaladdsub.v -o mina5

module addsub(dataa,datab,add_sub,siwz1,result1,select1);

	input [15:0] dataa;
	input [15:0] datab;
	input add_sub;	  // if this is 1; add; else subtract
	// input clk;
	// output reg [16:0] result
	output [15:0] result1;
	// output cout;
	reg [16:0] result;
	input [4:0]siwz1;//for telling wherher the answer is negative or not

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
	assign result1[15:0] = result[15:0];
	assign select1 = result1[15];


endmodule
