`timescale 1ns/1ps
module full_adder_tb();
    reg t_a,t_b,t_c;
    wire t_s,t_cout;

    full_adder gut(
        .A(t_a), .B(t_b), .C(t_c), .sum(t_s), .carry(t_cout)
    );

    initial begin
        //generate waveform
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder_tb);

        $display("A|B|C|Sum|Carry");
        // Case-1
        t_a=0; t_b=0; t_c=0;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-2
        t_a=0; t_b=0; t_c=1;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-3
        t_a=0; t_b=1; t_c=0;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-4
        t_a=0; t_b=1; t_c=1;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-5
        t_a=1; t_b=0; t_c=0;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-6
        t_a=1; t_b=0; t_c=1;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-7
        t_a=1; t_b=1; t_c=0;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        // Case-8
        t_a=1; t_b=1; t_c=1;
        #10;
        $display("%b %b %b | %b %b",t_a,t_b,t_c,t_s,t_cout);
        $finish;
    end 
endmodule