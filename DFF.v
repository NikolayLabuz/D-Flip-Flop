`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:05 10/28/2020 
// Design Name: 
// Module Name:    DFF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps 
module trig(d,clk,q); 
input d,clk; 
output q; 
wire a,b,qinv; 
nand GATE00(a,d,clk); 
nand GATE01(b,a,clk); 
nand GATE02(q,a,qinv); 
nand GATE03(qinv,q,b); 
endmodule

