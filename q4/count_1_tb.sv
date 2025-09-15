module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  count_1 DUT(
    .a(a),
    .out(out)
  );

  initial begin
    # 10 a=4'b0000;
    # 10 a=4'b0001;
    # 10 a=4'b1100;
    # 10 a=4'b0111;
    # 10 a=4'b1111;

  end

  // complete
endmodule
