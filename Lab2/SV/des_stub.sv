/*
 Data Encryption Standard (S-DES)
 64-bit 16-round block cipher encryption and decryption algorithm 
 using 56-bit key (64-bit key with Parity).
 */

module GenerateKeys (Key, SubKey1, SubKey2, SubKey3, SubKey4,
		     SubKey5, SubKey6, SubKey7, SubKey8,
		     SubKey9, SubKey10, SubKey11, SubKey12,
		     SubKey13, SubKey14, SubKey15, SubKey16);
   
   // Generate SubKeys
   input logic [63:0]  Key;
   output logic [47:0] SubKey1;
   output logic [47:0] SubKey2;
   output logic [47:0] SubKey3;
   output logic [47:0] SubKey4;
   output logic [47:0] SubKey5;
   output logic [47:0] SubKey6;
   output logic [47:0] SubKey7;
   output logic [47:0] SubKey8;
   output logic [47:0] SubKey9;
   output logic [47:0] SubKey10;
   output logic [47:0] SubKey11;
   output logic [47:0] SubKey12;
   output logic [47:0] SubKey13;
   output logic [47:0] SubKey14;
   output logic [47:0] SubKey15;
   output logic [47:0] SubKey16;


	//PC1 instantiation 1
	//////////////
	logic [27:0]left_block1,right_block1;
	logic [27:0]left_block_shift1,right_block_shift1;

	PC1 pc_1(Key,left_block1,right_block1);

	assign left_block_shift1 = {left_block1[26:0],left_block1[27]};
	assign right_block_shift1 = {right_block1[26:0],right_block1[27]};

	
	PC2 pc1(left_block_shift1,right_block_shift1,SubKey1);
	//////////////
	//PC1 instantiation 2
	//////////////
	
	logic [27:0]left_block_shift2,right_block_shift2;

	assign left_block_shift2 = {left_block_shift1[26:0],left_block_shift1[27]};
	assign right_block_shift2 = {right_block_shift1[26:0],right_block_shift1[27]};


	
	PC2 pc2(left_block_shift2,right_block_shift2,SubKey2);
	//////////////
	//PC1 instantiation 3
	//////////////
	
	logic [27:0]left_block_shift3,right_block_shift3;

	assign left_block_shift3 = {left_block_shift2[25:0],left_block_shift2[27:26]};
	assign right_block_shift3 = {right_block_shift2[25:0],right_block_shift2[27:26]};

	
	PC2 pc3(left_block_shift3,right_block_shift3,SubKey3);
	//////////////
	//PC1 instantiation 4
	//////////////
	
	logic [27:0]left_block_shift4,right_block_shift4;

	assign left_block_shift4 = {left_block_shift3[25:0],left_block_shift3[27:26]};
	assign right_block_shift4 = {right_block_shift3[25:0],right_block_shift3[27:26]};

	
	PC2 pc4(left_block_shift4,right_block_shift4,SubKey4);
	//////////////
	//PC1 instantiation 5
	//////////////
	
	logic [27:0]left_block_shift5,right_block_shift5;

	assign left_block_shift5 = {left_block_shift4[25:0],left_block_shift4[27:26]};
	assign right_block_shift5 = {right_block_shift4[25:0],right_block_shift4[27:26]};

	
	PC2 pc5(left_block_shift5,right_block_shift5,SubKey5);
	//////////////
	//PC1 instantiation 6
	//////////////
	
	logic [27:0]left_block_shift6,right_block_shift6;

	assign left_block_shift6 = {left_block_shift5[25:0],left_block_shift5[27:26]};
	assign right_block_shift6 = {right_block_shift5[25:0],right_block_shift5[27:26]};

	
	PC2 pc6(left_block_shift6,right_block_shift6,SubKey6);
	//////////////
	//PC1 instantiation 7
	//////////////
	
	logic [27:0]left_block_shift7,right_block_shift7;

	assign left_block_shift7 = {left_block_shift6[25:0],left_block_shift6[27:26]};
	assign right_block_shift7 = {right_block_shift6[25:0],right_block_shift6[27:26]};

	
	PC2 pc7(left_block_shift7,right_block_shift7,SubKey7);
	//////////////
	//PC1 instantiation 8
	//////////////
	
	logic [27:0]left_block_shift8,right_block_shift8;

	assign left_block_shift8 = {left_block_shift7[25:0],left_block_shift7[27:26]};
	assign right_block_shift8 = {right_block_shift7[25:0],right_block_shift7[27:26]};

	
	PC2 pc8(left_block_shift8,right_block_shift8,SubKey8);
	//////////////
	//PC1 instantiation 9
	//////////////

	logic [27:0]left_block_shift9,right_block_shift9;

	assign left_block_shift9 = {left_block_shift8[26:0],left_block_shift8[27]};
	assign right_block_shift9 = {right_block_shift8[26:0],right_block_shift8[27]};

	PC2 pc9(left_block_shift9,right_block_shift9,SubKey9);
	//////////////
	//PC1 instantiation 10
	//////////////
	
	logic [27:0]left_block_shift10,right_block_shift10;

	assign left_block_shift10 = {left_block_shift9[25:0],left_block_shift9[27:26]};
	assign right_block_shift10 = {right_block_shift9[25:0],right_block_shift9[27:26]};

	
	PC2 pc10(left_block_shift10,right_block_shift10,SubKey10);
	//////////////
	//PC1 instantiation 11
	//////////////
	
	logic [27:0]left_block_shift11,right_block_shift11;

	assign left_block_shift11 = {left_block_shift10[25:0],left_block_shift10[27:26]};
	assign right_block_shift11 = {right_block_shift10[25:0],right_block_shift10[27:26]};

	PC2 pc11(left_block_shift11,right_block_shift11,SubKey11);
	//////////////
	//PC1 instantiation 12
	//////////////

	logic [27:0]left_block_shift12,right_block_shift12;

	assign left_block_shift12 = {left_block_shift11[25:0],left_block_shift11[27:26]};
	assign right_block_shift12 = {right_block_shift11[25:0],right_block_shift11[27:26]};

	PC2 pc12(left_block_shift12,right_block_shift12,SubKey12);
	//////////////
	//PC1 instantiation 13
	//////////////
	
	logic [27:0]left_block_shift13,right_block_shift13;

	assign left_block_shift13 = {left_block_shift12[25:0],left_block_shift12[27:26]};
	assign right_block_shift13 = {right_block_shift12[25:0],right_block_shift12[27:26]};

	
	PC2 pc13(left_block_shift13,right_block_shift13,SubKey13);
	//////////////
	//PC1 instantiation 14
	//////////////
	
	logic [27:0]left_block_shift14,right_block_shift14;

	assign left_block_shift14 = {left_block_shift13[25:0],left_block_shift13[27:26]};
	assign right_block_shift14 = {right_block_shift13[25:0],right_block_shift13[27:26]};

	
	PC2 pc14(left_block_shift14,right_block_shift14,SubKey14);
	//////////////
	//PC1 instantiation 15
	//////////////
	
	logic [27:0]left_block_shift15,right_block_shift15;

	assign left_block_shift15 = {left_block_shift14[25:0],left_block_shift14[27:26]};
	assign right_block_shift15 = {right_block_shift14[25:0],right_block_shift14[27:26]};

	
	PC2 pc15(left_block_shift15,right_block_shift15,SubKey15);
	//////////////
	//PC1 instantiation 16
	//////////////
	
	logic [27:0]left_block_shift16,right_block_shift16;

	assign left_block_shift16 = {left_block_shift15[26:0],left_block_shift15[27]};
	assign right_block_shift16 = {right_block_shift15[26:0],right_block_shift15[27]};

	
	PC2 pc16(left_block_shift16,right_block_shift16,SubKey16);
	//////////////

