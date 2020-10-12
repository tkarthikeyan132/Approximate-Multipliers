

module Comp4p2(w0, w1, p0, p1, p2, p3); //{p0p1+p2+p3, p2p3+p0+p1}

input p0, p1, p2, p3;
output w0, w1;
wire r0, r1, r2, r3;

and and_1(r0, p0, p1);
or or_1(r1, r0, p2);
or or_2(w0, r1, p3);

and and_2(r2, p2, p3);
or or_3(r3, r2, p0);
or or_4(w1, r3, p1);

endmodule
