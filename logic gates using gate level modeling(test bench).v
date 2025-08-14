module tb1();
    reg a, b;
    wire and_out, or_out, nand_out, nor_out, notb_out, xor_out, xnor_out;

    gate_logic uut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .notb_out(notb_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
    );

    initial begin
        // For waveform viewing
        $dumpfile("dump.vcd");
        $dumpvars(0, tb1);

        // Truth table heading
        $display("Time\t a b | AND OR NAND NOR NOTb XOR XNOR");
        $display("------------------------------------------");
        
        // Truth table values
        $monitor("%0t\t %b %b |  %b   %b    %b    %b    %b    %b    %b",
                 $time, a, b, and_out, or_out, nand_out, nor_out, notb_out, xor_out, xnor_out);

        // Test patterns
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        a = 0; b = 0; #10;
        $finish;
    end
endmodule
