/* 
Estudiante: Josué María Jiménez Ramírez, C13987 
Profesor: Enrique Coen Alfaro
Curso: Circuitos Digitales II
Periodo: I - 2024

Descripción del archivo: Este es el código que implementa la máquina de
estados para un controlador automatizado para entrada de un estacionamiento. 
*/

// Declaración del módulo 

module ControladorParqueo (clk, rst, sensor_1, sensor_2, try_psswrd,
psswrd_atmpt, alarm_1, alarm_2, open_gate, close_gate);

/* sensor_1 = sensor que detecta llegada de un carro 
   sensor_2 = sensor que detecta si ya entró el carro
   try_psswrd = una señal que indica si probar o no la contraseña
   psswrd_atmpt = contraseña ingresada
   alarm_1 = alarma de pin incorrecto
   alarm_2 = alarma de bloqueo 
   open_gate = señal se abre la aguja
   close_gate = señal se cierra la aguja
*/

// Declarando las entradas
input clk, rst, sensor_1, sensor_2, try_psswrd; 
input [7:0] psswrd_atmpt;  // Intento de contraseña


output reg alarm_1, alarm_2, open_gate, close_gate; // Declarando las salidas

// Declarando variables internas
reg [4:0] state; 
reg [4:0] count0; // Para contar los intentos de contraseña

reg [4:0] nxt_state; 
reg [4:0] nxt_count0;

// Declarando contraseña
localparam [7:0] psswrd = 01010111; // Es el número 87 

always @(posedge clk) begin
  if (rst) begin
    state <= 4'b0000;
    count0 <= 2'b00;
  end else begin
    state <= nxt_state;
    count0 <= nxt_count0;
  end
end /* Acá termina la declaración de FFs. Se utilizan asignaciones no
 bloqueantes para tener sequencialidad*/

// Acá inicia la lógica lógica Combinacional

always @(*) begin

    nxt_state = state; 

    nxt_count0 = count0;

    case(state)

    /* Los estados son: 
       (0) 4'b0000 = Esperando un carro
       (1) 4'b0001 = Ingresando contraseña
       (2) 4'b0010 = Estado ingreso autorizado 
       (3) 4'b0011 = Estado bloqueo 
    */
      // Estado (0)
        4'b0000: begin 
                    if (sensor_1 && sensor_2) begin /* Si se activan simultáneamente
                     sensor_1 y sensor_2*/
                        nxt_state = 4'b0011; // Va al estado (3)
                        alarm_2 = 1; // Activa alarma de bloqueo
                    end 
                    else if (sensor_1) nxt_state = 4'b0001; // Va al estado (1)
                    else nxt_state = 4'b0000; // Vuelve al estado (0)
                 end // Termina estado (0)

      // Estado (1)
        4'b0001: begin
                    if (sensor_1 && sensor_2) begin /* Si se activan simultáneamente
                     sensor_1 y sensor_2*/
                        nxt_state = 4'b0011; // Va al estado (3)
                        alarm_2 = 1; // Activa alarma de bloqueo
                    end 
                    else if (try_psswrd) begin /* Si la señal verificar y la contraseña es correcta*/
                         open_gate = 1; // Activa señal de abrir aguja
                         nxt_count0 = 0; // Limpia contador de intentos incorrectos
                         nxt_state = 4'b0010; // Va al estado (2)
                    end 
                    else if (try_psswrd && psswrd_atmpt != psswrd) begin 
                            // Si la señal verificar y la contraseña es incorrecta
                            nxt_count0 = count0+1; // Incrementa el contador de intentos
                            nxt_state = 4'b0001; // Vuelve al estado (1)
                         end 
                    else if (nxt_count0 == 3) alarm_1 = 1; // Activa alarma de pin
                    else nxt_state = 4'b0001; /* Devuelve al estado (1) en
                    cualquier otro caso */
                 end // Termina estado (1)

      // Estado (2)
        4'b0010: begin
                    if (sensor_1 && sensor_2) begin /* Si se activan 
                    simultáneamente sensor_1 y sensor_2*/
                        nxt_state = 4'b0011; // Va al estado (3)
                        alarm_2 = 1; // Activa alarma de bloqueo
                    end 
                    else if (sensor_2) begin
                        open_gate = 0; // Desactiva señal de abrir aguja
                        close_gate = 1; // Activa señal de cerrar aguja
                        nxt_state = 4'b0000; // Va al estado (0)
                    end else nxt_state = 4'b0010; /* Vuelve al estado (2) a 
                    espera que pase el carro*/
                 end // Termina estado (2)

      // Estado (3)
        4'b0011: begin
                    if (try_psswrd && psswrd_atmpt == psswrd) begin 
                      alarm_2 = 0; // Desactiva la alarma 2
                      nxt_state = 4'b0000; // Va al estado (0)
                      //sensor_1 = 0; // Probando 
                      //sensor_2 = 0; // Probando 
                    end
                    else nxt_state = 4'b0011; /* Vuelve al estado (3) hasta
                    que la clave se digite correctamente*/
                 end // Termina estado (3)

    endcase // Acá terminan los casos de estado

end // Fin de lógica combinacional @(*)


endmodule; 

