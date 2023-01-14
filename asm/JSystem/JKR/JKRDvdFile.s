.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_JKRDvdFile_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_80473608:
	.asciz "JKRDvdFile.cpp"
.balign 4
lbl_80473618:
	.asciz "cannot close DVD file\n"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__10JKRDvdFile
__vt__10JKRDvdFile:
	.4byte 0
	.4byte 0
	.4byte __dt__10JKRDvdFileFv
	.4byte open__10JKRDvdFileFPCc
	.4byte close__10JKRDvdFileFv
	.4byte readData__10JKRDvdFileFPvll
	.4byte writeData__10JKRDvdFileFPCvll
	.4byte getFileSize__10JKRDvdFileCFv
	.4byte open__10JKRDvdFileFl

.section .bss  # 0x804EFC20 - 0x8051467C
.balign 8
.lcomm lbl_804EFF40, 0xC, 4
# JKRDvdFile.cpp
.comm sDvdList__10JKRDvdFile, 0xC, 4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__10JKRDvdFileFv
__ct__10JKRDvdFileFv:
/* 8001D0B8 00019FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D0BC 00019FFC  7C 08 02 A6 */	mflr r0
/* 8001D0C0 0001A000  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D0C4 0001A004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D0C8 0001A008  93 C1 00 08 */	stw r30, 8(r1)
/* 8001D0CC 0001A00C  7C 7E 1B 78 */	mr r30, r3
/* 8001D0D0 0001A010  7F C0 F3 78 */	mr r0, r30
/* 8001D0D4 0001A014  7C 1F 03 78 */	mr r31, r0
/* 8001D0D8 0001A018  4B FF FE F5 */	bl __ct__11JKRDisposerFv
/* 8001D0DC 0001A01C  3C 80 80 4A */	lis r4, __vt__7JKRFile@ha
/* 8001D0E0 0001A020  3C 60 80 4A */	lis r3, __vt__10JKRDvdFile@ha
/* 8001D0E4 0001A024  38 04 FB A8 */	addi r0, r4, __vt__7JKRFile@l
/* 8001D0E8 0001A028  38 A0 00 00 */	li r5, 0
/* 8001D0EC 0001A02C  90 1F 00 00 */	stw r0, 0(r31)
/* 8001D0F0 0001A030  38 03 FD 68 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 8001D0F4 0001A034  7F C4 F3 78 */	mr r4, r30
/* 8001D0F8 0001A038  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 8001D0FC 0001A03C  98 BF 00 18 */	stb r5, 0x18(r31)
/* 8001D100 0001A040  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D104 0001A044  48 00 96 B5 */	bl __ct__10JSUPtrLinkFPv
/* 8001D108 0001A048  7F C3 F3 78 */	mr r3, r30
/* 8001D10C 0001A04C  48 00 02 1D */	bl initiate__10JKRDvdFileFv
/* 8001D110 0001A050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D114 0001A054  7F C3 F3 78 */	mr r3, r30
/* 8001D118 0001A058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D11C 0001A05C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001D120 0001A060  7C 08 03 A6 */	mtlr r0
/* 8001D124 0001A064  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D128 0001A068  4E 80 00 20 */	blr 

