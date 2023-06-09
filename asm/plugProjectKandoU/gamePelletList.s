.include "macros.inc"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj __vt__Q34Game10PelletList3Mgr, global
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game10PelletList3MgrFv
.endobj __vt__Q34Game10PelletList3Mgr

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_80483320, local
	.asciz "gamePelletList"
.endobj lbl_80483320
.balign 4
.obj lbl_80483330, local
	.asciz "gamePelletList.cpp"
.endobj lbl_80483330
.balign 4
.obj lbl_80483344, local
	.asciz "P2Assert"
.endobj lbl_80483344
.balign 4
.obj lbl_80483350, local
	.asciz "numberpellet_config.txt"
.endobj lbl_80483350
.balign 4
.obj lbl_80483368, local
	.asciz "carcass_config.txt"
.endobj lbl_80483368
.balign 4
.obj lbl_8048337C, local
	.asciz "fruit_config.txt"
.endobj lbl_8048337C
.balign 4
.obj lbl_80483390, local
	.asciz "otakara_config.txt"
.endobj lbl_80483390
.balign 4
.obj lbl_804833A4, local
	.asciz "item_config.txt"
.endobj lbl_804833A4
.balign 4
.obj lbl_804833B4, local
	.4byte lbl_80483350
	.4byte lbl_80483368
	.4byte lbl_8048337C
	.4byte lbl_80483390
	.4byte lbl_804833A4
.endobj lbl_804833B4
.balign 4
.obj lbl_804833C8, local
	.asciz "/user/Abe/Pellet/%s/pelletlist_%s.szs"
.endobj lbl_804833C8
.balign 4
.obj lbl_804833F0, local
	.asciz "don't use this !\n"
.endobj lbl_804833F0
.balign 4
.obj lbl_80483404, local
	.asciz "/user/Kando/pelletlist.szs"
.endobj lbl_80483404
.balign 4
.obj lbl_80483420, local
	.asciz "no pelletlist.szs\n"
.endobj lbl_80483420
.balign 4
.obj lbl_80483434, local
	.asciz "no config file [%s]\n"
.endobj lbl_80483434
.balign 4
.obj lbl_8048344C, local
	.asciz "dictNo:%d \n"
.endobj lbl_8048344C

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj mInstance__Q34Game10PelletList3Mgr, global
	.skip 4
.endobj mInstance__Q34Game10PelletList3Mgr

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_8051A248, local
	.asciz "jpn"
.endobj lbl_8051A248
.balign 4
.obj lbl_8051A24C, local
	.asciz "us"
.endobj lbl_8051A24C

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind, global
/* 80227D5C 00224C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227D60 00224CA0  7C 08 02 A6 */	mflr r0
/* 80227D64 00224CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227D68 00224CA8  38 00 00 00 */	li r0, 0
/* 80227D6C 00224CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227D70 00224CB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80227D74 00224CB4  41 80 00 10 */	blt .L_80227D84
/* 80227D78 00224CB8  2C 1F 00 05 */	cmpwi r31, 5
/* 80227D7C 00224CBC  40 80 00 08 */	bge .L_80227D84
/* 80227D80 00224CC0  38 00 00 01 */	li r0, 1
.L_80227D84:
/* 80227D84 00224CC4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80227D88 00224CC8  40 82 00 20 */	bne .L_80227DA8
/* 80227D8C 00224CCC  3C 60 80 48 */	lis r3, lbl_80483330@ha
/* 80227D90 00224CD0  3C A0 80 48 */	lis r5, lbl_80483344@ha
/* 80227D94 00224CD4  38 63 33 30 */	addi r3, r3, lbl_80483330@l
/* 80227D98 00224CD8  38 80 00 10 */	li r4, 0x10
/* 80227D9C 00224CDC  38 A5 33 44 */	addi r5, r5, lbl_80483344@l
/* 80227DA0 00224CE0  4C C6 31 82 */	crclr 6
/* 80227DA4 00224CE4  4B E0 28 9D */	bl panic_f__12JUTExceptionFPCciPCce
.L_80227DA8:
/* 80227DA8 00224CE8  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 80227DAC 00224CEC  57 E0 28 34 */	slwi r0, r31, 5
/* 80227DB0 00224CF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80227DB4 00224CF4  7C 63 02 14 */	add r3, r3, r0
/* 80227DB8 00224CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227DBC 00224CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227DC0 00224D00  7C 08 03 A6 */	mtlr r0
/* 80227DC4 00224D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80227DC8 00224D08  4E 80 00 20 */	blr 
.endfn getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind

