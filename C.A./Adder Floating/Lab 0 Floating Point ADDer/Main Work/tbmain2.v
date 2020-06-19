// iverilog main1.v tbmain.v -o min1a

module top ;

// reg [16:1] a;
// reg [16:1] b;

reg [10:0] a;
reg [10:0] b;
reg sign1,sign2;
reg [4:0] a1;
reg [4:0] b1;
reg operatin;
wire signout;
wire [10:0] aout;
wire [5:0] expout;
reg cin;

	// Outputs
// wire [16:1] sum;
// wire [16:1] carry1;
// wire [16:0][1:0]carry;
wire [11:0] ans1;

// floatingptoper m2(a,sign1,a1,b,sign2,b1,aout,signout,expout);
// floatingptoper m22(.inp1(a),.sgn1(sign1),.exp1(a1),.inp2(b),.sgn2(sign2),.exp2(b1),.out(aout),.sgnout(signout),.outexp(expout));
floatingptoper m22(.inp1(a),.sgn1(sign1),.exp1(a1),.inp2(b),.sgn2(sign2),.exp2(b1),.operatin(operatin),.out(aout),.sgnout(signout),.outexp(expout));

// module floatingptoper (inp1,sgn1,exp1,inp2,sgn2,exp2,out,sgnout,outexp);


initial
begin


    a = 11'b11000000000;b=11'b11000000100;sign1 = 0;a1 = 5'd17;sign2 = 0;b1 =5'd11 ;operatin = 0;

    #10
    a = 11'b11000000001;b=11'b11000000000;sign1 = 0;a1 = 5'd17;sign2 = 0;b1 =5'd11 ;operatin = 0;


    #10
        a = 11'b11000000011;b=11'b11000000001;sign1 = 0;a1 = 5'd14;sign2 = 0;b1 =5'd11 ; operatin = 0;#10;
     a = 11'd1026;         b=11'd1028;         sign1 = 0;a1 = 5'd11;sign2 = 0;b1 =5'd11 ; operatin = 0;#10;
     a = 11'd1484;       b=11'd1691;sign1 = 0;a1 = 5'd9;sign2 = 0;b1 =5'd11 ; operatin = 0;#10;
     a = 11'd1897       ;b=11'd1641;sign1 = 0;a1 = 5'd29;sign2 = 0;b1 =5'd27 ; operatin = 0;#10;
     // a = 11'd3       ;b=11'd3;sign1 = 0;a1 = 5'd29;sign2 = 0;b1 =5'd29 ; operatin = 0;#10;

     a = 11'b11000000000;b=11'b11000000100;sign1 = 0;a1 = 5'd17;sign2 = 0;b1 =5'd11 ;operatin = 1; #10;
     a = 11'b11000000001;b=11'b11000000000;sign1 = 0;a1 = 5'd17;sign2 = 0;b1 =5'd11 ;operatin = 1;#10;
      a = 11'b11000000011;b=11'b11000000001;sign1 = 0;a1 = 5'd14;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
      a = 11'b11000000011;b=11'b11000000001;sign1 = 1;a1 = 5'd14;sign2 = 1;b1 =5'd11 ; operatin = 0;#10;

      a = 11'd1026;        b=11'd1028;         sign1 = 0;a1 = 5'd11;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
      a = 11'd1484;       b=11'd1691;sign1 = 0;a1 = 5'd9;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
      a = 11'd1897       ;b=11'd1641;sign1 = 0;a1 = 5'd29;sign2 = 0;b1 =5'd27 ; operatin = 1;#10;


         a = 11'b10000000000;b=11'd1032;sign1 = 0;a1 = 5'd17;sign2 = 0;b1 =5'd11 ;operatin = 1; #10;
         a = 11'b10000000001;b=11'b10000000000;sign1 = 0;a1 = 5'd17;sign2 = 0;b1 =5'd11 ;operatin = 1;#10;
          a = 11'b10000000011;b=11'b10000000001;sign1 = 1;a1 = 5'd14;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
          // a = 11'd14;        b=11'd3;         sign1 = 0;a1 = 5'd11;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
          a = 11'd1484;       b=11'd1391;sign1 = 0;a1 = 5'd9;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
          a = 11'd1897       ;b=11'd1141;sign1 = 1;a1 = 5'd29;sign2 = 0;b1 =5'd27 ; operatin = 1;#10;

         a = 11'b11000000000;b=11'b11000000100;sign1 = 0;a1 = 5'd17;sign2 = 1;b1 =5'd11 ;operatin = 1; #10;
         a = 11'b11000000001;b=11'b11000000000;sign1 = 1;a1 = 5'd17;sign2 = 1;b1 =5'd11 ;operatin = 1;#10;
          a = 11'b11000000011;b=11'b11000000001;sign1 = 0;a1 = 5'd14;sign2 = 0;b1 =5'd14 ; operatin = 1;#10;
          a = 11'd1026;        b=11'd1028;         sign1 = 0;a1 = 5'd11;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
          a = 11'd1484;       b=11'd1691;sign1 = 1;a1 = 5'd9;sign2 = 0;b1 =5'd11 ; operatin = 1;#10;
          a = 11'd1897       ;b=11'd1641;sign1 = 0;a1 = 5'd29;sign2 = 0;b1 =5'd27 ; operatin = 1;#10;
          a = 11'd1897       ;b=11'd1641;sign1 = 1;a1 = 5'd29;sign2 = 0;b1 =5'd27 ; operatin = 1;#10;




end

initial
begin
// $monitor("time = %2d,")


$monitor($time, "inp1 = %d,    sign1 = %d,   exp1 = %d,   inp2 = %d,sign2 = %d,    exp2 = %d,operation(0 means add) = %d ,aout = %d,signout = %d,expout = %d\n", a,sign1,a1,b,sign2,b1,operatin,aout,signout,expout);

// $monitor($time, "    val with sign  = %b_%b,   exp1 = %b, , val with sign = %b_%b  exp2 = %b,operation(0 means add) = %b ,output with sign = %b_%b,expout = %b\n\n\n", sign1,a,a1,sign2,b,b1,operatin,signout,aout,expout);




$dumpfile("mianfile.vcd");
$dumpvars(0,top);
end

endmodule
