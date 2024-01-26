/*
				***** DECODIFICADOR BINARIO HEXADECIMAL *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de 
		un decodificador binario a hexadecimal donde el resultado será exhibido mediante un display
		7 segmentos de cátodo común a través de un FPGA.
		Fecha: 21-Marzo-2023
		Versión: 1.0
*/

module Decodificador_Binario_Hexadecimal(							
		input [3:0] A,									// Declaración de variable de entrada de cuatro bits
		output reg [6:0] S);								// Declaración de variable de salida de siete bits

		always @(A)
		begin

	case (A)										// Inicio del case con respecto a la entrada A
		4'b0000 : S = 0000001;								// Numero 0
		4'b0001 : S = 1001111;								// Numero 1
		4'b0010 : S = 0010010;								// Numero 2
		4'b0011 : S = 0000110;								// Numero 3
		4'b0100 : S = 1001100;								// Numero 4
		4'b0101 : S = 0100100;								// Numero 5
		4'b0110 : S = 0100000;								// Numero 6
		4'b0111 : S = 0001111;								// Numero 7
		4'b1000 : S = 0000000; 								// Numero 8
		4'b1001 : S = 0000100; 								// Numero 9
		4'b1010 : S = 0001000;								// Letra A
		4'b1011 : S = 1100000;								// Letra B
		4'b1100 : S = 0110001;								// Letra C
		4'b1101 : S = 1000010;								// Letra D
		4'b1110 : S = 0110000;								// Letra E
		4'b1111 : S = 0111000; 								// Letra F
		default : S = 0000001;								// Salida por default
	endcase											// Fin de los casos
  end												// Fin												

endmodule											// Fin del módulo
