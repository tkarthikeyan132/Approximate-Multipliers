

module Comp12p6(w0, w1, w2, w3, w4, w5, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);

input p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11;
output w0, w1, w2, w3, w4, w5;

Comp8p4 C84(w0, w1, w2, w3, p0, p1, p2, p3, p4, p5, p6, p7);
Comp4p2 C42(w4, w5, p8, p9, p10, p11);

endmodule
