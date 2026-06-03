//fulladder
module fulladder(sum,cout,a,b,cin);
  input a,b,cin;
  output sum,cout;
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

//ripple carry adder
module rca(
  input [3:0]a,
  input [3:0]b,
  input cin,
  output [3:0]sum,
  output carry
);
  wire w1,w2,w2;
  fulladder FA0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(w1));
  fulladder FA1(.a(a[1]),.b(b[1]),.cin(w1),.sum(sum[1]),.cout(w2));
  fulladder FA2(.a(a[2]),.b(b[2]),.cin(w2),.sum(sum[2]),.cout(w3));
  fulladder FA3(.a(a[3]),.b(b[3]),.cin(w3)).sum(sum[3]),.cout(cout));
endmodule