endmodule // GenerateKeys

module PC1 (key, left_block, right_block);
   input logic [63:0]  key;
   output logic [27:0] left_block;
   output logic [27:0] right_block;

	//left block
	//row 1
	assign left_block[27] = key[63-57];
	assign left_block[26] = key[63-49];
	assign left_block[25] = key[63-41];
	assign left_block[24] = key[63-33];
	assign left_block[23] = key[63-25];
	assign left_block[22] = key[63-17];
	assign left_block[21] = key[63-9];
	//row 2
	assign left_block[20] = key[63-1];
	assign left_block[19] = key[63-58];
	assign left_block[18] = key[63-50];
	assign left_block[17] = key[63-42];
	assign left_block[16] = key[63-34];
	assign left_block[15] = key[63-26];
	assign left_block[14] = key[63-18];
	//row 3
	assign left_block[13] = key[63-10];
	assign left_block[12] = key[63-2];
	assign left_block[11] = key[63-59];
	assign left_block[10] = key[63-51];
	assign left_block[9] = key[63-43];
	assign left_block[8] = key[63-35];
	assign left_block[7] = key[63-27];
	//row 4
	assign left_block[6] = key[63-19];
	assign left_block[5] = key[63-1];
	assign left_block[4] = key[63-3];
	assign left_block[3] = key[63-60];
	assign left_block[2] = key[63-52];
	assign left_block[1] = key[63-44];
	assign left_block[0] = key[63-36];

	//right block
		//row 1
		assign right_block[27] = key[63-63];
		assign right_block[26] = key[63-55];
		assign right_block[25] = key[63-47];
		assign right_block[24] = key[63-39];
		assign right_block[23] = key[63-31];
		assign right_block[22] = key[63-23];
		assign right_block[21] = key[63-15];
		//row 2
		assign right_block[20] = key[63-7];
		assign right_block[19] = key[63-62];
		assign right_block[18] = key[63-54];
		assign right_block[17] = key[63-46];
		assign right_block[16] = key[63-38];
		assign right_block[15] = key[63-30];
		assign right_block[14] = key[63-22];
		//row 3
		assign right_block[13] = key[63-14];
		assign right_block[12] = key[63-6];
		assign right_block[11] = key[63-61];
		assign right_block[10] = key[63-53];
		assign right_block[9] = key[63-45];
		assign right_block[8] = key[63-37];
		assign right_block[7] = key[63-29];
		//row 4
		assign right_block[6] = key[63-21];
		assign right_block[5] = key[63-13];
		assign right_block[4] = key[63-5];
		assign right_block[3] = key[63-28];
		assign right_block[2] = key[63-20];
		assign right_block[1] = key[63-12];
		assign right_block[0] = key[63-4];


   logic [55:0]        out_block;

endmodule // PC1

