`include"AppHalfAdder.v"
`include"AccHalfAdder.v"
`include"AccComp4p2.v"
`include"AppComp4p2.v"

module Layer1(err1, err2, r, s, t, u, v, w, x, y,
a, b, c, d, e, f, g, h, i, j, k, l, m, n, p, q
);

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
output [30:2] s;
output [29:3] t;
output [28:4] u;
output [27:5] v;
output [26:6] w;
output [25:7] x;
output [25:8] y;
output err1;
output err2;

wire [20:1] ca;

//error
wire w1, w2, w3, w4;

genvar z;

//col 1-8
//row1
generate 
    for(z = 1; z < 9; z = z + 1)
        begin
            assign r[z] = a[z];
        end 
endgenerate

//row2
generate 
    for(z = 2; z < 9; z = z + 1)
        begin
            assign s[z] = b[z];
        end 
endgenerate

//row3
generate 
    for(z = 3; z < 9; z = z + 1)
        begin
            assign t[z] = c[z];
        end 
endgenerate

//row4
generate 
    for(z = 4; z < 9; z = z + 1)
        begin
            assign u[z] = d[z];
        end 
endgenerate

//row5
generate 
    for(z = 5; z < 9; z = z + 1)
        begin
            assign v[z] = e[z];
        end 
endgenerate

//row6
generate 
    for(z = 6; z < 9; z = z + 1)
        begin
            assign w[z] = f[z];
        end 
endgenerate

//row7
generate 
    for(z = 7; z < 9; z = z + 1)
        begin
            assign x[z] = g[z];
        end 
endgenerate

//row8
assign y[8] = h[8];

//col9
AppHalfAdder APHA1(r[9], a[9], b[9]);
assign s[9] = c[9];
assign t[9] = d[9];
assign u[9] = e[9];
assign v[9] = f[9];
assign w[9] = g[9];
assign x[9] = h[9];
assign y[9] = i[9];

//col10
AppComp4p2 APC1(r[10], s[10], a[10], b[10], c[10], d[10]);
assign t[10] = e[10];
assign u[10] = f[10];
assign v[10] = g[10];
assign w[10] = h[10];
assign x[10] = i[10];
assign y[10] = j[10];

//col11
AppComp4p2 APC2(r[11], s[11], a[11], b[11], c[11], d[11]);
AppHalfAdder APHA2(t[11], e[11], f[11]);
assign u[11] = g[11];
assign v[11] = h[11];
assign w[11] = i[11];
assign x[11] = j[11];
assign y[11] = k[11];

//col12
AppComp4p2 APC3(r[12], s[12], a[12], b[12], c[12], d[12]);
AppComp4p2 APC4(t[12], u[12], e[12], f[12], g[12], h[12]);
assign v[12] = i[12];
assign w[12] = j[12];
assign x[12] = k[12];
assign y[12] = l[12];

//col13
AppComp4p2 APC5(r[13], s[13], a[13], b[13], c[13], d[13]);
AppComp4p2 APC6(t[13], u[13], e[13], f[13], g[13], h[13]);
AppHalfAdder APHA3(v[13], i[13], j[13]);
assign w[13] = k[13];
assign x[13] = l[13];
assign y[13] = m[13];

//col14
AppComp4p2 APC7(r[14], s[14], a[14], b[14], c[14], d[14]);
AppComp4p2 APC8(t[14], u[14], e[14], f[14], g[14], h[14]);
AppComp4p2 APC9(v[14], w[14], i[14], j[14], k[14], l[14]);
assign x[14] = m[14];
assign y[14] = n[14];

//col15
AppComp4p2 APC10(r[15], s[15], a[15], b[15], c[15], d[15]);
AppComp4p2 APC11(t[15], u[15], e[15], f[15], g[15], h[15]);
AppComp4p2 APC12(v[15], w[15], i[15], j[15], k[15], l[15]);
AppHalfAdder APHA4(x[15], m[15], n[15]);
assign y[15] = p[15];

//col16
AppComp4p2 APC13(r[16], s[16], a[16], b[16], c[16], d[16]);
AppComp4p2 APC14(t[16], u[16], e[16], f[16], g[16], h[16]);
AppComp4p2 APC15(v[16], w[16], i[16], j[16], k[16], l[16]);
AppComp4p2 APC16(x[16], y[16], m[16], n[16], p[16], q[16]);