.fn getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind, global
/* 80227DCC 00224D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227DD0 00224D10  7C 08 02 A6 */	mflr r0
/* 80227DD4 00224D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227DD8 00224D18  38 00 00 00 */	li r0, 0
/* 80227DDC 00224D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227DE0 00224D20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80227DE4 00224D24  41 80 00 10 */	blt .L_80227DF4
/* 80227DE8 00224D28  2C 1F 00 05 */	cmpwi r31, 5
/* 80227DEC 00224D2C  40 80 00 08 */	bge .L_80227DF4
/* 80227DF0 00224D30  38 00 00 01 */	li r0, 1
.L_80227DF4:
/* 80227DF4 00224D34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80227DF8 00224D38  40 82 00 20 */	bne .L_80227E18
/* 80227DFC 00224D3C  3C 60 80 48 */	lis r3, lbl_80483330@ha
/* 80227E00 00224D40  3C A0 80 48 */	lis r5, lbl_80483344@ha
/* 80227E04 00224D44  38 63 33 30 */	addi r3, r3, lbl_80483330@l
/* 80227E08 00224D48  38 80 00 10 */	li r4, 0x10
/* 80227E0C 00224D4C  38 A5 33 44 */	addi r5, r5, lbl_80483344@l
/* 80227E10 00224D50  4C C6 31 82 */	crclr 6
/* 80227E14 00224D54  4B E0 28 2D */	bl panic_f__12JUTExceptionFPCciPCce
.L_80227E18:
/* 80227E18 00224D58  80 8D 95 D8 */	lwz r4, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 80227E1C 00224D5C  57 E3 28 34 */	slwi r3, r31, 5
/* 80227E20 00224D60  38 03 00 18 */	addi r0, r3, 0x18
/* 80227E24 00224D64  80 64 00 04 */	lwz r3, 4(r4)
/* 80227E28 00224D68  7C 63 00 2E */	lwzx r3, r3, r0
/* 80227E2C 00224D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227E30 00224D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227E34 00224D74  7C 08 03 A6 */	mtlr r0
/* 80227E38 00224D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80227E3C 00224D7C  4E 80 00 20 */	blr 
.endfn getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind

