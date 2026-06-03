// Half Adder
module halfadder(
  input a,
  input b,
  output sum,
  output cout
);
  assign sum  = a ^ b;
  assign cout = a & b;
endmodule


// Full Adder using Half Adders
module full_adder(
  input a,
  input b,
  input cin,
  output sum,
  output cout
);
  wire w1, w2, w3;
  halfadder HA1(.a(a),.b(b),.sum(w1),.cout(w2));
  halfadder HA2(.a(w1),.b(cin),.sum(sum),.cout(w3));
  assign cout = w2 | w3;

endmodule
