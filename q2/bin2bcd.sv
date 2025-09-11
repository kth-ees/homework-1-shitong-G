module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // …
  // Add your description here
     always_comb begin
        case (binary)
            4'd0  : {carry, bcd} = 5'b0_0000;
            4'd1  : {carry, bcd} = 5'b0_0001;
            4'd2  : {carry, bcd} = 5'b0_0010;
            4'd3  : {carry, bcd} = 5'b0_0011;
            4'd4  : {carry, bcd} = 5'b0_0100;
            4'd5  : {carry, bcd} = 5'b0_0101;
            4'd6  : {carry, bcd} = 5'b0_0110;
            4'd7  : {carry, bcd} = 5'b0_0111;
            4'd8  : {carry, bcd} = 5'b0_1000;
            4'd9  : {carry, bcd} = 5'b0_1001;
            4'd10 : {carry, bcd} = 5'b1_0000; 
            4'd11 : {carry, bcd} = 5'b1_0001;
            4'd12 : {carry, bcd} = 5'b1_0010;
            4'd13 : {carry, bcd} = 5'b1_0011;
            4'd14 : {carry, bcd} = 5'b1_0100;
            4'd15 : {carry, bcd} = 5'b1_0101;
            default: {carry, bcd} = 5'b0_0000;
        endcase
    end
  // …
endmodule
