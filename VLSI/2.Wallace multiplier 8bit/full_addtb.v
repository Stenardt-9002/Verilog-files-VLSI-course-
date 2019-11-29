// `include "full_add.v"

module full_addtb;

reg i1;
reg i2;
reg cin;
 
wire sut;
wire cout;

    full_Adder FA_0(i1,i2,cin,sut,cout);



initial
begin
i1 =0;
i2 =0;
cin =0;
#20; i1 =1;
#20; i2 =1;
#20; i1 =0;
#20; cin =1;
#20; i2=0;
#20; i1=1; 
#20; i2=1;
#40;
end

initial
begin
$monitor("time = %2d, CIN =%1b, IN1=%1b, IN2=%1b, COUT=%1b, SUM=%1b", $time,cin,i2, i1,cout,sut);
$dumpfile("FullAdder.vcd");
$dumpvars;
end

endmodule