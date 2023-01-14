.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_JKRFileLoader_cpp

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__13JKRFileLoader
__vt__13JKRFileLoader:
	.4byte 0
	.4byte 0
	.4byte __dt__13JKRFileLoaderFv
	.4byte unmount__13JKRFileLoaderFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .bss  # 0x804EFC20 - 0x8051467C
.balign 8
.lcomm lbl_804EFFA0, 0xC, 4
# JKRFileLoader.cpp
.comm sVolumeList__13JKRFileLoader, 0xC, 4

.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 8
rootPath$2747:
	.asciz "/"

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global sCurrentVolume__13JKRFileLoader
sCurrentVolume__13JKRFileLoader:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_80516528:
	.asciz "/"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__13JKRFileLoaderFv
__ct__13JKRFileLoaderFv:
/* 80022E98 0001FDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022E9C 0001FDDC  7C 08 02 A6 */	mflr r0
/* 80022EA0 0001FDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022EA4 0001FDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022EA8 0001FDE8  7C 7F 1B 78 */	mr r31, r3
/* 80022EAC 0001FDEC  4B FF A1 21 */	bl __ct__11JKRDisposerFv
/* 80022EB0 0001FDF0  3C 60 80 4A */	lis r3, __vt__13JKRFileLoader@ha
/* 80022EB4 0001FDF4  7F E4 FB 78 */	mr r4, r31
/* 80022EB8 0001FDF8  38 03 FE C0 */	addi r0, r3, __vt__13JKRFileLoader@l
/* 80022EBC 0001FDFC  38 7F 00 18 */	addi r3, r31, 0x18
/* 80022EC0 0001FE00  90 1F 00 00 */	stw r0, 0(r31)
/* 80022EC4 0001FE04  48 00 38 F5 */	bl __ct__10JSUPtrLinkFPv
/* 80022EC8 0001FE08  38 00 00 00 */	li r0, 0
/* 80022ECC 0001FE0C  7F E3 FB 78 */	mr r3, r31
/* 80022ED0 0001FE10  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80022ED4 0001FE14  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80022ED8 0001FE18  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80022EDC 0001FE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022EE0 0001FE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022EE4 0001FE24  7C 08 03 A6 */	mtlr r0
/* 80022EE8 0001FE28  38 21 00 10 */	addi r1, r1, 0x10
/* 80022EEC 0001FE2C  4E 80 00 20 */	blr 

.global __dt__13JKRFileLoaderFv
__dt__13JKRFileLoaderFv:
/* 80022EF0 0001FE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022EF4 0001FE34  7C 08 02 A6 */	mflr r0
/* 80022EF8 0001FE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022EFC 0001FE3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022F00 0001FE40  7C 9F 23 78 */	mr r31, r4
/* 80022F04 0001FE44  93 C1 00 08 */	stw r30, 8(r1)
/* 80022F08 0001FE48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80022F0C 0001FE4C  41 82 00 54 */	beq .L_80022F60
/* 80022F10 0001FE50  3C 60 80 4A */	lis r3, __vt__13JKRFileLoader@ha
/* 80022F14 0001FE54  38 03 FE C0 */	addi r0, r3, __vt__13JKRFileLoader@l
/* 80022F18 0001FE58  90 1E 00 00 */	stw r0, 0(r30)
/* 80022F1C 0001FE5C  80 0D 88 20 */	lwz r0, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 80022F20 0001FE60  7C 00 F0 40 */	cmplw r0, r30
/* 80022F24 0001FE64  40 82 00 0C */	bne .L_80022F30
/* 80022F28 0001FE68  38 00 00 00 */	li r0, 0
/* 80022F2C 0001FE6C  90 0D 88 20 */	stw r0, sCurrentVolume__13JKRFileLoader@sda21(r13)
.L_80022F30:
/* 80022F30 0001FE70  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80022F34 0001FE74  41 82 00 10 */	beq .L_80022F44
/* 80022F38 0001FE78  38 7E 00 18 */	addi r3, r30, 0x18
/* 80022F3C 0001FE7C  38 80 00 00 */	li r4, 0
/* 80022F40 0001FE80  48 00 38 91 */	bl __dt__10JSUPtrLinkFv
.L_80022F44:
/* 80022F44 0001FE84  7F C3 F3 78 */	mr r3, r30
/* 80022F48 0001FE88  38 80 00 00 */	li r4, 0
/* 80022F4C 0001FE8C  4B FF A0 E9 */	bl __dt__11JKRDisposerFv
/* 80022F50 0001FE90  7F E0 07 35 */	extsh. r0, r31
/* 80022F54 0001FE94  40 81 00 0C */	ble .L_80022F60
/* 80022F58 0001FE98  7F C3 F3 78 */	mr r3, r30
/* 80022F5C 0001FE9C  48 00 11 59 */	bl __dl__FPv
.L_80022F60:
/* 80022F60 0001FEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022F64 0001FEA4  7F C3 F3 78 */	mr r3, r30
/* 80022F68 0001FEA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022F6C 0001FEAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80022F70 0001FEB0  7C 08 03 A6 */	mtlr r0
/* 80022F74 0001FEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80022F78 0001FEB8  4E 80 00 20 */	blr 

