module full_sub(diff,bor,a,b,cin);
  input a,b,cin;
  output diff,bor;

  assign diff = a ^ b ^ cin;
  assign bor  = (~a & b) | (b & cin) | (~a & cin);
endmodule
