

module Comp8p4(w0, w1, w2, w3, p0, p1, p2, p3, p4, p5, p6, p7);

input p0, p1, p2, p3, p4, p5, p6, p7;
output w0, w1, w2, w3;

Comp4p2 C42(w0, w1, p0, p1, p2, p3);
Comp4p2 C242(w2, w3, p4, p5, p6, p7);

endmodule
