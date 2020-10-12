

module HalfAdder(q0, q1, p0, p1); // q0 is same column, q1 is next column

input p0, p1;
output q0, q1;

or or_1(q0, p0, p1);
and and_1(q1, p0, p1);

endmodule
