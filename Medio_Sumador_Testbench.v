/*
				***** TESTBENCH MEDIO SUMADOR *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación del testbench 
		para el medio sumador con el fin analizar el funcionamiento del mismo.
		Fecha: 20-Marzo-2023
		Veersión: 1.0
*/

`timescale 1ns/1ps													  	  // Establece escala de tiempo para la simulación

module Medio_Sumador_Testbench();									  			  // Crea y Asigna nombre al módulo 
	reg A,B;														  // Crean las variables de entrada de tipo reg
	wire Sa,Cs;														  // Crean las variables de salida de tipo wire
	
	Medio_Sumador_Testbench tbms(A,B,Sa,Cs);						 				  // Instanciación del módulo medio sumador con sus respectivas variables
	
	initial 														  // Comienzo
	begin												
		
		      A = 1'b0; B = 1'b0;											  // Asigna valores a las variables de entrada
       #100    A = 1'b0; B = 1'b1;									  			  // Asigna valores a las variables de entrada con un retardo de 100
       #100    A = 1'b1; B = 1'b0;
       #100    A = 1'b1; B = 1'b1; 
	   
	end															  // Fin

endmodule															  // Fin del módulo
		