.global unmount__13JKRFileLoaderFv
unmount__13JKRFileLoaderFv:
/* 80022F7C 0001FEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022F80 0001FEC0  7C 08 02 A6 */	mflr r0
/* 80022F84 0001FEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022F88 0001FEC8  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80022F8C 0001FECC  28 04 00 00 */	cmplwi r4, 0
/* 80022F90 0001FED0  41 82 00 2C */	beq .L_80022FBC
/* 80022F94 0001FED4  34 04 FF FF */	addic. r0, r4, -1
/* 80022F98 0001FED8  90 03 00 34 */	stw r0, 0x34(r3)
/* 80022F9C 0001FEDC  40 82 00 20 */	bne .L_80022FBC
/* 80022FA0 0001FEE0  28 03 00 00 */	cmplwi r3, 0
/* 80022FA4 0001FEE4  41 82 00 18 */	beq .L_80022FBC
/* 80022FA8 0001FEE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80022FAC 0001FEEC  38 80 00 01 */	li r4, 1
/* 80022FB0 0001FEF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80022FB4 0001FEF4  7D 89 03 A6 */	mtctr r12
/* 80022FB8 0001FEF8  4E 80 04 21 */	bctrl 
.L_80022FBC:
/* 80022FBC 0001FEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022FC0 0001FF00  7C 08 03 A6 */	mtlr r0
/* 80022FC4 0001FF04  38 21 00 10 */	addi r1, r1, 0x10
/* 80022FC8 0001FF08  4E 80 00 20 */	blr 

.global getGlbResource__13JKRFileLoaderFPCc
getGlbResource__13JKRFileLoaderFPCc:
/* 80022FCC 0001FF0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022FD0 0001FF10  7C 08 02 A6 */	mflr r0
/* 80022FD4 0001FF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022FD8 0001FF18  90 61 00 08 */	stw r3, 8(r1)
/* 80022FDC 0001FF1C  38 61 00 08 */	addi r3, r1, 8
/* 80022FE0 0001FF20  48 00 00 D1 */	bl findVolume__13JKRFileLoaderFPPCc
/* 80022FE4 0001FF24  28 03 00 00 */	cmplwi r3, 0
/* 80022FE8 0001FF28  40 82 00 0C */	bne .L_80022FF4
/* 80022FEC 0001FF2C  38 60 00 00 */	li r3, 0
/* 80022FF0 0001FF30  48 00 00 18 */	b .L_80023008
.L_80022FF4:
/* 80022FF4 0001FF34  81 83 00 00 */	lwz r12, 0(r3)
/* 80022FF8 0001FF38  80 81 00 08 */	lwz r4, 8(r1)
/* 80022FFC 0001FF3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80023000 0001FF40  7D 89 03 A6 */	mtctr r12
/* 80023004 0001FF44  4E 80 04 21 */	bctrl 
.L_80023008:
/* 80023008 0001FF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002300C 0001FF4C  7C 08 03 A6 */	mtlr r0
/* 80023010 0001FF50  38 21 00 10 */	addi r1, r1, 0x10
/* 80023014 0001FF54  4E 80 00 20 */	blr 

