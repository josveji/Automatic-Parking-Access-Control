/* 
Estudiante: Josué María Jiménez Ramírez, C13987 
Profesor: Enrique Coen Alfaro
Curso: Circuitos Digitales II
Periodo: I - 2024

Descripción del archivo: Este es el código encargado de evaluar las pruebas de
"tests.v" en "Automatic-Parking-Access-Control.v" por sus siglas abreviado "apac". 
*/

`include "tester.v" // Incluyendo archivo de pruebas
`include "Automatic-Parking-Access-Control.v" // Incluyendo máquina de estados

// Decclaración del módulo 

module apac_tb;

    wire clk, rst, sensor_1, sensor_2, try_psswrd; // Entradas
    wire [7:0] psswrd_atmpt; 
    wire alarm_1, alarm_2, open_gate, close_gate; // Salidas 

    initial begin 
        $dumpfile("resultados_apac.vcd"); // Archivo con resultados
        $dumpvars(-1, U0); 
        $monitor ("sensor_1=%b, sensor_2=%b, try_psswrd=%b, psswrd_atmpt=%b, alarm_1=%b, alarm_2=%b, open_gate=%b, close_gate=%b",
        sensor_1, sensor_2, try_psswrd, psswrd_atmpt, alarm_1, alarm_2, 
        open_gate, close_gate);
    end

    // Para máquina de estados Automatic-Parking-Access-Control (apac)
    ControladorParqueo U0 (
        .clk (clk),
        .rst (rst), 
        .sensor_1 (sensor_1), 
        .sensor_2(sensor_2), 
        .try_psswrd (try_psswrd), 
        .psswrd_atmpt (psswrd_atmpt), 
        .alarm_1 (alarm_1), 
        .alarm_2 (alarm_2), 
        .open_gate (open_gate), 
        .close_gate (close_gate)
    );
    
    // Para tester de Automatic-Parking-Access-Control (apac)
    tests P0 (
        .clk (clk),
        .rst (rst), 
        .sensor_1 (sensor_1), 
        .sensor_2(sensor_2), 
        .try_psswrd (try_psswrd), 
        .psswrd_atmpt (psswrd_atmpt),
        .alarm_1 (alarm_1), 
        .alarm_2 (alarm_2), 
        .open_gate (open_gate), 
        .close_gate (close_gate)
    );   

endmodule // Fin del módulo 
