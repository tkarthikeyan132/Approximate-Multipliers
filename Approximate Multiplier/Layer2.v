

module Layer2(a, b, c, d, r, s, t, u, v, w, x, y);

input [31:1] r;
input [30:3] s;
input [29:5] t;
input [28:7] u;
input [27:9] v;
input [26:11] w;
input [26:13] x;
input [25:15] y;

output [31:1] a;
output [30:3] b;
output [29:5] c;
output [29:7] d;

//c1
assign a[1] = r[1];

//c2
assign a[2] = r[2];

//c3
assign a[3] = r[3];
assign b[3] = s[3];

//c4
assign a[4] = r[4];
assign b[4] = s[4];

//c5
assign a[5] = r[5];
assign b[5] = s[5];
assign c[5] = t[5];

//c6
assign a[6] = r[6];
assign b[6] = s[6];
assign c[6] = t[6];

//c7
assign a[7] = r[7];
assign b[7] = s[7];
assign c[7] = t[7];
assign d[7] = u[7];

//c8
assign a[8] = r[8];
assign b[8] = s[8];
assign c[8] = t[8];
assign d[8] = u[8];

//c9
Comp3p2 Comp_1(a[9], b[9], r[9], s[9], t[9]);
assign c[9] = u[9];
assign d[9] = v[9];

//c10
Comp3p2 Comp_2(a[10], b[10], r[10], s[10], t[10]);
assign c[10] = u[10];
assign d[10] = v[10];

//c11
Comp4p2 Comp_3(a[11], b[11], r[11], s[11], t[11], u[11]);
assign c[11] = v[11];
assign d[11] = w[11];

//c12
Comp4p2 Comp_4(a[12], b[12], r[12], s[12], t[12], u[12]);
assign c[12] = v[12];
assign d[12] = w[12];

//c13
Comp6p3 Comp_5(a[13], b[13], c[13], r[13], s[13], t[13], u[13], v[13], w[13]);
assign d[13] = x[13];

//c14
Comp6p3 Comp_6(a[14], b[14], c[14], r[14], s[14], t[14], u[14], v[14], w[14]);
assign d[14] = x[14];

//c15
Comp8p4 Comp_7(a[15], b[15], c[15], d[15], r[15], s[15], t[15], u[15], v[15], w[15], x[15], y[15]);

//c16
Comp8p4 Comp_8(a[16], b[16], c[16], d[16], r[16], s[16], t[16], u[16], v[16], w[16], x[16], y[16]);

//c17
Comp8p4 Comp_9(a[17], b[17], c[17], d[17], r[17], s[17], t[17], u[17], v[17], w[17], x[17], y[17]);

//c18
Comp8p4 Comp_10(a[18], b[18], c[18], d[18], r[18], s[18], t[18], u[18], v[18], w[18], x[18], y[18]);

//c19
Comp8p4 Comp_11(a[19], b[19], c[19], d[19], r[19], s[19], t[19], u[19], v[19], w[19], x[19], y[19]);

//c20
Comp8p4 Comp_12(a[20], b[20], c[20], d[20], r[20], s[20], t[20], u[20], v[20], w[20], x[20], y[20]);

//c21
Comp8p4 Comp_13(a[21], b[21], c[21], d[21], r[21], s[21], t[21], u[21], v[21], w[21], x[21], y[21]);

//c22
Comp8p4 Comp_14(a[22], b[22], c[22], d[22], r[22], s[22], t[22], u[22], v[22], w[22], x[22], y[22]);

//c23
Comp8p4 Comp_15(a[23], b[23], c[23], d[23], r[23], s[23], t[23], u[23], v[23], w[23], x[23], y[23]);

//c24
Comp8p4 Comp_16(a[24], b[24], c[24], d[24], r[24], s[24], t[24], u[24], v[24], w[24], x[24], y[24]);

//c25
Comp8p4 Comp_17(a[25], b[25], c[25], d[25], r[25], s[25], t[25], u[25], v[25], w[25], x[25], y[25]);

//c26
FullAdder FA1(a[26], a[27], r[26], s[26], t[26]);
Comp3p2 Comp_18(b[26], c[26], u[26], v[26], w[26]);
assign d[26] = x[26];

//c27
FullAdder FA2(b[27], a[28], r[27], s[27], t[27]);
assign c[27] = u[27];
assign d[27] = v[27];

//c28
HalfAdder HA1(b[28], a[29], r[28], s[28]);
assign c[28] = t[28];
assign d[28] = u[28];

//c29
assign b[29] = r[29];
assign c[29] = s[29];
assign d[29] = t[29];

//c30
assign a[30] = r[30];
assign b[30] = s[30];

//c31
assign a[31] = r[31];

endmodule
