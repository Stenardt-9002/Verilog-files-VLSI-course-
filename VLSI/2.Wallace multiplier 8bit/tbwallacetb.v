module top ;

reg [7:0]a;
reg [7:0]b;
wire [15:0] asn;

wallace w1(a,b,asn);

initial
begin

  a = 8'b11010011 ; b = 8'b11001110 ;#10
  // a = 8'd12 ; b = 8'd16;
  // #10
  // a = 8'd14 ; b = 8'd18;
  // #10
  // a = 8'd20 ; b = 8'd19;
  // #10;
  // a = 8'd100 ; b = 8'd120;
  // #10;
  // a = 8'd98 ; b = 8'd102;
a = 8'd200 ; b = 8'd205;
  #10;


end

initial
begin
$monitor("time = %2d , a = %d , b = %d ,ans = %d",$time , a,b, asn);
$dumpfile("wallace_tb.vcd");
$dumpvars(0,top);

end



endmodule // top
