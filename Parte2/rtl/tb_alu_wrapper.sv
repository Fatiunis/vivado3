`timescale 1ns / 1ps
module tb_alu_wrapper();
    logic        clk;
    logic        rst_n;
    logic [15:0] a_in;
    logic [15:0] b_in;
    logic [2:0]  alu_ctrl_in;
    logic [15:0] result_out;
    logic [3:0]  flags_out;

    alu_wrapper dut (
        .clk(clk), .rst_n(rst_n), .a_in(a_in), .b_in(b_in),
        .alu_ctrl_in(alu_ctrl_in), .result_out(result_out), .flags_out(flags_out)
    );

    always #5 clk = ~clk;

    initial begin
        $fsdbDumpfile("ondas_proyecto.fsdb");
        $fsdbDumpvars(0, tb_alu_wrapper, "+all");

        clk = 0; rst_n = 0; a_in = 0; b_in = 0; alu_ctrl_in = 0;
        #100;
        rst_n = 1;
        #10;
        
        $set_toggle_region(tb_alu_wrapper.dut);
        $toggle_start();

        // Pruebas
        a_in = 16'h0005; b_in = 16'h000A; alu_ctrl_in = 3'b010; #20;
        a_in = 16'h7FFF; b_in = 16'h0001; alu_ctrl_in = 3'b010; #20;
        a_in = 16'h0014; b_in = 16'h0014; alu_ctrl_in = 3'b011; #20;
        a_in = 16'h0005; b_in = 16'h000A; alu_ctrl_in = 3'b011; #20;
        a_in = 16'd12;   b_in = 16'd10;   alu_ctrl_in = 3'b100; #20;
        a_in = 16'hF0F0; b_in = 16'h0F0F; alu_ctrl_in = 3'b000; #20;
        a_in = 16'hFFFF; b_in = 16'hFFFF; alu_ctrl_in = 3'b111; #20;

        $toggle_stop();
        $toggle_report("actividad.saif", 1.0e-9, tb_alu_wrapper.dut);
        #50;
        $finish;
    end
endmodule
