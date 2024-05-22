/*
				***** MULTIPLEXOR 4 A 1 *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación 
		de un multiplexor cuatro a una cuatro entradas que saldrán a través de una unica
		salida implementando un selector para asignar el momento en que cada determinada
		entrada tendrá su turno para salir dichas entradas serán parte de un vector de 
		cuatro bits.
		Versión: 1.0
		Fecha: 22-Marzo-2023
*/

module Multiplexor4a1(											// Creación del módulo
		input [3:0] A,										// Declaración del vector A de entrada de cuatro bits
		input [1:0] sel,									// Declaración del vector sel de selección de dos bits
		output reg B										// Declaración de la salida B un solo bit
		);

	always @(sel)											// Lista sensitiva con respecto al selector											
	begin
		
			case (sel)									// Case evalua los casos del selector
					2'b00 : B = A[0];								
					2'b01 : B = A[1];
					2'b10 : B = A[2];
					2'b11 : B = A[3];
					default : B = A[0];						// Valor asignado por default a la salida
			endcase										// Fin de los casos
	end												// Fin de la lista sensible
	
endmodule 												// Fin del módulo
