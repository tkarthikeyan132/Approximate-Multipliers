

module Layer2(err3, a, b, c, d, r, s, t, u, v, w, x, y, err1, err2);

input [31:1] r;
input [30:2] s;
input [29:3] t;
input [28:4] u;
input [27:5] v;
input [26:6] w;
input [25:7] x;
input [25:8] y;
input err1;
input err2;

output [31:1] a;
output [30:2] b;
output [29:3] c;
output [29:4] d;
output err3;

wire [2:1] cb;
wire [25:18] cx;
wire [25:18] cy;
wire [22:19] cc;

//error
wire w1, w2;

//col1
assign a[1] = r[1];

//col2
assign a[2] = r[2];
assign b[2] = s[2];

//col3
assign a[3] = r[3];
assign b[3] = s[3];
assign c[3] = t[3];

//col4
assign a[4] = r[4];
assign b[4] = s[4];
assign c[4] = t[4];
assign d[4] = u[4];

//col5
AppHalfAdder APHA1(a[5], r[5], s[5]);
assign b[5] = t[5];
assign c[5] = u[5];
assign d[5] = v[5];

//col6
AppComp4p2 APC1(a[6], b[6], r[6], s[6], t[6], u[6]);
assign c[6] = v[6];
assign d[6] = w[6];

//col7
AppComp4p2 APC2(a[7], b[7], r[7], s[7], t[7], u[7]);
AppHalfAdder APHA2(c[7], v[7], w[7]);
assign d[7] = x[7];

//col 8-16
genvar z;

generate
    for(z = 8; z < 17; z = z + 1)
        begin
            AppComp4p2 APC3(a[z], b[z], r[z], s[z], t[z], u[z]);
            AppComp4p2 APC4(c[z], d[z], v[z], w[z], x[z], y[z]);
        end
endgenerate

//col 17
AccComp4p2 ACC1(cb[1], a[17], b[17], r[17], s[17], t[17], u[17], err1);
AccComp4p2 ACC2(cb[2], c[17], d[17], v[17], w[17], x[17], y[17], err2);

//col 18
AccComp4p2 ACC3(cx[18], a[18], b[18], r[18], s[18], t[18], u[18], cb[1]);
AccComp4p2 ACC4(cy[18], c[18], d[18], v[18], w[18], x[18], y[18], cb[2]);

//col 19 - 25
generate
    for(z = 19; z < 26; z = z + 1)
        begin
            AccComp4p2 ACC5(cx[z], a[z], b[z], r[z], s[z], t[z], u[z], cx[z-1]);
            AccComp4p2 ACC6(cy[z], c[z], d[z], v[z], w[z], x[z], y[z], cy[z-1]);
        end
endgenerate

//col 26
AccComp4p2 ACC7(cc[19], a[26], b[26], r[26], s[26], t[26], u[26], cx[25]);
AccHalfAdder ACHA1(cc[20], c[26], v[26], w[26]);
assign d[26] = cy[25];

//col 27
AccComp4p2 ACC8(cc[21], a[27], b[27], r[27], s[27], t[27], u[27], cc[19]);
assign c[27] = v[27];
assign d[27] = cc[20];

//col 28
AccHalfAdder ACHA2(cc[22], a[28], r[28], s[28]);
assign b[28] = t[28];
assign c[28] = u[28];
assign d[28] = cc[21];

//col 29
assign a[29] = r[29];
assign b[29] = s[29];
assign c[29] = t[29];
assign d[29] = cc[22];

//col 30
assign a[30] = r[30];
assign b[30] = s[30];

//col 31
assign a[31] = r[31];

//error
and and_1(w1, t[16], u[16]);
and and_2(w2, x[16], y[16]);
or or_1(err3, w1, w2);

endmodule