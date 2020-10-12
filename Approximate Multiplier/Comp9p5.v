

module Comp9p5(w0, w1, w2, w3, w4, p0, p1, p2, p3, p4, p5, p6, p7, p8);

input p0, p1, p2, p3, p4, p5, p6, p7, p8;
output w0, w1, w2, w3, w4;

Comp5p3 C53(w0, w1, w2, p0, p1, p2, p3, p4);
Comp4p2 C42(w3, w4, p5, p6, p7, p8);

endmodule
