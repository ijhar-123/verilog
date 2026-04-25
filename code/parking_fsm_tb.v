`timescale 1ns / 1ps

module parking_fsm_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [1:0] coin;

    // Outputs
    wire gate;

    // Instantiate the Unit Under Test (UUT)
    parking_fsm uut (
        .gate(gate), 
        .coin(coin), 
        .clk(clk), 
        .rst(rst)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        coin = 2'b00;

        // Wait 20 ns for global reset to finish
        #20;
        rst = 0;

        // --- Scenario 1: Insert four 5c coins (5+5+5+5 = 20) ---
        $display("Starting Scenario 1: Four 5c coins");
        #10 coin = 2'b01; // Insert 5
        #10 coin = 2'b01; // Insert 5
        #10 coin = 2'b01; // Insert 5
        #10 coin = 2'b01; // Insert 5 -> Gate should open
        #10 coin = 2'b00; // Stop inserting
        #20;

        // --- Scenario 2: Reset and insert 10c + 10c (10+10 = 20) ---
        $display("Starting Scenario 2: Two 10c coins");
        rst = 1; #10 rst = 0;
        #10 coin = 2'b10; // Insert 10
        #10 coin = 2'b10; // Insert 10 -> Gate should open
        #10 coin = 2'b00;
        #20;

        // --- Scenario 3: Reset and insert one 20c coin (Direct 20) ---
        $display("Starting Scenario 3: One 20c coin");
        rst = 1; #10 rst = 0;
        #10 coin = 2'b11; // Insert 20 -> Gate should open immediately
        #10 coin = 2'b00;
        #20;

        // --- Scenario 4: Reset and Mixed (5+10+5 = 20) ---
        $display("Starting Scenario 4: Mixed 5c and 10c");
        rst = 1; #10 rst = 0;
        #10 coin = 2'b01; // 5
        #10 coin = 2'b10; // 15
        #10 coin = 2'b01; // 20 -> Gate should open
        #10 coin = 2'b00;
        
        #50 $finish;
    end
      
    // Monitor changes in console
    initial begin
        $monitor("Time=%0t | Reset=%b | Coin=%b | State=%b | Gate=%b", 
                 $time, rst, coin, uut.curr_state, gate);
    end

endmodule