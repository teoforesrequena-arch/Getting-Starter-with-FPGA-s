module Debounce_Project_Top
    (input  i_Clk,
    input  i_Switch_1,
    output o_LED_1);
    wire w_Debounced_Switch;

    // 1 & 2
    Debounce_Filter #(.DEBOUNCE_LIMIT(250000)) Debounce_Inst
    (.i_Clk(i_Clk),
    .i_Bouncy(i_Switch_1),
    .o_Debounced(w_Debounced_Switch));

    // 3
    LED_Toggle_Project LED_Toggle_Inst
    (.i_Clk(i_Clk),
    .i_Switch_1(w_Debounced_Switch),
    .o_LED_1(o_LED_1));
    .i_Switch_1(w_Debounced_Switch),
    .o_LED_1(o_LED_1));
endmodule