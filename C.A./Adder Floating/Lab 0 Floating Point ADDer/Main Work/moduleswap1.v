// iverilog moduleswap1.v tbswapmodile.v -o sapwa




module swap1m (inp1,sgn1,exp1,inp2,sgn2,exp2,outinp1,outsgn1,outexp1,outinp2,outsgn2,outexp2);
input [10:0] inp1;//first one reserved for before floating point
input [10:0] inp2;//first one reserved for before floating point
input sgn1,sgn2;
input [4:0] exp1;
input [4:0] exp2;

output reg [10:0] outinp1;//first one reserved for before floating point
output reg [10:0] outinp2;//first one reserved for before floating point
output reg outsgn1,outsgn2;
output reg [4:0] outexp1;
output reg [4:0] outexp2;

always @ ( * ) begin




if (exp2>exp1)
begin
  outinp1 <= inp2;
  outinp2 <= inp1;
  outsgn1 <= sgn2;
  outsgn2 <= sgn1;
  outexp1 <= exp2;
  outexp2 <= exp1;

end


else
begin
outinp1 <= inp1;
outinp2 <= inp2;
outsgn1 <= sgn1;
outsgn2 <= sgn2;
outexp1 <= exp1;
outexp2 <= exp2;


end
end

endmodule // swapinp1,sgn1,exp1,inp2,sgn2,exp2,1
