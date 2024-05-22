/*
				***** TESTBENCH DECODIFICADOR BINARIO HEXADECIMAL *****
				
		El presente código implementa el desarrollo de un testbench para analizar el funcionamiento
		de un decodificador binario a decimal cuyos valores serán exhibidos en un display 7 segmentos
		de cátodo común a través de un FPGA de manera física, se hace esta mención ya que al momento 
		de relizar el testbench los valores mostrados no serán los valores en hexadecimal sino que serán
		los valores necesarios para poder formar el número en el display 7 segmentos.
		
		Fecha: 21-Marzo-2023
		Versión: 1.0
		
 */
 
`timescale 1ns/100ps													// Establece la escala de tiempo
 
 module Decodificador_Binario_Decimal_Testbench();									// Crea el módulo del testbench
		reg [3:0] A;												// Declara la variable de entrada tipo reg de cuatro localidades
		wire [6:0] S;												// Declara la variable de salida tipo wire de siete localidades
		
	 Decodificador_Binario_Hexadecimal tbd(.A(A), .S(S));								// Se hace la instanciación del módulo del decodificador
		
		initial 												// Inicio
		begin
			
				A = 4'b0000;										// Valor en el selector
				#100;										        // RETARDOS
				A = 4'b0001;										
				#100;
				A = 4'b0010;										
				#100;
				A = 4'b0011;										
				#100;
				A = 4'b0100; 										
				#100;
				A = 4'b0101;										
				#100;
				A = 4'b0110;										
				#100;
				A = 4'b0111;										
				#100;
				A = 4'b1000;										
				#100;
				A = 4'b1001;										
				#100;
				A = 4'b1010;										
				#100;	
				A = 4'b1011;										
				#100;
				A = 4'b1100;										
				#100;
				A = 4'b1101;										
				#100;
				A = 4'b1110;										
				#100;
				A = 4'b1111;										
				
end															// Fin

endmodule 														// Fin del módulo
 
 
