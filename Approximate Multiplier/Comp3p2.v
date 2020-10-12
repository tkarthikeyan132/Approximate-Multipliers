

module Comp3p2(w0, w1, p0, p1, p2); //{p0p1+p2, p0+p1}

input p0, p1, p2;
output w0, w1;
wire r0;

and and_1(r0, p0, p1);
or or_1(w0, r0, p2);

or or_2(w1, p0, p1);

endmodule
