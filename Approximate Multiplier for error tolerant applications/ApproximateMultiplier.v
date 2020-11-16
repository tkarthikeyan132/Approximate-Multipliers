`include"Layer1.v"
`include"Layer2.v"
`include"Layer3.v"
`include"RecursiveAdder.v"
`include"PartialProductGenerator.v"

module ApproximateMultiplier(res, a, b);

input [15:0] a;
input [15:0] b;
output [31:0] res;

//partial products
//layer 1 inputs
wire [16:1] a1;
wire [17:2] a2;
wire [18:3] a3;
wire [19:4] a4;
wire [20:5] a5;
wire [21:6] a6;
wire [22:7] a7;
wire [23:8] a8;
wire [24:9] a9;
wire [25:10] a10;
wire [26:11] a11;
wire [27:12] a12;
wire [28:13] a13;
wire [29:14] a14;
wire [30:15] a15;
wire [31:16] a16;

//layer 2 inputs
wire [31:1] b1;
wire [30:2] b2;
wire [29:3] b3;
wire [28:4] b4;
wire [27:5] b5;
wire [26:6] b6;
wire [25:7] b7;
wire [25:8] b8;

//layer 3 inputs
wire [31:1] c1;
wire [30:2] c2;
wire [29:3] c3;
wire [29:4] c4;

//layer 4 inputs
wire [31:1] d1;
wire [31:2] d2;

//error 
wire err1, err2, err3;

//Recursive adder 
wire [31:0] ra;
wire [31:0] rb;

wire [32:0] rs;

// partial products generation
PPG PPG1(a1[16:1], a[15:0], b[0]);
PPG PPG2(a2[17:2], a[15:0], b[1]);
PPG PPG3(a3[18:3], a[15:0], b[2]);
PPG PPG4(a4[19:4], a[15:0], b[3]);
PPG PPG5(a5[20:5], a[15:0], b[4]);
PPG PPG6(a6[21:6], a[15:0], b[5]);
PPG PPG7(a7[22:7], a[15:0], b[6]);
PPG PPG8(a8[23:8], a[15:0], b[7]);
PPG PPG9(a9[24:9], a[15:0], b[8]);
PPG PPG10(a10[25:10], a[15:0], b[9]);
PPG PPG11(a11[26:11], a[15:0], b[10]);
PPG PPG12(a12[27:12], a[15:0], b[11]);
PPG PPG13(a13[28:13], a[15:0], b[12]);
PPG PPG14(a14[29:14], a[15:0], b[13]);
PPG PPG15(a15[30:15], a[15:0], b[14]);
PPG PPG16(a16[31:16], a[15:0], b[15]);

Layer1 LA1(err1, err2, b1[31:1], b2[30:2], b3[29:3], b4[28:4], b5[27:5], b6[26:6], b7[25:7], b8[25:8],
a1[16:1], a2[17:2], a3[18:3], a4[19:4], a5[20:5], a6[21:6], a7[22:7], a8[23:8],
a9[24:9], a10[25:10], a11[26:11], a12[27:12], a13[28:13], a14[29:14], a15[30:15], a16[31:16]
);

Layer2 LA2(err3, c1[31:1], c2[30:2], c3[29:3], c4[29:4], 
b1[31:1], b2[30:2], b3[29:3], b4[28:4], b5[27:5], b6[26:6], b7[25:7], b8[25:8], err1, err2
);

Layer3 LA3(d1[31:1], d2[31:2], c1[31:1], c2[30:2], c3[29:3], c4[29:4], err3);

//final addition
assign ra[30:0] = d1[31:1];
assign rb[30:1] = d2[31:2];
assign rb[0] = 1'b0;
assign ra[31] = 1'b0;
assign rb[31] = 1'b0;
RecursiveAdder RA(rs[32:0], ra[31:0], rb[31:0]);
assign res[31:0] = rs[31:0];

endmodule