.fn getConfigAndKind__Q34Game10PelletList3MgrFPcRQ34Game10PelletList5cKind, global
/* 80227E40 00224D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80227E44 00224D84  7C 08 02 A6 */	mflr r0
/* 80227E48 00224D88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80227E4C 00224D8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80227E50 00224D90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80227E54 00224D94  3B C0 00 00 */	li r30, 0
/* 80227E58 00224D98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80227E5C 00224D9C  7C 9D 23 78 */	mr r29, r4
/* 80227E60 00224DA0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80227E64 00224DA4  7C 7C 1B 78 */	mr r28, r3
.L_80227E68:
/* 80227E68 00224DA8  93 DD 00 00 */	stw r30, 0(r29)
/* 80227E6C 00224DAC  38 00 00 00 */	li r0, 0
/* 80227E70 00224DB0  83 FD 00 00 */	lwz r31, 0(r29)
/* 80227E74 00224DB4  2C 1F 00 00 */	cmpwi r31, 0
/* 80227E78 00224DB8  41 80 00 10 */	blt .L_80227E88
/* 80227E7C 00224DBC  2C 1F 00 05 */	cmpwi r31, 5
/* 80227E80 00224DC0  40 80 00 08 */	bge .L_80227E88
/* 80227E84 00224DC4  38 00 00 01 */	li r0, 1
.L_80227E88:
/* 80227E88 00224DC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80227E8C 00224DCC  40 82 00 20 */	bne .L_80227EAC
/* 80227E90 00224DD0  3C 60 80 48 */	lis r3, lbl_80483330@ha
/* 80227E94 00224DD4  3C A0 80 48 */	lis r5, lbl_80483344@ha
/* 80227E98 00224DD8  38 63 33 30 */	addi r3, r3, lbl_80483330@l
/* 80227E9C 00224DDC  38 80 00 10 */	li r4, 0x10
/* 80227EA0 00224DE0  38 A5 33 44 */	addi r5, r5, lbl_80483344@l
/* 80227EA4 00224DE4  4C C6 31 82 */	crclr 6
/* 80227EA8 00224DE8  4B E0 27 99 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80227EAC:
/* 80227EAC 00224DEC  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 80227EB0 00224DF0  57 E0 28 34 */	slwi r0, r31, 5
/* 80227EB4 00224DF4  7F 84 E3 78 */	mr r4, r28
/* 80227EB8 00224DF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80227EBC 00224DFC  7C 63 02 14 */	add r3, r3, r0
/* 80227EC0 00224E00  4B F8 C5 65 */	bl getPelletConfig__Q24Game16PelletConfigListFPc
/* 80227EC4 00224E04  28 03 00 00 */	cmplwi r3, 0
/* 80227EC8 00224E08  41 82 00 08 */	beq .L_80227ED0
/* 80227ECC 00224E0C  48 00 00 14 */	b .L_80227EE0
.L_80227ED0:
/* 80227ED0 00224E10  3B DE 00 01 */	addi r30, r30, 1
/* 80227ED4 00224E14  2C 1E 00 05 */	cmpwi r30, 5
/* 80227ED8 00224E18  41 80 FF 90 */	blt .L_80227E68
/* 80227EDC 00224E1C  38 60 00 00 */	li r3, 0
.L_80227EE0:
/* 80227EE0 00224E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80227EE4 00224E24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80227EE8 00224E28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80227EEC 00224E2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80227EF0 00224E30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80227EF4 00224E34  7C 08 03 A6 */	mtlr r0
/* 80227EF8 00224E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80227EFC 00224E3C  4E 80 00 20 */	blr 
.endfn getConfigAndKind__Q34Game10PelletList3MgrFPcRQ34Game10PelletList5cKind

.fn __dt__Q34Game10PelletList3MgrFv, global
/* 80227F00 00224E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227F04 00224E44  7C 08 02 A6 */	mflr r0
/* 80227F08 00224E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227F0C 00224E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227F10 00224E50  7C 9F 23 78 */	mr r31, r4
/* 80227F14 00224E54  93 C1 00 08 */	stw r30, 8(r1)
/* 80227F18 00224E58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80227F1C 00224E5C  41 82 00 38 */	beq .L_80227F54
/* 80227F20 00224E60  3C 80 80 4C */	lis r4, __vt__Q34Game10PelletList3Mgr@ha
/* 80227F24 00224E64  3C 60 80 1B */	lis r3, __dt__Q24Game16PelletConfigListFv@ha
/* 80227F28 00224E68  38 04 0D D8 */	addi r0, r4, __vt__Q34Game10PelletList3Mgr@l
/* 80227F2C 00224E6C  90 1E 00 00 */	stw r0, 0(r30)
/* 80227F30 00224E70  38 83 47 34 */	addi r4, r3, __dt__Q24Game16PelletConfigListFv@l
/* 80227F34 00224E74  80 7E 00 04 */	lwz r3, 4(r30)
/* 80227F38 00224E78  4B E9 98 11 */	bl __destroy_new_array
/* 80227F3C 00224E7C  38 60 00 00 */	li r3, 0
/* 80227F40 00224E80  7F E0 07 35 */	extsh. r0, r31
/* 80227F44 00224E84  90 7E 00 04 */	stw r3, 4(r30)
/* 80227F48 00224E88  40 81 00 0C */	ble .L_80227F54
/* 80227F4C 00224E8C  7F C3 F3 78 */	mr r3, r30
/* 80227F50 00224E90  4B DF C1 65 */	bl __dl__FPv
.L_80227F54:
/* 80227F54 00224E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227F58 00224E98  7F C3 F3 78 */	mr r3, r30
/* 80227F5C 00224E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227F60 00224EA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80227F64 00224EA4  7C 08 03 A6 */	mtlr r0
/* 80227F68 00224EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80227F6C 00224EAC  4E 80 00 20 */	blr 
.endfn __dt__Q34Game10PelletList3MgrFv

