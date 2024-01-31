/*
				***** MULTIPLEXOR 4 A 1 *****
				
		El presente código tiene como finalidad la implementación del Testbench correspondiente
		a un multiplexor cuatro a una implementando la estructura case para el selector que 
		asigne el turno de salida de cada señal.
		Versión: 1.0
		Fecha: 22-Marzo-2023
*/

`timescale 1ns/100ps													// Establece escala de tiempo

module Multiplexor4a1Testbench();								// Crea el módulo para el testbench
			
			reg [3:0] A;												// Declara el vector de entrada A como tipo registro
			reg [1:0] sel;												// Declara el vector de selección SEL como tipo registro
			wire B;														// Declara la salida B como tipo wire
				
			
			Multiplexor4a1 tbm(A,sel,B);							// Crea la instanciación del módulo del multiplexor
			
			initial														// Inicio
			begin
						A[0] = 1;										// Valor asignado a cada posición del vector de entrada A
						A[1] = 0;
						A[2] = 1;
						A[3] = 0;
						
						sel = 2'b00;									// Cambio en los valores del vector de selección SEL 
						#100;												// Retardos en los cambios de los valores
						sel = 2'b01;
						#100;
						sel = 2'b10;
						#100;
						sel = 2'b11;
						#100;
							
			end															// Fin
			
endmodule																// Fin del módulo
