module T_flip_flop (
    input T,       // Toggle input
    input clk,     // Clock input
    input rst,     // Reset input
    output reg Q   // Output
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            Q <= 1'b0;      // Reset Q to 0
        else if (T) 
            Q <= ~Q;        // Toggle Q if T is high
    end
endmodule
