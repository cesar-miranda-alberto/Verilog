/*
				***** TESTBENCH UNIDAD LÓGICA ARITMETICA *****
				
		El presente código tiene como finalida el desarrollo de un testbench correspondiente para 
		una Unidad Lógica Aritmetica a manera de analizar el funcionamiento de esta mediante el 
		testbench.
		Fecha: 22-Marzo-2023
		Versión: 1.0
		
*/
`timescale 1ns/100ps												// Establece la escala de tiempo del testbench

module Alu_Testbench();												// Creación de variables de tipo reg
	reg [3:0] A;		
	reg [3:0] B;																								
	reg [3:0] sel;																									
	wire [3:0] res;												
	
	Alu Alutb(.A(A), .B(B), .sel(sel), .res(res));								// Establece la instanciación del módulo Alu y relaciona los valores
	
	initial													// Comienzo
	begin
			A = 4'b0100;										// Valor asignado a la señal de entrada A
			B = 4'b0110;										// Valor asignado a la señal de entrada B
			
			sel = 4'b0000;										// Valor del selector
			#100;											// Retardo asignado para cambiar el valor del selector
			sel = 4'b0001;
			#100;
			sel = 4'b0010;
			#100;
			sel = 4'b0011;
			#100;
			sel = 4'b0100;
			#100;
			sel = 4'b0101;
			#100;
			sel = 4'b0110;
			#100;
			sel = 4'b0111;
			#100;
			sel = 4'b1000;
			#100;
			sel = 4'b1001;
			#100;
			sel = 4'b1010;
			#100;
			sel = 4'b1011;
			#100;
			sel = 4'b1100;
			#100;
			
	end														// Fin
	
endmodule														// Fin del módulo
	
