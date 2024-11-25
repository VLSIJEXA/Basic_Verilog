module practice();
   integer count;
   initial
    begin
       count=0;
       while(count<=255)
       begin
       $display("my count : %d", count);
       count=count+1;
       end
       end
   
   
endmodule
