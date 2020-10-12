

module Comp13p7(w0, w1, w2, w3, w4, w5, w6, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);

input p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12;
output w0, w1, w2, w3, w4, w5, w6;

Comp9p5 C95(w0, w1, w2, w3, w4, p0, p1, p2, p3, p4, p5, p6, p7, p8);
Comp4p2 C42(w5, w6, p9, p10, p11, p12);

endmodule
