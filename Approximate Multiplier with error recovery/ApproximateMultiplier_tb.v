`include"ApproximateMultiplier.v"

module ApproximateMultiplier_tb();

reg [15:0] a;
reg [15:0] b;
wire [31:0] res1;
wire [31:0] res2;

ApproximateMultiplier AM(res1[31:0], res2[31:0], a[15:0], b[15:0]);

initial
begin
    assign a[15:0] = 16'hA0A0;
    assign b[15:0] = 16'h0A0A;
    #5
    assign a[15:0] = 16'hFFFF;
    assign b[15:0] = 16'hFFFF;
    #5
    assign a[15:0] = 16'h0E01;
    assign b[15:0] = 16'h0008;
    #5
    assign a[15:0] = 16'h0004;
    assign b[15:0] = 16'h0002;
    #5
    assign a[15:0] = 16'h1264;
    assign b[15:0] = 16'hFECB;
end

initial
begin
    $monitor($time," a = %d b = %d\n result using AM1 = %d  result using AM2 = %d\n", a[15:0], b[15:0], res1[31:0], res2[31:0]); 
end

endmodule
