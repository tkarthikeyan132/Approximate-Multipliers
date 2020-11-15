`include"Layer2.v"

module Layer2_tb();

reg [17:1] b1;
reg [19:3] b2;
reg [21:5] b3;
reg [23:7] b4;
reg [25:9] b5;
reg [27:11] b6;
reg [29:13] b7;
reg [31:15] b8;

wire [19:1] c1;
wire [23:5] c2;
wire [27:9] c3;
wire [31:13] c4;

wire [18:3] ei;
wire [22:7] ej;
wire [26:11] ek;
wire [30:15] el;

Layer2 LA2(c1[19:1], c2[23:5], c3[27:9], c4[31:13],    
ei[18:3], ej[22:7], ek[26:11], el[30:15],
b1[17:1], b2[19:3], b3[21:5], b4[23:7], b5[25:9], b6[27:11], b7[29:13], b8[31:15]
);

initial 
begin
    assign b1[17:1] = 17'b01111000011110000;
    assign b2[19:3] = 17'b01111000011110000;
    assign b3[21:5] = 17'b01111000011110000;
    assign b4[23:7] = 17'b01111000011110000;
    assign b5[25:9] = 17'b01111000011110000;
    assign b6[27:11] = 17'b01111000011110000;
    assign b7[29:13] = 17'b01111000011110000;
    assign b8[31:15] = 17'b01111000011110000;
end

initial
begin
    $monitor($time," b1 = %b b2 = %b b3 = %b b4 = %b\n b5 = %b b6 = %b b7 = %b b8 = %b\n c1 = %b c2 = %b c3 = %b c4 = %b\n ei = %b ej = %b ek = %b el = %b \n",
    b1[17:1], b2[19:3], b3[21:5], b4[23:7], b5[25:9], b6[27:11], b7[29:13], b8[31:15],
    c1[19:1], c2[23:5], c3[27:9], c4[31:13],    
ei[18:3], ej[22:7], ek[26:11], el[30:15]
    ); 
end

endmodule