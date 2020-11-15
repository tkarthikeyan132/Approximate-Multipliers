

module Error1(erp, ea, eb, ec, ed, ee, ef, eg, eh, ei, ej, ek, el, em, en, ep);

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
wire [23:3] i;
wire [31:11] j;
wire [30:4] k;
wire [28:6] l;

//layer3 results
wire [31:3] m;
wire [30:4] n;

//layer4 results
wire [31:3] p;

//final return value
output [31:20] erp;

//layer1 computations
//first two rows
genvar q;

generate
    for(q = 3; q < 5; q = q + 1)
        begin
            assign a[q] = ea[q];
        end
endgenerate

generate
    for(q = 5; q < 18; q = q + 1)
        begin
            or or_1(a[q], ea[q], eb[q]);
        end
endgenerate

generate
    for(q = 18; q < 20; q = q + 1)
        begin
            assign a[q] = eb[q];
        end
endgenerate

//second two rows
generate
    for(q = 7; q < 9; q = q + 1)
        begin
            assign b[q] = ec[q];
        end
endgenerate

generate
    for(q = 9; q < 22; q = q + 1)
        begin
            or or_2(b[q], ec[q], ed[q]);
        end
endgenerate

generate
    for(q = 22; q < 24; q = q + 1)
        begin
            assign b[q] = ed[q];
        end
endgenerate

//third two rows
generate
    for(q = 11; q < 13; q = q + 1)
        begin
            assign c[q] = ee[q];
        end
endgenerate

generate
    for(q = 13; q < 26; q = q + 1)
        begin
            or or_3(c[q], ee[q], ef[q]);
        end
endgenerate

generate
    for(q = 26; q < 28; q = q + 1)
        begin
            assign c[q] = ef[q];
        end
endgenerate

//fourth two rows
generate
    for(q = 15; q < 17; q = q + 1)
        begin
            assign d[q] = eg[q];
        end
endgenerate

generate
    for(q = 17; q < 30; q = q + 1)
        begin
            or or_4(d[q], eg[q], eh[q]);
        end
endgenerate

generate
    for(q = 30; q < 32; q = q + 1)
        begin
            assign d[q] = eh[q];
        end
endgenerate

//fifth two rows
generate
    for(q = 4; q < 8; q = q + 1)
        begin
            assign e[q] = ei[q];
        end
endgenerate

generate
    for(q = 8; q < 19; q = q + 1)
        begin
            or or_5(e[q], ei[q], ej[q]);
        end
endgenerate

generate
    for(q = 19; q < 23; q = q + 1)
        begin
            assign e[q] = ej[q];
        end
endgenerate

//sixth two rows
generate
    for(q = 12; q < 16; q = q + 1)
        begin
            assign f[q] = ek[q];
        end
endgenerate

generate
    for(q = 16; q < 27; q = q + 1)
        begin
            or or_6(f[q], ek[q], el[q]);
        end
endgenerate

generate
    for(q = 27; q < 31; q = q + 1)
        begin
            assign f[q] = el[q];
        end
endgenerate

//seventh two rows
generate
    for(q = 6; q < 14; q = q + 1)
        begin
            assign g[q] = em[q];
        end
endgenerate

generate
    for(q = 14; q < 21; q = q + 1)
        begin
            or or_7(g[q], em[q], en[q]);
        end
endgenerate

generate
    for(q = 21; q < 29; q = q + 1)
        begin
            assign g[q] = en[q];
        end
endgenerate

//eighth result assign
generate
    for(q = 10; q < 25; q = q + 1)
        begin
            assign h[q] = ep[q];
        end
endgenerate

//layer2 computations
//first two rows
generate
    for(q = 3; q < 7; q = q + 1)
        begin
            assign i[q] = a[q];
        end
endgenerate

generate
    for(q = 7; q < 20; q = q + 1)
        begin
            or or_8(i[q], a[q], b[q]);
        end
endgenerate

generate
    for(q = 20; q < 24; q = q + 1)
        begin
            assign i[q] = b[q];
        end
endgenerate

//second two rows
generate
    for(q = 11; q < 15; q = q + 1)
        begin
            assign j[q] = c[q];
        end
endgenerate

generate
    for(q = 15; q < 28; q = q + 1)
        begin
            or or_9(j[q], c[q], d[q]);
        end
endgenerate

generate
    for(q = 28; q < 32; q = q + 1)
        begin
            assign j[q] = d[q];
        end
endgenerate

//third two rows
generate
    for(q = 4; q < 12; q = q + 1)
        begin
            assign k[q] = e[q];
        end
endgenerate

generate
    for(q = 12; q < 23; q = q + 1)
        begin
            or or_10(k[q], e[q], f[q]);
        end
endgenerate

generate
    for(q = 23; q < 31; q = q + 1)
        begin
            assign k[q] = f[q];
        end
endgenerate

//fourth two rows
generate
    for(q = 6; q < 10; q = q + 1)
        begin
            assign l[q] = g[q];
        end
endgenerate

generate
    for(q = 10; q < 25; q = q + 1)
        begin
            or or_11(l[q], g[q], h[q]);
        end
endgenerate

generate
    for(q = 25; q < 29; q = q + 1)
        begin
            assign l[q] = g[q];
        end
endgenerate


//layer3 computations
//first two rows
generate
    for(q = 3; q < 11; q = q + 1)
        begin
            assign m[q] = i[q];
        end
endgenerate

generate
    for(q = 11; q < 24; q = q + 1)
        begin
            or or_12(m[q], i[q], j[q]);
        end
endgenerate

generate
    for(q = 24; q < 32; q = q + 1)
        begin
            assign m[q] = j[q];
        end
endgenerate

//second two rows
generate
    for(q = 4; q < 6; q = q + 1)
        begin
            assign n[q] = k[q];
        end
endgenerate

generate
    for(q = 6; q < 29; q = q + 1)
        begin
            or or_13(n[q], k[q], l[q]);
        end
endgenerate

generate
    for(q = 29; q < 31; q = q + 1)
        begin
            assign n[q] = k[q];
        end
endgenerate

//layer4 computations
generate
    for(q = 3; q < 4; q = q + 1)
        begin
            assign p[q] = m[q];
        end
endgenerate

generate
    for(q = 4; q < 31; q = q + 1)
        begin
            or or_14(p[q], m[q], n[q]);
        end
endgenerate

generate
    for(q = 31; q < 32; q = q + 1)
        begin
            assign p[q] = m[q];
        end
endgenerate

assign erp[31:20] = p[31:20];

endmodule