module PC2 (left_block, right_block, subkey);
	input logic [27:0] left_block;
	input logic [27:0] right_block;
	output logic [47:0] subkey;
	logic [47:0] combined;

	assign combined = {left_block[27:0], right_block[27:0]};

	//Row 
	assign subkey[47] = combined[48-14];
	assign subkey[46] = combined[48-17];
	assign subkey[45] = combined[48-11];
	assign subkey[44] = combined[48-24];
	assign subkey[43] = combined[48-1];
	assign subkey[42] = combined[48-5];
	assign subkey[41] = combined[48-3];
	assign subkey[40] = combined[48-28];

	//Row 2
	assign subkey[39] = combined[48-15];
	assign subkey[38] = combined[48-6];
	assign subkey[37] = combined[48-21];
	assign subkey[36] = combined[48-10];
	assign subkey[35] = combined[48-23];
	assign subkey[34] = combined[48-19];
	assign subkey[33] = combined[48-12];
	assign subkey[32] = combined[48-4];

	// Row 3
	assign subkey[31] = combined[48-26];
	assign subkey[30] = combined[48-8];
	assign subkey[29] = combined[48-16];
	assign subkey[28] = combined[48-7];
	assign subkey[27] = combined[48-27];
	assign subkey[26] = combined[48-20];
	assign subkey[25] = combined[48-13];
	assign subkey[24] = combined[48-2];

	//Row 4
	assign subkey[23] = combined[48-41];
	assign subkey[22] = combined[48-52];
	assign subkey[21] = combined[48-31];
	assign subkey[20] = combined[48-37];
	assign subkey[19] = combined[48-47];
	assign subkey[18] = combined[48-55];
	assign subkey[17] = combined[48-30];
	assign subkey[16] = combined[48-40];

	//Row 5
	assign subkey[15] = combined[48-51];
	assign subkey[14] = combined[48-45];
	assign subkey[13] = combined[48-33];
	assign subkey[12] = combined[48-48];
	assign subkey[11] = combined[48-44];
	assign subkey[10] = combined[48-49];
	assign subkey[9] = 	combined[48-39];
	assign subkey[8] = 	combined[48-56];

	//Row 6
	assign subkey[7] = 	combined[48-34];
	assign subkey[6] = 	combined[48-53];
	assign subkey[5] = 	combined[48-46];
	assign subkey[4] = 	combined[48-42];
	assign subkey[3] = 	combined[48-50];
	assign subkey[2] = 	combined[48-36];
	assign subkey[1] = 	combined[48-29];
	assign subkey[0] = 	combined[48-32];


endmodule // PC2

// Straight Function
module SF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [31:0] out_block;

	//first row
		assign out_block[31] = inp_block[32-16];
		assign out_block[30] = inp_block[32-7];
		assign out_block[29] = inp_block[32-20];
		assign out_block[28] = inp_block[32-21];
		assign out_block[27] = inp_block[32-29];
		assign out_block[26] = inp_block[32-12];
		assign out_block[25] = inp_block[32-28];
		assign out_block[24] = inp_block[32-17];
	//second row
		assign out_block[23] = inp_block[32-1];
		assign out_block[22] = inp_block[32-15];
		assign out_block[21] = inp_block[32-23];
		assign out_block[20] = inp_block[32-26];
		assign out_block[19] = inp_block[32-5];
		assign out_block[18] = inp_block[32-18];
		assign out_block[17] = inp_block[32-31];
		assign out_block[16] = inp_block[32-10];
	//third row
		assign out_block[15] = inp_block[32-2];
		assign out_block[14] = inp_block[32-8];
		assign out_block[13] = inp_block[32-24];
		assign out_block[12] = inp_block[32-14];
		assign out_block[11] = inp_block[32-32];
		assign out_block[10] = inp_block[32-27];
		assign out_block[9] = inp_block[32-3];
		assign out_block[8] = inp_block[32-9];
	//fourth row
		assign out_block[7] = inp_block[32-19];
		assign out_block[6] = inp_block[32-13];
		assign out_block[5] = inp_block[32-30];
		assign out_block[4] = inp_block[32-6];
		assign out_block[3] = inp_block[32-22];
		assign out_block[2] = inp_block[32-11];
		assign out_block[1] = inp_block[32-4];
		assign out_block[0] = inp_block[32-25];

endmodule // SF

