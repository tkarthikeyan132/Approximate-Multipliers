`include"AppAdd.v"

module Layer1(r, s, t, u, v, w, x, y,
ea, eb, ec, ed, ee, ef, eg, eh,
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

output [17:1] r;
output [19:3] s;
output [21:5] t;
output [23:7] u;
output [25:9] v;
output [27:11] w;
output [29:13] x;
output [31:15] y;

output [17:2] ea;
output [19:4] eb;
output [21:6] ec;
output [23:8] ed;
output [25:10] ee;
output [27:12] ef;
output [29:14] eg;
output [31:16] eh;

//first two rows
assign r[1] = a[1];
AppAdd A1(r[2], ea[2], a[2], b[2], a[1], 1'b0);
AppAdd A2(r[3], ea[3], a[3], b[3], a[2], b[2]);
AppAdd A3(r[4], ea[4], a[4], b[4], a[3], b[3]);
AppAdd A4(r[5], ea[5], a[5], b[5], a[4], b[4]);
AppAdd A5(r[6], ea[6], a[6], b[6], a[5], b[5]);
AppAdd A6(r[7], ea[7], a[7], b[7], a[6], b[6]);
AppAdd A7(r[8], ea[8], a[8], b[8], a[7], b[7]);
AppAdd A8(r[9], ea[9], a[9], b[9], a[8], b[8]);
AppAdd A9(r[10], ea[10], a[10], b[10], a[9], b[9]);
AppAdd A10(r[11], ea[11], a[11], b[11], a[10], b[10]);
AppAdd A11(r[12], ea[12], a[12], b[12], a[11], b[11]);
AppAdd A12(r[13], ea[13], a[13], b[13], a[12], b[12]);
AppAdd A13(r[14], ea[14], a[14], b[14], a[13], b[13]);
AppAdd A14(r[15], ea[15], a[15], b[15], a[14], b[14]);
AppAdd A15(r[16], ea[16], a[16], b[16], a[15], b[15]);
AppAdd A16(r[17], ea[17], 1'b0, b[17], a[16], b[16]);

//second two rows
assign s[3] = c[3];
AppAdd A17(s[4], eb[4], c[4], d[4], c[3], 1'b0);
AppAdd A18(s[5], eb[5], c[5], d[5], c[4], d[4]);
AppAdd A19(s[6], eb[6], c[6], d[6], c[5], d[5]);
AppAdd A20(s[7], eb[7], c[7], d[7], c[6], d[6]);
AppAdd A21(s[8], eb[8], c[8], d[8], c[7], d[7]);
AppAdd A22(s[9], eb[9], c[9], d[9], c[8], d[8]);
AppAdd A23(s[10], eb[10], c[10], d[10], c[9], d[9]);
AppAdd A24(s[11], eb[11], c[11], d[11], c[10], d[10]);
AppAdd A25(s[12], eb[12], c[12], d[12], c[11], d[11]);
AppAdd A26(s[13], eb[13], c[13], d[13], c[12], d[12]);
AppAdd A27(s[14], eb[14], c[14], d[14], c[13], d[13]);
AppAdd A28(s[15], eb[15], c[15], d[15], c[14], d[14]);
AppAdd A29(s[16], eb[16], c[16], d[16], c[15], d[15]);
AppAdd A30(s[17], eb[17], c[17], d[17], c[16], d[16]);
AppAdd A31(s[18], eb[18], c[18], d[18], c[17], d[17]);
AppAdd A32(s[19], eb[19], 1'b0, d[19], c[18], d[18]);

//third two rows
assign t[5] = e[5];
AppAdd A33(t[6], ec[6], e[6], f[6], e[5], 1'b0);

genvar z;
generate
    for(z = 7; z < 21; z = z + 1)
        begin
            AppAdd A34(t[z], ec[z], e[z], f[z], e[z-1], f[z-1]);
        end
endgenerate

AppAdd A35(t[21], ec[21], 1'b0, f[21], e[20], f[20]);

// fourth two rows
assign u[7] = g[7];
AppAdd A36(u[8], ed[8], g[8], h[8], g[7], 1'b0);

generate
    for(z = 9; z < 23; z = z + 1)
        begin
            AppAdd A37(u[z], ed[z], g[z], h[z], g[z-1], h[z-1]);
        end
endgenerate

AppAdd A38(u[23], ed[23], 1'b0, h[23], g[22], h[22]);

// fifth two rows
assign v[9] = i[9];
AppAdd A39(v[10], ee[10], i[10], j[10], i[9], 1'b0);

generate
    for(z = 11; z < 25; z = z + 1)
        begin
            AppAdd A40(v[z], ee[z], i[z], j[z], i[z-1], j[z-1]);
        end
endgenerate

AppAdd A41(v[25], ee[25], 1'b0, j[25], i[24], j[24]);

//sixth two rows
assign w[11] = k[11];
AppAdd A42(w[12], ef[12], k[12], l[12], k[11], 1'b0);

generate
    for(z = 13; z < 27; z = z + 1)
        begin
            AppAdd A43(w[z], ef[z], k[z], l[z], k[z-1], l[z-1]);
        end
endgenerate

AppAdd A44(w[27], ef[27], 1'b0, l[27], k[26], l[26]);

// seventh two rows
assign x[13] = m[13];
AppAdd A45(x[14], eg[14], m[14], n[14], m[13], 1'b0);

generate
    for(z = 15; z < 29; z = z + 1)
        begin
            AppAdd A46(x[z], eg[z], m[z], n[z], m[z-1], n[z-1]);
        end
endgenerate

AppAdd A47(x[29], eg[29], 1'b0, n[29], m[28], n[28]);

// eighth two rows
assign y[15] = p[15];
AppAdd A48(y[16], eh[16], p[16], q[16], p[15], 1'b0);

generate
    for(z = 17; z < 31; z = z + 1)
        begin
            AppAdd A49(y[z], eh[z], p[z], q[z], p[z-1], q[z-1]);
        end
endgenerate

AppAdd A50(y[31], eh[31], 1'b0, q[31], p[30], q[30]);

endmodule