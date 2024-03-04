`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2021 06:40:11 PM
// Design Name: 
// Module Name: top_demo
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


module top_demo
(
  // input
  input  logic [7:0] sw,
  input  logic [3:0] btn,
  input  logic       sysclk_125mhz,
  input  logic       rst,
  // output  
  output logic [7:0] led,
  output logic sseg_ca,
  output logic sseg_cb,
  output logic sseg_cc,
  output logic sseg_cd,
  output logic sseg_ce,
  output logic sseg_cf,
  output logic sseg_cg,
  output logic sseg_dp,
  output logic [3:0] sseg_an
);

  logic [16:0] CURRENT_COUNT;
  logic [16:0] NEXT_COUNT;
  logic        smol_clk;
  logic [63:0] key;
  logic [63:0] ptxt;
  logic [63:0] ctxt;
  logic        encrypt;

  logic [3:0]        sseg1,sseg2,sseg3,sseg4;

  //Which Key??
  assign key = 64'h5d98a83beaecfe45 ; 
  assign ptxt = sw[7] ? 64'hF3A7B8D921C4E50F : 64'hCCFE44FAD9C2C97C;
  assign encrypt = sw[6] ? 1'b0 : 1'b1;
  // Place TicTacToe instantiation here
  DES dut(.key(key), .plaintext(ptxt),.encrypt(encrypt), .ciphertext(ctxt));
  
  assign led[0] = key[7]^key[15]^key[23]^key[31]^key[39]^key[47]^key[55]^key[63];

  
  //Switch case for the 7-seg display
  always @(*) begin
    case(sw[3:0])

      //Plain text
      4'b0000 : {sseg1,sseg2,sseg3,sseg4} = {ptxt[3:0],ptxt[7:4],ptxt[11:8],ptxt[15:12]}; 
      4'b0001 : {sseg1,sseg2,sseg3,sseg4} = {ptxt[19:16],ptxt[23:20],ptxt[27:24],ptxt[31:28]};
      4'b0010 : {sseg1,sseg2,sseg3,sseg4} = {ptxt[35:32],ptxt[39:36],ptxt[43:40],ptxt[47:44]};
      4'b0011 : {sseg1,sseg2,sseg3,sseg4} = {ptxt[51:48],ptxt[55:52],ptxt[59:56],ptxt[63:60]};

      //Key 
      4'b0100 : {sseg1,sseg2,sseg3,sseg4} = {key[3:0],key[7:4],key[11:8],key[15:12]};     
      4'b0101 : {sseg1,sseg2,sseg3,sseg4} = {key[19:16],key[23:20],key[27:24],key[31:28]};
      4'b0110 : {sseg1,sseg2,sseg3,sseg4} = {key[35:32],key[39:36],key[43:40],key[47:44]};
      4'b0111 : {sseg1,sseg2,sseg3,sseg4} = {key[51:48],key[55:52],key[59:56],key[63:60]};

      //Cipher text
      4'b1100 : {sseg1,sseg2,sseg3,sseg4} =   {ctxt[3:0],ctxt[7:4],ctxt[11:8],ctxt[15:12]};     
      4'b1101 : {sseg1,sseg2,sseg3,sseg4} =   {ctxt[19:16],ctxt[23:20],ctxt[27:24],ctxt[31:28]};
      4'b1110 : {sseg1,sseg2,sseg3,sseg4} =   {ctxt[35:32],ctxt[39:36],ctxt[43:40],ctxt[47:44]};
      4'b1111 : {sseg1,sseg2,sseg3,sseg4} =   {ctxt[51:48],ctxt[55:52],ctxt[59:56],ctxt[63:60]};
                                           
    endcase
  end
  
 

  // 7-segment display  
  segment_driver driver(
  
 
  .clk(smol_clk),
  .rst(btn[3]),
  .digit0(sseg1),
  .digit1(sseg2),
  .digit2(sseg3),
  .digit3(sseg4),
  .decimals({1'b0, btn[2:0]}),
  .segment_cathodes({sseg_dp, sseg_cg, sseg_cf, sseg_ce, sseg_cd, sseg_cc, sseg_cb, sseg_ca}),
  .digit_anodes(sseg_an)
  );

// Register logic storing clock counts
  always@(posedge sysclk_125mhz)
  begin
    if(btn[3])
      CURRENT_COUNT = 17'h00000;
    else
      CURRENT_COUNT = NEXT_COUNT;
  end
  
  // Increment logic
  assign NEXT_COUNT = CURRENT_COUNT == 17'd100000 ? 17'h00000 : CURRENT_COUNT + 1;

  // Creation of smaller clock signal from counters
  assign smol_clk = CURRENT_COUNT == 17'd100000 ? 1'b1 : 1'b0;

endmodule
