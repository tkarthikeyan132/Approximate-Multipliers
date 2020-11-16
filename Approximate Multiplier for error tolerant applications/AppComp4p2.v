

module AppComp4p2(y1, y2, x1, x2, x3, x4); 

input x1, x2, x3, x4;
output y1, y2;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;

and and_1(w1, x1, x2);
and and_2(w2, x1, x3);
and and_3(w3, x1, x4);
and and_4(w4, x2, x3);
and and_5(w5, x2, x4);
or or_1(w6, w1, w2);
or or_2(w7, w6, w3);
or or_3(w8, w7, w4);
or or_4(y1, w8, w5);

xor xor_1(w9, x1, x2);
or or_5(w10, x3, x4);
xor xor_2(y2, w9, w10);

endmodule
