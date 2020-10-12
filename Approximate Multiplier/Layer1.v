`include"FullAdder.v"
`include"HalfAdder.v"
`include"Comp2p1.v"
`include"Comp3p2.v"
`include"Comp4p2.v"
`include"Comp5p3.v"
`include"Comp6p3.v"
`include"Comp7p4.v"
`include"Comp8p4.v"
`include"Comp9p5.v"
`include"Comp10p5.v"
`include"Comp11p6.v"
`include"Comp12p6.v"
`include"Comp13p7.v"
`include"Comp14p7.v"
`include"Comp15p8.v"
`include"Comp16p8.v"

module Layer1(r, s, t, u, v, w, x, y, a, b, c, d, e, f, g, h, i, j, k, l, m, n, p, q);

input [16:1] a;
input [17:2] b;
input [18:3] c;
input [19:4] d;
input [20:5] e;
input [21:6] f;
input [22:7] g;
input [23:8] h;
input [24:9] i;
input [25:10] j;
input [26:11] k;
input [27:12] l;
input [28:13] m;
input [29:14] n;
input [30:15] p;
input [31:16] q;

output [31:1] r;
output [30:3] s;
output [29:5] t;
output [28:7] u;
output [27:9] v;
output [26:11] w;
output [26:13] x;
output [25:15] y;

//c1
assign r[1] = a[1];

//c2
Comp2p1 Comp_1(r[2], a[2], b[2]);

//c3
Comp3p2 Comp_2(r[3], s[3], a[3], b[3], c[3]);

//c4
Comp4p2 Comp_3(r[4], s[4], a[4], b[4], c[4], d[4]);

//c5
Comp5p3 Comp_4(r[5], s[5], t[5], a[5], b[5], c[5], d[5], e[5]);

//c6
Comp6p3 Comp_5(r[6], s[6], t[6], a[6], b[6], c[6], d[6], e[6], f[6]);

//c7
Comp7p4 Comp_6(r[7], s[7], t[7], u[7], a[7], b[7], c[7], d[7], e[7], f[7], g[7]);

//c8
Comp8p4 Comp_7(r[8], s[8], t[8], u[8], a[8], b[8], c[8], d[8], e[8], f[8], g[8], h[8]);

//c9
Comp9p5 Comp_8(r[9], s[9], t[9], u[9], v[9], a[9], b[9], c[9], d[9], e[9], f[9], g[9], h[9], i[9]);

//c10
Comp10p5 Comp_9(r[10], s[10], t[10], u[10], v[10], a[10], b[10], c[10], d[10], e[10], f[10], g[10], h[10], i[10], j[10]);

//c11
Comp11p6 Comp_10(r[11], s[11], t[11], u[11], v[11], w[11], a[11], b[11], c[11], d[11], e[11], f[11], g[11], h[11], i[11], j[11], k[11]);

//c12
Comp12p6 Comp_11(r[12], s[12], t[12], u[12], v[12], w[12], a[12], b[12], c[12], d[12], e[12], f[12], g[12], h[12], i[12], j[12], k[12], l[12]);

//c13
Comp13p7 Comp_12(r[13], s[13], t[13], u[13], v[13], w[13], x[13], a[13], b[13], c[13], d[13], e[13], f[13], g[13], h[13], i[13], j[13], k[13], l[13], m[13]); 

//c14
Comp14p7 Comp_13(r[14], s[14], t[14], u[14], v[14], w[14], x[14], a[14], b[14], c[14], d[14], e[14], f[14], g[14], h[14], i[14], j[14], k[14], l[14], m[14], n[14]); 

//c15
Comp15p8 Comp_14(r[15], s[15], t[15], u[15], v[15], w[15], x[15], y[15], a[15], b[15], c[15], d[15], e[15], f[15], g[15], h[15], i[15], j[15], k[15], l[15], m[15], n[15], p[15]); 

//c16
Comp16p8 Comp_15(r[16], s[16], t[16], u[16], v[16], w[16], x[16], y[16], a[16], b[16], c[16], d[16], e[16], f[16], g[16], h[16], i[16], j[16], k[16], l[16], m[16], n[16], p[16], q[16]);

//c17
FullAdder FA1(r[17], r[18], b[17], c[17], d[17]);
HalfAdder HA1(s[17], s[18], e[17], f[17]);
Comp8p4 Comp_16(t[17], u[17], v[17], w[17], g[17], h[17], i[17], j[17], k[17], l[17], m[17], n[17]);
assign x[17] = p[17];
assign y[17] = q[17];

//c18
FullAdder FA2(t[18], r[19], c[18], d[18], e[18]);
FullAdder FA3(u[18], s[19], f[18], g[18], h[18]);
FullAdder FA4(v[18], t[19], i[18], j[18], k[18]);
Comp4p2 Comp_17(w[18], x[18], l[18], m[18], n[18], p[18]);
assign y[18] = q[18];

//c19
FullAdder FA5(u[19], r[20], d[19], e[19], f[19]);
FullAdder FA6(v[19], s[20], g[19], h[19], i[19]);
FullAdder FA7(w[19], t[20], j[19], k[19], l[19]);
Comp4p2 Comp_18(x[19], y[19], m[19], n[19], p[19], q[19]);

//c20
FullAdder FA8(u[20], r[21], e[20], f[20], g[20]);
FullAdder FA9(v[20], s[21], h[20], i[20], j[20]);
FullAdder FA10(w[20], t[21], k[20], l[20], m[20]);
HalfAdder HA2(x[20], u[21], n[20], p[20]);
assign y[20] = q[20];

//c21
FullAdder FA11(v[21], r[22], f[21], g[21], h[21]);
FullAdder FA12(w[21], s[22], i[21], j[21], k[21]);
FullAdder FA13(x[21], t[22], l[21], m[21], n[21]);
HalfAdder HA3(y[21], u[22], p[21], q[21]);

//c22
FullAdder FA14(v[22], r[23], g[22], h[22], i[22]);
FullAdder FA15(w[22], s[23], j[22], k[22], l[22]);
HalfAdder HA4(x[22], t[23], m[22], n[22]);
HalfAdder HA5(y[22], u[23], p[22], q[22]);

//c23
FullAdder FA16(v[23], r[24], h[23], i[23], j[23]);
FullAdder FA17(w[23], s[24], k[23], l[23], m[23]);
HalfAdder FA18(x[23], t[24], n[23], p[23]);
assign y[23] = q[23];

//c24
FullAdder FA19(u[24], r[25], i[24], j[24], k[24]);
HalfAdder HA6(v[24], s[25], l[24], m[24]);
assign w[24] = n[24];
assign x[24] = p[24];
assign y[24] = q[24];

//c25
HalfAdder HA7(t[25], r[26], j[25], k[25]);
assign u[25] = l[25];
assign v[25] = m[25];
assign w[25] = n[25];
assign x[25] = p[25];
assign y[25] = q[25];

//c26
assign s[26] = k[26];
assign t[26] = l[26];
assign u[26] = m[26];
assign v[26] = n[26];
assign w[26] = p[26];
assign x[26] = q[26];

//c27
assign r[27] = l[27];
assign s[27] = m[27];
assign t[27] = n[27];
assign u[27] = p[27];
assign v[27] = q[27];

//c28
assign r[28] = m[28];
assign s[28] = n[28];
assign t[28] = p[28];
assign u[28] = q[28];

//c29
assign r[29] = n[29];
assign s[29] = p[29];
assign t[29] = q[29];

//c30
assign r[30] = p[30];
assign s[30] = q[30];

//c31
assign r[31] = q[31];

endmodule
