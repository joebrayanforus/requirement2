`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 22:46:44
// Design Name: 
// Module Name: bin2seg
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


module bin2seg(
    input  [3:0] sw,
    output reg [7:0] seg_cat,
    output [3:0] seg_an
);

assign seg_an = 4'b1110;

always @(sw) begin
    case (sw)
        4'h0: seg_cat = 8'b11000000; // 0
        4'h1: seg_cat = 8'b11111001; // 1
        4'h2: seg_cat = 8'b10100100; // 2
        4'h3: seg_cat = 8'b10110000; // 3
        4'h4: seg_cat = 8'b10011001; // 4
        4'h5: seg_cat = 8'b10010010; // 5
        4'h6: seg_cat = 8'b10000010; // 6
        4'h7: seg_cat = 8'b11111000; // 7
        4'h8: seg_cat = 8'b10000000; // 8
        4'h9: seg_cat = 8'b10010000; // 9

        
        4'hA: seg_cat = 8'b10001000; // A
        4'hB: seg_cat = 8'b10000011; // b
        4'hC: seg_cat = 8'b11000110; // C
        4'hD: seg_cat = 8'b10100001; // d
        4'hE: seg_cat = 8'b10000110; // E
        4'hF: seg_cat = 8'b10001110; // F

        default: seg_cat = 8'b11111111; // off
    endcase
end

endmodule
