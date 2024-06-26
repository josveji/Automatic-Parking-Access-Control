/* 
Estudiante: Josué María Jiménez Ramírez 
Profesor: Enrique Coen Alfaro
Curso: Circuitos Digitales II
Periodo: I - 2024

Descripción del archivo: Este es el código que implementa la máquina de
estados para un controlador automatizado para entrada de un estacionamiento. 
*/

// Declaración del módulo 

module ControladorParqueo (clk, rst, sensor_1, sensor_2, 
psswrd_atmpt, alarm_1, alarm_2, open_gate, close_gate);

/* sensor_1 = sensor que detecta llegada de un carro 
   sensor_2 = sensor que detecta si ya entró el carro
   psswrd_atmpt = contraseña ingresada
   alarm_1 = alarma de pin incorrecto
   alarm_2 = alarma de bloqueo 
   open_gate = señal se abre la aguja
   close_gate = señal se cierra la aguja
*/

// Declarando las entradas
input clk, rst, sensor_1, sensor_2; 
input [8:0] psswrd_atmpt;  


output reg alarm_1, alarm_2, open_gate, close_gate; // Declarando las salidas

// Declarando variables internas
reg [4:0] state; 
reg [2:0] count0; // Para contar los intentos de contraseña

reg [4:0] nxt_state; 
reg [4:0] nxt_count0;

// Declarando contraseña
localparam [8:0] psswrd = 01010111; // Es el número 87 

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
                    if (sensor_1) nxt_state = 4'b0001; // Va al estado (1)
                    else nxt_state = 4'b0000; // Vuelve al estado (0)
                 end

      // Estado (1)
        4'b0001: begin
                    if (psswrd_atmpt == psswrd) begin
                         open_gate = 1; // Activa señal de abrir aguja
                         nxt_count0 = 0; // Limpia contador de intentos incorrectos
                         nxt_state = 4'b0010; // Va al estado (2)
                    end 
                    else begin 
                            nxt_count0 = count0+1; // Incrementa el contador de intentos
                            nxt_state = 4'b0001; // Vuelve al estado (1)
                         end 
                    if (nxt_count0 == 3) alarm_1 = 1; // Activa alarma de pin   
                 end 

      // Estado (2)
        4'b0010:begin
                    if (sensor_2) begin
                        open_gate = 0; // Desactiva señal de abrir aguja
                        close_gate = 1; // Activa señal de cerrar aguja
                        nxt_state = 4'b0000; // Va al estado (0)
                    end else nxt_state = 4'b0010 /* Vuelve al estado (2) a 
                    espera que pase el carro*/
                end
       
      // Estado (3)
        4'b0011: begin
          
                 end
         


    endcase // Acá terminan los casos de estado



// Estado 0 - Esperando un carro 



end // Fin de lógica combinacional @(*)


endmodule; 

