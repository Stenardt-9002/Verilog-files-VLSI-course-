//module mux_21(out,i1,i0,sele);
module mux_21(i0,i1,out,sele);

    output out;
    input i1,i0,sele;
    not (u,sele);
    and (m,sele,i1);
    and (n,u,i0);
    or (out,m,n);
endmodule



// module mux(input a, input b, input s, output c);
// assign c = a&s | b&~s ;
// endmodule
