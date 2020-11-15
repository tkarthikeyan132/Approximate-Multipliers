

module PPG(res, a, b);

input [15:0] a;
input b;
output [15:0] res;

and and0(res[0], a[0], b);
and and1(res[1], a[1], b);
and and2(res[2], a[2], b);
and and3(res[3], a[3], b);
and and4(res[4], a[4], b);
and and5(res[5], a[5], b);
and and6(res[6], a[6], b);
and and7(res[7], a[7], b);

and and8(res[8], a[8], b);
and and9(res[9], a[9], b);
and and10(res[10], a[10], b);
and and11(res[11], a[11], b);
and and12(res[12], a[12], b);
and and13(res[13], a[13], b);
and and14(res[14], a[14], b);
and and15(res[15], a[15], b);

endmodule
