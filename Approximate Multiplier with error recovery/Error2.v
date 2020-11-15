`include"AppAdds.v"

module Error2(erq, ea, eb, ec, ed, ee, ef, eg, eh, ei, ej, ek, el, em, en, ep);

input [17:3] ea;
input [19:5] eb;
input [21:7] ec;
input [23:9] ed;
input [25:11] ee;
input [27:13] ef;
input [29:15] eg;
input [31:17] eh;
input [18:4] ei;
input [22:8] ej;
input [26:12] ek;
input [30:16] el;
input [20:6] em;
input [28:14] en;
input [24:10] ep;

//layer1 results
wire [19:3] a;
wire [23:7] b;
wire [27:11] c;
wire [31:15] d;
wire [22:4] e;
wire [30:12] f;
wire [28:6] g;
wire [24:10] h;

//layer2 results
wire [23:3] z; // i changed to z
wire [31:11] j;
wire [30:4] k;
wire [28:6] l;

//layer3 results
wire [31:3] m;
wire [30:4] n;

//layer4 results
wire [31:3] p;

//final result
output [31:20] erq;

//layer 1 computations
//first two rows
genvar i;

generate
    for(i = 3; i < 5; i = i + 1)
    begin
        assign a[i] = ea[i];
    end
endgenerate

generate
    for(i = 5; i < 18; i = i + 1)
    begin
        or or_1(a[i], ea[i], eb[i]);
    end
endgenerate

generate
    for(i = 18; i < 20; i = i + 1)
    begin
        assign a[i] = eb[i];
    end
endgenerate

//second two rows
generate
    for(i = 7; i < 9; i = i + 1)
    begin
        assign b[i] = ec[i];
    end
endgenerate

generate
    for(i = 9; i < 22; i = i + 1)
    begin
        or or_2(b[i], ec[i], ed[i]);
    end
endgenerate

generate
    for(i = 22; i < 24; i = i + 1)
    begin
        assign b[i] = ed[i];
    end
endgenerate

//third two rows
generate
    for(i = 11; i < 13; i = i + 1)
    begin
        assign c[i] = ee[i];
    end
endgenerate

generate
    for(i = 13; i < 26; i = i + 1)
    begin
        or or_3(c[i], ee[i], ef[i]);
    end
endgenerate

generate
    for(i = 26; i < 28; i = i + 1)
    begin
        assign c[i] = ef[i];
    end
endgenerate

//fourth two rows
generate
    for(i = 15; i < 17; i = i + 1)
    begin
        assign d[i] = eg[i];
    end
endgenerate

generate
    for(i = 17; i < 30; i = i + 1)
    begin
        or or_4(d[i], eg[i], eh[i]);
    end
endgenerate

generate
    for(i = 30; i < 32; i = i + 1)
    begin
        assign d[i] = eh[i];
    end
endgenerate

//fifth two rows
generate
    for(i = 4; i < 8; i = i + 1)
    begin
        assign e[i] = ei[i];
    end
endgenerate

AppAdds A1(e[8], ei[8], ej[8], ei[7], 1'b0);
generate
    for(i = 9; i < 19; i = i + 1)
    begin
        AppAdds A2(e[i], ei[i], ej[i], ei[i-1], ej[i-1]);
    end
endgenerate
AppAdds A3(e[19], 1'b0, ej[19], ei[18], ej[18]);

generate
    for(i = 20; i < 23; i = i + 1)
    begin
        assign e[i] = ej[i];
    end
endgenerate

//sixth two rows
generate
    for(i = 12; i < 16; i = i + 1)
    begin
        assign f[i] = ek[i];
    end
endgenerate

AppAdds A4(f[16], ek[16], el[16], ek[15], 1'b0);
generate
    for(i = 17; i < 27; i = i + 1)
    begin
        AppAdds A5(f[i], ek[i], el[i], ek[i-1], el[i-1]);
    end
endgenerate
AppAdds A6(f[27], 1'b0, el[27], ek[26], el[26]);

generate
    for(i = 28; i < 31; i = i + 1)
    begin
        assign f[i] = el[i];
    end
endgenerate

//seventh two rows
generate
    for(i = 6; i < 14; i = i + 1)
    begin
        assign g[i] = em[i] ;
    end
endgenerate

AppAdds A7(g[14], em[14], en[14], em[13], 1'b0);
generate
    for(i = 15; i < 21; i = i + 1)
    begin
        AppAdds A8(g[i], em[i], en[i], em[i-1], en[i-1]);
    end
endgenerate
AppAdds A9(g[21], 1'b0, en[21], em[20], en[20]);

generate
    for(i = 22; i < 29; i = i + 1)
    begin
        assign g[i] = en[i];
    end
endgenerate

//eighth row as it is
generate
    for(i = 10; i < 25; i = i + 1)
    begin
        assign h[i] = ep[i];
    end
endgenerate

//layer 2 computations
//first two rows
generate
    for(i = 3; i < 7; i = i + 1)
    begin
        assign z[i] = a[i];
    end
endgenerate

generate
    for(i = 7; i < 20; i = i + 1)
    begin
        or or_5(z[i], a[i], b[i]);
    end
endgenerate

generate
    for(i = 20; i < 24; i = i + 1)
    begin
        assign z[i] = b[i];
    end
endgenerate

//second two rows
generate
    for(i = 11; i < 15; i = i + 1)
    begin
        assign j[i] = c[i];
    end
endgenerate

generate
    for(i = 15; i < 28; i = i + 1)
    begin
        or or_6(j[i], c[i], d[i]);
    end
endgenerate

generate
    for(i = 28; i < 32; i = i + 1)
    begin
        assign j[i] = d[i];
    end
endgenerate

//third two rows
generate
    for(i = 4; i < 12; i = i + 1)
    begin
        assign k[i] = e[i];
    end
endgenerate

AppAdds A10(k[12], e[12], f[12], e[11], 1'b0);
generate
    for(i = 13; i < 23; i = i + 1)
    begin
        AppAdds A11(k[i], e[i], f[i], e[i-1], f[i-1]);
    end
endgenerate
AppAdds A12(k[23], 1'b0, f[23], e[22], f[22]);

generate
    for(i = 24; i < 31; i = i + 1)
    begin
        assign k[i] = f[i];
    end
endgenerate

//fourth two rows
generate
    for(i = 6; i < 10; i = i + 1)
    begin
        assign l[i] = g[i];
    end
endgenerate

AppAdds A13(l[10], g[10], h[10], g[9], 1'b0);
generate
    for(i = 11; i < 25; i = i + 1)
    begin
        AppAdds A14(l[i], g[i], h[i], g[i-1], h[i-1]);
    end
endgenerate
AppAdds A15(l[25], g[25], 1'b0, g[24], h[24]);

generate
    for(i = 26; i < 29; i = i + 1)
    begin
        assign l[i] = g[i];
    end
endgenerate

//layer 3 computations
//first two rows
generate
    for(i = 3; i < 11; i = i + 1)
    begin
        assign m[i] = z[i];
    end
endgenerate

AppAdds A16(m[11], z[11], j[11], z[10], 1'b0);
generate
    for(i = 12; i < 24; i = i + 1)
    begin
        AppAdds A17(m[i], z[i], j[i], z[i-1], j[i-1]);
    end
endgenerate
AppAdds A18(m[24], 1'b0, j[24], z[23], j[23]);

generate
    for(i = 25; i < 32; i = i + 1)
    begin
        assign m[i] = j[i];
    end
endgenerate

//second two rows
generate
    for(i = 4; i < 6; i = i + 1)
    begin
        assign n[i] = k[i];
    end
endgenerate

AppAdds A19(n[6], k[6], l[6], k[5], 1'b0);
generate
    for(i = 7; i < 29; i = i + 1)
    begin
        AppAdds A20(n[i], k[i], l[i], k[i-1], l[i-1]);
    end
endgenerate
AppAdds A21(n[29], k[29], 1'b0, k[28], l[28]);

generate
    for(i = 30; i < 31; i = i + 1)
    begin
        assign n[i] = k[i];
    end
endgenerate

//layer 4 computations
generate
    for(i = 3; i < 4; i = i + 1)
    begin
        assign p[i] = m[i];
    end
endgenerate

AppAdds A22(p[4], m[4], n[4], m[3], 1'b0);
generate
    for(i = 5; i < 31; i = i + 1)
    begin
        AppAdds A23(p[i], m[i], n[i], m[i-1], n[i-1]);
    end
endgenerate
AppAdds A24(p[31], m[31], 1'b0, m[30], n[30]);

//final result assign
assign erq[31:20] = p[31:20];

endmodule