.global __ct__10JKRDvdFileFPCc
__ct__10JKRDvdFileFPCc:
/* 8001D12C 0001A06C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D130 0001A070  7C 08 02 A6 */	mflr r0
/* 8001D134 0001A074  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D138 0001A078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001D13C 0001A07C  7C 9F 23 78 */	mr r31, r4
/* 8001D140 0001A080  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001D144 0001A084  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001D148 0001A088  7C 7D 1B 78 */	mr r29, r3
/* 8001D14C 0001A08C  7F A0 EB 78 */	mr r0, r29
/* 8001D150 0001A090  7C 1E 03 78 */	mr r30, r0
/* 8001D154 0001A094  4B FF FE 79 */	bl __ct__11JKRDisposerFv
/* 8001D158 0001A098  3C 80 80 4A */	lis r4, __vt__7JKRFile@ha
/* 8001D15C 0001A09C  3C 60 80 4A */	lis r3, __vt__10JKRDvdFile@ha
/* 8001D160 0001A0A0  38 04 FB A8 */	addi r0, r4, __vt__7JKRFile@l
/* 8001D164 0001A0A4  38 A0 00 00 */	li r5, 0
/* 8001D168 0001A0A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D16C 0001A0AC  38 03 FD 68 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 8001D170 0001A0B0  7F A4 EB 78 */	mr r4, r29
/* 8001D174 0001A0B4  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 8001D178 0001A0B8  98 BE 00 18 */	stb r5, 0x18(r30)
/* 8001D17C 0001A0BC  90 1D 00 00 */	stw r0, 0(r29)
/* 8001D180 0001A0C0  48 00 96 39 */	bl __ct__10JSUPtrLinkFPv
/* 8001D184 0001A0C4  7F A3 EB 78 */	mr r3, r29
/* 8001D188 0001A0C8  48 00 01 A1 */	bl initiate__10JKRDvdFileFv
/* 8001D18C 0001A0CC  7F A3 EB 78 */	mr r3, r29
/* 8001D190 0001A0D0  7F E4 FB 78 */	mr r4, r31
/* 8001D194 0001A0D4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8001D198 0001A0D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8001D19C 0001A0DC  7D 89 03 A6 */	mtctr r12
/* 8001D1A0 0001A0E0  4E 80 04 21 */	bctrl 
/* 8001D1A4 0001A0E4  98 7D 00 18 */	stb r3, 0x18(r29)
/* 8001D1A8 0001A0E8  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8001D1AC 0001A0EC  28 00 00 00 */	cmplwi r0, 0
/* 8001D1B0 0001A0F0  41 82 00 0C */	beq .L_8001D1BC
/* 8001D1B4 0001A0F4  7F A3 EB 78 */	mr r3, r29
/* 8001D1B8 0001A0F8  48 00 00 08 */	b .L_8001D1C0
.L_8001D1BC:
/* 8001D1BC 0001A0FC  7F A3 EB 78 */	mr r3, r29
.L_8001D1C0:
/* 8001D1C0 0001A100  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D1C4 0001A104  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001D1C8 0001A108  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001D1CC 0001A10C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001D1D0 0001A110  7C 08 03 A6 */	mtlr r0
/* 8001D1D4 0001A114  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D1D8 0001A118  4E 80 00 20 */	blr 

.global __ct__10JKRDvdFileFl
__ct__10JKRDvdFileFl:
/* 8001D1DC 0001A11C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D1E0 0001A120  7C 08 02 A6 */	mflr r0
/* 8001D1E4 0001A124  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D1E8 0001A128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001D1EC 0001A12C  7C 9F 23 78 */	mr r31, r4
/* 8001D1F0 0001A130  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001D1F4 0001A134  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001D1F8 0001A138  7C 7D 1B 78 */	mr r29, r3
/* 8001D1FC 0001A13C  7F A0 EB 78 */	mr r0, r29
/* 8001D200 0001A140  7C 1E 03 78 */	mr r30, r0
/* 8001D204 0001A144  4B FF FD C9 */	bl __ct__11JKRDisposerFv
/* 8001D208 0001A148  3C 80 80 4A */	lis r4, __vt__7JKRFile@ha
/* 8001D20C 0001A14C  3C 60 80 4A */	lis r3, __vt__10JKRDvdFile@ha
/* 8001D210 0001A150  38 04 FB A8 */	addi r0, r4, __vt__7JKRFile@l
/* 8001D214 0001A154  38 A0 00 00 */	li r5, 0
/* 8001D218 0001A158  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D21C 0001A15C  38 03 FD 68 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 8001D220 0001A160  7F A4 EB 78 */	mr r4, r29
/* 8001D224 0001A164  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 8001D228 0001A168  98 BE 00 18 */	stb r5, 0x18(r30)
/* 8001D22C 0001A16C  90 1D 00 00 */	stw r0, 0(r29)
/* 8001D230 0001A170  48 00 95 89 */	bl __ct__10JSUPtrLinkFPv
/* 8001D234 0001A174  7F A3 EB 78 */	mr r3, r29
/* 8001D238 0001A178  48 00 00 F1 */	bl initiate__10JKRDvdFileFv
/* 8001D23C 0001A17C  7F A3 EB 78 */	mr r3, r29
/* 8001D240 0001A180  7F E4 FB 78 */	mr r4, r31
/* 8001D244 0001A184  81 9D 00 00 */	lwz r12, 0(r29)
/* 8001D248 0001A188  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8001D24C 0001A18C  7D 89 03 A6 */	mtctr r12
/* 8001D250 0001A190  4E 80 04 21 */	bctrl 
/* 8001D254 0001A194  98 7D 00 18 */	stb r3, 0x18(r29)
/* 8001D258 0001A198  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8001D25C 0001A19C  28 00 00 00 */	cmplwi r0, 0
/* 8001D260 0001A1A0  41 82 00 0C */	beq .L_8001D26C
/* 8001D264 0001A1A4  7F A3 EB 78 */	mr r3, r29
/* 8001D268 0001A1A8  48 00 00 08 */	b .L_8001D270
.L_8001D26C:
/* 8001D26C 0001A1AC  7F A3 EB 78 */	mr r3, r29
.L_8001D270:
/* 8001D270 0001A1B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D274 0001A1B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001D278 0001A1B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001D27C 0001A1BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001D280 0001A1C0  7C 08 03 A6 */	mtlr r0
/* 8001D284 0001A1C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D288 0001A1C8  4E 80 00 20 */	blr 

