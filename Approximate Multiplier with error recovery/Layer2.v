//`include"AppAdd.v"

module Layer2(a, b, c, d, ei, ej, ek, el,
r, s, t, u, v, w, x, y 
);

input [17:1] r;
input [19:3] s;
input [21:5] t;
input [23:7] u;
input [25:9] v;
input [27:11] w;
input [29:13] x;
input [31:15] y;

output [19:1] a;
output [23:5] b;
output [27:9] c;
output [31:13] d;

output [18:3] ei;
output [22:7] ej;
output [26:11] ek;
output [30:15] el;

// first two rows
assign a[1] = r[1];
assign a[2] = r[2];
AppAdd A1(a[3], ei[3], r[3], s[3], r[2], 1'b0);

genvar i;

generate
    for(i = 4; i < 18; i = i + 1)
        begin
            AppAdd A2(a[i], ei[i], r[i], s[i], r[i-1], s[i-1]);
        end
endgenerate

AppAdd A3(a[18], ei[18], 1'b0, s[18], r[17], s[17]);
assign a[19] = s[19];

// second two rows
assign b[5] = t[5];
assign b[6] = t[6];
AppAdd A4(b[7], ej[7], t[7], u[7], t[6], 1'b0);

generate
    for(i = 8; i < 22; i = i + 1)
        begin
            AppAdd A5(b[i], ej[i], t[i], u[i], t[i-1], u[i-1]);
        end
endgenerate

AppAdd A6(b[22], ej[22], 1'b0, u[22], t[21], u[21]);
assign b[23] = u[23];

// third two rows
assign c[9] = v[9];
assign c[10] = v[10];
AppAdd A7(c[11], ek[11], v[11], w[11], v[10], 1'b0);

generate
    for(i = 12; i < 26; i = i + 1)
        begin
            AppAdd A8(c[i], ek[i], v[i], w[i], v[i-1], w[i-1]);
        end
endgenerate

AppAdd A9(c[26], ek[26], 1'b0, w[26], v[25], w[25]);
assign c[27] = w[27];

// fourth two rows
assign d[13] = x[13];
assign d[14] = x[14];
AppAdd A10(d[15], el[15], x[15], y[15], x[14], 1'b0);

generate
    for(i = 16; i < 30; i = i + 1)
        begin
            AppAdd A11(d[i], el[i], x[i], y[i], x[i-1], y[i-1]);
        end
endgenerate

AppAdd A12(d[30], el[30], 1'b0, y[30], x[29], y[29]);
assign d[31] = y[31];

endmodule