/*
				***** COMPUERTAS LÓGICAS *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de las compuertas lógicas
		a través de este lenguaje HDL-
		Fecha: 19-Marzo-2023
		Versión: 1.0
*/

module Compuertas_Logicas(						// Creación del módulo
	input A,							// Creación de variable de entrada A			
	input B,							// Creación de variable de entrada B
	output Snot,							// Creación de variable de salida compuerta NOT
	output Sand,							// Creación de variable de salida compuerta AND
	output Sor,							// Creación de variable de salida compuerta OR
	output Sxor,							// Creación de variable de salida compuerta XOR
	output Sxnor,							// Creación de variable de salida compuerta XNOR
	output Snand							// Creación de variable de salida compuerta NAND
	);
		
	not (Snot,A);							// Calcula el resultado de la compuerta NOT en la enttrada A y asigna el resultado a la variable de salida correspondiente
	
	and (Sand,A,B);							// Calcula el resultado de la compuerta AND en la enttrada A y B despues asigna el resultado a la variable de salida correspondiente
	
	or (Sor,A,B);							// Calcula el resultado de la compuerta OR en la enttrada A y B despues asigna el resultado a la variable de salida correspondiente
	
	xor (Sxor,A,B);							// Calcula el resultado de la compuerta XOR en la enttrada A y B despues asigna el resultado a la variable de salida correspondiente
	
	xnor (Sxnor,A,B);						// Calcula el resultado de la compuerta XNOR en la enttrada A y B despues asigna el resultado a la variable de salida correspondiente
	
	nand (Snand,A,B);						// Calcula el resultado de la compuerta NAND en la enttrada A y B despues asigna el resultado a la variable de salida correspondiente
	
endmodule 								// Fin del módulo
