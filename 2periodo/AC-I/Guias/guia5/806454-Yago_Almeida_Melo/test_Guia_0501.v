/*
	test_Guia_0501.v
	806454 - Yago Almeida MELO
*/

module test_Guia_0501;

reg a, b;
wire out;

Guia_0501 uut (
    .a(a),
    .b(b),
    .out(out)
);

initial begin
    	// Teste 1: a = 0, b = 0
    	a = 0;
    	b = 0;
    	#10;
    	if (out !== 1'b1) $display("Teste 1 falhou");

    	// Teste 2: a = 0, b = 1
    	a = 0;
    	b = 1;
   	 #10;
    	if (out !== 1'b1) $display("Teste 2 falhou");

    	// Teste 3: a = 1, b = 0
    	a = 1;
    	b = 0;
    	#10;
    	if (out !== 1'b1) $display("Teste 3 falhou");
	
    	// Teste 4: a = 1, b = 1
    	a = 1;
    	b = 1;
    	#10;
    	if (out !== 1'b0) $display("Teste 4 falhou");

    		$finish;
	end

endmodule

