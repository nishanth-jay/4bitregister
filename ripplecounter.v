module ripplecounter (
    input wire clk,      // Clock input
    input wire reset,    // Asynchronous or Synchronous Reset
    output reg [3:0] q   // 4-bit count output
);

// Count from 0 to 15 (0000 to 1111)
always @(posedge clk or posedge reset) begin
    if (reset) begin
        // Reset the counter to 0
        q <= 4'b0000;
    end else begin
        // Increment the counter on the positive edge of the clock
        q <= q + 4'b0001;
    end
end

endmodule