.global __dt__10JKRDvdFileFv
__dt__10JKRDvdFileFv:
/* 8001D28C 0001A1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D290 0001A1D0  7C 08 02 A6 */	mflr r0
/* 8001D294 0001A1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D298 0001A1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D29C 0001A1DC  7C 9F 23 78 */	mr r31, r4
/* 8001D2A0 0001A1E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8001D2A4 0001A1E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001D2A8 0001A1E8  41 82 00 64 */	beq .L_8001D30C
/* 8001D2AC 0001A1EC  3C 80 80 4A */	lis r4, __vt__10JKRDvdFile@ha
/* 8001D2B0 0001A1F0  38 04 FD 68 */	addi r0, r4, __vt__10JKRDvdFile@l
/* 8001D2B4 0001A1F4  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D2B8 0001A1F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8001D2BC 0001A1FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001D2C0 0001A200  7D 89 03 A6 */	mtctr r12
/* 8001D2C4 0001A204  4E 80 04 21 */	bctrl 
/* 8001D2C8 0001A208  34 1E 00 E4 */	addic. r0, r30, 0xe4
/* 8001D2CC 0001A20C  41 82 00 10 */	beq .L_8001D2DC
/* 8001D2D0 0001A210  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 8001D2D4 0001A214  38 80 00 00 */	li r4, 0
/* 8001D2D8 0001A218  48 00 94 F9 */	bl __dt__10JSUPtrLinkFv
.L_8001D2DC:
/* 8001D2DC 0001A21C  28 1E 00 00 */	cmplwi r30, 0
/* 8001D2E0 0001A220  41 82 00 1C */	beq .L_8001D2FC
/* 8001D2E4 0001A224  3C 80 80 4A */	lis r4, __vt__7JKRFile@ha
/* 8001D2E8 0001A228  7F C3 F3 78 */	mr r3, r30
/* 8001D2EC 0001A22C  38 04 FB A8 */	addi r0, r4, __vt__7JKRFile@l
/* 8001D2F0 0001A230  38 80 00 00 */	li r4, 0
/* 8001D2F4 0001A234  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D2F8 0001A238  4B FF FD 3D */	bl __dt__11JKRDisposerFv
.L_8001D2FC:
/* 8001D2FC 0001A23C  7F E0 07 35 */	extsh. r0, r31
/* 8001D300 0001A240  40 81 00 0C */	ble .L_8001D30C
/* 8001D304 0001A244  7F C3 F3 78 */	mr r3, r30
/* 8001D308 0001A248  48 00 6D AD */	bl __dl__FPv
.L_8001D30C:
/* 8001D30C 0001A24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D310 0001A250  7F C3 F3 78 */	mr r3, r30
/* 8001D314 0001A254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D318 0001A258  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001D31C 0001A25C  7C 08 03 A6 */	mtlr r0
/* 8001D320 0001A260  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D324 0001A264  4E 80 00 20 */	blr 