.fn loadResource__Q34Game10PelletList3MgrFv, global
/* 80227F70 00224EB0  94 21 F9 A0 */	stwu r1, -0x660(r1)
/* 80227F74 00224EB4  7C 08 02 A6 */	mflr r0
/* 80227F78 00224EB8  3C 80 80 51 */	lis r4, gGameConfig__4Game@ha
/* 80227F7C 00224EBC  3C A0 80 48 */	lis r5, lbl_80483320@ha
/* 80227F80 00224EC0  90 01 06 64 */	stw r0, 0x664(r1)
/* 80227F84 00224EC4  38 84 41 FC */	addi r4, r4, gGameConfig__4Game@l
/* 80227F88 00224EC8  BF 21 06 44 */	stmw r25, 0x644(r1)
/* 80227F8C 00224ECC  7C 7E 1B 78 */	mr r30, r3
/* 80227F90 00224ED0  3B E5 33 20 */	addi r31, r5, lbl_80483320@l
/* 80227F94 00224ED4  80 04 01 58 */	lwz r0, 0x158(r4)
/* 80227F98 00224ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80227F9C 00224EDC  41 82 00 84 */	beq .L_80228020
/* 80227FA0 00224EE0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80227FA4 00224EE4  80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 80227FA8 00224EE8  2C 00 00 04 */	cmpwi r0, 4
/* 80227FAC 00224EEC  41 82 00 58 */	beq .L_80228004
/* 80227FB0 00224EF0  40 80 00 14 */	bge .L_80227FC4
/* 80227FB4 00224EF4  2C 00 00 00 */	cmpwi r0, 0
/* 80227FB8 00224EF8  41 82 00 34 */	beq .L_80227FEC
/* 80227FBC 00224EFC  41 80 00 48 */	blt .L_80228004
/* 80227FC0 00224F00  48 00 00 44 */	b .L_80228004
.L_80227FC4:
/* 80227FC4 00224F04  2C 00 00 06 */	cmpwi r0, 6
/* 80227FC8 00224F08  41 82 00 3C */	beq .L_80228004
/* 80227FCC 00224F0C  40 80 00 38 */	bge .L_80228004
/* 80227FD0 00224F10  38 61 00 1C */	addi r3, r1, 0x1c
/* 80227FD4 00224F14  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80227FD8 00224F18  38 A2 BE E8 */	addi r5, r2, lbl_8051A248@sda21
/* 80227FDC 00224F1C  38 C2 BE E8 */	addi r6, r2, lbl_8051A248@sda21
/* 80227FE0 00224F20  4C C6 31 82 */	crclr 6
/* 80227FE4 00224F24  4B E9 F4 55 */	bl sprintf
/* 80227FE8 00224F28  48 00 00 1C */	b .L_80228004
.L_80227FEC:
/* 80227FEC 00224F2C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80227FF0 00224F30  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80227FF4 00224F34  38 A2 BE EC */	addi r5, r2, lbl_8051A24C@sda21
/* 80227FF8 00224F38  38 C2 BE EC */	addi r6, r2, lbl_8051A24C@sda21
/* 80227FFC 00224F3C  4C C6 31 82 */	crclr 6
/* 80228000 00224F40  4B E9 F4 39 */	bl sprintf
.L_80228004:
/* 80228004 00224F44  80 AD 88 2C */	lwz r5, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80228008 00224F48  38 61 00 1C */	addi r3, r1, 0x1c
/* 8022800C 00224F4C  38 80 00 01 */	li r4, 1
/* 80228010 00224F50  38 C0 00 02 */	li r6, 2
/* 80228014 00224F54  4B DF 31 1D */	bl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80228018 00224F58  7C 7B 1B 78 */	mr r27, r3
/* 8022801C 00224F5C  48 00 00 30 */	b .L_8022804C
.L_80228020:
/* 80228020 00224F60  38 7F 00 10 */	addi r3, r31, 0x10
/* 80228024 00224F64  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 80228028 00224F68  38 80 00 91 */	li r4, 0x91
/* 8022802C 00224F6C  4C C6 31 82 */	crclr 6
/* 80228030 00224F70  4B E0 26 11 */	bl panic_f__12JUTExceptionFPCciPCce
/* 80228034 00224F74  80 AD 88 2C */	lwz r5, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80228038 00224F78  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8022803C 00224F7C  38 80 00 01 */	li r4, 1
/* 80228040 00224F80  38 C0 00 02 */	li r6, 2
/* 80228044 00224F84  4B DF 30 ED */	bl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80228048 00224F88  7C 7B 1B 78 */	mr r27, r3
.L_8022804C:
/* 8022804C 00224F8C  28 1B 00 00 */	cmplwi r27, 0
/* 80228050 00224F90  40 82 00 18 */	bne .L_80228068
/* 80228054 00224F94  38 7F 00 10 */	addi r3, r31, 0x10
/* 80228058 00224F98  38 BF 01 00 */	addi r5, r31, 0x100
/* 8022805C 00224F9C  38 80 00 9A */	li r4, 0x9a
/* 80228060 00224FA0  4C C6 31 82 */	crclr 6
/* 80228064 00224FA4  4B E0 25 DD */	bl panic_f__12JUTExceptionFPCciPCce
.L_80228068:
/* 80228068 00224FA8  80 DF 00 94 */	lwz r6, 0x94(r31)
/* 8022806C 00224FAC  3B A1 00 08 */	addi r29, r1, 8
/* 80228070 00224FB0  80 BF 00 98 */	lwz r5, 0x98(r31)
/* 80228074 00224FB4  3B 40 00 00 */	li r26, 0
/* 80228078 00224FB8  80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 8022807C 00224FBC  3B 80 00 00 */	li r28, 0
/* 80228080 00224FC0  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 80228084 00224FC4  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80228088 00224FC8  90 C1 00 08 */	stw r6, 8(r1)
/* 8022808C 00224FCC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80228090 00224FD0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80228094 00224FD4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80228098 00224FD8  90 01 00 18 */	stw r0, 0x18(r1)
.L_8022809C:
/* 8022809C 00224FDC  7F 63 DB 78 */	mr r3, r27
/* 802280A0 00224FE0  80 9D 00 00 */	lwz r4, 0(r29)
/* 802280A4 00224FE4  81 9B 00 00 */	lwz r12, 0(r27)
/* 802280A8 00224FE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802280AC 00224FEC  7D 89 03 A6 */	mtctr r12
/* 802280B0 00224FF0  4E 80 04 21 */	bctrl 
/* 802280B4 00224FF4  7C 79 1B 79 */	or. r25, r3, r3
/* 802280B8 00224FF8  40 82 00 1C */	bne .L_802280D4
/* 802280BC 00224FFC  80 DD 00 00 */	lwz r6, 0(r29)
/* 802280C0 00225000  38 7F 00 10 */	addi r3, r31, 0x10
/* 802280C4 00225004  38 BF 01 14 */	addi r5, r31, 0x114
/* 802280C8 00225008  38 80 00 A8 */	li r4, 0xa8
/* 802280CC 0022500C  4C C6 31 82 */	crclr 6
/* 802280D0 00225010  4B E0 25 71 */	bl panic_f__12JUTExceptionFPCciPCce
.L_802280D4:
/* 802280D4 00225014  7F 24 CB 78 */	mr r4, r25
/* 802280D8 00225018  38 61 02 1C */	addi r3, r1, 0x21c
/* 802280DC 0022501C  38 A0 FF FF */	li r5, -1
/* 802280E0 00225020  48 1E D8 19 */	bl __ct__9RamStreamFPvi
/* 802280E4 00225024  38 00 00 01 */	li r0, 1
/* 802280E8 00225028  2C 00 00 01 */	cmpwi r0, 1
/* 802280EC 0022502C  90 01 02 28 */	stw r0, 0x228(r1)
/* 802280F0 00225030  40 82 00 0C */	bne .L_802280FC
/* 802280F4 00225034  38 00 00 00 */	li r0, 0
/* 802280F8 00225038  90 01 06 30 */	stw r0, 0x630(r1)
.L_802280FC:
/* 802280FC 0022503C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80228100 00225040  38 81 02 1C */	addi r4, r1, 0x21c
/* 80228104 00225044  7C 60 E2 14 */	add r3, r0, r28
/* 80228108 00225048  4B F8 C4 61 */	bl read__Q24Game16PelletConfigListFR6Stream
/* 8022810C 0022504C  3B 5A 00 01 */	addi r26, r26, 1
/* 80228110 00225050  3B 9C 00 20 */	addi r28, r28, 0x20
/* 80228114 00225054  2C 1A 00 05 */	cmpwi r26, 5
/* 80228118 00225058  3B BD 00 04 */	addi r29, r29, 4
/* 8022811C 0022505C  41 80 FF 80 */	blt .L_8022809C
/* 80228120 00225060  7F 63 DB 78 */	mr r3, r27
/* 80228124 00225064  81 9B 00 00 */	lwz r12, 0(r27)
/* 80228128 00225068  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8022812C 0022506C  7D 89 03 A6 */	mtctr r12
/* 80228130 00225070  4E 80 04 21 */	bctrl 
/* 80228134 00225074  BB 21 06 44 */	lmw r25, 0x644(r1)
/* 80228138 00225078  80 01 06 64 */	lwz r0, 0x664(r1)
/* 8022813C 0022507C  7C 08 03 A6 */	mtlr r0
/* 80228140 00225080  38 21 06 60 */	addi r1, r1, 0x660
/* 80228144 00225084  4E 80 00 20 */	blr 
.endfn loadResource__Q34Game10PelletList3MgrFv

