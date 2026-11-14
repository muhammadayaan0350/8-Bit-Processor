module testbench;
    reg clk;
    reg reset;
    wire [7:0] out_port;
  
    cpu uut (
        .clk(clk),
        .reset(reset),
        .out_port(out_port)
    );
    always #5 clk = ~clk;//clk pulse

    initial begin
        clk = 0;
        reset = 1;
        #20 reset = 0; // Release reset after 2 cycles
        
        // Let it run for 200ns
        #200 $finish;
    end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
 
  //  $dumpvars(0, testbench);
  //  $dumpvars(0, uut.ram[5]);
  //  $dumpvars(0, uut.ram[6]); 
  //  $dumpvars(0, uut.ram[7]);
 //   $dumpvars(0, uut.ram[8]); // Variable
 //   $dumpvars(0, uut.ram[9]); // Constan     
end

    initial begin
        $monitor("Time: %0t | out_port: %h", $time, out_port);
end
endmodule
