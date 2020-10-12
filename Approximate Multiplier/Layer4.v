

module Layer4(h, i, e, f, g);

input [31:1] e;
input [30:3] f;
input [30:5] g;

output [31:1] h;
output [31:3] i;

//c1
assign h[1] = e[1];

//c2
assign h[2] = e[2];

//c3
assign h[3] = e[3];
assign i[3] = f[3];

//c4
assign h[4] = e[4];
assign i[4] = f[4];

//c5
HalfAdder HA1(h[5], h[6], e[5], f[5]);
assign i[5] = g[5];

//c6
FullAdder FA1(i[6], h[7], e[6], f[6], g[6]);

//c7
FullAdder FA2(i[7], h[8], e[7], f[7], g[7]);

//c8
FullAdder FA3(i[8], h[9], e[8], f[8], g[8]);

//c9
FullAdder FA4(i[9], h[10], e[9], f[9], g[9]);

//c10
FullAdder FA5(i[10], h[11], e[10], f[10], g[10]);

//c11
FullAdder FA6(i[11], h[12], e[11], f[11], g[11]);

//c12
FullAdder FA7(i[12], h[13], e[12], f[12], g[12]);

//c13
FullAdder FA8(i[13], h[14], e[13], f[13], g[13]);

//c14
FullAdder FA9(i[14], h[15], e[14], f[14], g[14]);

//c15
FullAdder FA10(i[15], h[16], e[15], f[15], g[15]);

//c16
FullAdder FA11(i[16], h[17], e[16], f[16], g[16]);

//c17
FullAdder FA12(i[17], h[18], e[17], f[17], g[17]);

//c18
FullAdder FA13(i[18], h[19], e[18], f[18], g[18]);

//c19
FullAdder FA14(i[19], h[20], e[19], f[19], g[19]);

//c20
FullAdder FA15(i[20], h[21], e[20], f[20], g[20]);

//c21
FullAdder FA16(i[21], h[22], e[21], f[21], g[21]);

//c22
FullAdder FA17(i[22], h[23], e[22], f[22], g[22]);

//c23
FullAdder FA18(i[23], h[24], e[23], f[23], g[23]);

//c24
FullAdder FA19(i[24], h[25], e[24], f[24], g[24]);

//c25
FullAdder FA20(i[25], h[26], e[25], f[25], g[25]);

//c26
FullAdder FA21(i[26], h[27], e[26], f[26], g[26]);

//c27
FullAdder FA23(i[27], h[28], e[27], f[27], g[27]);

//c28
FullAdder FA24(i[28], h[29], e[28], f[28], g[28]);

//c29
FullAdder FA25(i[29], h[30], e[29], f[29], g[29]);

//c30
FullAdder FA26(i[30], h[31], e[30], f[30], g[30]);

//c31
assign i[31] = e[31];

endmodule