// Expansion Function
module EF (inp_block, out_block);
   input logic [31:0] inp_block;
   output logic [47:0] out_block;
	//first row
	assign out_block[47]= inp_block[32-32];
	assign out_block[46]= inp_block[32-1];
	assign out_block[45]= inp_block[32-2];
	assign out_block[44]= inp_block[32-3];
	assign out_block[43]= inp_block[32-4];
	assign out_block[42]= inp_block[32-5];
	//second row
	assign out_block[41]= inp_block[32-4];
	assign out_block[40]= inp_block[32-5];
	assign out_block[39]= inp_block[32-6];
	assign out_block[38]= inp_block[32-7];
	assign out_block[37]= inp_block[32-8];
	assign out_block[36]= inp_block[32-9];
	//third row
	assign out_block[35]= inp_block[32-8];
	assign out_block[34]= inp_block[32-9];
	assign out_block[33]= inp_block[32-10];
	assign out_block[32]= inp_block[32-11];
	assign out_block[31]= inp_block[32-12];
	assign out_block[30]= inp_block[32-13];
	//fourth row
	assign out_block[29]= inp_block[32-12];
	assign out_block[28]= inp_block[32-13];
	assign out_block[27]= inp_block[32-14];
	assign out_block[26]= inp_block[32-15];
	assign out_block[25]= inp_block[32-16];
	assign out_block[24]= inp_block[32-17];
	//fifth row
	assign out_block[23]= inp_block[32-16];
	assign out_block[22]= inp_block[32-17];
	assign out_block[21]= inp_block[32-18];
	assign out_block[20]= inp_block[32-19];
	assign out_block[19]= inp_block[32-20];
	assign out_block[18]= inp_block[32-21];
	//sixth row
	assign out_block[17]= inp_block[32-20];
	assign out_block[16]= inp_block[32-21];
	assign out_block[15]= inp_block[32-22];
	assign out_block[14]= inp_block[32-23];
	assign out_block[13]= inp_block[32-24];
	assign out_block[12]= inp_block[32-25];
	//seventh row
	assign out_block[11]= inp_block[32-24];
	assign out_block[10]= inp_block[32-25];
	assign out_block[9]= inp_block[32-26];
	assign out_block[8]= inp_block[32-27];
	assign out_block[7]= inp_block[32-28];
	assign out_block[6]= inp_block[32-29];
	//eighth row
		assign out_block[5]= inp_block[32-28];
		assign out_block[4]= inp_block[32-29];
		assign out_block[3]= inp_block[32-30];
		assign out_block[2]= inp_block[32-31];
		assign out_block[1]= inp_block[32-32];
		assign out_block[0]= inp_block[32-1];
		

endmodule // EF

module feistel (inp_block, subkey, out_block);
   input logic [31:0]  inp_block;
   input logic [47:0]  subkey;
   output logic [31:0] out_block;

	logic[31:0] out;
   logic [47:0]  outblock;
   logic [47:0] EFblock;

   EF ef1(inp_block,EFblock);
   assign outblock=EFblock^subkey;
	

	S1_Box s1(outblock[5:0],out[3:0]);
	S2_Box s2(outblock[11:6],out[7:4]);
	S3_Box s3(outblock[17:12],out[11:8]);
	S4_Box s4(outblock[23:18],out[15:12]);
	S5_Box s5(outblock[29:24],out[19:16]);
	S6_Box s6(outblock[35:30],out[23:20]);
	S7_Box s7(outblock[41:36],out[27:24]);
	S8_Box s8(outblock[47:42],out[31:28]);

	SF sf(out,out_block);

endmodule // Feistel

// DES block round
module round (inp_block, subkey, out_block);

	//splitting the inp_block
	logic [31:0] right_blockI;	//right_block initial to store the inital value before it is modified thorugh the feistel so we can properly swap with left_block
	logic [31:0] right_blockFeistel;//right_block final that will be the one that is brought thorugh the festel and conancated with out_block at the end
	logic [31:0] right_blockF;
	logic [31:0] left_blockI;
	logic [31:0] left_blockF;	//left_block that will be swapped with righ_blockI and conecatged with right_blockF into out_block
	input logic [63:0]  inp_block;
	input logic [47:0]  subkey;
	output logic [63:0] out_block;

	assign right_blockI = inp_block[31:0];
	assign left_blockI=inp_block[63:32];

	feistel f1(right_blockI, subkey, right_blockFeistel);

	assign right_blockF = right_blockFeistel ^ left_blockI;
	assign left_blockF = right_blockI;

	assign out_block = {left_blockF, right_blockF};

endmodule // round1

// Initial Permutation
module IP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-58];
   assign out_block[62] = inp_block[64-50];
   assign out_block[61] = inp_block[64-42];
   assign out_block[60] = inp_block[64-34];
   assign out_block[59] = inp_block[64-26];
   assign out_block[58] = inp_block[64-18];
   assign out_block[57] = inp_block[64-10];
   assign out_block[56] = inp_block[64-2];
   assign out_block[55] = inp_block[64-60];
   assign out_block[54] = inp_block[64-52];   
   assign out_block[53] = inp_block[64-44];   
   assign out_block[52] = inp_block[64-36];
   assign out_block[51] = inp_block[64-28];
   assign out_block[50] = inp_block[64-20];
   assign out_block[49] = inp_block[64-12];
   assign out_block[48] = inp_block[64-4];
   assign out_block[47] = inp_block[64-62];
   assign out_block[46] = inp_block[64-54];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-38];   
   assign out_block[43] = inp_block[64-30];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-14];
   assign out_block[40] = inp_block[64-6];
   assign out_block[39] = inp_block[64-64];
   assign out_block[38] = inp_block[64-56];
   assign out_block[37] = inp_block[64-48];
   assign out_block[36] = inp_block[64-40];
   assign out_block[35] = inp_block[64-32];
   assign out_block[34] = inp_block[64-24];   
   assign out_block[33] = inp_block[64-16];
   assign out_block[32] = inp_block[64-8];   
   assign out_block[31] = inp_block[64-57];
   assign out_block[30] = inp_block[64-49];
   assign out_block[29] = inp_block[64-41];
   assign out_block[28] = inp_block[64-33];
   assign out_block[27] = inp_block[64-25];
   assign out_block[26] = inp_block[64-17];
   assign out_block[25] = inp_block[64-9];   
   assign out_block[24] = inp_block[64-1];   
   assign out_block[23] = inp_block[64-59];
   assign out_block[22] = inp_block[64-51];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-35];
   assign out_block[19] = inp_block[64-27];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-11];
   assign out_block[16] = inp_block[64-3];
   assign out_block[15] = inp_block[64-61];
   assign out_block[14] = inp_block[64-53];   
   assign out_block[13] = inp_block[64-45];
   assign out_block[12] = inp_block[64-37];   
   assign out_block[11] = inp_block[64-29];
   assign out_block[10] = inp_block[64-21];
   assign out_block[9] = inp_block[64-13];
   assign out_block[8] = inp_block[64-5];
   assign out_block[7] = inp_block[64-63];
   assign out_block[6] = inp_block[64-55];
   assign out_block[5] = inp_block[64-47];
   assign out_block[4] = inp_block[64-39];   
   assign out_block[3] = inp_block[64-31];
   assign out_block[2] = inp_block[64-23];    
   assign out_block[1] = inp_block[64-15];
   assign out_block[0] = inp_block[64-7];   

