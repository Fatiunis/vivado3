# Parcial 3: Diseño Lógico y Físico de ALU+ (16-bits)

**Autor:** Fátima L. Ramazzini  
**Curso:** Arquitectura de Computadoras y Microcontroladores - Universidad del Istmo (UNIS)  
**Herramientas:** Synopsys VCS, Verdi, Design Compiler, IC Compiler II  
**Tecnología:** M31 150nm Low-Leakage Standard Cells (M31LLSC750GL150MS)

## Descripción del Proyecto

Este repositorio contiene el flujo completo de diseño ASIC (desde la descripción RTL hasta el diseño físico *Place & Route*) de una Unidad Aritmético Lógica extendida (ALU+) de 16 bits. El diseño es síncrono, parametrizable e incluye las siguientes características aritméticas y lógicas:

*   **Prefix Adder (Kogge-Stone):** Implementado para optimizar las operaciones de suma y resta reduciendo el camino crítico de generación y propagación de acarreos.
*   **Multiplicador por Hardware:** Inferencia de bloques DSP dedicados para la operación de multiplicación.
*   **Aislamiento Lógico (Buses Tri-estado):** Las compuertas lógicas (AND, OR) se desconectan físicamente del bus principal usando alta impedancia (`'bz`) cuando no son invocadas, ahorrando energía.
*   **Banderas de Estado (NZCV):** Soporte completo para banderas de Negativo (N), Cero (Z), Acarreo (C) y Desbordamiento (V).
  
## Estructura del Repositorio parte 1
*    `/Docs`: Documento del reporte sobre la implementación en las herramientas
*    `/Vivado`: Archivos para la síntesis en Vivado
  
## Estructura del Repositorio parte 2

*   `/rtl`: Códigos fuente en SystemVerilog (ALU, Prefix Adder, Wrapper) y el Testbench instrumentado para SAIF/FSDB.
*   `/scripts`: Scripts `.tcl` y archivo `.sdc` (Restricciones de 10.00 ns / 100 MHz) utilizados para la síntesis lógica y el diseño físico.
*   `/reports`: Reportes generados por Design Compiler e IC Compiler II (Área, Timing, QoR, Potencia, Violaciones y Legalidad).
*   `/outputs`: Netlists sintetizados, base de datos física, y archivo final de silicio (`.gds`).

## Flujo de Diseño Implementado

1.  **Simulación Funcional y Cobertura (VCS/Verdi):** Verificación pre-síntesis del comportamiento lógico y volcado de actividad de conmutación (SAIF) para cálculo realista de potencia.
2.  **Síntesis Lógica (Design Compiler):** Traducción del código RTL a celdas estándar de 150nm. Se aplicaron técnicas de *Clock Gating* y *Retiming* para optimizar el cuello de botella generado por el multiplicador.
3.  **Implementación Física (IC Compiler II):** Floorplan, colocación de celdas (Placement), síntesis del árbol de reloj (CTS) y enrutamiento metálico (Routing) en 5 capas. El diseño superó los chequeos de legalidad (DRC) mitigando las violaciones de *Hold*.
4.  **Gate-Level Simulation (GLS):** Simulación funcional post-route para garantizar la equivalencia lógica del silicio generado contra el testbench original.

## Análisis y Resultados Clave

*   **Timing:** A pesar del denso camino combinacional del multiplicador, el ruteo físico mitigó los retardos de interconexión, logrando un diseño legal con área constante (22,077.62 µm²) y mitigación completa de violaciones de Hold.
*   **Área y Celdas:** El chip final integra 1,088 celdas estándar, logrando un empaquetamiento eficiente validado por las pruebas de LVS y Legalidad de Synopsys.

*(El video explicativo con las discusiones de los resultados se encuentra adjunto en la entrega del portal académico).*
