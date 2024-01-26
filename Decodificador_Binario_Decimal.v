module Decodificador_Binario_Decimal(A,S);	

		
	input [3:0]A;
	output reg [6:0]S;		
												// Declaración de variable de salida de siete bits

	always @(A)
	begin
	
	case (A)																// Inicio del case con respecto a la entrada A
		4'b0000 :  S =7'b0000001; 								// Numero 0
		4'b0001 :  S =7'b1001111; 								// Numero 1
		4'b0010 :  S =7'b0010010; 								// Numero 2
		4'b0011 :  S =7'b0000110; 								// Numero 3
		4'b0100 :  S =7'b1001100; 								// Numero 4
		4'b0101 :  S =7'b0100100; 								// Numero 5
		4'b0110 :  S =7'b0100000; 								// Numero 6
		4'b0111 :  S =7'b0001111; 								// Numero 7
		4'b1000 :  S =7'b0000000;  								// Numero 8
		4'b1001 :  S =7'b0000100;  								// Numero 9
		default :  S =7'b0000001; 								// Salida por default
		
	endcase																// Fin de los casos
  
  end

endmodule	