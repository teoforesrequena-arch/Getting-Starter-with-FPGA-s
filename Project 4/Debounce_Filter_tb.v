module Debounce_Filter_TB ();
    reg r_Clk = 1'b0, r_Bouncy = 1'b0;

    // 1
    always #2 r_Clk <= !r_Clk;

    //2
    Debounce_Filter #(.DEBOUNCE_LIMIT(4)) UUT
    (.i_Clk(r_Clk),
    .i_Bouncy(r_Bouncy),
    .o_Debounced(w_Debounced));
    
    // 3
    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        repeat(3) @(posedge r_Clk);
        
        // 4
        r_Bouncy <= 1'b1; // toggle state of input pin
        @(posedge r_Clk);

        // 5
        r_Bouncy <= 1'b0; // simulate a glitch/bounce of switch
        @(posedge r_Clk);

        // 6
        r_Bouncy <= 1'b1; // bounce goes away
        repeat(6) @(posedge r_Clk);
        $display("Test Complete");
        $finish();
    end
endmodule
