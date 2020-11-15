`include"Layer1.v"
`include"Layer2.v"
`include"Layer3.v"
`include"Layer4.v"
`include"Error1.v"
`include"Error2.v"
`include"RecursiveAdder.v"
`include"PartialProductGenerator.v"

module ApproximateMultiplier(res1, res2, a, b);

input [15:0] a;
input [15:0] b;
output [31:0] res1;
output [31:0] res2;

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
wire [17:1] b1;
wire [19:3] b2;
wire [21:5] b3;
wire [23:7] b4;
wire [25:9] b5;
wire [27:11] b6;
wire [29:13] b7;
wire [31:15] b8;

//layer 3 inputs
wire [19:1] c1;
wire [23:5] c2;
wire [27:9] c3;
wire [31:13] c4;

//layer 4 inputs
wire [23:1] d1;
wire [31:9] d2;

//final approximate product
wire [31:1] e1;

// 15 errors
// least significant bit will be zero, can be ignored
//layer 1 errors
wire [17:2] ea;
wire [19:4] eb;
wire [21:6] ec;
wire [23:8] ed;
wire [25:10] ee;
wire [27:12] ef;
wire [29:14] eg;
wire [31:16] eh;

//layer 2 errors
wire [18:3] ei;
wire [22:7] ej;
wire [26:11] ek;
wire [30:15] el;

//layer 3 errors
wire [20:5] em;
wire [28:13] en;

//layer 4 errors
wire [24:9] ep;

//error 1 and error 2 rectifier
wire [31:20] erp; 
wire [31:20] erq; 

//Recursive adder 1
wire [31:0] ra;
wire [31:0] rb;

wire [32:0] rs;

//Recursive adder 2
wire [31:0] rb2;
wire [32:0] rs2;

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

Layer1 LA1(b1[17:1] ,b2[19:3], b3[21:5], b4[23:7], b5[25:9], b6[27:11], b7[29:13], b8[31:15],
ea[17:2], eb[19:4], ec[21:6], ed[23:8], ee[25:10], ef[27:12], eg[29:14], eh[31:16],
a1[16:1], a2[17:2], a3[18:3], a4[19:4], a5[20:5], a6[21:6], a7[22:7], a8[23:8],
a9[24:9], a10[25:10], a11[26:11], a12[27:12], a13[28:13], a14[29:14], a15[30:15], a16[31:16]
);

Layer2 LA2(c1[19:1], c2[23:5], c3[27:9], c4[31:13],    
ei[18:3], ej[22:7], ek[26:11], el[30:15],
b1[17:1], b2[19:3], b3[21:5], b4[23:7], b5[25:9], b6[27:11], b7[29:13], b8[31:15]
);

Layer3 LA3(d1[23:1], d2[31:9], em[20:5], en[28:13],
c1[19:1], c2[23:5], c3[27:9], c4[31:13]
);

Layer4 LA4(e1[31:1], ep[24:9], d1[23:1], d2[31:9]);

Error1 E1(erp[31:20], ea[17:3], eb[19:5], ec[21:7], ed[23:9], ee[25:11], ef[27:13], eg[29:15], eh[31:17], ei[18:4], ej[22:8], ek[26:12], el[30:16], em[20:6], en[28:14], ep[24:10]);

Error2 E2(erq[31:20], ea[17:3], eb[19:5], ec[21:7], ed[23:9], ee[25:11], ef[27:13], eg[29:15], eh[31:17], ei[18:4], ej[22:8], ek[26:12], el[30:16], em[20:6], en[28:14], ep[24:10]);

assign ra[30:0] = e1[31:1];
assign rb[30:19] = erp[31:20]; 
assign rb[18:0] = 19'b0000000000000000000;
assign rb2[30:19] = erq[31:20]; 
assign rb2[18:0] = 19'b0000000000000000000;
assign ra[31] = 1'b0;
assign rb[31] = 1'b0;
assign rb2[31] = 1'b0;
RecursiveAdder RA1(rs[32:0], ra[31:0], rb[31:0]);
assign res1[31:0] = rs[31:0];
RecursiveAdder RA2(rs2[32:0], ra[31:0], rb2[31:0]);
assign res2[31:0] = rs2[31:0];

endmodule
