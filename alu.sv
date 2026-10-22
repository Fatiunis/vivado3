// ALU+ Parametrizada
// Soporta anchos de bus variables (ej. 8, 16, 32 bits)
module alu #(parameter width = 8) (
    input  logic [width-1:0] a, b,
    input  logic [2:0]       alu_control, // Control extendido a 3 bits
    output logic [width-1:0] result,
    output logic [3:0]       flags        // Formato: {N, Z, C, V}
);

    // --------------------------------------------------------
    // A. Preparación de operandos para Suma/Resta
    // --------------------------------------------------------
    // Si la operación es resta (011), invertimos B y sumamos 1 (cin = 1)
    logic [width-1:0] b_mux;
    logic cin;
    assign cin = (alu_control == 3'b011) ? 1'b1 : 1'b0;
    assign b_mux = (alu_control == 3'b011) ? ~b : b;

    // --------------------------------------------------------
    // B. Lógica Tri-Estado para AND y OR
    // --------------------------------------------------------
    wire [width-1:0] and_bus;
    wire [width-1:0] or_bus;

    // Se asigna alta impedancia ('bz) si la operación no es invocada
    assign and_bus = (alu_control == 3'b000) ? (a & b) : {width{1'bz}};
    assign or_bus  = (alu_control == 3'b001) ? (a | b) : {width{1'bz}};

    // --------------------------------------------------------
    // C. Instanciación del Prefix Adder
    // --------------------------------------------------------
    logic [width-1:0] sum_res;
    logic cout;
    
    prefix_adder #(width) my_adder (
        .a(a),
        .b(b_mux),
        .cin(cin),
        .sum(sum_res),
        .cout(cout)
    );

    // --------------------------------------------------------
    // D. Extensión: Multiplicador
    // --------------------------------------------------------
    logic [width-1:0] mul_res;
    assign mul_res = a * b; // Sintetiza un multiplicador truncado al ancho del bus

    // --------------------------------------------------------
    // E. Multiplexor Principal (Operador Ternario)
    // --------------------------------------------------------
    assign result = (alu_control == 3'b000) ? and_bus :
                    (alu_control == 3'b001) ? or_bus :
                    (alu_control == 3'b010) ? sum_res :      // Suma
                    (alu_control == 3'b011) ? sum_res :      // Resta
                    (alu_control == 3'b100) ? mul_res :      // Multiplicador
                    (alu_control == 3'b111) ? {width{1'b0}} : // Todos en 0
                    {width{1'b0}};                           // Por defecto

    // --------------------------------------------------------
    // F. Generación de Banderas (NZCV)
    // --------------------------------------------------------
    logic N, Z, C, V;
    
    // N: Negative (Bit más significativo del resultado)
    assign N = result[width-1];
    
    // Z: Zero (Verifica si todos los bits son 0)
    assign Z = (result == {width{1'b0}});
    
    // C: Carry (Únicamente válido en sumas y restas)
    assign C = (alu_control == 3'b010 || alu_control == 3'b011) ? cout : 1'b0;
    
    // V: Overflow (Si los operandos tienen igual signo y el resultado tiene signo distinto)
    assign V = (alu_control == 3'b010 || alu_control == 3'b011) ? 
               (~(a[width-1] ^ b_mux[width-1]) & (a[width-1] ^ sum_res[width-1])) : 1'b0;
               
    assign flags = {N, Z, C, V};

endmodule