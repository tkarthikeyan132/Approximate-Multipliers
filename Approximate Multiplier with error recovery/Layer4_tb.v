`include"Layer4.v"

module Layer4_tb();

reg [23:1] d1;
reg [31:9] d2;

wire [31:1] e1;
wire [24:9] ep;

Layer4 LA4(e1[31:1], ep[24:9], d1[23:1], d2[31:9]);

initial 
begin
    assign d1[23:1] = 23'b00001111000011110000111;
    assign d2[31:9] = 23'b00001111000011110000111;
end

initial
begin
    $monitor($time," d1 = %b d2 = %b e1 = %b ep = %b\n",
    d1[23:1], d2[31:9], e1[31:1], ep[24:9] 
    ); 
end

endmodule