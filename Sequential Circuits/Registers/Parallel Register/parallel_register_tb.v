
module parallel_register_tb;

    reg clk;
    reg reset;
    reg load;
    reg [3:0] d;
    wire [3:0] q;

    // Instantiate the register
    parallel_register uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .d(d),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period
    end

    // Random test procedure
    integer i;
    initial begin
        // Initialize signals
        reset = 1;
        load = 0;
        d = 4'b0000;
        #10;
        reset = 0;

        // Apply random values for 20 clock cycles
        for (i = 0; i < 20; i = i + 1) begin
            d = $urandom_range(0, 15);      // Random 4-bit value
            load = $urandom_range(0, 1);    // Random load enable
            reset = $urandom_range(0, 1);   // Random reset
            #10;                             // Wait for one clock edge
        end

        $finish;
    end

initial begin
    $dumpfile("parallel_register_out.vcd"); 
    $dumpvars(0, parallel_register_tb); 
end 
    // Monitor outputs
    initial begin
        $monitor("Time=%0t | reset=%b | load=%b | d=%b | q=%b", $time, reset, load, d, q);
    end

endmodule
