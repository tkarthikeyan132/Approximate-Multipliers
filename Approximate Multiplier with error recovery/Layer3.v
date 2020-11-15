//`include"AppAdd.v"

module Layer3(e, f, em, en, a, b, c, d);

input [19:1] a;
input [23:5] b;
input [27:9] c;
input [31:13] d;

output [23:1] e;
output [31:9] f;
output [20:5] em;
output [28:13] en;

// first two rows
genvar h, i;

generate
    for(h = 1; h < 5; h = h + 1)
        begin
            assign e[h] = a[h];
        end
endgenerate

AppAdd A3(e[5], em[5], a[5], b[5], a[4], 1'b0);
generate
    for(i = 6; i < 20; i = i + 1)
        begin
            AppAdd A1(e[i], em[i], a[i], b[i], a[i-1], b[i-1]);
        end
endgenerate
AppAdd A4(e[20], em[20], 1'b0, b[20], a[19], b[19]);

generate
    for(h = 21; h < 24; h = h + 1)
        begin
            assign e[h] = b[h];
        end
endgenerate

// second two rows

generate
    for(h = 9; h < 13; h = h + 1)
        begin
            assign f[h] = c[h];
        end
endgenerate

AppAdd A5(f[13], en[13], c[13], d[13], c[12], 1'b0);
generate
    for(i = 14; i < 28; i = i + 1)
        begin
            AppAdd A2(f[i], en[i], c[i], d[i], c[i-1], d[i-1]);
        end
endgenerate
AppAdd A6(f[28], en[28], 1'b0, d[28], c[27], d[27]);

generate
    for(h = 28; h < 32; h = h + 1)
        begin
            assign f[h] = d[h];
        end
endgenerate

endmodule