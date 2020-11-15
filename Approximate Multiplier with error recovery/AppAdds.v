

module AppAdds(sum, ai, bi, ah, bh);

input ai, bi, ah, bh;
output sum;

wire w1, w2;

xor xor_1(w1, ai, bi);
and and_1(w2, ah, bh);

or or_1(sum, w1, w2);

endmodule