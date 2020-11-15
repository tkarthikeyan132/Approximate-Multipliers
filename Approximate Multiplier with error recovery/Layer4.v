//`include"AppAdd.v"

module Layer4(g, ep, e, f);

input [23:1] e;
input [31:9] f;

output [24:9] ep;

output [31:1] g;

//first two rows
genvar h, i;

generate
    for(h = 1; h < 9; h = h + 1)
        begin
            assign g[h] = e[h];
        end
endgenerate

AppAdd A2(g[9], ep[9], e[9], f[9], e[8], 1'b0);
generate
    for(i = 10; i < 24; i = i + 1)
        begin
            AppAdd A1(g[i], ep[i], e[i], f[i], e[i-1], f[i-1]);
        end
endgenerate
AppAdd A3(g[24], ep[24], 1'b0, f[24], e[23], f[23]);

generate
    for(h = 25; h < 32; h = h + 1)
        begin
            assign g[h] = f[h];
        end
endgenerate

endmodule