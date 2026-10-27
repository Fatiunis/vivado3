module prefix_adder #(parameter width = 16) (
    input  logic [width-1:0] a, b,
    input  logic             cin,
    output logic [width-1:0] sum,
    output logic             cout
);

    // Matrices para almacenar Generate (g) y Propagate (p) en cada nivel del árbol
    logic [width-1:0] p [0:4];
    logic [width-1:0] g [0:4];

    // Nivel 0: Pre-procesamiento base
    genvar i;
    generate
        for (i = 0; i < width; i++) begin : prep
            assign p[0][i] = a[i] ^ b[i];
            assign g[0][i] = a[i] & b[i];
        end
    endgenerate

    // Nivel 1: Desplazamiento de 1
    generate
        for (i = 0; i < width; i++) begin : stage1
            if (i >= 1) begin
                assign p[1][i] = p[0][i] & p[0][i-1];
                assign g[1][i] = g[0][i] | (p[0][i] & g[0][i-1]);
            end else begin
                assign p[1][i] = p[0][i];
                assign g[1][i] = g[0][i];
            end
        end
    endgenerate

    // Nivel 2: Desplazamiento de 2
    generate
        for (i = 0; i < width; i++) begin : stage2
            if (i >= 2) begin
                assign p[2][i] = p[1][i] & p[1][i-2];
                assign g[2][i] = g[1][i] | (p[1][i] & g[1][i-2]);
            end else begin
                assign p[2][i] = p[1][i];
                assign g[2][i] = g[1][i];
            end
        end
    endgenerate

    // Nivel 3: Desplazamiento de 4
    generate
        for (i = 0; i < width; i++) begin : stage3
            if (i >= 4) begin
                assign p[3][i] = p[2][i] & p[2][i-4];
                assign g[3][i] = g[2][i] | (p[2][i] & g[2][i-4]);
            end else begin
                assign p[3][i] = p[2][i];
                assign g[3][i] = g[2][i];
            end
        end
    endgenerate

    // Nivel 4: Desplazamiento de 8
    generate
        for (i = 0; i < width; i++) begin : stage4
            if (i >= 8) begin
                assign p[4][i] = p[3][i] & p[3][i-8];
                assign g[4][i] = g[3][i] | (p[3][i] & g[3][i-8]);
            end else begin
                assign p[4][i] = p[3][i];
                assign g[4][i] = g[3][i];
            end
        end
    endgenerate

    // Post-procesamiento: Incorporación del Cin y cálculo de suma
    logic [width:0] c;
    assign c[0] = cin;
    generate
        for (i = 0; i < width; i++) begin : final_sum
            // Se calcula el acarreo combinando el prefijo final con el Cin
            assign c[i+1] = g[4][i] | (p[4][i] & cin);
            assign sum[i] = p[0][i] ^ c[i];
        end
    endgenerate

    assign cout = c[width];

endmodule