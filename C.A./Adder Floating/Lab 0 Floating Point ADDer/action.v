module action(o1,a,b);
//carry 2 bit x(j)=a x(j+1)=b
input [1:0]a;
input [1:0]b;
output [1:0]o1;

assign o1[1] = b[1]|a[1]&b[0];
assign o1[0] = b[1]|a[0]&b[0];
// assign o1[1] = a[1]|b[1]&a[0];
// assign o1[0] = a[1]|b[0]&a[0];

endmodule // action(carry,carryout)