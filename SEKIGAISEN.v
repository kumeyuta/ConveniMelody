`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:17 11/12/2015 
// Design Name: 
// Module Name:    SEKIGAISEN 
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
module SEKIGAISEN(
	 input ir0,
    input clk,
	 //output ld0
	 output speaker
    );
	 
	 reg[1:0] counter;
	 reg[31:0] musiccon;
	 
	 
	 always @(posedge clk)
	 begin
	     if(ir0)
		     counter <= 1;
		  else
		     counter <= 0;
	 end
	 
	 always @(posedge clk)
	 begin
	     if(musiccon == 32'd203252)
		     musiccon <= 32'd0;
		  else
		     musiccon <= musiccon + 1;
	 end
	 
	 assign speaker = counter && (musiccon < 101626);
	 //assign ld0 = counter

endmodule
