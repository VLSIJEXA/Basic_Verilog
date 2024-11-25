module CLA_4bit (
    input [3:0] A,      // 4-bit input A
    input [3:0] B,      // 4-bit input B
    input Cin,          // Carry input
    output [3:0] Sum,   // 4-bit sum output
    output Cout         // Carry output
);

    // Internal signals for Generate (G) and Propagate (P)
    wire [3:0] G, P;
    wire [4:0] C;      // Carry bits (C[0] to C[4])

    // Generate (G) and Propagate (P) signals
    assign G = A & B;      // Generate = A AND B
    assign P = A ^ B;      // Propagate = A XOR B

    // Carry look-ahead logic
    assign C[0] = Cin;     // Initial carry input
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign C[4] = G[3] | (P[3] & C[3]);

    // Sum calculation
    assign Sum = P ^ C[3:0];  // Sum = Propagate XOR Carry

    // Final carry output
    assign Cout = C[4];

endmodule
