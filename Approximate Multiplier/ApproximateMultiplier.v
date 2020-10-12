`include"Layer1.v"
`include"Layer2.v"
`include"Layer3.v"
`include"Layer4.v"
`include"PartialProductGenerator.v"
`include"RecursiveAdder.v"

module ApproximateMultiplier(res, a, b);

input [15:0] a;
input [15:0] b;
output [31:0] res;

//partial products
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

//layer 1-2 products
wire [31:1] b1;
wire [30:3] b2;
wire [29:5] b3;
wire [28:7] b4;
wire [27:9] b5;
wire [26:11] b6;
wire [26:13] b7;
wire [25:15] b8;

//layer 2-3 products
wire [31:1] c1;
wire [30:3] c2;
wire [29:5] c3;
wire [29:7] c4;

//layer 3-4 products
wire [31:1] d1;
wire [30:3] d2;
wire [30:5] d3;

//final layer products
wire [31:1] e1;
wire [31:3] e2;

//inputs for recursive adder
wire [31:0] i1;
wire [31:0] i2;

//output of recursive adder
wire [32:0] out;

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

//Layer1
Layer1 L1(b1[31:1], b2[30:3], b3[29:5], b4[28:7], b5[27:9], b6[26:11], b7[26:13], b8[25:15], a1[16:1], a2[17:2], a3[18:3], a4[19:4], a5[20:5], a6[21:6], a7[22:7], a8[23:8], a9[24:9], a10[25:10], a11[26:11], a12[27:12], a13[28:13], a14[29:14], a15[30:15], a16[31:16]);

//Layer2
Layer2 L2(c1[31:1], c2[30:3], c3[29:5], c4[29:7], b1[31:1], b2[30:3], b3[29:5], b4[28:7], b5[27:9], b6[26:11], b7[26:13], b8[25:15]);

//Layer3
Layer3 L3(d1[31:1], d2[30:3], d3[30:5], c1[31:1], c2[30:3], c3[29:5], c4[29:7]);

//Layer4
Layer4 L4(e1[31:1], e2[31:3], d1[31:1], d2[30:3], d3[30:5]);

assign i1[30:0] = e1[31:1];
assign i1[31] = 1'b0;
assign i2[30:2] = e2[31:3];
assign i2[31] = 1'b0;
assign i2[1] = 1'b0;
assign i2[0] = 1'b0;

RecursiveAdder RA(out[32:0], i1[31:0], i2[31:0]);
assign res[31:0] = out[31:0];

endmodule
