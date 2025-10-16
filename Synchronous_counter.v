module Synchronous_counter(
    input clk,          // Clock input
    input reset,        // Active-high synchronous reset
    output reg [3:0] q  // 4-bit counter output
);

always @(posedge clk) begin
    if (reset) 
        q <= 4'b0000;   // Reset counter to 0
    else 
        q <= q + 1;     // Increment counter
end

endmodule
