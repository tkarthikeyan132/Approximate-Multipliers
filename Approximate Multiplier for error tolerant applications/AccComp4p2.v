`include"FullAdder.v"

module AccComp4p2(cout, carry, sum, a, b, c, d, cin);

input a, b, c, d, cin;
output carry, sum, cout;
wire tempsum;

FullAdder FA1(tempsum, cout, a, b, c);
FullAdder FA2(sum, carry, tempsum, d, cin);

endmodule
