`include "onestep.v"
`include "twostep.v"
`include "threestep.v"
`include "fourstep.v"
`include "fivestep.v"
`include "coversion.v"
`include "ans.v"

module doubling_recursion(a,b,cin,ans1,sgn);
input [15:0]a;
input [15:0]b;
input cin;
input sgn;
// reg [15:0]b;
// input [15:0]b;
wire [16:0][1:0]carry ;
wire[16:0][1:0]carry2 ;
wire [16:0][1:0]carry3 ;
wire [16:0][1:0]carry4 ;
wire [16:0][1:0]carry5 ;
wire [16:0][1:0]carry6 ;
wire [15:0]sum;
wire [16:0]carry1;//main carry
// wire [16:0]ans1;
output [16:0]ans1;
//k = 00 p = 01 g = 11
// always
// begin
//     if (cin==0)
//         begin
//             carry[0] = 2'b00;
//         end
//     else
//         begin
//             carry[0] = 2'b01;
//         end


// end

  // always @1
  //   begin
  //     if (sgn == 0)
  //         b=1-b1;
  //       else
  //         b =b1;
  //   end


    assign sum= (a^b);




// coversion to kpg form of carry


    // for (i = 1; i < 17; i = i + 1)
     assign carry[0][1] = cin;
     assign carry[0][0] = cin;

     assign carry[1][1] = a[0]&b[0];

     assign carry[1][0] = a[0]|b[0];

     assign carry[2][1] =  a[1]&b[1];
     assign carry[2][0] =  a[1]|b[1];
     assign carry[3][1] =  a[2]&b[2];
     assign carry[3][0] =  a[2]|b[2];
     assign carry[4][1] =  a[3]&b[3];
     assign carry[4][0] =  a[3]|b[3];
     assign carry[5][1] =  a[4]&b[4];
     assign carry[5][0] =  a[4]|b[4];
     assign carry[6][1] =  a[5]&b[5];
     assign carry[6][0] =  a[5]|b[5];
     assign carry[7][1] =  a[6]&b[6];
     assign carry[7][0] =  a[6]|b[6];
     assign carry[8][1] =  a[7]&b[7];
     assign carry[8][0] =  a[7]|b[7];

//       a[8]&b[8];
//  a[8]|b[8];

     assign carry[9][1] = a[8]&b[8];
     assign carry[9][0] = a[8]|b[8];
     assign carry[10][1] = a[9]&b[9];
     assign carry[10][0] = a[9]|b[9];
     assign carry[11][1] = a[10]&b[10];
     assign carry[11][0] = a[10]|b[10];
     assign carry[12][1] = a[11]&b[11];
     assign carry[12][0] = a[11]|b[11];
     assign carry[13][1] = a[12]&b[12];
     assign carry[13][0] = a[12]|b[12];
     assign carry[14][1] = a[13]&b[13];
     assign carry[14][0] = a[13]|b[13];
     assign carry[15][1] = a[14]&b[14];
     assign carry[15][0] = a[14]|b[14];
     assign carry[16][1] = a[15]&b[15];
     assign carry[16][0] = a[15]|b[15];

    // if (a[i-1]&b[i-1])==1)
    // begin
    //    carry[i] = 2'b0;
    // end

    // else if (a[i-1]&b[i-1])==0)
    // begin
    //    carry[i] = 1'b1;
    // end

    // else
    //     begin
    //         carry[i] = 1'bx;
    //     end


     //makes sequential
     // fork join?

// always
// //coversion time
// begin
// carry1()
onestep m11(carry,carry2);

// initial
// begin
// a = 16'b0000000001010110;b=16'b0000000001011101;#10;

// end



// initial
// begin


// // $monitor("time = %2d,  carry =%b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b", $time,carryin[15],carryin[14],carryin[13],carryin[12],carryin[11],carryin[10],carryin[9],carryin[8],carryin[7],carryin[6],carryin[5],carryin[4],carryin[3],carryin[2],carryin[1],carryin[0]);
// $monitor("time = %2d,  carry =%b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b \n", $time,carry[15],carry[14],carry[13],carry[12],carry[11],carry[10],carry[9],carry[8],carry[7],carry[6],carry[5],carry[4],carry[3],carry[2],carry[1],carry[0]);
// $monitor("time = %2d,  carry2 =%b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b, %b,%b,%b ,%b", $time,carry2[15],carry2[14],carry2[13],carry2[12],carry2[11],carry2[10],carry2[9],carry2[8],carry2[7],carry2[6],carry2[5],carry2[4],carry2[3],carry2[2],carry2[1],carry2[0]);
// end

// twostep m22(carry2,carry3);
// threestep m33(carry3,carry4);
// fourstep m44(carry5,)
twostep m2(carry2,carry3);
threestep m3(carry3,carry4);
fourstep m4(carry4,carry5);
fivestep m5(carry5,carry6);
conversion m6(carry6,carry1);
ans m7(ans1,sum,carry1);

// end

//resolve

  // always @(sgn  )
  //   begin
  //     if (sgn == 1)
  //         ans2=-ans1;
  //     else
  //       ans2=ans1;
  //
  //
  //   end





endmodule
