`timescale 1ns / 1ps

module multiplication_table;
integer num;

task multi_table;
input integer multiplier;
integer j;
begin
$display ("multiplication table for %0d",multiplier);
begin
for (j=1;j<11;j=j+1)
begin
$display ("%0d * %0d = %0d",multiplier,j,multiplier*j);
end
end
end
endtask 

initial begin
        // Print tables for 2, 5, and 9
        #10 multi_table(2); // Delay of 10ns before first table [cite: 27]
        #10 multi_table(5); // Delay between events [cite: 93]
        #10 multi_table(9);
        
        $finish; // End simulation
    end


endmodule