.global getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader:
/* 80023018 0001FF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002301C 0001FF5C  7C 08 02 A6 */	mflr r0
/* 80023020 0001FF60  28 04 00 00 */	cmplwi r4, 0
/* 80023024 0001FF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023028 0001FF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002302C 0001FF6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80023030 0001FF70  7C 7E 1B 78 */	mr r30, r3
/* 80023034 0001FF74  38 60 00 00 */	li r3, 0
/* 80023038 0001FF78  41 82 00 24 */	beq .L_8002305C
/* 8002303C 0001FF7C  7C 83 23 78 */	mr r3, r4
/* 80023040 0001FF80  7F C5 F3 78 */	mr r5, r30
/* 80023044 0001FF84  81 84 00 00 */	lwz r12, 0(r4)
/* 80023048 0001FF88  38 80 00 00 */	li r4, 0
/* 8002304C 0001FF8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80023050 0001FF90  7D 89 03 A6 */	mtctr r12
/* 80023054 0001FF94  4E 80 04 21 */	bctrl 
/* 80023058 0001FF98  48 00 00 40 */	b .L_80023098
.L_8002305C:
/* 8002305C 0001FF9C  3C 80 80 50 */	lis r4, sVolumeList__13JKRFileLoader@ha
/* 80023060 0001FFA0  83 E4 6E 24 */	lwz r31, sVolumeList__13JKRFileLoader@l(r4)
/* 80023064 0001FFA4  48 00 00 2C */	b .L_80023090
.L_80023068:
/* 80023068 0001FFA8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8002306C 0001FFAC  7F C5 F3 78 */	mr r5, r30
/* 80023070 0001FFB0  38 80 00 00 */	li r4, 0
/* 80023074 0001FFB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80023078 0001FFB8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8002307C 0001FFBC  7D 89 03 A6 */	mtctr r12
/* 80023080 0001FFC0  4E 80 04 21 */	bctrl 
/* 80023084 0001FFC4  28 03 00 00 */	cmplwi r3, 0
/* 80023088 0001FFC8  40 82 00 10 */	bne .L_80023098
/* 8002308C 0001FFCC  83 FF 00 0C */	lwz r31, 0xc(r31)
.L_80023090:
/* 80023090 0001FFD0  28 1F 00 00 */	cmplwi r31, 0
/* 80023094 0001FFD4  40 82 FF D4 */	bne .L_80023068
.L_80023098:
/* 80023098 0001FFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002309C 0001FFDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800230A0 0001FFE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800230A4 0001FFE4  7C 08 03 A6 */	mtlr r0
/* 800230A8 0001FFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800230AC 0001FFEC  4E 80 00 20 */	blr 

.global findVolume__13JKRFileLoaderFPPCc
findVolume__13JKRFileLoaderFPPCc:
/* 800230B0 0001FFF0  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 800230B4 0001FFF4  7C 08 02 A6 */	mflr r0
/* 800230B8 0001FFF8  90 01 01 24 */	stw r0, 0x124(r1)
/* 800230BC 0001FFFC  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 800230C0 00020000  7C 7F 1B 78 */	mr r31, r3
/* 800230C4 00020004  80 A3 00 00 */	lwz r5, 0(r3)
/* 800230C8 00020008  88 05 00 00 */	lbz r0, 0(r5)
/* 800230CC 0002000C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800230D0 00020010  41 82 00 0C */	beq .L_800230DC
/* 800230D4 00020014  80 6D 88 20 */	lwz r3, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 800230D8 00020018  48 00 00 50 */	b .L_80023128
.L_800230DC:
/* 800230DC 0002001C  38 61 00 08 */	addi r3, r1, 8
/* 800230E0 00020020  38 80 01 01 */	li r4, 0x101
/* 800230E4 00020024  48 00 00 59 */	bl fetchVolumeName__13JKRFileLoaderFPclPCc
/* 800230E8 00020028  90 7F 00 00 */	stw r3, 0(r31)
/* 800230EC 0002002C  3C 80 80 50 */	lis r4, sVolumeList__13JKRFileLoader@ha
/* 800230F0 00020030  83 E4 6E 24 */	lwz r31, sVolumeList__13JKRFileLoader@l(r4)
/* 800230F4 00020034  48 00 00 28 */	b .L_8002311C
.L_800230F8:
/* 800230F8 00020038  80 9F 00 00 */	lwz r4, 0(r31)
/* 800230FC 0002003C  38 61 00 08 */	addi r3, r1, 8
/* 80023100 00020040  80 84 00 28 */	lwz r4, 0x28(r4)
/* 80023104 00020044  48 0A 75 BD */	bl strcmp
/* 80023108 00020048  2C 03 00 00 */	cmpwi r3, 0
/* 8002310C 0002004C  40 82 00 0C */	bne .L_80023118
/* 80023110 00020050  80 7F 00 00 */	lwz r3, 0(r31)
/* 80023114 00020054  48 00 00 14 */	b .L_80023128
.L_80023118:
/* 80023118 00020058  83 FF 00 0C */	lwz r31, 0xc(r31)
.L_8002311C:
/* 8002311C 0002005C  28 1F 00 00 */	cmplwi r31, 0
/* 80023120 00020060  40 82 FF D8 */	bne .L_800230F8
/* 80023124 00020064  38 60 00 00 */	li r3, 0
.L_80023128:
/* 80023128 00020068  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8002312C 0002006C  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 80023130 00020070  7C 08 03 A6 */	mtlr r0
/* 80023134 00020074  38 21 01 20 */	addi r1, r1, 0x120
/* 80023138 00020078  4E 80 00 20 */	blr 