.fn getDictionaryNum__Q34Game10PelletList3MgrFv, global
/* 80228148 00225088  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 8022814C 0022508C  80 83 00 04 */	lwz r4, 4(r3)
/* 80228150 00225090  80 64 00 98 */	lwz r3, 0x98(r4)
/* 80228154 00225094  80 04 00 78 */	lwz r0, 0x78(r4)
/* 80228158 00225098  7C 60 1A 14 */	add r3, r0, r3
/* 8022815C 0022509C  4E 80 00 20 */	blr 
.endfn getDictionaryNum__Q34Game10PelletList3MgrFv

.fn getConfigFromDictionaryNo__Q34Game10PelletList3MgrFi, global
/* 80228160 002250A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228164 002250A4  7C 08 02 A6 */	mflr r0
/* 80228168 002250A8  38 80 00 00 */	li r4, 0
/* 8022816C 002250AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228170 002250B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228174 002250B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80228178 002250B8  41 80 00 24 */	blt .L_8022819C
/* 8022817C 002250BC  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 80228180 002250C0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80228184 002250C4  80 65 00 98 */	lwz r3, 0x98(r5)
/* 80228188 002250C8  80 05 00 78 */	lwz r0, 0x78(r5)
/* 8022818C 002250CC  7C 00 1A 14 */	add r0, r0, r3
/* 80228190 002250D0  7C 1F 00 00 */	cmpw r31, r0
/* 80228194 002250D4  40 80 00 08 */	bge .L_8022819C
/* 80228198 002250D8  38 80 00 01 */	li r4, 1
.L_8022819C:
/* 8022819C 002250DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802281A0 002250E0  40 82 00 20 */	bne .L_802281C0
/* 802281A4 002250E4  3C 60 80 48 */	lis r3, lbl_80483330@ha
/* 802281A8 002250E8  3C A0 80 48 */	lis r5, lbl_80483344@ha
/* 802281AC 002250EC  38 63 33 30 */	addi r3, r3, lbl_80483330@l
/* 802281B0 002250F0  38 80 00 BC */	li r4, 0xbc
/* 802281B4 002250F4  38 A5 33 44 */	addi r5, r5, lbl_80483344@l
/* 802281B8 002250F8  4C C6 31 82 */	crclr 6
/* 802281BC 002250FC  4B E0 24 85 */	bl panic_f__12JUTExceptionFPCciPCce
.L_802281C0:
/* 802281C0 00225100  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 802281C4 00225104  7F E4 FB 78 */	mr r4, r31
/* 802281C8 00225108  80 63 00 04 */	lwz r3, 4(r3)
/* 802281CC 0022510C  38 63 00 60 */	addi r3, r3, 0x60
/* 802281D0 00225110  4B F8 C3 55 */	bl getPelletConfig_ByDictionaryNo__Q24Game16PelletConfigListFi
/* 802281D4 00225114  28 03 00 00 */	cmplwi r3, 0
/* 802281D8 00225118  40 82 00 18 */	bne .L_802281F0
/* 802281DC 0022511C  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 802281E0 00225120  7F E4 FB 78 */	mr r4, r31
/* 802281E4 00225124  80 63 00 04 */	lwz r3, 4(r3)
/* 802281E8 00225128  38 63 00 80 */	addi r3, r3, 0x80
/* 802281EC 0022512C  4B F8 C3 39 */	bl getPelletConfig_ByDictionaryNo__Q24Game16PelletConfigListFi
.L_802281F0:
/* 802281F0 00225130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802281F4 00225134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802281F8 00225138  7C 08 03 A6 */	mtlr r0
/* 802281FC 0022513C  38 21 00 10 */	addi r1, r1, 0x10
/* 80228200 00225140  4E 80 00 20 */	blr 
.endfn getConfigFromDictionaryNo__Q34Game10PelletList3MgrFi

