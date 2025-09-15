module arithmetic_right_shifter_tb;

  localparam N = 8;

  logic [N-1:0] input_data;
  logic [1:0] control;

  logic [N-1:0] shifted_result;

  arithmetic_right_shifter #(N) DUT (
    .input_data(input_data),
    .control(control),
    .shifted_result(shifted_result)
  );

  // 测试序列
  initial begin
    $display("Time\tinput_data\tcontrol\tshifted_result");
    
    // 测试所有 control 情况
    #10 input_data = 8'b11010110; control = 2'b00;

    #10 input_data = 8'b11010110; control = 2'b01;

    #10 input_data = 8'b11010110; control = 2'b10;

    #10 input_data = 8'b11010110; control = 2'b11;

    #10 input_data = 8'b01010110; control = 2'b11;

  end
  // complete
  // Inputs
endmodule
