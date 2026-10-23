module Switches_To_LEDs (
  input  i_Switch_1,
  input  i_Switch_2,

  output o_LED_1,
  output o_LED_2,
  output o_LED_3,
  output o_LED_4,
  output o_LED_5,
  output o_LED_6);

  assign o_LED_1 = i_Switch_1;
  assign o_LED_2 = i_Switch_2;
  assign o_LED_3 = 1'b0;
  assign o_LED_4 = 1'b0;
  assign o_LED_5 = 1'b0;
  assign o_LED_6 = 1'b0;

endmodule


