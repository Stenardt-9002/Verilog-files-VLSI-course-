// // iverilog encoder1.v tbencoder1.v -o p1
//
//
//
// module pri_encoder_using_if (
//  binary_out , //  4 bit binary output
//  encoder_in , //  16-bit input
//   enable       //  Enable for the encoder
//  );
//  output [3:0] binary_out ;
//  input  enable ;
//  // input [15:0] encoder_in ;
//  input [9:0] encoder_in ;
//
//
//  reg [3:0] binary_out ;
//
//  // always @ (enable or encoder_in)
//  // begin
//  //   binary_out = 0;
//  //   if (enable) begin
//  //    if (encoder_in[0] == 1) begin
//  //     binary_out = 1;
//  //    end else if (encoder_in[1] == 1) begin
//  //     binary_out = 2;
//  //    end else if (encoder_in[2] == 1) begin
//  //     binary_out = 3;
//  //    end else if (encoder_in[3] == 1) begin
//  //     binary_out = 4;
//  //    end else if (encoder_in[4] == 1) begin
//  //     binary_out = 5;
//  //    end else if (encoder_in[5] == 1) begin
//  //     binary_out = 6;
//  //    end else if (encoder_in[6] == 1) begin
//  //     binary_out = 7;
//  //    end else if (encoder_in[7] == 1) begin
//  //    binary_out = 8;
//  //   end else if (encoder_in[8] == 1) begin
//  //    binary_out = 9;
//  //   end else if (encoder_in[9] == 1) begin
//  //    binary_out = 10;
//
//
//
//
//
//
//  always @ (enable or encoder_in)
//  begin
//    binary_out = 9;
//    if (enable) begin
//     if (encoder_in[9] == 1) begin
//      binary_out = 9;
//     end else if (encoder_in[8] == 1) begin
//      binary_out = 8;
//     end else if (encoder_in[7] == 1) begin
//      binary_out = 7;
//     end else if (encoder_in[6] == 1) begin
//      binary_out = 6;
//     end else if (encoder_in[5] == 1) begin
//      binary_out = 5;
//     end else if (encoder_in[4] == 1) begin
//      binary_out = 4;
//     end else if (encoder_in[3] == 1) begin
//      binary_out = 3;
//     end else if (encoder_in[2] == 1) begin
//     binary_out = 2;
//    end else if (encoder_in[1] == 1) begin
//     binary_out = 1;
//    end else if (encoder_in[0] == 1) begin
//     binary_out = 0;
//
//
//
//
//
//
//
//
//
//
//
//
//     // end else if (encoder_in[10] == 1) begin
//     //  binary_out = 11;
//     // end else if (encoder_in[11] == 1) begin
//     //  binary_out = 12;
//     // end else if (encoder_in[12] == 1) begin
//     //  binary_out = 13;
//     // end else if (encoder_in[13] == 1) begin
//     //  binary_out = 14;
//     // end else if (encoder_in[14] == 1) begin
//     //  binary_out = 15;
//      end
//     end
//   end
//
//   endmodule





//again for ouput bit set value



// iverilog encoder1.v tbencoder1.v -o p1



module pri_encoder_using_if (
 binary_out , //  4 bit binary output
 encoder_in , //  16-bit input
  enable       //  Enable for the encoder
 );
 output [3:0] binary_out ;
 input  enable ;
 // input [15:0] encoder_in ;
 input [11:0] encoder_in ;


 reg [3:0] binary_out ;






 always @ (enable or encoder_in)
 begin
   binary_out = 11;
   if (enable) begin
   if (encoder_in[11] == 1) begin
    binary_out = 11;
    end else if (encoder_in[10] == 1) begin
     binary_out = 10;
    end else if (encoder_in[9] == 1) begin
     binary_out = 9;
    end else if (encoder_in[8] == 1) begin
     binary_out = 8;
    end else if (encoder_in[7] == 1) begin
     binary_out = 7;
    end else if (encoder_in[6] == 1) begin
     binary_out = 6;
    end else if (encoder_in[5] == 1) begin
     binary_out = 5;
    end else if (encoder_in[4] == 1) begin
     binary_out = 4;
    end else if (encoder_in[3] == 1) begin
     binary_out = 3;
    end else if (encoder_in[2] == 1) begin
    binary_out = 2;
   end else if (encoder_in[1] == 1) begin
    binary_out = 1;
   end else if (encoder_in[0] == 1) begin
    binary_out = 0;


     end
    end
  end

  endmodule
