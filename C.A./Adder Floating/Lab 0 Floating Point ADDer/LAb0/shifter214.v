`include "mult.v"
    module barrelShifter( Ip,

       Op,

       shift_mag

       );

      input  [7:0] Ip; //The 8-bit Input line

      output  [7:0] Op; //The 8-bit Output line

      input [2:0]   shift_mag; //The 3-bit shift magnitude selection Input

      wire [7:0]    ST1,ST2; //Two 8-bit intermediate lines

      //the barrel shifter implemented as array of MUX shown in the figure

      mux_2to1 m0 (1'b0,  Ip[0], ST1[0], shift_mag[0]);

      mux_2to1 m1 (Ip[0], Ip[1], ST1[1], shift_mag[0]);

      mux_2to1 m2 (Ip[1], Ip[2], ST1[2], shift_mag[0]);

      mux_2to1 m3 (Ip[2], Ip[3], ST1[3], shift_mag[0]);

      mux_2to1 m4 (Ip[3], Ip[4], ST1[4], shift_mag[0]);

      mux_2to1 m5 (Ip[4], Ip[5], ST1[5], shift_mag[0]);

      mux_2to1 m6 (Ip[5], Ip[6], ST1[6], shift_mag[0]);

      mux_2to1 m7 (Ip[6], Ip[7], ST1[7], shift_mag[0]);

      mux_2to1 m00 (1'b0  , ST1[0], ST2[0], shift_mag[1]);

      mux_2to1 m11 (1'b0  , ST1[1], ST2[1], shift_mag[1]);

      mux_2to1 m22 (ST1[0], ST1[2], ST2[2], shift_mag[1]);

      mux_2to1 m33 (ST1[1], ST1[3], ST2[3], shift_mag[1]);

      mux_2to1 m44 (ST1[2], ST1[4], ST2[4], shift_mag[1]);

      mux_2to1 m55 (ST1[3], ST1[5], ST2[5], shift_mag[1]);

      mux_2to1 m66 (ST1[4], ST1[6], ST2[6], shift_mag[1]);

      mux_2to1 m77 (ST1[5], ST1[7], ST2[7], shift_mag[1]);

      mux_2to1 m000 (1'b0  , ST2[0], Op[0], shift_mag[2]);

      mux_2to1 m111 (1'b0  , ST2[1], Op[1], shift_mag[2]);

      mux_2to1 m222 (1'b0  , ST2[2], Op[2], shift_mag[2]);

      mux_2to1 m333 (1'b0  , ST2[3], Op[3], shift_mag[2]);

      mux_2to1 m444 (ST2[0], ST2[4], Op[4], shift_mag[2]);

      mux_2to1 m555 (ST2[1], ST2[5], Op[5], shift_mag[2]);

      mux_2to1 m666 (ST2[2], ST2[6], Op[6], shift_mag[2]);

      mux_2to1 m777 (ST2[3], ST2[7], Op[7], shift_mag[2]);

    endmodule
