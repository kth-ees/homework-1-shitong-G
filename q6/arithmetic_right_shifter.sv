module arithmetic_right_shifter #(parameter N) (
  input logic [N-1:0] input_data,
  input logic [1:0] control,
  output logic [N-1:0] shifted_result
);
  assign shifted_result = 
    (control == 2'b00) ? input_data :
    (control == 2'b01) ? {{1{input_data[N-1]}}, input_data[N-1:1]} :
    (control == 2'b10) ? {{2{input_data[N-1]}}, input_data[N-1:2]} :
                        {{3{input_data[N-1]}}, input_data[N-1:3]};
  // complete the module
endmodule
