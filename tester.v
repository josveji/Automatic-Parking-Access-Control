/* 
Estudiante: Josué María Jiménez Ramírez, C13987 
Profesor: Enrique Coen Alfaro
Curso: Circuitos Digitales II
Periodo: I - 2024

Descripción del archivo: Este es el código que implementa las pruebas (Probador) de 
verificación necesarias para el archivo "Automatic-Parking-Access-Control" (APAC). 
*/

// Declaración del módulo  

module tests (
    //Outputs
    clk,
    rst, 
    sensor_1, 
    sensor_2, 
    psswrd_atmpt, 
    //  Inputs
    alarm_1, 
    alarm_2, 
    open_gate, 
    close_gate);

    output clk, rst, sensor_1, sensor_2; 
    output [8:0] psswrd_atmpt;

    input reg alarm_1, alarm_2, open_gate, close_gate;

    always begin // Crea la onda de clk
    #1 clk = !clk;
    end

    // Acá inicia el diseño de pruebas
    initial begin

    // Activa el reset para iniciar en el estado Esperando carro (0)
    #0 rst = 1;
    #1 rst = 0;

    // ----------Prueba #1 - Funcionamiento normal básico---------------
    #2 sensor_1 = 1; // Pasa al estado Ingresando Contraseña (1)
    #2 psswrd_atmpt = 01010111; /* Ingresa la contraseña correcta, 
    pasa a estado Ingreso Autorizado (2)*/
    #2 sensor_1 = 0; // Ya no se detectan carros en la entrada
    #2 sensor_2 = 1; // El carro ingresa al parqueo, pasa al estado (0) 
    #2 sensor_2 = 0; // El sensor deja de detectar, pues el carro y pasó

    // ------Prueba 2 - Ingreso de pin incorrecto menos de 3 veces------

    #5 sensor_1 = 1; // Pasa al estado Ingresando Contraseña (1)
    #2 psswrd_atmpt = 01011111; // Contador de intentos +1 = 1
    #2 psswrd_atmpt = 01011111; // Contador de intentos +1 = 2
    #2 psswrd_atmpt = 01010111; /* Ingresa la contraseña correcta, 
    pasa a estado Ingreso Autorizado (2)*/
    #2 sensor_1 = 0; // Ya no se detectan carros en la entrada
    #2 sensor_2 = 1; // El carro ingresa al parqueo, pasa al estado (0) 
    #2 sensor_2 = 0; // El sensor deja de detectar, pues el carro ya entró // ¿Debería poner los apagadores en el estado 0? 

    // -------Prueba 3 - Ingreso de pin incorrecto 3 veces--------------

    #5 sensor_1 = 1; // Pasa al estado Ingresando Contraseña (1)
    #2 psswrd_atmpt = 01011111; // Contador de intentos +1 = 1
    #2 psswrd_atmpt = 01011111; // Contador de intentos +1 = 2
    #2 psswrd_atmpt = 01011111; /* Contador de intentos +1 = 3
    Se activa alarma de pin (alarm_1)*/

    // Reset para para volver todo al estado original 
    #5 reset = 1;
    #2 reset = 0; 
    #2 sensor_1 = 0 

    // -----------------Prueba 4 - Alarma de bloqueo-------------------
    // Por ahora sensor 1 y 2 están apagados
    #5

    end // Fin de las pruebas





endmodule