endmodule // IP

// Final Permutation
module FP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-40];
   assign out_block[62] = inp_block[64-8];
   assign out_block[61] = inp_block[64-48];
   assign out_block[60] = inp_block[64-16];
   assign out_block[59] = inp_block[64-56];
   assign out_block[58] = inp_block[64-24];
   assign out_block[57] = inp_block[64-64];
   assign out_block[56] = inp_block[64-32];   
   assign out_block[55] = inp_block[64-39];
   assign out_block[54] = inp_block[64-7];   
   assign out_block[53] = inp_block[64-47];   
   assign out_block[52] = inp_block[64-15];
   assign out_block[51] = inp_block[64-55];
   assign out_block[50] = inp_block[64-23];
   assign out_block[49] = inp_block[64-63];
   assign out_block[48] = inp_block[64-31];   
   assign out_block[47] = inp_block[64-38];
   assign out_block[46] = inp_block[64-6];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-14];   
   assign out_block[43] = inp_block[64-54];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-62];
   assign out_block[40] = inp_block[64-30];   
   assign out_block[39] = inp_block[64-37];
   assign out_block[38] = inp_block[64-5];
   assign out_block[37] = inp_block[64-45];
   assign out_block[36] = inp_block[64-13];
   assign out_block[35] = inp_block[64-53];
   assign out_block[34] = inp_block[64-21];   
   assign out_block[33] = inp_block[64-61];
   assign out_block[32] = inp_block[64-29];   
   assign out_block[31] = inp_block[64-36];
   assign out_block[30] = inp_block[64-4];
   assign out_block[29] = inp_block[64-44];
   assign out_block[28] = inp_block[64-12];
   assign out_block[27] = inp_block[64-52];
   assign out_block[26] = inp_block[64-20];
   assign out_block[25] = inp_block[64-60];   
   assign out_block[24] = inp_block[64-28];   
   assign out_block[23] = inp_block[64-35];
   assign out_block[22] = inp_block[64-3];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-11];
   assign out_block[19] = inp_block[64-51];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-59];
   assign out_block[16] = inp_block[64-27];   
   assign out_block[15] = inp_block[64-34];
   assign out_block[14] = inp_block[64-2];   
   assign out_block[13] = inp_block[64-42];
   assign out_block[12] = inp_block[64-10];   
   assign out_block[11] = inp_block[64-50];
   assign out_block[10] = inp_block[64-18];
   assign out_block[9] = inp_block[64-58];
   assign out_block[8] = inp_block[64-26];   
   assign out_block[7] = inp_block[64-33];
   assign out_block[6] = inp_block[64-1];
   assign out_block[5] = inp_block[64-41];   
   assign out_block[4] = inp_block[64-9];
   assign out_block[3] = inp_block[64-49];    
   assign out_block[2] = inp_block[64-17];
   assign out_block[1] = inp_block[64-57];
   assign out_block[0] = inp_block[64-25];  

endmodule // FP

module S1_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd14;             
	  6'd1  : out_bits = 4'd4;             
	  6'd2  : out_bits = 4'd13;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd2;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd10;             
	  6'd10 : out_bits = 4'd6;             
	  6'd11 : out_bits = 4'd12;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd9;             
	  6'd14 : out_bits = 4'd0;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd0;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd7;             
	  6'd19 : out_bits = 4'd4;             
	  6'd20 : out_bits = 4'd14;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd10;             
	  6'd25 : out_bits = 4'd6;             
	  6'd26 : out_bits = 4'd12;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd9;             
	  6'd29 : out_bits = 4'd5;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd1;             
	  6'd34 : out_bits = 4'd14;             
	  6'd35 : out_bits = 4'd8;             
	  6'd36 : out_bits = 4'd13;             
	  6'd37 : out_bits = 4'd6;             
	  6'd38 : out_bits = 4'd2;             
	  6'd39 : out_bits = 4'd11;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd12;             
	  6'd42 : out_bits = 4'd9;             
	  6'd43 : out_bits = 4'd7;             
	  6'd44 : out_bits = 4'd3;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd0;             
	  6'd48 : out_bits = 4'd15;             
	  6'd49 : out_bits = 4'd12;             
	  6'd50 : out_bits = 4'd8;             
	  6'd51 : out_bits = 4'd2;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd1;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd5;        
	  6'd57 : out_bits = 4'd11;        
	  6'd58 : out_bits = 4'd3;       
	  6'd59 : out_bits = 4'd14;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd13;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S1_Box

