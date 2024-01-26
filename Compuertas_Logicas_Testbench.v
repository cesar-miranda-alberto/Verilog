/*
				***** COMPUERTAS LÓGICAS *****
				
		El presente código desarrollado en verilog tiene como finalidad la implementación de las compuertas lógicas
		a través de este lenguaje HDL-
		Fecha: 19-Marzo-2023
		Versión: 1.0
*/

`timescale 1ns/100ps

module Compuertas_Logicas_Testbench();

	reg A,B;
	wire Snot,Sand,Sor,Sxor,Sxnor,Snand;
	
	Compuertas_Logicas tbcl(A,B,Snot,Sand,Sor,Sxor,Sxnor,Snand);
	
	initial 
	begin
	
	          A = 1'b0; B = 1'b0;
       #100    A = 1'b0; B = 1'b1;
       #100    A = 1'b1; B = 1'b0;
       #100    A = 1'b1; B = 1'b1;

end

endmodule
	   