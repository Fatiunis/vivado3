module alu_wrapper (
    input  logic        clk,
    input  logic        rst_n,        // Reset asíncrono activo en bajo
    input  logic [15:0] a_in, b_in,   // Entradas de 16 bits
    input  logic [2:0]  alu_ctrl_in,
    output logic [15:0] result_out,
    output logic [3:0]  flags_out
);

    // Registros internos
    logic [15:0] a_reg, b_reg;
    logic [2:0]  alu_ctrl_reg;
    
    // Cables de interconexión entre la ALU y los registros de salida
    logic [15:0] alu_result;
    logic [3:0]  alu_flags;

    // Instancia de la ALU+ parametrizada a 16 bits
    alu #(.width(16)) my_alu (
        .a(a_reg),
        .b(b_reg),
        .alu_control(alu_ctrl_reg),
        .result(alu_result),
        .flags(alu_flags)
    );

    // Lógica secuencial: Registros de entrada y salida
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a_reg        <= 16'b0;
            b_reg        <= 16'b0;
            alu_ctrl_reg <= 3'b0;
            result_out   <= 16'b0;
            flags_out    <= 4'b0;
        end else begin
            // Captura de entradas
            a_reg        <= a_in;
            b_reg        <= b_in;
            alu_ctrl_reg <= alu_ctrl_in;
            
            // Captura de salidas
            result_out   <= alu_result;
            flags_out    <= alu_flags;
        end
    end

endmodule