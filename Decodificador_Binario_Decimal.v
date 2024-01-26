/*
				***** DECODIFICADOR BINARIO DECIMAL *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de 
		un decodificador binario a decimal donde el resultado será exhibido mediante un display
		7 segmentos de cátodo común a través de un FPGA.
		Fecha: 21-Marzo-2023
		Versión: 1.0
*/

module Decodificador_Binario_Decimal(A,S);								// Creación del módulo

		
	input [3:0]A;											// Declaración de variable de entrada de cuatro bits
	output reg [6:0]S;										// Declaración de variable de salida de siete bits correspondiente al display siete segmentos

	always @(A)											// Evalua la entrada A
	begin
	
	case (A)											// Inicio del case con respecto a la entrada A
		4'b0000 :  S =7'b0000001; 								// Numero 0
		4'b0001 :  S =7'b1001111; 								// Numero 1
		4'b0010 :  S =7'b0010010; 								// Numero 2
		4'b0011 :  S =7'b0000110; 								// Numero 3
		4'b0100 :  S =7'b1001100; 								// Numero 4
		4'b0101 :  S =7'b0100100; 								// Numero 5
		4'b0110 :  S =7'b0100000; 								// Numero 6
		4'b0111 :  S =7'b0001111; 								// Numero 7
		4'b1000 :  S =7'b0000000;  								// Numero 8
		4'b1001 :  S =7'b0000100;  								// Numero 9
		default :  S =7'b0000001; 								// Salida por default
		
	endcase												// Fin de los casos
  
  end

endmodule												// Fin del módulo
