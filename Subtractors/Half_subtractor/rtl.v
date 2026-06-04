module half_sub(diff,bor,a,b);
  input a,b;
  output diff,bor;

  assign diff = a ^ b;
  assign bor  = ~a & b;
endmodule
