// iverilog add1toval.v  add1valtb.v -o oknwe

module add1toval(dataa,e1nable,asnwer);
input [5:0] dataa;
input e1nable;	  // if this is 1; add; else subtract
output [5:0]asnwer;
reg [5:0] result;

	always @(*)
	begin
		if (e1nable)
			begin
			result = dataa + 1'b1;
			end
			// self
    else
      begin
      result = dataa ;

      end

	end

assign asnwer = result;
endmodule
