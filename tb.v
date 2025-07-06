`timescale 1ns/1ps

module tb();

reg [3:0] num1;
reg [3:0] num2;
wire [3:0] out;
wire cout;

add u0 (
    .num1 (num1),
    .num2 (num2),
    .out  (out),
    .cout (cout)
);

integer i, j;

initial begin
    $display("num 1 num 2 | cout out | esperado");
    for(i=0; i<16; i=i+1) begin
        for (j=0; j<16; j=j+1) begin
            num1 = i;
            num2 = j;
            #1;
            $display("%4b %4b | %b   %4b   | %5b", num1, num2, cout, out, num1 + num2);
        end
    end
    $finish;
end

endmodule
