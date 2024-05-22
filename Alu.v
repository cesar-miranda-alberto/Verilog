/*
				***** UNIDAD LÓGICO ARITMETICA *****
		
		El presente código desarrollado en verilog tiene como finalidad la implementación de una
		unidad lógico aritmetica de cuatro bits de longitud partiendo de dos entradas los cuales
		son los valores a calcular y el valor del selector quien especificará la operación que se
		realizará.
		Fecha: 22-Marzo-2023
		Versión: 1.0
*/

module Alu(													// Creación del módulo
	input [3:0] A,											        // Declaración de las entradas  de cuatro bits
		input [3:0] B,											
		input [3:0] sel,										// Declaración del selector de operación de cuatro bits
		output reg[3:0] res										// Declaración de la salida de cuatro bits
);

	always @(A,B, sel) 											// Lista sensitiva con respecto al selector  
		begin
			case (A, B, sel)									// Estructura case que evalua los valores del selector y ejecuta las operaciones
					4'b0000 : res = ~A;							
					4'b0001 : res = ~B;							
					4'b0010 : res = A & B;												
					4'b0011 : res = ~(A  & B);						
					4'b0100 : res = A | B;							
					4'b0101 : res = ~(A  | B);						
					4'b0110 : res = A ^ B;							 
					4'b0111 : res = ~ (A ^ B);						 
					4'b0111 : res = A+1'b1;							
					4'b1000 : res = A-1'b1;							
					4'b1001 : res = B+1'b1;							
					4'b1010 : res = B-1'b1;							
					4'b1011 : res = A+B;							
					4'b1100 : res = B-A;							
					default:  res = ~A;							// Asigna una operación por default
				endcase										// Fin de los casos
		end												// Fin de la lista sensitiva

endmodule 													// Fin del módulo
