

module Layer3(e, f, g, a, b, c, d);

input [31:1] a;
input [30:3] b;
input [29:5] c;
input [29:7] d;

output [31:1] e;
output [30:3] f;
output [30:5] g;

//c1
assign e[1] = a[1];

//c2
assign e[2] = a[2];

//c3
assign e[3] = a[3];
assign f[3] = b[3];

//c4
assign e[4] = a[4];
assign f[4] = b[4];

//c5
assign e[5] = a[5];
assign f[5] = b[5];
assign g[5] = c[5];

//c6
assign e[6] = a[6];
assign f[6] = b[6];
assign g[6] = c[6];

//c7
HalfAdder HA1(e[7], e[8], a[7], b[7]);
assign f[7] = c[7];
assign g[7] = d[7];

//c8
FullAdder FA1(f[8], e[9], a[8], b[8], c[8]);
assign g[8] = d[8];

//c9
FullAdder FA2(f[9], e[10], a[9], b[9], c[9]);
assign g[9] = d[9];

//c10
FullAdder FA3(f[10], e[11], a[10], b[10], c[10]);
assign g[10] = d[10];

//c11
FullAdder FA4(f[11], e[12], a[11], b[11], c[11]);
assign g[11] = d[11];

//c12
FullAdder FA5(f[12], e[13], a[12], b[12], c[12]);
assign g[12] = d[12];

//c13
FullAdder FA6(f[13], e[14], a[13], b[13], c[13]);
assign g[13] = d[13];

//c14
FullAdder FA7(f[14], e[15], a[14], b[14], c[14]);
assign g[14] = d[14];

//c15
FullAdder FA8(f[15], e[16], a[15], b[15], c[15]);
assign g[15] = d[15];

//c16
FullAdder FA9(f[16], e[17], a[16], b[16], c[16]);
assign g[16] = d[16];

//c17
FullAdder FA10(f[17], e[18], a[17], b[17], c[17]);
assign g[17] = d[17];

//c18
FullAdder FA11(f[18], e[19], a[18], b[18], c[18]);
assign g[18] = d[18];

//c19
FullAdder FA12(f[19], e[20], a[19], b[19], c[19]);
assign g[19] = d[19];

//c20
FullAdder FA13(f[20], e[21], a[20], b[20], c[20]);
assign g[20] = d[20];

//c21
FullAdder FA14(f[21], e[22], a[21], b[21], c[21]);
assign g[21] = d[21];

//c22
FullAdder FA15(f[22], e[23], a[22], b[22], c[22]);
assign g[22] = d[22];

//c23
FullAdder FA16(f[23], e[24], a[23], b[23], c[23]);
assign g[23] = d[23];

//c24
FullAdder FA17(f[24], e[25], a[24], b[24], c[24]);
assign g[24] = d[24];

//c25
FullAdder FA18(f[25], e[26], a[25], b[25], c[25]);
assign g[25] = d[25];

//c26
FullAdder FA19(f[26], e[27], a[26], b[26], c[26]);
assign g[26] = d[26];

//c27
FullAdder FA20(f[27], e[28], a[27], b[27], c[27]);
assign g[27] = d[27];

//c28
FullAdder FA21(f[28], e[29], a[28], b[28], c[28]);
assign g[28] = d[28];

//c29
FullAdder FA22(f[29], e[30], a[29], b[29], c[29]);
assign g[29] = d[29];

//c30
assign f[30] = a[30];
assign g[30] = b[30];

//c31
assign e[31] = a[31];

endmodule