module S2_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})             
	  6'd0  : out_bits = 4'd15;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd11;             
	  6'd6  : out_bits = 4'd3;             
	  6'd7  : out_bits = 4'd4;             
	  6'd8  : out_bits = 4'd9;             
	  6'd9  : out_bits = 4'd7;             
	  6'd10 : out_bits = 4'd2;             
	  6'd11 : out_bits = 4'd13;             
	  6'd12 : out_bits = 4'd12;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd10;             
	  6'd16 : out_bits = 4'd3;             
	  6'd17 : out_bits = 4'd13;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd15;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd8;             
	  6'd23 : out_bits = 4'd14;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd1;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd6;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd11;             
	  6'd31 : out_bits = 4'd5;             
	  6'd32 : out_bits = 4'd0;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd7;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd4;             
	  6'd38 : out_bits = 4'd13;             
	  6'd39 : out_bits = 4'd1;             
	  6'd40 : out_bits = 4'd5;             
	  6'd41 : out_bits = 4'd8;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd6;             
	  6'd44 : out_bits = 4'd9;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd2;             
	  6'd47 : out_bits = 4'd15;             
	  6'd48 : out_bits = 4'd13;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd10;             
	  6'd51 : out_bits = 4'd1;             
	  6'd52 : out_bits = 4'd3;             
	  6'd53 : out_bits = 4'd15;            
	  6'd54 : out_bits = 4'd4;             
	  6'd55 : out_bits = 4'd2;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd6;        
	  6'd58 : out_bits = 4'd7;       
	  6'd59 : out_bits = 4'd12;       
	  6'd60 : out_bits = 4'd0;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd14;      
	  6'd63 : out_bits = 4'd9;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S2_Box

module S3_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd10;             
	  6'd1  : out_bits = 4'd0;             
	  6'd2  : out_bits = 4'd9;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd3;             
	  6'd6  : out_bits = 4'd15;             
	  6'd7  : out_bits = 4'd5;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd12;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd4;             
	  6'd14 : out_bits = 4'd2;             
	  6'd15 : out_bits = 4'd8;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd7;             
	  6'd18 : out_bits = 4'd0;             
	  6'd19 : out_bits = 4'd9;             
	  6'd20 : out_bits = 4'd3;             
	  6'd21 : out_bits = 4'd4;             
	  6'd22 : out_bits = 4'd6;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd2;             
	  6'd25 : out_bits = 4'd8;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd12;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd15;             
	  6'd31 : out_bits = 4'd1;             
	  6'd32 : out_bits = 4'd13;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd9;             
	  6'd36 : out_bits = 4'd8;             
	  6'd37 : out_bits = 4'd15;             
	  6'd38 : out_bits = 4'd3;             
	  6'd39 : out_bits = 4'd0;             
	  6'd40 : out_bits = 4'd11;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd2;             
	  6'd43 : out_bits = 4'd12;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd14;             
	  6'd47 : out_bits = 4'd7;             
	  6'd48 : out_bits = 4'd1;             
	  6'd49 : out_bits = 4'd10;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd0;             
	  6'd52 : out_bits = 4'd6;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd4;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd14;       
	  6'd59 : out_bits = 4'd3;       
	  6'd60 : out_bits = 4'd11;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd12;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S3_Box

module S4_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd7;             
	  6'd1  : out_bits = 4'd13;             
	  6'd2  : out_bits = 4'd14;            
	  6'd3  : out_bits = 4'd3;             
	  6'd4  : out_bits = 4'd0;             
	  6'd5  : out_bits = 4'd6;             
	  6'd6  : out_bits = 4'd9;             
	  6'd7  : out_bits = 4'd10;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd2;             
	  6'd10 : out_bits = 4'd8;             
	  6'd11 : out_bits = 4'd5;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd12;             
	  6'd14 : out_bits = 4'd4;             
	  6'd15 : out_bits = 4'd15;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd8;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd5;             
	  6'd20 : out_bits = 4'd6;             
	  6'd21 : out_bits = 4'd15;             
	  6'd22 : out_bits = 4'd0;             
	  6'd23 : out_bits = 4'd3;             
	  6'd24 : out_bits = 4'd4;             
	  6'd25 : out_bits = 4'd7;             
	  6'd26 : out_bits = 4'd2;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd1;             
	  6'd29 : out_bits = 4'd10;             
	  6'd30 : out_bits = 4'd14;             
	  6'd31 : out_bits = 4'd9;             
	  6'd32 : out_bits = 4'd10;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd9;             
	  6'd35 : out_bits = 4'd0;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd11;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd13;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd3;             
	  6'd43 : out_bits = 4'd14;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd2;             
	  6'd46 : out_bits = 4'd8;             
	  6'd47 : out_bits = 4'd4;             
	  6'd48 : out_bits = 4'd3;             
	  6'd49 : out_bits = 4'd15;             
	  6'd50 : out_bits = 4'd0;             
	  6'd51 : out_bits = 4'd6;             
	  6'd52 : out_bits = 4'd10;             
	  6'd53 : out_bits = 4'd1;            
	  6'd54 : out_bits = 4'd13;             
	  6'd55 : out_bits = 4'd8;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd4;        
	  6'd58 : out_bits = 4'd5;       
	  6'd59 : out_bits = 4'd11;       
	  6'd60 : out_bits = 4'd12;       
	  6'd61 : out_bits = 4'd7;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd14;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S4_Box