.global initiate__10JKRDvdFileFv
initiate__10JKRDvdFileFv:
/* 8001D328 0001A268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D32C 0001A26C  7C 08 02 A6 */	mflr r0
/* 8001D330 0001A270  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D334 0001A274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D338 0001A278  7C 7F 1B 78 */	mr r31, r3
/* 8001D33C 0001A27C  93 E3 00 98 */	stw r31, 0x98(r3)
/* 8001D340 0001A280  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8001D344 0001A284  48 0D 27 ED */	bl OSInitMutex
/* 8001D348 0001A288  38 7F 00 34 */	addi r3, r31, 0x34
/* 8001D34C 0001A28C  48 0D 27 E5 */	bl OSInitMutex
/* 8001D350 0001A290  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8001D354 0001A294  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 8001D358 0001A298  38 A0 00 01 */	li r5, 1
/* 8001D35C 0001A29C  48 0D 21 61 */	bl OSInitMessageQueue
/* 8001D360 0001A2A0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8001D364 0001A2A4  38 9F 00 BC */	addi r4, r31, 0xbc
/* 8001D368 0001A2A8  38 A0 00 01 */	li r5, 1
/* 8001D36C 0001A2AC  48 0D 21 51 */	bl OSInitMessageQueue
/* 8001D370 0001A2B0  38 00 00 00 */	li r0, 0
/* 8001D374 0001A2B4  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 8001D378 0001A2B8  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8001D37C 0001A2BC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8001D380 0001A2C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D384 0001A2C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D388 0001A2C8  7C 08 03 A6 */	mtlr r0
/* 8001D38C 0001A2CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D390 0001A2D0  4E 80 00 20 */	blr 

.global open__10JKRDvdFileFPCc
open__10JKRDvdFileFPCc:
/* 8001D394 0001A2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D398 0001A2D8  7C 08 02 A6 */	mflr r0
/* 8001D39C 0001A2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D3A0 0001A2E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D3A4 0001A2E4  7C 7F 1B 78 */	mr r31, r3
/* 8001D3A8 0001A2E8  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8001D3AC 0001A2EC  28 00 00 00 */	cmplwi r0, 0
/* 8001D3B0 0001A2F0  40 82 00 44 */	bne .L_8001D3F4
/* 8001D3B4 0001A2F4  7C 83 23 78 */	mr r3, r4
/* 8001D3B8 0001A2F8  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8001D3BC 0001A2FC  48 0B F1 11 */	bl DVDOpen
/* 8001D3C0 0001A300  7C 03 00 D0 */	neg r0, r3
/* 8001D3C4 0001A304  7C 00 1B 78 */	or r0, r0, r3
/* 8001D3C8 0001A308  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8001D3CC 0001A30C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8001D3D0 0001A310  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 8001D3D4 0001A314  28 00 00 00 */	cmplwi r0, 0
/* 8001D3D8 0001A318  41 82 00 1C */	beq .L_8001D3F4
/* 8001D3DC 0001A31C  3C 60 80 50 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 8001D3E0 0001A320  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 8001D3E4 0001A324  38 63 6E 00 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 8001D3E8 0001A328  48 00 94 FD */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8001D3EC 0001A32C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8001D3F0 0001A330  48 0C 19 75 */	bl DVDGetCommandBlockStatus
.L_8001D3F4:
/* 8001D3F4 0001A334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D3F8 0001A338  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 8001D3FC 0001A33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D400 0001A340  7C 08 03 A6 */	mtlr r0
/* 8001D404 0001A344  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D408 0001A348  4E 80 00 20 */	blr 

