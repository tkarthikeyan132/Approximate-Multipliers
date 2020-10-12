

module Comp6p3(w0, w1, w2, p0, p1, p2, p3, p4, p5); //{p0p1+p2+p3, p2p3+p4+p5, p4p5+p0+p1}

input p0, p1, p2, p3, p4, p5;
output w0, w1, w2;
wire r0, r1, r2, r3, r4, r5;

and and_1(r0, p0, p1);
or or_1(r1, r0, p2);
or or_2(w0, r1, p3);

and and_2(r2, p2, p3);
or or_3(r3, r2, p4);
or or_4(w1, r3, p5);

and and_3(r4, p4, p5);
or or_5(r5, r4, p0);
or or_6(w2, r5, p1);

endmodule
