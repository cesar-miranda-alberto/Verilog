/*
				***** MEDIO SUMADOR *****

		El presente código implementa el desarrollo de un medio sumador a través del lenguaje de
		Descripción de Hardware (HDL) Verilog.
		Fecha: 20-Marzo-2023
		Versión: 1.0
		
*/

module medio_sumador(								// Creación y asignación de nombre al módulo
	input A,								// Declaración de variables de entrada 
	input B,								
	output Sa,								// Declaración de variable de salida 
	output Cs);								// Declaración de variable de acarreo de salida
	
	xor (S,A,B);								// Compuerta xor con respecto a las entradas cuyo resultado es asignado a la salida
	and (Cs A,B);								// Compuerta and con respecto a las entradas cuyo resultado es asignado al acarreo de salida
	
endmodule									// Fin del módulo
