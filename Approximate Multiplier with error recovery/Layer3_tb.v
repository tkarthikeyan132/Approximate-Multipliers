`include"Layer3.v"

module Layer3_tb();

reg [19:1] c1;
reg [23:5] c2;
reg [27:9] c3;
reg [31:13] c4;

wire [23:1] d1;
wire [31:9] d2;

wire [20:5] em;
wire [28:13] en;

Layer3 LA3(d1[23:1], d2[31:9], em[20:5], en[28:13],
c1[19:1], c2[23:5], c3[27:9], c4[31:13]
);

initial 
begin
    assign c1[19:1] = 19'b0000111100001111000;
    assign c2[23:5] = 19'b0000111100001111000;
    assign c3[27:9] = 19'b0000111100001111000;
    assign c4[31:13] = 19'b0000111100001111000;
end

initial
begin
    $monitor($time," c1 = %b c2 = %b c3 = %b c4 = %b\n d1 = %b d2 = %b em = %b en = %b\n",
    c1[19:1], c2[23:5], c3[27:9], c4[31:13], d1[23:1], d2[31:9], em[20:5], en[28:13]
    ); 
end

endmodule