module S5_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd2;             
	  6'd1  : out_bits = 4'd12;             
	  6'd2  : out_bits = 4'd4;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd7;             
	  6'd5  : out_bits = 4'd10;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd6;             
	  6'd8  : out_bits = 4'd8;             
	  6'd9  : out_bits = 4'd5;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd15;             
	  6'd12 : out_bits = 4'd13;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd14;             
	  6'd15 : out_bits = 4'd9;             
	  6'd16 : out_bits = 4'd14;             
	  6'd17 : out_bits = 4'd11;             
	  6'd18 : out_bits = 4'd2;             
	  6'd19 : out_bits = 4'd12;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd7;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd5;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd15;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd3;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd2;             
	  6'd34 : out_bits = 4'd1;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd13;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd8;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd9;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd5;             
	  6'd44 : out_bits = 4'd6;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd0;             
	  6'd47 : out_bits = 4'd14;             
	  6'd48 : out_bits = 4'd11;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd12;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd14;            
	  6'd54 : out_bits = 4'd2;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd6;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd9;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd4;       
	  6'd62 : out_bits = 4'd5;      
	  6'd63 : out_bits = 4'd3;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S5_Box

module S6_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd12;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd10;            
	  6'd3  : out_bits = 4'd15;             
	  6'd4  : out_bits = 4'd9;             
	  6'd5  : out_bits = 4'd2;             
	  6'd6  : out_bits = 4'd6;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd0;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd4;             
	  6'd12 : out_bits = 4'd14;             
	  6'd13 : out_bits = 4'd7;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd11;             
	  6'd16 : out_bits = 4'd10;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd2;             
	  6'd20 : out_bits = 4'd7;             
	  6'd21 : out_bits = 4'd12;             
	  6'd22 : out_bits = 4'd9;             
	  6'd23 : out_bits = 4'd5;             
	  6'd24 : out_bits = 4'd6;             
	  6'd25 : out_bits = 4'd1;             
	  6'd26 : out_bits = 4'd13;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd9;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd15;             
	  6'd35 : out_bits = 4'd5;             
	  6'd36 : out_bits = 4'd2;             
	  6'd37 : out_bits = 4'd8;             
	  6'd38 : out_bits = 4'd12;             
	  6'd39 : out_bits = 4'd3;             
	  6'd40 : out_bits = 4'd7;             
	  6'd41 : out_bits = 4'd0;             
	  6'd42 : out_bits = 4'd4;             
	  6'd43 : out_bits = 4'd10;             
	  6'd44 : out_bits = 4'd1;             
	  6'd45 : out_bits = 4'd13;             
	  6'd46 : out_bits = 4'd11;             
	  6'd47 : out_bits = 4'd6;             
	  6'd48 : out_bits = 4'd4;             
	  6'd49 : out_bits = 4'd3;             
	  6'd50 : out_bits = 4'd2;             
	  6'd51 : out_bits = 4'd12;             
	  6'd52 : out_bits = 4'd9;             
	  6'd53 : out_bits = 4'd5;            
	  6'd54 : out_bits = 4'd15;             
	  6'd55 : out_bits = 4'd10;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd14;        
	  6'd58 : out_bits = 4'd1;       
	  6'd59 : out_bits = 4'd7;       
	  6'd60 : out_bits = 4'd6;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd8;      
	  6'd63 : out_bits = 4'd13;	  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S6_Box

module S7_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd4;             
	  6'd1  : out_bits = 4'd11;             
	  6'd2  : out_bits = 4'd2;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd15;             
	  6'd5  : out_bits = 4'd0;             
	  6'd6  : out_bits = 4'd8;             
	  6'd7  : out_bits = 4'd13;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd12;             
	  6'd10 : out_bits = 4'd9;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd10;             
	  6'd14 : out_bits = 4'd6;             
	  6'd15 : out_bits = 4'd1;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd0;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd9;             
	  6'd22 : out_bits = 4'd1;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd14;             
	  6'd25 : out_bits = 4'd3;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd2;             
	  6'd29 : out_bits = 4'd15;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd1;             
	  6'd33 : out_bits = 4'd4;             
	  6'd34 : out_bits = 4'd11;             
	  6'd35 : out_bits = 4'd13;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd3;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd14;             
	  6'd40 : out_bits = 4'd10;             
	  6'd41 : out_bits = 4'd15;             
	  6'd42 : out_bits = 4'd6;             
	  6'd43 : out_bits = 4'd8;             
	  6'd44 : out_bits = 4'd0;             
	  6'd45 : out_bits = 4'd5;             
	  6'd46 : out_bits = 4'd9;             
	  6'd47 : out_bits = 4'd2;             
	  6'd48 : out_bits = 4'd6;             
	  6'd49 : out_bits = 4'd11;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd8;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd4;            
	  6'd54 : out_bits = 4'd10;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd5;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd15;       
	  6'd60 : out_bits = 4'd14;       
	  6'd61 : out_bits = 4'd2;       
	  6'd62 : out_bits = 4'd3;      
	  6'd63 : out_bits = 4'd12;  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S7_Box

