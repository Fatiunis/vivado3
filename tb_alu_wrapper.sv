`timescale 1ns / 1ps

module tb_alu_wrapper();

    // Declaración de señales
    logic        clk;
    logic        rst_n;
    logic [15:0] a_in;
    logic [15:0] b_in;
    logic [2:0]  alu_ctrl_in;
    
    logic [15:0] result_out;
    logic [3:0]  flags_out; // {N, Z, C, V}

    // Instancia del módulo a probar (Device Under Test)
    alu_wrapper dut (
        .clk(clk),
        .rst_n(rst_n),
        .a_in(a_in),
        .b_in(b_in),
        .alu_ctrl_in(alu_ctrl_in),
        .result_out(result_out),
        .flags_out(flags_out)
    );

    // Generador de Reloj (Periodo de 10ns -> 100MHz)
    always #5 clk = ~clk;

    // Bloque principal de estímulos
    initial begin
        // 1. Inicialización y Reset
        clk = 0;
        rst_n = 0;
        a_in = 0;
        b_in = 0;
        alu_ctrl_in = 0;
        
        // 2. ESPERAR A QUE TERMINE EL RESET GLOBAL DE VIVADO (GSR)
        #100;
        
        // 3. Soltar el reset asíncrono y esperar un ciclo
        rst_n = 1;
        #10;
        
        // -----------------------------------------------------------
        // PRUEBAS DEL PREFIX ADDER (Suma y Resta)
        // -----------------------------------------------------------
        
        // Prueba 1: Suma básica (A + B)
        a_in = 16'h0005; 
        b_in = 16'h000A; 
        alu_ctrl_in = 3'b010; // Código de Suma
        #20; // Esperamos 2 ciclos de reloj (1 para entrada, 1 para salida)
        
        // Prueba 2: Suma forzando Carry y Overflow (V = 1, C = 1)
        // 0x7FFF (32767) + 0x0001 (1) = 0x8000 (-32768 en complemento a 2)
        a_in = 16'h7FFF; 
        b_in = 16'h0001; 
        alu_ctrl_in = 3'b010;
        #20;

        // Prueba 3: Resta (A - B) forzando Zero flag (Z = 1)
        a_in = 16'h0014; // 20
        b_in = 16'h0014; // 20
        alu_ctrl_in = 3'b011; // Código de Resta
        #20;

        // Prueba 4: Resta con resultado negativo (N = 1)
        a_in = 16'h0005; // 5
        b_in = 16'h000A; // 10
        alu_ctrl_in = 3'b011;
        #20;

        // -----------------------------------------------------------
        // PRUEBAS DE LA EXTENSIÓN: MULTIPLICADOR
        // -----------------------------------------------------------
        
        // Prueba 5: Multiplicación (A * B)
        a_in = 16'd12;   // 12 decimal
        b_in = 16'd10;   // 10 decimal
        alu_ctrl_in = 3'b100; // Código Multiplicador
        #20; // Resultado esperado: 120 (0x0078)

        // -----------------------------------------------------------
        // PRUEBAS DE LOS BUSES TRI-ESTADO (AND / OR)
        // -----------------------------------------------------------
        
        // Prueba 6: Operación AND
        a_in = 16'hF0F0; 
        b_in = 16'h0F0F; 
        alu_ctrl_in = 3'b000; // Código AND
        #20; // Resultado esperado: 0x0000, Z=1

        // Prueba 7: Forzar todos los bits a 0 (Salida 111)
        a_in = 16'hFFFF; 
        b_in = 16'hFFFF; 
        alu_ctrl_in = 3'b111; // Forzar a 0
        #20;

        // Fin de la simulación
        #50;
        $finish;
    end

endmodule