.global open__10JKRDvdFileFl
open__10JKRDvdFileFl:
/* 8001D40C 0001A34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D410 0001A350  7C 08 02 A6 */	mflr r0
/* 8001D414 0001A354  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D418 0001A358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D41C 0001A35C  7C 7F 1B 78 */	mr r31, r3
/* 8001D420 0001A360  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8001D424 0001A364  28 00 00 00 */	cmplwi r0, 0
/* 8001D428 0001A368  40 82 00 44 */	bne .L_8001D46C
/* 8001D42C 0001A36C  7C 83 23 78 */	mr r3, r4
/* 8001D430 0001A370  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8001D434 0001A374  48 0B F0 25 */	bl DVDFastOpen
/* 8001D438 0001A378  7C 03 00 D0 */	neg r0, r3
/* 8001D43C 0001A37C  7C 00 1B 78 */	or r0, r0, r3
/* 8001D440 0001A380  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8001D444 0001A384  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8001D448 0001A388  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 8001D44C 0001A38C  28 00 00 00 */	cmplwi r0, 0
/* 8001D450 0001A390  41 82 00 1C */	beq .L_8001D46C
/* 8001D454 0001A394  3C 60 80 50 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 8001D458 0001A398  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 8001D45C 0001A39C  38 63 6E 00 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 8001D460 0001A3A0  48 00 94 85 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8001D464 0001A3A4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8001D468 0001A3A8  48 0C 18 FD */	bl DVDGetCommandBlockStatus
.L_8001D46C:
/* 8001D46C 0001A3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D470 0001A3B0  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 8001D474 0001A3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D478 0001A3B8  7C 08 03 A6 */	mtlr r0
/* 8001D47C 0001A3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D480 0001A3C0  4E 80 00 20 */	blr 

.global close__10JKRDvdFileFv
close__10JKRDvdFileFv:
/* 8001D484 0001A3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D488 0001A3C8  7C 08 02 A6 */	mflr r0
/* 8001D48C 0001A3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D490 0001A3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D494 0001A3D4  7C 7F 1B 78 */	mr r31, r3
/* 8001D498 0001A3D8  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8001D49C 0001A3DC  28 00 00 00 */	cmplwi r0, 0
/* 8001D4A0 0001A3E0  41 82 00 4C */	beq .L_8001D4EC
/* 8001D4A4 0001A3E4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8001D4A8 0001A3E8  48 0B F0 ED */	bl DVDClose
/* 8001D4AC 0001A3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8001D4B0 0001A3F0  41 82 00 20 */	beq .L_8001D4D0
/* 8001D4B4 0001A3F4  38 00 00 00 */	li r0, 0
/* 8001D4B8 0001A3F8  3C 60 80 50 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 8001D4BC 0001A3FC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8001D4C0 0001A400  38 63 6E 00 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 8001D4C4 0001A404  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 8001D4C8 0001A408  48 00 97 5D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8001D4CC 0001A40C  48 00 00 20 */	b .L_8001D4EC
.L_8001D4D0:
/* 8001D4D0 0001A410  3C 60 80 47 */	lis r3, lbl_80473608@ha
/* 8001D4D4 0001A414  3C A0 80 47 */	lis r5, lbl_80473618@ha
/* 8001D4D8 0001A418  38 63 36 08 */	addi r3, r3, lbl_80473608@l
/* 8001D4DC 0001A41C  38 80 00 D5 */	li r4, 0xd5
/* 8001D4E0 0001A420  38 A5 36 18 */	addi r5, r5, lbl_80473618@l
/* 8001D4E4 0001A424  4C C6 31 82 */	crclr 6
/* 8001D4E8 0001A428  48 0D 02 85 */	bl OSPanic
.L_8001D4EC:
/* 8001D4EC 0001A42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D4F0 0001A430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D4F4 0001A434  7C 08 03 A6 */	mtlr r0
/* 8001D4F8 0001A438  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D4FC 0001A43C  4E 80 00 20 */	blr 

