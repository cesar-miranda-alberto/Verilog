/*
				***** COMPUERTAS LÓGICAS *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de las compuertas lógicas
		a través de este lenguaje HDL-
		Fecha: 19-Marzo-2023
		Versión: 1.0
*/

`timescale 1ns/100ps													// Establece la escala de tiempo de la simulación

module Compuertas_Logicas_Testbench();											// Creación del testbench

	reg A,B;													// Se crean las variables de entrada como tipo reg
	wire Snot,Sand,Sor,Sxor,Sxnor,Snand;										// Se crean las variables de salida como tipo wire
	
	Compuertas_Logicas tbcl(A,B,Snot,Sand,Sor,Sxor,Sxnor,Snand);							// Instancea el módulo Compuertas lógicas y asigna las variables
	
	initial 													// Comienzo
	begin
	
        A = 1'b0; B = 1'b0;												// Valores iniciales de las variables de entrada
       #100;														// Retardo
	A = 1'b0; B = 1'b1;												// Cambio en los valores de las variables de entrada
       #100;   
	A = 1'b1; B = 1'b0;
       #100;   
	A = 1'b1; B = 1'b1;

end															// Fin

endmodule														// Fin del módulo
	   
