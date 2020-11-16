

module FullAdder(q1, q0, p0, p1, p2); // q0 in same column, q1 in next column

input p0, p1, p2;
output q0, q1;
wire w1, w2, w3, w4, w5;

xor xor_0 (w1, p0, p1);
xor xor_1 (q0, w1, p2);

and and_0 (w2, p0, p1);
and and_1 (w3, p0, p2);
and and_2 (w4, p1, p2);
or  or_0 (w5, w2, w3);
or  or_1 (q1, w4, w5);

endmodule
