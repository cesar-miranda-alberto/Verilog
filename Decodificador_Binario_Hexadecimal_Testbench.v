/*
				***** TESTBENCH DECODIFICADOR BINARIO HEXADECIMAL *****
				
		El presente código implementa el desarrollo de un testbench para analizar el funcionamiento
		de un decodificador binario a decimal cuyos valores serán exhibidos en un display 7 segmentos
		de cátodo común a través de un FPGA de manera física, se hace esta mención ya que al momento 
		de relizar el testbench los valores mostrados no serán los valores en decimal sino que serán
		los valores necesarios para poder formar el número en el display 7 segmentos.
		
		Fecha: 21-Marzo-2023
		Versión: 1.0
		
 */
 
`timescale 1ns/100ps												// Establece la escala de tiempo
 
 module Decodificador_Binario_Decimal_Testbench();					// Crea el módulo del testbench
		reg [3:0] A;												// Declara la variable de entrada tipo reg de cuatro localidades
		wire [6:0] S;												// Declara la variable de salida tipo wire de siete localidades
		
		Decodificador_Binario_Hexadecimal tbd(A,S);						// Se hace la instanciación del módulo del decodificador
		
		initial 													// Inicio
		begin
			
				A = 4'b0000;										// Numero 0
				#100;													//	 RETARDOS
				A = 4'b0001;										// Numero 1
				#100;
				A = 4'b0010;										// Numero 2
				#100;
				A = 4'b0011;										// Numero 3
				#100;
				A = 4'b0100; 										// Numero 4
				#100;
				A = 4'b0101;										// Numero 5
				#100;
				A = 4'b0110;										// Numero 6
				#100;
				A = 4'b0111;										// Numero 7
				#100;
				A = 4'b1000;										// Numero 8
				#100;
				A = 4'b1001;										// Numero 9
				#100;
				A = 4'b1010;										// Letra A
				#100;	
				A = 4'b1011;										// Letra B
				#100;
				A = 4'b1100;										// Letra C
				#100;
				A = 4'b1101;										// Letra D
				#100;
				A = 4'b1110;										// Letra E
				#100;
				A = 4'b1111;										// Letra F
				
end																	// Fin

endmodule 															// Fin del módulo
 
 