//col17
AccComp4p2 ACC1(ca[1], r[17], s[17], b[17], c[17], d[17], e[17], 1'b0);
AccComp4p2 ACC2(ca[2], t[17], u[17], f[17], g[17], h[17], i[17], 1'b0);
AccComp4p2 ACC3(ca[3], v[17], w[17], j[17], k[17], l[17], m[17], 1'b0);
AccHalfAdder ACHA1(ca[4], x[17], n[17], p[17]);
assign y[17] = q[17];

//col18
AccComp4p2 ACC4(ca[5], r[18], s[18], c[18], d[18], e[18], f[18], ca[1]);
AccComp4p2 ACC5(ca[6], t[18], u[18], g[18], h[18], i[18], j[18], ca[2]);
AccComp4p2 ACC6(ca[7], v[18], w[18], k[18], l[18], m[18], n[18], ca[3]);
AccHalfAdder ACHA2(ca[8], x[18], p[18], q[18]);
assign y[18] = ca[4];

//col19
AccComp4p2 ACC7(ca[9], r[19], s[19], d[19], e[19], f[19], g[19], ca[5]);
AccComp4p2 ACC8(ca[10], t[19], u[19], h[19], i[19], j[19], k[19], ca[6]);
AccComp4p2 ACC9(ca[11], v[19], w[19], l[19], m[19], n[19], p[19], ca[7]);
assign x[19] = q[19];
assign y[19] = ca[8];

//col20
AccComp4p2 ACC10(ca[12], r[20], s[20], e[20], f[20], g[20], h[20], ca[9]);
AccComp4p2 ACC11(ca[13], t[20], u[20], i[20], j[20], k[20], l[20], ca[10]);
AccHalfAdder ACHA3(ca[14], v[20], m[20], n[20]);
assign w[20] = p[20];
assign x[20] = q[20];
assign y[20] = ca[11];

//col21
AccComp4p2 ACC12(ca[15], r[21], s[21], f[21], g[21], h[21], i[21], ca[12]);
AccComp4p2 ACC13(ca[16], t[21], u[21], j[21], k[21], l[21], m[21], ca[13]);
assign v[21] = n[21];
assign w[21] = p[21];
assign x[21] = q[21];
assign y[21] = ca[14];

//col22
AccComp4p2 ACC14(ca[17], r[22], s[22], g[22], h[22], i[22], j[22], ca[15]);
AccHalfAdder ACHA4(ca[18], t[22], k[22], l[22]);
assign u[22] = m[22];
assign v[22] = n[22];
assign w[22] = p[22];
assign x[22] = q[22];
assign y[22] = ca[16];

//col23
AccComp4p2 ACC15(ca[19], r[23], s[23], h[23], i[23], j[23], k[23], ca[17]);
assign t[23] = l[23];
assign u[23] = m[23];
assign v[23] = n[23];
assign w[23] = p[23];
assign x[23] = q[23];
assign y[23] = ca[18];

//col24
AccHalfAdder ACHA5(ca[20], r[24], i[24], j[24]);
assign s[24] = k[24];
assign t[24] = l[24];
assign u[24] = m[24];
assign v[24] = n[24];
assign w[24] = p[24];
assign x[24] = q[24];
assign y[24] = ca[19];

//col25
assign r[25] = j[25];
assign s[25] = k[25];
assign t[25] = l[25];
assign u[25] = m[25];
assign v[25] = n[25];
assign w[25] = p[25];
assign x[25] = q[25];
assign y[25] = ca[20];

//col26
assign r[26] = k[26];
assign s[26] = l[26];
assign t[26] = m[26];
assign u[26] = n[26];
assign v[26] = p[26];
assign w[26] = q[26];

//col27
assign r[27] = l[27];
assign s[27] = m[27];
assign t[27] = n[27];
assign u[27] = p[27];
assign v[27] = q[27];

//col28
assign r[28] = m[28];
assign s[28] = n[28];
assign t[28] = p[28];
assign u[28] = q[28];

//col29
assign r[29] = n[29];
assign s[29] = p[29];
assign t[29] = q[29];

//col30
assign r[30] = p[30];
assign s[30] = q[30];

//col31
assign r[31] = q[31];

//error
and and_1(w1, c[16], d[16]);
and and_2(w2, g[16], h[16]);
and and_3(w3, k[16], l[16]);
and and_4(w4, p[16], q[16]);

or or_1(err1, w1, w2);
or or_2(err2, w3, w4);

endmodule