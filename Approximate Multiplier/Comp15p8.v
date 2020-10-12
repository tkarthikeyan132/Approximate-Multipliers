

module Comp15p8(w0, w1, w2, w3, w4, w5, w6, w7, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);

input p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14;
output w0, w1, w2, w3, w4, w5, w6, w7;

Comp11p6 C116(w0, w1, w2, w3, w4, w5, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
Comp4p2 C42(w6, w7, p11, p12, p13, p14);

endmodule
