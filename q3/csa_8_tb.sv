module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;

  csa_8 DUT(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    a = 8'b0; b = 8'b0;
    #10 a = 8'b0000_0000; b = 8'b0000_0000;
    #10 a = 8'b0000_1000; b = 8'b0000_1000;
    #10 a = 8'b0000_1011; b = 8'b0000_0011;
    #10 a = 8'b0010_1111; b = 8'b1000_1111;
    #10 a = 8'b1111_1111; b = 8'b1111_1111;
    #10 $finish;
  end

  initial begin
    $monitor("Time=%0t | a=%b b=%b sum=%b carry=%b", $time, a, b, sum, carry);
  end
  // complete
	

endmodule
