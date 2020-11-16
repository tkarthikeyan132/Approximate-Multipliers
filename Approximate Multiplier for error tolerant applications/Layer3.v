

module Layer3(e, f, a, b, c, d, err3);

input [31:1] a;
input [30:2] b;
input [29:3] c;
input [29:4] d;
input err3;

output [31:1] e;
output [31:2] f;

wire [30:17] cc;

//col1
assign e[1] = a[1];

//col2
assign e[2] = a[2];
assign f[2] = b[2];

//col3
AppHalfAdder APHA1(e[3], a[3], b[3]);
assign f[3] = c[3];

//col 4 - 16
genvar z;

generate
    for(z = 4; z < 17; z = z + 1)
        begin
            AppComp4p2 APC1(e[z], f[z], a[z], b[z], c[z], d[z]);
        end
endgenerate

//col 17
AccComp4p2 ACC1(cc[17], e[17], f[17], a[17], b[17], c[17], d[17], err3);

//col 18 - 29
generate
    for(z = 18; z < 30; z = z + 1)
        begin
            AccComp4p2 ACC2(cc[z], e[z], f[z], a[z], b[z], c[z], d[z], cc[z-1]);
        end
endgenerate

//col 30
AccHalfAdder ACHA1(cc[30], e[30], a[30], b[30]);
assign f[30] = cc[29];

//col 31
assign e[31] = a[31];
assign f[31] = cc[30];

endmodule