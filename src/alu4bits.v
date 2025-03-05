// Modulo ALU de 4 bits

module alu4bits (
    input  [3:0] A,          // Operando A de 4 bits
    input  [3:0] B,          // Operando B de 4 bits
    input  [2:0] sel,        // Selector de operacion
    output reg [3:0] result, // Resultado de la operacion
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
		
        default: result = 4'b0000;
    endcase
    // Se activa la bandera zero si el resultado es 0
    zero = (result == 4'b0000) ? 1'b1 : 1'b0;
end

endmodule