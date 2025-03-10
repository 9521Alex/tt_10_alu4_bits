// Modulo ALU de 4 bits

module alu_4bits (
    input  [3:0] A,          // Operando A de 4 bits
    input  [3:0] B,          // Operando B de 4 bits
    input  [2:0] sel,        // Selector de operacion
    output reg [7:0] result, // Resultado de la operacion
    output reg carry,        // Indicador de carry/borrow en suma/resta
    output reg zero          // Bandera que indica resultado cero
);

always @(*) begin
    carry = 0; // Inicializa carry
    case (sel)
        3'b000: begin
            // Operacion de suma
            {carry, result} = A + B;
        end
        3'b001: begin
            // Operacion de resta
            {carry, result} = A - B;
        end
        3'b010: begin
            // Operacion AND
            result = A & B;
        end
        3'b011: begin
            // Operacion OR
            result = A | B;
        end		
        3'b100: begin
            // Operacion XOR
            result = A ^ B;
        end
	3'b101: begin
            // Operacion multiplicacion
            result = A * B;
        end
	3'b110: begin
            // Operacion division
            result = A / B;
        end
        default: result = 8'b00000000;
    endcase
    // Se activa la bandera zero si el resultado es 0
	zero = (result == 8'b00000000) ? 1'b1 : 1'b0;
end

endmodule