.global fetchVolumeName__13JKRFileLoaderFPclPCc
fetchVolumeName__13JKRFileLoaderFPclPCc:
/* 8002313C 0002007C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80023140 00020080  7C 08 02 A6 */	mflr r0
/* 80023144 00020084  90 01 00 24 */	stw r0, 0x24(r1)
/* 80023148 00020088  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002314C 0002008C  7C BF 2B 78 */	mr r31, r5
/* 80023150 00020090  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80023154 00020094  7C 9E 23 78 */	mr r30, r4
/* 80023158 00020098  38 82 81 C8 */	addi r4, r2, lbl_80516528@sda21
/* 8002315C 0002009C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80023160 000200A0  7C 7D 1B 78 */	mr r29, r3
/* 80023164 000200A4  7F E3 FB 78 */	mr r3, r31
/* 80023168 000200A8  48 0A 75 59 */	bl strcmp
/* 8002316C 000200AC  2C 03 00 00 */	cmpwi r3, 0
/* 80023170 000200B0  40 82 00 18 */	bne .L_80023188
/* 80023174 000200B4  7F A3 EB 78 */	mr r3, r29
/* 80023178 000200B8  38 8D 80 18 */	addi r4, r13, rootPath$2747@sda21
/* 8002317C 000200BC  48 0A 76 DD */	bl strcpy
/* 80023180 000200C0  38 6D 80 18 */	addi r3, r13, rootPath$2747@sda21
/* 80023184 000200C4  48 00 00 7C */	b .L_80023200
.L_80023188:
/* 80023188 000200C8  3C 60 80 4A */	lis r3, __lower_map@ha
/* 8002318C 000200CC  3B FF 00 01 */	addi r31, r31, 1
/* 80023190 000200D0  38 63 6C F0 */	addi r3, r3, __lower_map@l
/* 80023194 000200D4  48 00 00 38 */	b .L_800231CC
.L_80023198:
/* 80023198 000200D8  2C 1E 00 01 */	cmpwi r30, 1
/* 8002319C 000200DC  40 81 00 2C */	ble .L_800231C8
/* 800231A0 000200E0  7C 80 07 74 */	extsb r0, r4
/* 800231A4 000200E4  2C 00 FF FF */	cmpwi r0, -1
/* 800231A8 000200E8  40 82 00 0C */	bne .L_800231B4
/* 800231AC 000200EC  38 00 FF FF */	li r0, -1
/* 800231B0 000200F0  48 00 00 0C */	b .L_800231BC
.L_800231B4:
/* 800231B4 000200F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800231B8 000200F8  7C 03 00 AE */	lbzx r0, r3, r0
.L_800231BC:
/* 800231BC 000200FC  98 1D 00 00 */	stb r0, 0(r29)
/* 800231C0 00020100  3B BD 00 01 */	addi r29, r29, 1
/* 800231C4 00020104  3B DE FF FF */	addi r30, r30, -1
.L_800231C8:
/* 800231C8 00020108  3B FF 00 01 */	addi r31, r31, 1
.L_800231CC:
/* 800231CC 0002010C  88 9F 00 00 */	lbz r4, 0(r31)
/* 800231D0 00020110  7C 80 07 75 */	extsb. r0, r4
/* 800231D4 00020114  41 82 00 10 */	beq .L_800231E4
/* 800231D8 00020118  7C 80 07 74 */	extsb r0, r4
/* 800231DC 0002011C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800231E0 00020120  40 82 FF B8 */	bne .L_80023198
.L_800231E4:
/* 800231E4 00020124  38 00 00 00 */	li r0, 0
/* 800231E8 00020128  98 1D 00 00 */	stb r0, 0(r29)
/* 800231EC 0002012C  88 1F 00 00 */	lbz r0, 0(r31)
/* 800231F0 00020130  7C 00 07 75 */	extsb. r0, r0
/* 800231F4 00020134  40 82 00 08 */	bne .L_800231FC
/* 800231F8 00020138  3B ED 80 18 */	addi r31, r13, rootPath$2747@sda21
.L_800231FC:
/* 800231FC 0002013C  7F E3 FB 78 */	mr r3, r31
.L_80023200:
/* 80023200 00020140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80023204 00020144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80023208 00020148  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8002320C 0002014C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80023210 00020150  7C 08 03 A6 */	mtlr r0
/* 80023214 00020154  38 21 00 20 */	addi r1, r1, 0x20
/* 80023218 00020158  4E 80 00 20 */	blr 

