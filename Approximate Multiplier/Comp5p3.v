

module Comp5p3(w0, w1, w2, p0, p1, p2, p3, p4); //{p0+p1, p0p1+p2+p3, p2p3+p4}

input p0, p1, p2, p3, p4;
output w0, w1, w2;
wire r0, r1, r2;

or or_1(w0, p0, p1);

and and_1(r0, p0, p1);
or or_2(r1, r0, p2);
or or_3(w1, r1, p3);

and and_2(r2, p2, p3);
or or_4(w2, r2, p4);

endmodule