.global readData__10JKRDvdFileFPvll
readData__10JKRDvdFileFPvll:
/* 8001D500 0001A440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D504 0001A444  7C 08 02 A6 */	mflr r0
/* 8001D508 0001A448  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D50C 0001A44C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001D510 0001A450  7C DF 33 78 */	mr r31, r6
/* 8001D514 0001A454  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001D518 0001A458  7C BE 2B 78 */	mr r30, r5
/* 8001D51C 0001A45C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001D520 0001A460  7C 9D 23 78 */	mr r29, r4
/* 8001D524 0001A464  93 81 00 10 */	stw r28, 0x10(r1)
/* 8001D528 0001A468  7C 7C 1B 78 */	mr r28, r3
/* 8001D52C 0001A46C  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8001D530 0001A470  48 0D 26 39 */	bl OSLockMutex
/* 8001D534 0001A474  80 1C 00 F4 */	lwz r0, 0xf4(r28)
/* 8001D538 0001A478  28 00 00 00 */	cmplwi r0, 0
/* 8001D53C 0001A47C  41 82 00 14 */	beq .L_8001D550
/* 8001D540 0001A480  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8001D544 0001A484  48 0D 27 01 */	bl OSUnlockMutex
/* 8001D548 0001A488  38 60 FF FF */	li r3, -1
/* 8001D54C 0001A48C  48 00 00 58 */	b .L_8001D5A4
.L_8001D550:
/* 8001D550 0001A490  48 0D 44 75 */	bl OSGetCurrentThread
/* 8001D554 0001A494  3C 80 80 02 */	lis r4, doneProcess__10JKRDvdFileFlP11DVDFileInfo@ha
/* 8001D558 0001A498  90 7C 00 F4 */	stw r3, 0xf4(r28)
/* 8001D55C 0001A49C  38 E4 D6 20 */	addi r7, r4, doneProcess__10JKRDvdFileFlP11DVDFileInfo@l
/* 8001D560 0001A4A0  7F E6 FB 78 */	mr r6, r31
/* 8001D564 0001A4A4  7F A4 EB 78 */	mr r4, r29
/* 8001D568 0001A4A8  7F C5 F3 78 */	mr r5, r30
/* 8001D56C 0001A4AC  38 7C 00 5C */	addi r3, r28, 0x5c
/* 8001D570 0001A4B0  3B E0 FF FF */	li r31, -1
/* 8001D574 0001A4B4  39 00 00 02 */	li r8, 2
/* 8001D578 0001A4B8  48 0B F4 19 */	bl DVDReadAsyncPrio
/* 8001D57C 0001A4BC  2C 03 00 00 */	cmpwi r3, 0
/* 8001D580 0001A4C0  41 82 00 10 */	beq .L_8001D590
/* 8001D584 0001A4C4  7F 83 E3 78 */	mr r3, r28
/* 8001D588 0001A4C8  48 00 00 45 */	bl sync__10JKRDvdFileFv
/* 8001D58C 0001A4CC  7C 7F 1B 78 */	mr r31, r3
.L_8001D590:
/* 8001D590 0001A4D0  38 00 00 00 */	li r0, 0
/* 8001D594 0001A4D4  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8001D598 0001A4D8  90 1C 00 F4 */	stw r0, 0xf4(r28)
/* 8001D59C 0001A4DC  48 0D 26 A9 */	bl OSUnlockMutex
/* 8001D5A0 0001A4E0  7F E3 FB 78 */	mr r3, r31
.L_8001D5A4:
/* 8001D5A4 0001A4E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D5A8 0001A4E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001D5AC 0001A4EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001D5B0 0001A4F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001D5B4 0001A4F4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8001D5B8 0001A4F8  7C 08 03 A6 */	mtlr r0
/* 8001D5BC 0001A4FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D5C0 0001A500  4E 80 00 20 */	blr 

.global writeData__10JKRDvdFileFPCvll
writeData__10JKRDvdFileFPCvll:
/* 8001D5C4 0001A504  38 60 FF FF */	li r3, -1
/* 8001D5C8 0001A508  4E 80 00 20 */	blr 

.global sync__10JKRDvdFileFv
sync__10JKRDvdFileFv:
/* 8001D5CC 0001A50C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D5D0 0001A510  7C 08 02 A6 */	mflr r0
/* 8001D5D4 0001A514  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D5D8 0001A518  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001D5DC 0001A51C  7C 7F 1B 78 */	mr r31, r3
/* 8001D5E0 0001A520  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8001D5E4 0001A524  48 0D 25 85 */	bl OSLockMutex
/* 8001D5E8 0001A528  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8001D5EC 0001A52C  38 81 00 08 */	addi r4, r1, 8
/* 8001D5F0 0001A530  38 A0 00 01 */	li r5, 1
/* 8001D5F4 0001A534  48 0D 1F F1 */	bl OSReceiveMessage
/* 8001D5F8 0001A538  38 00 00 00 */	li r0, 0
/* 8001D5FC 0001A53C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8001D600 0001A540  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 8001D604 0001A544  48 0D 26 41 */	bl OSUnlockMutex
/* 8001D608 0001A548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D60C 0001A54C  80 61 00 08 */	lwz r3, 8(r1)
/* 8001D610 0001A550  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001D614 0001A554  7C 08 03 A6 */	mtlr r0
/* 8001D618 0001A558  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D61C 0001A55C  4E 80 00 20 */	blr 

