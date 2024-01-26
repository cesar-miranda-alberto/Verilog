/*
				***** MEDIO SUMADOR *****

		El presente código implementa el desarrollo de un medio sumador a través del lenguaje de
		Descripción de Hardware (HDL) Verilog.
		Fecha: 20-Marzo-2023
		Versión: 1.0
		
*/

module medio_sumador(						// Creación y asignación de nombre al módulo
	input A,								// Declaración de variable de entrada A
	input B,								// Declaración de variable de entrada B	
	output Sa,								// Declaración de variable de salida 
	output Cs);								// Declaración de variable de acarreo de salida
	
	xor (S,A,B);							// Se ejecuta una compuerta xor entre las entradas A y B cuyo resultado es asignado a la salida
	and (Cs A,B);							// Se ejecuta una compuerta and entre las entradas A y B cuyo resultado es asignado al acarreo de salida
	
endmodule									// Fin del módulo