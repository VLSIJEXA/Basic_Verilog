module four_bitFA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire n1,n2,n3;
    fulladder_st1 FA1(a[0],b[0],cin,s[0],n1);
    fulladder_st1 FA2(a[1],b[1],n1,s[1],n2);
    fulladder_st1 FA3(a[2],b[2],n2,s[2],n3);
    fulladder_st1 FA4(a[3],b[3],n3,s[3],cout);
endmodule
