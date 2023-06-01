`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2023 23:08:02
// Design Name: 
// Module Name: Full_Subtractor_Using_HS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Subtractor_Using_HS(
input a,
input b,
input cin,
output diff,
output borrow
);
wire d1,b2,b3;
HS h0(.a(a),.b(b),.diff(d1),.borrow(b2));
HS h1(.a(d1),.b(cin),.diff(diff),.borrow(b3));
assign borrow = b2|b3;
endmodule

module HS(
input a,
input b,
output diff,
output borrow
);
xor x1(diff,a,b);
and a1(borrow,(~a),b);
endmodule
