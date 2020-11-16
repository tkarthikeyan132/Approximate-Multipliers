`include"Layer1.v"

module Layer1_tb();

reg [16:1] a1;
reg [17:2] a2;
reg [18:3] a3;
reg [19:4] a4;
reg [20:5] a5;
reg [21:6] a6;
reg [22:7] a7;
reg [23:8] a8;
reg [24:9] a9;
reg [25:10] a10;
reg [26:11] a11;
reg [27:12] a12;
reg [28:13] a13;
reg [29:14] a14;
reg [30:15] a15;
reg [31:16] a16;

wire [31:1] b1;
wire [30:2] b2;
wire [29:3] b3;
wire [28:4] b4;
wire [27:5] b5;
wire [26:6] b6;
wire [25:7] b7;
wire [25:8] b8;
wire err1;
wire err2;

Layer1 LA1(err1, err2, b1[31:1], b2[30:2], b3[29:3], b4[28:4], b5[27:5], b6[26:6], b7[25:7], b8[25:8],
a1[16:1], a2[17:2], a3[18:3], a4[19:4], a5[20:5], a6[21:6], a7[22:7], a8[23:8],
a9[24:9], a10[25:10], a11[26:11], a12[27:12], a13[28:13], a14[29:14], a15[30:15], a16[31:16]
);

initial 
begin
    assign a1[16:1] = 16'hAAAA;
    assign a2[17:2] = 16'hAAAA;
    assign a3[18:3] = 16'hAAAA;
    assign a4[19:4] = 16'hAAAA;
    assign a5[20:5] = 16'hAAAA;
    assign a6[21:6] = 16'hAAAA;
    assign a7[22:7] = 16'hAAAA;
    assign a8[23:8] = 16'hAAAA;
    assign a9[24:9] = 16'hAAAA;
    assign a10[25:10] = 16'hAAAA;
    assign a11[26:11] = 16'hAAAA;
    assign a12[27:12] = 16'hAAAA;
    assign a13[28:13] = 16'hAAAA;
    assign a14[29:14] = 16'hAAAA;
    assign a15[30:15] = 16'hAAAA;
    assign a16[31:16] = 16'hAAAA;
    #5
    assign a1[16:1] = 16'hFFFF;
    assign a2[17:2] = 16'hFFFF;
    assign a3[18:3] = 16'hFFFF;
    assign a4[19:4] = 16'hFFFF;
    assign a5[20:5] = 16'hFFFF;
    assign a6[21:6] = 16'hFFFF;
    assign a7[22:7] = 16'hFFFF;
    assign a8[23:8] = 16'hFFFF;
    assign a9[24:9] = 16'hFFFF;
    assign a10[25:10] = 16'hFFFF;
    assign a11[26:11] = 16'hFFFF;
    assign a12[27:12] = 16'hFFFF;
    assign a13[28:13] = 16'hFFFF;
    assign a14[29:14] = 16'hFFFF;
    assign a15[30:15] = 16'hFFFF;
    assign a16[31:16] = 16'hFFFF;
end

initial
begin
    $monitor($time," a1 = %b a2 = %b a3 = %b a4 = %b\n a5 = %b a6 = %b a7 = %b a8 = %b\n a9 = %b a10 = %b a11 = %b a12 = %b\n a13 = %b a14 = %b a15 = %b a16 = %b\n b1 = %b b2 = %b b3 = %b b4 = %b\n b5 = %b b6 = %b b7 = %b b8 = %b\nerr1 = %b  err2 = %b\n", 
    a1[16:1], a2[17:2], a3[18:3], a4[19:4], a5[20:5], a6[21:6], a7[22:7], a8[23:8],
a9[24:9], a10[25:10], a11[26:11], a12[27:12], a13[28:13], a14[29:14], a15[30:15], a16[31:16],
b1[31:1], b2[30:2], b3[29:3], b4[28:4], b5[27:5], b6[26:6], b7[25:7], b8[25:8],
err1, err2
); 
end

endmodule