.global doneProcess__10JKRDvdFileFlP11DVDFileInfo
doneProcess__10JKRDvdFileFlP11DVDFileInfo:
/* 8001D620 0001A560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D624 0001A564  7C 08 02 A6 */	mflr r0
/* 8001D628 0001A568  38 A0 00 00 */	li r5, 0
/* 8001D62C 0001A56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D630 0001A570  80 C4 00 3C */	lwz r6, 0x3c(r4)
/* 8001D634 0001A574  7C 64 1B 78 */	mr r4, r3
/* 8001D638 0001A578  38 66 00 C0 */	addi r3, r6, 0xc0
/* 8001D63C 0001A57C  48 0D 1E E1 */	bl OSSendMessage
/* 8001D640 0001A580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D644 0001A584  7C 08 03 A6 */	mtlr r0
/* 8001D648 0001A588  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D64C 0001A58C  4E 80 00 20 */	blr 

.global getFileSize__10JKRDvdFileCFv
getFileSize__10JKRDvdFileCFv:
/* 8001D650 0001A590  80 63 00 90 */	lwz r3, 0x90(r3)
/* 8001D654 0001A594  4E 80 00 20 */	blr 

.fn __sinit_JKRDvdFile_cpp, local
/* 8001D658 0001A598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D65C 0001A59C  7C 08 02 A6 */	mflr r0
/* 8001D660 0001A5A0  3C 60 80 50 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 8001D664 0001A5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D668 0001A5A8  38 63 6E 00 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 8001D66C 0001A5AC  48 00 92 65 */	bl initiate__10JSUPtrListFv
/* 8001D670 0001A5B0  3C 60 80 50 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 8001D674 0001A5B4  3C 80 80 02 */	lis r4, "__dt__21JSUList<10JKRDvdFile>Fv"@ha
/* 8001D678 0001A5B8  3C A0 80 4F */	lis r5, lbl_804EFF40@ha
/* 8001D67C 0001A5BC  38 63 6E 00 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 8001D680 0001A5C0  38 84 D6 9C */	addi r4, r4, "__dt__21JSUList<10JKRDvdFile>Fv"@l
/* 8001D684 0001A5C4  38 A5 FF 40 */	addi r5, r5, lbl_804EFF40@l
/* 8001D688 0001A5C8  48 0A 40 79 */	bl __register_global_object
/* 8001D68C 0001A5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D690 0001A5D0  7C 08 03 A6 */	mtlr r0
/* 8001D694 0001A5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D698 0001A5D8  4E 80 00 20 */	blr 
.endfn __sinit_JKRDvdFile_cpp

.global "__dt__21JSUList<10JKRDvdFile>Fv"
"__dt__21JSUList<10JKRDvdFile>Fv":
/* 8001D69C 0001A5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D6A0 0001A5E0  7C 08 02 A6 */	mflr r0
/* 8001D6A4 0001A5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D6A8 0001A5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D6AC 0001A5EC  7C 9F 23 78 */	mr r31, r4
/* 8001D6B0 0001A5F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8001D6B4 0001A5F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001D6B8 0001A5F8  41 82 00 1C */	beq .L_8001D6D4
/* 8001D6BC 0001A5FC  38 80 00 00 */	li r4, 0
/* 8001D6C0 0001A600  48 00 91 A9 */	bl __dt__10JSUPtrListFv
/* 8001D6C4 0001A604  7F E0 07 35 */	extsh. r0, r31
/* 8001D6C8 0001A608  40 81 00 0C */	ble .L_8001D6D4
/* 8001D6CC 0001A60C  7F C3 F3 78 */	mr r3, r30
/* 8001D6D0 0001A610  48 00 69 E5 */	bl __dl__FPv
.L_8001D6D4:
/* 8001D6D4 0001A614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D6D8 0001A618  7F C3 F3 78 */	mr r3, r30
/* 8001D6DC 0001A61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D6E0 0001A620  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001D6E4 0001A624  7C 08 03 A6 */	mtlr r0
/* 8001D6E8 0001A628  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D6EC 0001A62C  4E 80 00 20 */	blr 