module S8_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd13;             
	  6'd1  : out_bits = 4'd2;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd4;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd1;             
	  6'd8  : out_bits = 4'd10;             
	  6'd9  : out_bits = 4'd9;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd14;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd12;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd1;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd13;             
	  6'd19 : out_bits = 4'd8;             
	  6'd20 : out_bits = 4'd10;             
	  6'd21 : out_bits = 4'd3;             
	  6'd22 : out_bits = 4'd7;             
	  6'd23 : out_bits = 4'd4;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd5;             
	  6'd26 : out_bits = 4'd6;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd14;             
	  6'd30 : out_bits = 4'd9;             
	  6'd31 : out_bits = 4'd2;             
	  6'd32 : out_bits = 4'd7;             
	  6'd33 : out_bits = 4'd11;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd1;             
	  6'd36 : out_bits = 4'd9;             
	  6'd37 : out_bits = 4'd12;             
	  6'd38 : out_bits = 4'd14;             
	  6'd39 : out_bits = 4'd2;             
	  6'd40 : out_bits = 4'd0;             
	  6'd41 : out_bits = 4'd6;             
	  6'd42 : out_bits = 4'd10;             
	  6'd43 : out_bits = 4'd13;             
	  6'd44 : out_bits = 4'd15;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd8;             
	  6'd48 : out_bits = 4'd2;             
	  6'd49 : out_bits = 4'd1;             
	  6'd50 : out_bits = 4'd14;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd10;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd15;        
	  6'd57 : out_bits = 4'd12;        
	  6'd58 : out_bits = 4'd9;       
	  6'd59 : out_bits = 4'd0;       
	  6'd60 : out_bits = 4'd3;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd11;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S8_Box

module DES (input logic [63:0] key, input logic [63:0] plaintext, 
	    input logic encrypt, output logic [63:0] ciphertext);

   logic [47:0] 	SubKey1, SubKey2, SubKey3, SubKey4;   
   logic [47:0] 	SubKey5, SubKey6, SubKey7, SubKey8;   
   logic [47:0] 	SubKey9, SubKey10, SubKey11, SubKey12;
   logic [47:0] 	SubKey13, SubKey14, SubKey15, SubKey16;

   logic [63:0] 	ip_out;   
   logic [63:0] 	r16_out;   

   //logic [63:0]		plaintextF;
   //logic [63:0]		IV;

   //assign plaintextF=plaintext ^ 
   
   // SubKey generation
   GenerateKeys k1 (key, SubKey1, SubKey2, SubKey3, SubKey4,
		    SubKey5, SubKey6, SubKey7, SubKey8,
		    SubKey9, SubKey10, SubKey11, SubKey12,
		    SubKey13, SubKey14, SubKey15, SubKey16);
   // encrypt (encrypt=1) or decrypt (encrypt=0) 
   assign {subKey1,subKey2,subKey3,subKey4,subKey5,subKey6,subKey7,subKey8,subKey9,subKey10,subKey11,subKey12,subKey13,subKey14,subKey15,subKey16} = encrypt ? 
   {subKey1,subKey2,subKey3,subKey4,subKey5,subKey6,subKey7,subKey8,subKey9,subKey10,subKey11,subKey12,subKey13,subKey14,subKey15,subKey16}:
   {subKey16,subKey15,subKey14,subKey13,subKey12,subKey11,subKey10,subKey9,subKey8,subKey7,subKey6,subKey5,subKey4,subKey3,subKey2,subKey1};

   // Initial Permutation (IP)
   IP b1 (plaintext, ip_out);
   // round 1
   logic [63:0] r1_out;
   round r1(ip_out, SubKey1,r1_out);
   
   // round 2
   logic [63:0] r2_out;
   round r2(r1_out, SubKey2,r2_out);
   
   // round 3
   logic [63:0] r3_out;
   round r3(r2_out, SubKey3,r3_out);
   
   // round 4
   logic [63:0] r4_out;
   round r4(r3_out, SubKey4,r4_out);
   
   // round 5
   logic [63:0] r5_out;
   round r5(r4_out, SubKey5,r5_out);
   
   // round 6
   logic [63:0] r6_out;
   round r6(r5_out, SubKey6,r6_out);
   
   // round 7
   logic [63:0] r7_out;
   round r7(r6_out, SubKey7,r7_out);
   
   // round 8
   logic [63:0] r8_out;
   round r8(r7_out, SubKey8,r8_out);
   
   // round 9
   logic [63:0] r9_out;
   round r9(r8_out, SubKey9,r9_out);
   
   // round 10
   logic [63:0] r10_out;
   round r10(r9_out, SubKey10,r10_out);
   
   // round 11
   logic [63:0] r11_out;
   round r11(r10_out, SubKey11,r11_out);
   
   // round 12
   logic [63:0] r12_out;
   round r12(r11_out, SubKey12,r12_out);
   
   // round 13
   logic [63:0] r13_out;
   round r13(r12_out, SubKey13,r13_out);
   
   // round 14
   logic [63:0] r14_out;
   round r14(r13_out, SubKey14,r14_out);
   
   // round 15
   logic [63:0] r15_out;
   round r15(r14_out, SubKey15,r15_out);
   
   // round 16
   
   round r16(r15_out, SubKey16,r16_out);

   // Final Permutation (IP^{-1}) (swap output of round16)
   FP FP({r16_out[31:0], r16_out[63:32]}, ciphertext);
   
endmodule // DES