.fn getOffsetFromDictionaryNo__Q34Game10PelletList3MgrFi, global
/* 80228204 00225144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80228208 00225148  7C 08 02 A6 */	mflr r0
/* 8022820C 0022514C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80228210 00225150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80228214 00225154  3B E0 00 00 */	li r31, 0
/* 80228218 00225158  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022821C 0022515C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80228220 00225160  7C 7D 1B 78 */	mr r29, r3
/* 80228224 00225164  7F A4 EB 78 */	mr r4, r29
/* 80228228 00225168  80 AD 95 D8 */	lwz r5, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 8022822C 0022516C  80 65 00 04 */	lwz r3, 4(r5)
/* 80228230 00225170  38 63 00 60 */	addi r3, r3, 0x60
/* 80228234 00225174  4B F8 C2 F1 */	bl getPelletConfig_ByDictionaryNo__Q24Game16PelletConfigListFi
/* 80228238 00225178  7C 7E 1B 79 */	or. r30, r3, r3
/* 8022823C 0022517C  40 82 00 20 */	bne .L_8022825C
/* 80228240 00225180  80 6D 95 D8 */	lwz r3, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 80228244 00225184  7F A4 EB 78 */	mr r4, r29
/* 80228248 00225188  80 63 00 04 */	lwz r3, 4(r3)
/* 8022824C 0022518C  83 E3 00 78 */	lwz r31, 0x78(r3)
/* 80228250 00225190  38 63 00 80 */	addi r3, r3, 0x80
/* 80228254 00225194  4B F8 C2 D1 */	bl getPelletConfig_ByDictionaryNo__Q24Game16PelletConfigListFi
/* 80228258 00225198  7C 7E 1B 78 */	mr r30, r3
.L_8022825C:
/* 8022825C 0022519C  28 1E 00 00 */	cmplwi r30, 0
/* 80228260 002251A0  40 82 00 24 */	bne .L_80228284
/* 80228264 002251A4  3C 60 80 48 */	lis r3, lbl_80483330@ha
/* 80228268 002251A8  3C 80 80 48 */	lis r4, lbl_8048344C@ha
/* 8022826C 002251AC  38 A4 34 4C */	addi r5, r4, lbl_8048344C@l
/* 80228270 002251B0  7F A6 EB 78 */	mr r6, r29
/* 80228274 002251B4  38 63 33 30 */	addi r3, r3, lbl_80483330@l
/* 80228278 002251B8  38 80 00 D2 */	li r4, 0xd2
/* 8022827C 002251BC  4C C6 31 82 */	crclr 6
/* 80228280 002251C0  4B E0 23 C1 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80228284:
/* 80228284 002251C4  A8 1E 02 58 */	lha r0, 0x258(r30)
/* 80228288 002251C8  7C 7F 02 14 */	add r3, r31, r0
/* 8022828C 002251CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80228290 002251D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80228294 002251D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80228298 002251D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8022829C 002251DC  7C 08 03 A6 */	mtlr r0
/* 802282A0 002251E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802282A4 002251E4  4E 80 00 20 */	blr 
.endfn getOffsetFromDictionaryNo__Q34Game10PelletList3MgrFi

