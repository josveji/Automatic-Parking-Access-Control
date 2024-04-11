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
    try_psswrd,
    //  Inputs
    alarm_1, 
    alarm_2, 
    open_gate, 
    close_gate);

    output clk, rst, sensor_1, sensor_2, try_psswrd; 
    output [7:0] psswrd_atmpt;

    input alarm_1, alarm_2, open_gate, close_gate;

    reg clk, rst, sensor_1, sensor_2, try_psswrd, psswrd_atmpt; 
    wire alarm_1, alarm_2, open_gate, close_gate;

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
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 psswrd_atmpt = 01010111; /* Ingresa la contraseña correcta, 
    pasa a estado Ingreso Autorizado (2)*/
    #2 try_psswrd = 0; /* Se activa la señal para verificar contraseña, 
    pues ya no es necesario*/
    #2 sensor_1 = 0; // Ya no se detectan carros en la entrada
    #2 sensor_2 = 1; // El carro ingresa al parqueo, pasa al estado (0) 
    #2 sensor_2 = 0; // El sensor deja de detectar, pues el carro ya pasó

    // ------Prueba 2 - Ingreso de pin incorrecto menos de 3 veces------

    #5 sensor_1 = 1; // Pasa al estado Ingresando Contraseña (1)
    // Primer intento (incorrecto)
    #2 psswrd_atmpt = 01011111;// Se ingresa primera contraseña incorrecta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pues ya se verificó el primer intento incorrecto, contador+1 = 1 */

    // Segundo intento (incorrecto)
    #2 psswrd_atmpt = 01011111;// Se ingresa primera contraseña incorrecta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pues ya se verificó el segundo intento incorrecto, contador+1 = 2 */
    
    // Tercer intento (correcto)
    #2 psswrd_atmpt = 01010111; // Ingresa la contraseña correcta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pues ya se verificó, contador = 0 */
    // Ingreso Autorizado
    #2 sensor_1 = 0; // Ya no se detectan carros en la entrada
    #2 sensor_2 = 1; // El carro ingresa al parqueo, pasa al estado (0) 
    #2 sensor_2 = 0; // El sensor deja de detectar, pues el carro ya entró

    // --------------------------Fin Prueba 2---------------------------


    // -------Prueba 3 - Ingreso de pin incorrecto 3 veces--------------

    #5 sensor_1 = 1; // Pasa al estado Ingresando Contraseña (1)
    // Primer intento (incorrecto)
    #2 psswrd_atmpt = 01011111; // Se ingresa primera contraseña incorrecta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pues ya se verificó el primer intento incorrecto, contador+1 = 1 */

    // Segundo intento (incorrecto)
    #2 psswrd_atmpt = 01011111; // Se ingresa segunda contraseña incorrecta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pues ya se verificó el segundo intento incorrecto, contador+1 = 2 */

    // Tercer intento (incorrecto)
    #2 psswrd_atmpt = 01011111; // Se ingresa tercera contraseña incorrecta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pues ya se verificó el tercer intento incorrecto*/
    // Contador de intentos +1 = 3 Se activa alarma de pin (alarm_1)
    #2 sensor_1 = 0;

    // Reset para para volver todo al estado original 
    #5 rst = 1; // Pasa a estado (0)
    #2 rst = 0; 

    // --------------------------Fin Prueba 3---------------------------


    // -----------------Prueba 4 - Alarma de bloqueo-------------------
    // Por ahora sensor 1 y 2 están apagados
    #2 sensor_1 = 1; // Se activa el sensor 1 
    #0 sensor_2 = 1; // Se activa el sensor 2, pasa a estado de bloqueo (3)

    // Ingresando contraseña incorrecta
    #2 psswrd_atmpt = 01011111; // Se ingresa contraseña incorrecta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    vuelve al estado (3)*/

    // Ingresando contraseña incorrecta
    #2 psswrd_atmpt = 01010111; // Se ingresa contraseña correcta
    #2 try_psswrd = 1; // Se activa la señal para verificar contraseña
    #2 try_psswrd = 0; /* Se desactiva la señal verificar contraseña,
    pasa al estado (0), se desactiva la alarma de bloqueo*/    

    // --------------------------Fin Prueba 4---------------------------
    
    end // Fin de las pruebas

endmodule