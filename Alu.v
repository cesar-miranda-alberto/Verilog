/*
				***** UNIDAD LÓGICO ARITMETICA *****
		
		El presente código desarrollado en verilog tiene como finalidad la implementación de una
		unidad lógico aritmetica de cuatro bits de longitud partiendo de dos entradas los cuales
		son los valores a calcular y el valor del selector quien especificará la operación que se
		realizará.
		Fecha: 22-Marzo-2023
		Versión: 1.0
*/

module Alu(													// Creación del módulo de la ALU
		input [3:0] A,											// Declaración de la entrada A de cuatro bits
		input [3:0] B,											// Declaración de la entrada B de cuatro bits
		input [3:0] sel,										// Declaración del selector de operación de cuatro bits
		output reg[3:0] res										// Declaración de la salida RES de cuatro bits
);

		always @(sel) 											// Lista sensitiva con respecto al selector  
		begin
				case (sel)									// Estructura case que evalua los valores del selector
					4'b0000 : res = ~A;							// Realiza la compuerta NOT de la señal de entrada A
					4'b0001 : res = ~B;							// Realiza la compuerta NOT de la señal de entrada B
					4'b0010 : res = A & B;							// Realiza la compuerta AND de las señales A Y B					
					4'b0011 : res = ~(A  & B);						// Realiza la compuerta NAND de las señales A Y B 
					4'b0100 : res = A | B;							// Realiza la compuerta OR de las señales A Y B 
					4'b0101 : res = ~(A  | B);						// Realiza la compuerta NOR de las señales A Y B 
					4'b0110 : res = A ^ B;							// Realiza la compuerta XOR de las señales A Y B 
					4'b0111 : res = ~ (A ^ B);						// Realiza la compuerta XNOR de las señales A Y B 
					4'b0111 : res = A+1'b1;							// Realiza una suma de un bit en binario a la señal A
					4'b1000 : res = A-1'b1;							// Realiza una resta de un bit en binario a la señal A
					4'b1001 : res = B+1'b1;							// Realiza una suma de un bit en binario a la señal B
					4'b1010 : res = B-1'b1;							// Realiza una resta de un bit en binario a la señal B
					4'b1011 : res = A+B;							// Realiza una suma de las señales A Y B
					4'b1100 : res = B-A;							// Realiza una resta de las señales A Y B
					default:  res = ~A;							// Asigna una operación por default
				endcase										// Fin de los casos
		end												// Fin de la lista sensitiva

endmodule 													// Fin del módulo
