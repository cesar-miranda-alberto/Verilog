/*
				***** COMPUERTAS LÓGICAS *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de las compuertas lógicas
		a través de este lenguaje HDL-
		Fecha: 19-Marzo-2023
		Versión: 1.0
*/

module Compuertas_Logicas(
	input A,
	input B,
	output Snot,
	output Sand,
	output Sor,
	output Sxor,
	output Sxnor,
	output Snand
	);
	
	not (Snot,A);
	
	and (Sand,A,B);
	
	or (Sor,A,B);
	
	xor (Sxor,A,B);
	
	xnor (Sxnor,A,B);
	
	nand (Snand,A,B);
	
endmodule 
