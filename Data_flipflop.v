module Data_flipflop (
    input  wire clk,   // Clock input
    input  wire rst,   // Reset input (active high)
    input  wire D,     // Data input
    output reg  Q      // Output
);

always @(posedge clk) begin
    if (rst)
        Q <= 1'b0;     // Reset output
    else
        Q <= D;        // Store D on rising edge of clock
end

endmodule
