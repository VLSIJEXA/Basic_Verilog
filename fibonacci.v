module fibonacci_number (
    input clk,
    output reg [31:0] out
);

    reg [31:0] count [0:31]; 
    reg [4:0] r; 

    initial begin
        count[0] = 32'd0; 
        count[1] = 32'd1;
        out = 32'd0; 
        r = 5'd2; 
    end 
    always @(posedge clk) begin
        if (r < 32) begin
            out <= count[r - 1];
            count[r] <= count[r - 1] + count[r - 2]; 
            r <= r + 1;
        end else begin
            out <= count[31]; 
        end
    end

endmodule