.fn __sinit_JKRFileLoader_cpp, local
/* 8002321C 0002015C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023220 00020160  7C 08 02 A6 */	mflr r0
/* 80023224 00020164  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80023228 00020168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002322C 0002016C  38 63 6E 24 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80023230 00020170  48 00 36 A1 */	bl initiate__10JSUPtrListFv
/* 80023234 00020174  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80023238 00020178  3C 80 80 02 */	lis r4, "__dt__24JSUList<13JKRFileLoader>Fv"@ha
/* 8002323C 0002017C  3C A0 80 4F */	lis r5, lbl_804EFFA0@ha
/* 80023240 00020180  38 63 6E 24 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80023244 00020184  38 84 32 60 */	addi r4, r4, "__dt__24JSUList<13JKRFileLoader>Fv"@l
/* 80023248 00020188  38 A5 FF A0 */	addi r5, r5, lbl_804EFFA0@l
/* 8002324C 0002018C  48 09 E4 B5 */	bl __register_global_object
/* 80023250 00020190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023254 00020194  7C 08 03 A6 */	mtlr r0
/* 80023258 00020198  38 21 00 10 */	addi r1, r1, 0x10
/* 8002325C 0002019C  4E 80 00 20 */	blr 
.endfn __sinit_JKRFileLoader_cpp

.global "__dt__24JSUList<13JKRFileLoader>Fv"
"__dt__24JSUList<13JKRFileLoader>Fv":
/* 80023260 000201A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023264 000201A4  7C 08 02 A6 */	mflr r0
/* 80023268 000201A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002326C 000201AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023270 000201B0  7C 9F 23 78 */	mr r31, r4
/* 80023274 000201B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80023278 000201B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8002327C 000201BC  41 82 00 1C */	beq .L_80023298
/* 80023280 000201C0  38 80 00 00 */	li r4, 0
/* 80023284 000201C4  48 00 35 E5 */	bl __dt__10JSUPtrListFv
/* 80023288 000201C8  7F E0 07 35 */	extsh. r0, r31
/* 8002328C 000201CC  40 81 00 0C */	ble .L_80023298
/* 80023290 000201D0  7F C3 F3 78 */	mr r3, r30
/* 80023294 000201D4  48 00 0E 21 */	bl __dl__FPv
.L_80023298:
/* 80023298 000201D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002329C 000201DC  7F C3 F3 78 */	mr r3, r30
/* 800232A0 000201E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800232A4 000201E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800232A8 000201E8  7C 08 03 A6 */	mtlr r0
/* 800232AC 000201EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800232B0 000201F0  4E 80 00 20 */	blr 