.fn globalInstance__Q34Game10PelletList3MgrFv, global
/* 802282A8 002251E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802282AC 002251EC  7C 08 02 A6 */	mflr r0
/* 802282B0 002251F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802282B4 002251F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802282B8 002251F8  80 0D 95 D8 */	lwz r0, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
/* 802282BC 002251FC  28 00 00 00 */	cmplwi r0, 0
/* 802282C0 00225200  40 82 00 54 */	bne .L_80228314
/* 802282C4 00225204  38 60 00 08 */	li r3, 8
/* 802282C8 00225208  4B DF BB DD */	bl __nw__FUl
/* 802282CC 0022520C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802282D0 00225210  41 82 00 40 */	beq .L_80228310
/* 802282D4 00225214  3C 80 80 4C */	lis r4, __vt__Q34Game10PelletList3Mgr@ha
/* 802282D8 00225218  38 60 00 B0 */	li r3, 0xb0
/* 802282DC 0022521C  38 04 0D D8 */	addi r0, r4, __vt__Q34Game10PelletList3Mgr@l
/* 802282E0 00225220  90 1F 00 00 */	stw r0, 0(r31)
/* 802282E4 00225224  4B DF BC C9 */	bl __nwa__FUl
/* 802282E8 00225228  3C 80 80 1B */	lis r4, __ct__Q24Game16PelletConfigListFv@ha
/* 802282EC 0022522C  3C A0 80 1B */	lis r5, __dt__Q24Game16PelletConfigListFv@ha
/* 802282F0 00225230  38 84 3E EC */	addi r4, r4, __ct__Q24Game16PelletConfigListFv@l
/* 802282F4 00225234  38 C0 00 20 */	li r6, 0x20
/* 802282F8 00225238  38 A5 47 34 */	addi r5, r5, __dt__Q24Game16PelletConfigListFv@l
/* 802282FC 0022523C  38 E0 00 05 */	li r7, 5
/* 80228300 00225240  4B E9 96 F1 */	bl __construct_new_array
/* 80228304 00225244  90 7F 00 04 */	stw r3, 4(r31)
/* 80228308 00225248  7F E3 FB 78 */	mr r3, r31
/* 8022830C 0022524C  4B FF FC 65 */	bl loadResource__Q34Game10PelletList3MgrFv
.L_80228310:
/* 80228310 00225250  93 ED 95 D8 */	stw r31, mInstance__Q34Game10PelletList3Mgr@sda21(r13)
.L_80228314:
/* 80228314 00225254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228318 00225258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022831C 0022525C  7C 08 03 A6 */	mtlr r0
/* 80228320 00225260  38 21 00 10 */	addi r1, r1, 0x10
/* 80228324 00225264  4E 80 00 20 */	blr 
.endfn globalInstance__Q34Game10PelletList3MgrFv
