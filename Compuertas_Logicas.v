/*
				***** COMPUERTAS LÓGICAS *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de las compuertas lógicas
		a través de este lenguaje HDL-
		Fecha: 19-Marzo-2023
		Versión: 1.0
*/

module Compuertas_Logicas(						// Creación del módulo
	input A,							// Creación de variables de entrada 			
	input B,							
	output Snot,							// Creación de variable de salida compuerta NOT
	output Sand,							
	output Sor,							
	output Sxor,							
	output Sxnor,							
	output Snand							
	);
		
	not (Snot,A);							// Calcula el resultado de las compuertas partiendo de los valores de las entradas y asigna el resultado a la variable de salida correspondiente
	
	and (Sand,A,B);							
	
	or (Sor,A,B);							
	
	xor (Sxor,A,B);							
	
	xnor (Sxnor,A,B);						
	
	nand (Snand,A,B);						
	
endmodule 								// Fin del módulo
