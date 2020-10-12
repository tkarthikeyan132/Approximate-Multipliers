

module Comp14p7(w0, w1, w2, w3, w4, w5, w6, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);

input p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13;
output w0, w1, w2, w3, w4, w5, w6;

Comp10p5 C105(w0, w1, w2, w3, w4, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
Comp4p2 C42(w5, w6, p10, p11, p12, p13);

endmodule
