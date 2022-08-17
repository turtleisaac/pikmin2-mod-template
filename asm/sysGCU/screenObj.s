.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_8049BA58:
	.asciz "screenObj.cpp"
.balign 4
lbl_8049BA68:
	.asciz "P2Assert"

.section .data, "wa"	# 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q26Screen7ObjBase
__vt__Q26Screen7ObjBase:
	.4byte 0
	.4byte 0
	.4byte __dt__Q26Screen7ObjBaseFv
	.4byte getChildCount__5CNodeFv
	.4byte 0
	.4byte 0
	.4byte "@24@__dt__Q26Screen7ObjBaseFv"
	.4byte update__Q26Screen7ObjBaseFv
	.4byte draw__Q26Screen7ObjBaseFR8Graphics
	.4byte start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
	.4byte end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
	.4byte setOwner__Q26Screen7ObjBaseFPQ26Screen9SceneBase
	.4byte getOwner__Q26Screen7ObjBaseCFv
	.4byte create__Q26Screen7ObjBaseFP10JKRArchive
	.4byte confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
	.4byte confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
	.4byte confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg
	.4byte doStart__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
	.4byte doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
	.4byte doCreate__Q26Screen7ObjBaseFP10JKRArchive
	.4byte doUpdateFadein__Q26Screen7ObjBaseFv
	.4byte doUpdateFadeinFinish__Q26Screen7ObjBaseFv
	.4byte doUpdate__Q26Screen7ObjBaseFv
	.4byte doUpdateFinish__Q26Screen7ObjBaseFv
	.4byte doUpdateFadeout__Q26Screen7ObjBaseFv
	.4byte doUpdateFadeoutFinish__Q26Screen7ObjBaseFv
	.4byte doDraw__Q26Screen7ObjBaseFR8Graphics
	.4byte doConfirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
	.4byte doConfirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
	.4byte doConfirmEndScene__Q26Screen7ObjBaseFRPQ26Screen11EndSceneArg

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_80520B88:
	.asciz "No Name"
.balign 4
lbl_80520B90:
	.float 0.0
lbl_80520B94:
	.float 100.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q26Screen7ObjBaseFv
__ct__Q26Screen7ObjBaseFv:
/* 80453AE8 00450A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453AEC 00450A2C  7C 08 02 A6 */	mflr r0
/* 80453AF0 00450A30  3C 80 80 4F */	lis r4, __vt__5CNode@ha
/* 80453AF4 00450A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453AF8 00450A38  38 04 B5 28 */	addi r0, r4, __vt__5CNode@l
/* 80453AFC 00450A3C  38 80 00 00 */	li r4, 0
/* 80453B00 00450A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80453B04 00450A44  7C 7F 1B 78 */	mr r31, r3
/* 80453B08 00450A48  90 03 00 00 */	stw r0, 0(r3)
/* 80453B0C 00450A4C  38 02 28 28 */	addi r0, r2, lbl_80520B88@sda21
/* 80453B10 00450A50  90 83 00 10 */	stw r4, 0x10(r3)
/* 80453B14 00450A54  38 7F 00 18 */	addi r3, r31, 0x18
/* 80453B18 00450A58  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80453B1C 00450A5C  90 9F 00 08 */	stw r4, 8(r31)
/* 80453B20 00450A60  90 9F 00 04 */	stw r4, 4(r31)
/* 80453B24 00450A64  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80453B28 00450A68  4B BC 94 A5 */	bl __ct__11JKRDisposerFv
/* 80453B2C 00450A6C  3C 80 80 4E */	lis r4, __vt__Q26Screen8IObjBase@ha
/* 80453B30 00450A70  3C 60 80 4F */	lis r3, __vt__Q26Screen7ObjBase@ha
/* 80453B34 00450A74  38 84 82 40 */	addi r4, r4, __vt__Q26Screen8IObjBase@l
/* 80453B38 00450A78  38 00 00 00 */	li r0, 0
/* 80453B3C 00450A7C  90 9F 00 00 */	stw r4, 0(r31)
/* 80453B40 00450A80  38 84 00 10 */	addi r4, r4, 0x10
/* 80453B44 00450A84  38 A3 D7 58 */	addi r5, r3, __vt__Q26Screen7ObjBase@l
/* 80453B48 00450A88  7F E3 FB 78 */	mr r3, r31
/* 80453B4C 00450A8C  90 9F 00 18 */	stw r4, 0x18(r31)
/* 80453B50 00450A90  38 85 00 10 */	addi r4, r5, 0x10
/* 80453B54 00450A94  90 BF 00 00 */	stw r5, 0(r31)
/* 80453B58 00450A98  90 9F 00 18 */	stw r4, 0x18(r31)
/* 80453B5C 00450A9C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80453B60 00450AA0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80453B64 00450AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80453B68 00450AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453B6C 00450AAC  7C 08 03 A6 */	mtlr r0
/* 80453B70 00450AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80453B74 00450AB4  4E 80 00 20 */	blr 

.global create__Q26Screen7ObjBaseFP10JKRArchive
create__Q26Screen7ObjBaseFP10JKRArchive:
/* 80453B78 00450AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453B7C 00450ABC  7C 08 02 A6 */	mflr r0
/* 80453B80 00450AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453B84 00450AC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80453B88 00450AC8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80453B8C 00450ACC  7D 89 03 A6 */	mtctr r12
/* 80453B90 00450AD0  4E 80 04 21 */	bctrl 
/* 80453B94 00450AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453B98 00450AD8  7C 08 03 A6 */	mtlr r0
/* 80453B9C 00450ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80453BA0 00450AE0  4E 80 00 20 */	blr 

.global start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg:
/* 80453BA4 00450AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453BA8 00450AE8  7C 08 02 A6 */	mflr r0
/* 80453BAC 00450AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453BB0 00450AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80453BB4 00450AF4  3B E0 00 00 */	li r31, 0
/* 80453BB8 00450AF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80453BBC 00450AFC  7C 7E 1B 78 */	mr r30, r3
/* 80453BC0 00450B00  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80453BC4 00450B04  2C 00 00 01 */	cmpwi r0, 1
/* 80453BC8 00450B08  41 82 00 48 */	beq lbl_80453C10
/* 80453BCC 00450B0C  40 80 00 10 */	bge lbl_80453BDC
/* 80453BD0 00450B10  2C 00 00 00 */	cmpwi r0, 0
/* 80453BD4 00450B14  40 80 00 14 */	bge lbl_80453BE8
/* 80453BD8 00450B18  48 00 00 40 */	b lbl_80453C18
lbl_80453BDC:
/* 80453BDC 00450B1C  2C 00 00 04 */	cmpwi r0, 4
/* 80453BE0 00450B20  40 80 00 38 */	bge lbl_80453C18
/* 80453BE4 00450B24  48 00 00 50 */	b lbl_80453C34
lbl_80453BE8:
/* 80453BE8 00450B28  81 83 00 00 */	lwz r12, 0(r3)
/* 80453BEC 00450B2C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80453BF0 00450B30  7D 89 03 A6 */	mtctr r12
/* 80453BF4 00450B34  4E 80 04 21 */	bctrl 
/* 80453BF8 00450B38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80453BFC 00450B3C  41 82 00 38 */	beq lbl_80453C34
/* 80453C00 00450B40  38 00 00 01 */	li r0, 1
/* 80453C04 00450B44  3B E0 00 01 */	li r31, 1
/* 80453C08 00450B48  90 1E 00 30 */	stw r0, 0x30(r30)
/* 80453C0C 00450B4C  48 00 00 28 */	b lbl_80453C34
lbl_80453C10:
/* 80453C10 00450B50  3B E0 00 01 */	li r31, 1
/* 80453C14 00450B54  48 00 00 20 */	b lbl_80453C34
lbl_80453C18:
/* 80453C18 00450B58  3C 60 80 4A */	lis r3, lbl_8049BA58@ha
/* 80453C1C 00450B5C  3C A0 80 4A */	lis r5, lbl_8049BA68@ha
/* 80453C20 00450B60  38 63 BA 58 */	addi r3, r3, lbl_8049BA58@l
/* 80453C24 00450B64  38 80 00 61 */	li r4, 0x61
/* 80453C28 00450B68  38 A5 BA 68 */	addi r5, r5, lbl_8049BA68@l
/* 80453C2C 00450B6C  4C C6 31 82 */	crclr 6
/* 80453C30 00450B70  4B BD 6A 11 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80453C34:
/* 80453C34 00450B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453C38 00450B78  7F E3 FB 78 */	mr r3, r31
/* 80453C3C 00450B7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80453C40 00450B80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80453C44 00450B84  7C 08 03 A6 */	mtlr r0
/* 80453C48 00450B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80453C4C 00450B8C  4E 80 00 20 */	blr 

.global end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg:
/* 80453C50 00450B90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80453C54 00450B94  7C 08 02 A6 */	mflr r0
/* 80453C58 00450B98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80453C5C 00450B9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80453C60 00450BA0  3B E0 00 00 */	li r31, 0
/* 80453C64 00450BA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80453C68 00450BA8  7C 9E 23 78 */	mr r30, r4
/* 80453C6C 00450BAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80453C70 00450BB0  7C 7D 1B 78 */	mr r29, r3
/* 80453C74 00450BB4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80453C78 00450BB8  2C 00 00 02 */	cmpwi r0, 2
/* 80453C7C 00450BBC  41 82 00 24 */	beq lbl_80453CA0
/* 80453C80 00450BC0  40 80 00 14 */	bge lbl_80453C94
/* 80453C84 00450BC4  2C 00 00 00 */	cmpwi r0, 0
/* 80453C88 00450BC8  41 82 00 88 */	beq lbl_80453D10
/* 80453C8C 00450BCC  40 80 00 DC */	bge lbl_80453D68
/* 80453C90 00450BD0  48 00 00 BC */	b lbl_80453D4C
lbl_80453C94:
/* 80453C94 00450BD4  2C 00 00 04 */	cmpwi r0, 4
/* 80453C98 00450BD8  40 80 00 B4 */	bge lbl_80453D4C
/* 80453C9C 00450BDC  48 00 00 7C */	b lbl_80453D18
lbl_80453CA0:
/* 80453CA0 00450BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80453CA4 00450BE4  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80453CA8 00450BE8  7D 89 03 A6 */	mtctr r12
/* 80453CAC 00450BEC  4E 80 04 21 */	bctrl 
/* 80453CB0 00450BF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80453CB4 00450BF4  41 82 00 B4 */	beq lbl_80453D68
/* 80453CB8 00450BF8  7F A3 EB 78 */	mr r3, r29
/* 80453CBC 00450BFC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80453CC0 00450C00  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80453CC4 00450C04  7D 89 03 A6 */	mtctr r12
/* 80453CC8 00450C08  4E 80 04 21 */	bctrl 
/* 80453CCC 00450C0C  28 1E 00 00 */	cmplwi r30, 0
/* 80453CD0 00450C10  41 82 00 30 */	beq lbl_80453D00
/* 80453CD4 00450C14  88 1E 00 04 */	lbz r0, 4(r30)
/* 80453CD8 00450C18  28 00 00 00 */	cmplwi r0, 0
/* 80453CDC 00450C1C  41 82 00 24 */	beq lbl_80453D00
/* 80453CE0 00450C20  7F A3 EB 78 */	mr r3, r29
/* 80453CE4 00450C24  81 9D 00 00 */	lwz r12, 0(r29)
/* 80453CE8 00450C28  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80453CEC 00450C2C  7D 89 03 A6 */	mtctr r12
/* 80453CF0 00450C30  4E 80 04 21 */	bctrl 
/* 80453CF4 00450C34  38 00 00 00 */	li r0, 0
/* 80453CF8 00450C38  90 1D 00 30 */	stw r0, 0x30(r29)
/* 80453CFC 00450C3C  48 00 00 0C */	b lbl_80453D08
lbl_80453D00:
/* 80453D00 00450C40  38 00 00 03 */	li r0, 3
/* 80453D04 00450C44  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_80453D08:
/* 80453D08 00450C48  3B E0 00 01 */	li r31, 1
/* 80453D0C 00450C4C  48 00 00 5C */	b lbl_80453D68
lbl_80453D10:
/* 80453D10 00450C50  3B E0 00 01 */	li r31, 1
/* 80453D14 00450C54  48 00 00 54 */	b lbl_80453D68
lbl_80453D18:
/* 80453D18 00450C58  28 1E 00 00 */	cmplwi r30, 0
/* 80453D1C 00450C5C  41 82 00 28 */	beq lbl_80453D44
/* 80453D20 00450C60  88 1E 00 04 */	lbz r0, 4(r30)
/* 80453D24 00450C64  28 00 00 00 */	cmplwi r0, 0
/* 80453D28 00450C68  41 82 00 1C */	beq lbl_80453D44
/* 80453D2C 00450C6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80453D30 00450C70  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80453D34 00450C74  7D 89 03 A6 */	mtctr r12
/* 80453D38 00450C78  4E 80 04 21 */	bctrl 
/* 80453D3C 00450C7C  38 00 00 00 */	li r0, 0
/* 80453D40 00450C80  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_80453D44:
/* 80453D44 00450C84  3B E0 00 01 */	li r31, 1
/* 80453D48 00450C88  48 00 00 20 */	b lbl_80453D68
lbl_80453D4C:
/* 80453D4C 00450C8C  3C 60 80 4A */	lis r3, lbl_8049BA58@ha
/* 80453D50 00450C90  3C A0 80 4A */	lis r5, lbl_8049BA68@ha
/* 80453D54 00450C94  38 63 BA 58 */	addi r3, r3, lbl_8049BA58@l
/* 80453D58 00450C98  38 80 00 91 */	li r4, 0x91
/* 80453D5C 00450C9C  38 A5 BA 68 */	addi r5, r5, lbl_8049BA68@l
/* 80453D60 00450CA0  4C C6 31 82 */	crclr 6
/* 80453D64 00450CA4  4B BD 68 DD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80453D68:
/* 80453D68 00450CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80453D6C 00450CAC  7F E3 FB 78 */	mr r3, r31
/* 80453D70 00450CB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80453D74 00450CB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80453D78 00450CB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80453D7C 00450CBC  7C 08 03 A6 */	mtlr r0
/* 80453D80 00450CC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80453D84 00450CC4  4E 80 00 20 */	blr 

.global update__Q26Screen7ObjBaseFv
update__Q26Screen7ObjBaseFv:
/* 80453D88 00450CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453D8C 00450CCC  7C 08 02 A6 */	mflr r0
/* 80453D90 00450CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453D94 00450CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80453D98 00450CD8  3B E0 00 00 */	li r31, 0
/* 80453D9C 00450CDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80453DA0 00450CE0  7C 7E 1B 78 */	mr r30, r3
/* 80453DA4 00450CE4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80453DA8 00450CE8  2C 00 00 02 */	cmpwi r0, 2
/* 80453DAC 00450CEC  41 82 00 64 */	beq lbl_80453E10
/* 80453DB0 00450CF0  40 80 00 14 */	bge lbl_80453DC4
/* 80453DB4 00450CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80453DB8 00450CF8  41 82 00 18 */	beq lbl_80453DD0
/* 80453DBC 00450CFC  40 80 00 1C */	bge lbl_80453DD8
/* 80453DC0 00450D00  48 00 00 BC */	b lbl_80453E7C
lbl_80453DC4:
/* 80453DC4 00450D04  2C 00 00 04 */	cmpwi r0, 4
/* 80453DC8 00450D08  40 80 00 B4 */	bge lbl_80453E7C
/* 80453DCC 00450D0C  48 00 00 7C */	b lbl_80453E48
lbl_80453DD0:
/* 80453DD0 00450D10  3B E0 00 01 */	li r31, 1
/* 80453DD4 00450D14  48 00 00 A8 */	b lbl_80453E7C
lbl_80453DD8:
/* 80453DD8 00450D18  81 83 00 00 */	lwz r12, 0(r3)
/* 80453DDC 00450D1C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80453DE0 00450D20  7D 89 03 A6 */	mtctr r12
/* 80453DE4 00450D24  4E 80 04 21 */	bctrl 
/* 80453DE8 00450D28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80453DEC 00450D2C  41 82 00 90 */	beq lbl_80453E7C
/* 80453DF0 00450D30  7F C3 F3 78 */	mr r3, r30
/* 80453DF4 00450D34  81 9E 00 00 */	lwz r12, 0(r30)
/* 80453DF8 00450D38  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80453DFC 00450D3C  7D 89 03 A6 */	mtctr r12
/* 80453E00 00450D40  4E 80 04 21 */	bctrl 
/* 80453E04 00450D44  38 00 00 02 */	li r0, 2
/* 80453E08 00450D48  90 1E 00 30 */	stw r0, 0x30(r30)
/* 80453E0C 00450D4C  48 00 00 70 */	b lbl_80453E7C
lbl_80453E10:
/* 80453E10 00450D50  81 83 00 00 */	lwz r12, 0(r3)
/* 80453E14 00450D54  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80453E18 00450D58  7D 89 03 A6 */	mtctr r12
/* 80453E1C 00450D5C  4E 80 04 21 */	bctrl 
/* 80453E20 00450D60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80453E24 00450D64  41 82 00 58 */	beq lbl_80453E7C
/* 80453E28 00450D68  7F C3 F3 78 */	mr r3, r30
/* 80453E2C 00450D6C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80453E30 00450D70  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80453E34 00450D74  7D 89 03 A6 */	mtctr r12
/* 80453E38 00450D78  4E 80 04 21 */	bctrl 
/* 80453E3C 00450D7C  38 00 00 03 */	li r0, 3
/* 80453E40 00450D80  90 1E 00 30 */	stw r0, 0x30(r30)
/* 80453E44 00450D84  48 00 00 38 */	b lbl_80453E7C
lbl_80453E48:
/* 80453E48 00450D88  81 83 00 00 */	lwz r12, 0(r3)
/* 80453E4C 00450D8C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80453E50 00450D90  7D 89 03 A6 */	mtctr r12
/* 80453E54 00450D94  4E 80 04 21 */	bctrl 
/* 80453E58 00450D98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80453E5C 00450D9C  41 82 00 20 */	beq lbl_80453E7C
/* 80453E60 00450DA0  7F C3 F3 78 */	mr r3, r30
/* 80453E64 00450DA4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80453E68 00450DA8  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80453E6C 00450DAC  7D 89 03 A6 */	mtctr r12
/* 80453E70 00450DB0  4E 80 04 21 */	bctrl 
/* 80453E74 00450DB4  38 00 00 00 */	li r0, 0
/* 80453E78 00450DB8  90 1E 00 30 */	stw r0, 0x30(r30)
lbl_80453E7C:
/* 80453E7C 00450DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453E80 00450DC0  7F E3 FB 78 */	mr r3, r31
/* 80453E84 00450DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80453E88 00450DC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80453E8C 00450DCC  7C 08 03 A6 */	mtlr r0
/* 80453E90 00450DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80453E94 00450DD4  4E 80 00 20 */	blr 

.global draw__Q26Screen7ObjBaseFR8Graphics
draw__Q26Screen7ObjBaseFR8Graphics:
/* 80453E98 00450DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453E9C 00450DDC  7C 08 02 A6 */	mflr r0
/* 80453EA0 00450DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453EA4 00450DE4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80453EA8 00450DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80453EAC 00450DEC  41 82 00 14 */	beq lbl_80453EC0
/* 80453EB0 00450DF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80453EB4 00450DF4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80453EB8 00450DF8  7D 89 03 A6 */	mtctr r12
/* 80453EBC 00450DFC  4E 80 04 21 */	bctrl 
lbl_80453EC0:
/* 80453EC0 00450E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453EC4 00450E04  7C 08 03 A6 */	mtlr r0
/* 80453EC8 00450E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80453ECC 00450E0C  4E 80 00 20 */	blr 

.global doDraw__Q26Screen7ObjBaseFR8Graphics
doDraw__Q26Screen7ObjBaseFR8Graphics:
/* 80453ED0 00450E10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80453ED4 00450E14  7C 08 02 A6 */	mflr r0
/* 80453ED8 00450E18  C0 22 28 30 */	lfs f1, lbl_80520B90@sda21(r2)
/* 80453EDC 00450E1C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80453EE0 00450E20  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80453EE4 00450E24  7C 7F 1B 78 */	mr r31, r3
/* 80453EE8 00450E28  38 61 00 18 */	addi r3, r1, 0x18
/* 80453EEC 00450E2C  80 8D 89 D8 */	lwz r4, systemFont__9JFWSystem@sda21(r13)
/* 80453EF0 00450E30  4B BE 98 61 */	bl __ct__8J2DPrintFP7JUTFontf
/* 80453EF4 00450E34  38 61 00 18 */	addi r3, r1, 0x18
/* 80453EF8 00450E38  4B BE 9A 61 */	bl initiate__8J2DPrintFv
/* 80453EFC 00450E3C  38 A0 00 FF */	li r5, 0xff
/* 80453F00 00450E40  C0 22 28 34 */	lfs f1, lbl_80520B94@sda21(r2)
/* 80453F04 00450E44  98 A1 00 10 */	stb r5, 0x10(r1)
/* 80453F08 00450E48  38 61 00 18 */	addi r3, r1, 0x18
/* 80453F0C 00450E4C  FC 40 08 90 */	fmr f2, f1
/* 80453F10 00450E50  98 A1 00 11 */	stb r5, 0x11(r1)
/* 80453F14 00450E54  98 A1 00 12 */	stb r5, 0x12(r1)
/* 80453F18 00450E58  98 A1 00 13 */	stb r5, 0x13(r1)
/* 80453F1C 00450E5C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80453F20 00450E60  98 A1 00 08 */	stb r5, 8(r1)
/* 80453F24 00450E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453F28 00450E68  88 81 00 14 */	lbz r4, 0x14(r1)
/* 80453F2C 00450E6C  89 21 00 15 */	lbz r9, 0x15(r1)
/* 80453F30 00450E70  89 01 00 16 */	lbz r8, 0x16(r1)
/* 80453F34 00450E74  88 E1 00 17 */	lbz r7, 0x17(r1)
/* 80453F38 00450E78  98 A1 00 09 */	stb r5, 9(r1)
/* 80453F3C 00450E7C  98 A1 00 0A */	stb r5, 0xa(r1)
/* 80453F40 00450E80  98 A1 00 0B */	stb r5, 0xb(r1)
/* 80453F44 00450E84  80 01 00 08 */	lwz r0, 8(r1)
/* 80453F48 00450E88  98 81 00 58 */	stb r4, 0x58(r1)
/* 80453F4C 00450E8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80453F50 00450E90  88 C1 00 0C */	lbz r6, 0xc(r1)
/* 80453F54 00450E94  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 80453F58 00450E98  88 81 00 0E */	lbz r4, 0xe(r1)
/* 80453F5C 00450E9C  88 01 00 0F */	lbz r0, 0xf(r1)
/* 80453F60 00450EA0  99 21 00 59 */	stb r9, 0x59(r1)
/* 80453F64 00450EA4  99 01 00 5A */	stb r8, 0x5a(r1)
/* 80453F68 00450EA8  98 E1 00 5B */	stb r7, 0x5b(r1)
/* 80453F6C 00450EAC  98 C1 00 5C */	stb r6, 0x5c(r1)
/* 80453F70 00450EB0  98 A1 00 5D */	stb r5, 0x5d(r1)
/* 80453F74 00450EB4  98 81 00 5E */	stb r4, 0x5e(r1)
/* 80453F78 00450EB8  98 01 00 5F */	stb r0, 0x5f(r1)
/* 80453F7C 00450EBC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80453F80 00450EC0  4C C6 32 42 */	crset 6
/* 80453F84 00450EC4  4B BE 9D 75 */	bl print__8J2DPrintFffPCce
/* 80453F88 00450EC8  38 61 00 18 */	addi r3, r1, 0x18
/* 80453F8C 00450ECC  38 80 FF FF */	li r4, -1
/* 80453F90 00450ED0  4B BE 99 81 */	bl __dt__8J2DPrintFv
/* 80453F94 00450ED4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80453F98 00450ED8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80453F9C 00450EDC  7C 08 03 A6 */	mtlr r0
/* 80453FA0 00450EE0  38 21 00 80 */	addi r1, r1, 0x80
/* 80453FA4 00450EE4  4E 80 00 20 */	blr 

.global getDispMember__Q26Screen7ObjBaseFv
getDispMember__Q26Screen7ObjBaseFv:
/* 80453FA8 00450EE8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80453FAC 00450EEC  80 63 02 1C */	lwz r3, 0x21c(r3)
/* 80453FB0 00450EF0  4E 80 00 20 */	blr 

.global confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg:
/* 80453FB4 00450EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453FB8 00450EF8  7C 08 02 A6 */	mflr r0
/* 80453FBC 00450EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453FC0 00450F00  81 83 00 00 */	lwz r12, 0(r3)
/* 80453FC4 00450F04  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80453FC8 00450F08  7D 89 03 A6 */	mtctr r12
/* 80453FCC 00450F0C  4E 80 04 21 */	bctrl 
/* 80453FD0 00450F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453FD4 00450F14  7C 08 03 A6 */	mtlr r0
/* 80453FD8 00450F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80453FDC 00450F1C  4E 80 00 20 */	blr 

.global confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg:
/* 80453FE0 00450F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453FE4 00450F24  7C 08 02 A6 */	mflr r0
/* 80453FE8 00450F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453FEC 00450F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80453FF0 00450F30  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80453FF4 00450F34  7D 89 03 A6 */	mtctr r12
/* 80453FF8 00450F38  4E 80 04 21 */	bctrl 
/* 80453FFC 00450F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454000 00450F40  7C 08 03 A6 */	mtlr r0
/* 80454004 00450F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80454008 00450F48  4E 80 00 20 */	blr 

.global confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg
confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg:
/* 8045400C 00450F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454010 00450F50  7C 08 02 A6 */	mflr r0
/* 80454014 00450F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454018 00450F58  90 81 00 08 */	stw r4, 8(r1)
/* 8045401C 00450F5C  38 81 00 08 */	addi r4, r1, 8
/* 80454020 00450F60  81 83 00 00 */	lwz r12, 0(r3)
/* 80454024 00450F64  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80454028 00450F68  7D 89 03 A6 */	mtctr r12
/* 8045402C 00450F6C  4E 80 04 21 */	bctrl 
/* 80454030 00450F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454034 00450F74  7C 08 03 A6 */	mtlr r0
/* 80454038 00450F78  38 21 00 10 */	addi r1, r1, 0x10
/* 8045403C 00450F7C  4E 80 00 20 */	blr 

.global getGamePad__Q26Screen7ObjBaseCFv
getGamePad__Q26Screen7ObjBaseCFv:
/* 80454040 00450F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454044 00450F84  7C 08 02 A6 */	mflr r0
/* 80454048 00450F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045404C 00450F8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80454050 00450F90  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80454054 00450F94  7D 89 03 A6 */	mtctr r12
/* 80454058 00450F98  4E 80 04 21 */	bctrl 
/* 8045405C 00450F9C  4B FF E1 D5 */	bl getGamePad__Q26Screen9SceneBaseCFv
/* 80454060 00450FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454064 00450FA4  7C 08 03 A6 */	mtlr r0
/* 80454068 00450FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045406C 00450FAC  4E 80 00 20 */	blr 

.global __ct__Q26Screen10ObjMgrBaseFv
__ct__Q26Screen10ObjMgrBaseFv:
/* 80454070 00450FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454074 00450FB4  7C 08 02 A6 */	mflr r0
/* 80454078 00450FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045407C 00450FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454080 00450FC0  7C 7F 1B 78 */	mr r31, r3
/* 80454084 00450FC4  4B FB D3 0D */	bl __ct__5CNodeFv
/* 80454088 00450FC8  38 00 00 00 */	li r0, 0
/* 8045408C 00450FCC  7F E3 FB 78 */	mr r3, r31
/* 80454090 00450FD0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80454094 00450FD4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80454098 00450FD8  90 1F 00 08 */	stw r0, 8(r31)
/* 8045409C 00450FDC  90 1F 00 04 */	stw r0, 4(r31)
/* 804540A0 00450FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804540A4 00450FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804540A8 00450FE8  7C 08 03 A6 */	mtlr r0
/* 804540AC 00450FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804540B0 00450FF0  4E 80 00 20 */	blr 

.global registObj__Q26Screen10ObjMgrBaseFPQ26Screen8IObjBasePQ26Screen9SceneBase
registObj__Q26Screen10ObjMgrBaseFPQ26Screen8IObjBasePQ26Screen9SceneBase:
/* 804540B4 00450FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804540B8 00450FF8  7C 08 02 A6 */	mflr r0
/* 804540BC 00450FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804540C0 00451000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804540C4 00451004  7C 9F 23 78 */	mr r31, r4
/* 804540C8 00451008  7C A4 2B 78 */	mr r4, r5
/* 804540CC 0045100C  93 C1 00 08 */	stw r30, 8(r1)
/* 804540D0 00451010  7C 7E 1B 78 */	mr r30, r3
/* 804540D4 00451014  7F E3 FB 78 */	mr r3, r31
/* 804540D8 00451018  81 9F 00 00 */	lwz r12, 0(r31)
/* 804540DC 0045101C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 804540E0 00451020  7D 89 03 A6 */	mtctr r12
/* 804540E4 00451024  4E 80 04 21 */	bctrl 
/* 804540E8 00451028  7F C3 F3 78 */	mr r3, r30
/* 804540EC 0045102C  7F E4 FB 78 */	mr r4, r31
/* 804540F0 00451030  4B FB D3 19 */	bl add__5CNodeFP5CNode
/* 804540F4 00451034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804540F8 00451038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804540FC 0045103C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80454100 00451040  7C 08 03 A6 */	mtlr r0
/* 80454104 00451044  38 21 00 10 */	addi r1, r1, 0x10
/* 80454108 00451048  4E 80 00 20 */	blr 

.global update__Q26Screen10ObjMgrBaseFv
update__Q26Screen10ObjMgrBaseFv:
/* 8045410C 0045104C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454110 00451050  7C 08 02 A6 */	mflr r0
/* 80454114 00451054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454118 00451058  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045411C 0045105C  3B E0 00 01 */	li r31, 1
/* 80454120 00451060  93 C1 00 08 */	stw r30, 8(r1)
/* 80454124 00451064  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80454128 00451068  48 00 00 28 */	b lbl_80454150
lbl_8045412C:
/* 8045412C 0045106C  81 83 00 00 */	lwz r12, 0(r3)
/* 80454130 00451070  83 C3 00 04 */	lwz r30, 4(r3)
/* 80454134 00451074  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80454138 00451078  7D 89 03 A6 */	mtctr r12
/* 8045413C 0045107C  4E 80 04 21 */	bctrl 
/* 80454140 00451080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80454144 00451084  40 82 00 08 */	bne lbl_8045414C
/* 80454148 00451088  3B E0 00 00 */	li r31, 0
lbl_8045414C:
/* 8045414C 0045108C  7F C3 F3 78 */	mr r3, r30
lbl_80454150:
/* 80454150 00451090  28 03 00 00 */	cmplwi r3, 0
/* 80454154 00451094  40 82 FF D8 */	bne lbl_8045412C
/* 80454158 00451098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045415C 0045109C  7F E3 FB 78 */	mr r3, r31
/* 80454160 004510A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454164 004510A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80454168 004510A8  7C 08 03 A6 */	mtlr r0
/* 8045416C 004510AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80454170 004510B0  4E 80 00 20 */	blr 

.global draw__Q26Screen10ObjMgrBaseFR8Graphics
draw__Q26Screen10ObjMgrBaseFR8Graphics:
/* 80454174 004510B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454178 004510B8  7C 08 02 A6 */	mflr r0
/* 8045417C 004510BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454180 004510C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454184 004510C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80454188 004510C8  7C 9E 23 78 */	mr r30, r4
/* 8045418C 004510CC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80454190 004510D0  48 00 00 20 */	b lbl_804541B0
lbl_80454194:
/* 80454194 004510D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80454198 004510D8  7F C4 F3 78 */	mr r4, r30
/* 8045419C 004510DC  83 E3 00 04 */	lwz r31, 4(r3)
/* 804541A0 004510E0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804541A4 004510E4  7D 89 03 A6 */	mtctr r12
/* 804541A8 004510E8  4E 80 04 21 */	bctrl 
/* 804541AC 004510EC  7F E3 FB 78 */	mr r3, r31
lbl_804541B0:
/* 804541B0 004510F0  28 03 00 00 */	cmplwi r3, 0
/* 804541B4 004510F4  40 82 FF E0 */	bne lbl_80454194
/* 804541B8 004510F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804541BC 004510FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804541C0 00451100  83 C1 00 08 */	lwz r30, 8(r1)
/* 804541C4 00451104  7C 08 03 A6 */	mtlr r0
/* 804541C8 00451108  38 21 00 10 */	addi r1, r1, 0x10
/* 804541CC 0045110C  4E 80 00 20 */	blr 

.global search__Q26Screen10ObjMgrBaseFPQ26Screen9SceneBasePc
search__Q26Screen10ObjMgrBaseFPQ26Screen9SceneBasePc:
/* 804541D0 00451110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804541D4 00451114  7C 08 02 A6 */	mflr r0
/* 804541D8 00451118  90 01 00 24 */	stw r0, 0x24(r1)
/* 804541DC 0045111C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804541E0 00451120  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804541E4 00451124  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804541E8 00451128  7C BD 2B 78 */	mr r29, r5
/* 804541EC 0045112C  93 81 00 10 */	stw r28, 0x10(r1)
/* 804541F0 00451130  7C 9C 23 78 */	mr r28, r4
/* 804541F4 00451134  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 804541F8 00451138  48 00 00 44 */	b lbl_8045423C
lbl_804541FC:
/* 804541FC 0045113C  7F E3 FB 78 */	mr r3, r31
/* 80454200 00451140  83 DF 00 04 */	lwz r30, 4(r31)
/* 80454204 00451144  81 9F 00 00 */	lwz r12, 0(r31)
/* 80454208 00451148  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8045420C 0045114C  7D 89 03 A6 */	mtctr r12
/* 80454210 00451150  4E 80 04 21 */	bctrl 
/* 80454214 00451154  7C 03 E0 40 */	cmplw r3, r28
/* 80454218 00451158  40 82 00 20 */	bne lbl_80454238
/* 8045421C 0045115C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80454220 00451160  7F A4 EB 78 */	mr r4, r29
/* 80454224 00451164  4B C7 64 9D */	bl strcmp
/* 80454228 00451168  2C 03 00 00 */	cmpwi r3, 0
/* 8045422C 0045116C  40 82 00 0C */	bne lbl_80454238
/* 80454230 00451170  7F E3 FB 78 */	mr r3, r31
/* 80454234 00451174  48 00 00 14 */	b lbl_80454248
lbl_80454238:
/* 80454238 00451178  7F DF F3 78 */	mr r31, r30
lbl_8045423C:
/* 8045423C 0045117C  28 1F 00 00 */	cmplwi r31, 0
/* 80454240 00451180  40 82 FF BC */	bne lbl_804541FC
/* 80454244 00451184  38 60 00 00 */	li r3, 0
lbl_80454248:
/* 80454248 00451188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045424C 0045118C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80454250 00451190  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80454254 00451194  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80454258 00451198  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8045425C 0045119C  7C 08 03 A6 */	mtlr r0
/* 80454260 004511A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80454264 004511A4  4E 80 00 20 */	blr 

.global start__Q26Screen10ObjMgrBaseFPQ26Screen13StartSceneArg
start__Q26Screen10ObjMgrBaseFPQ26Screen13StartSceneArg:
/* 80454268 004511A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045426C 004511AC  7C 08 02 A6 */	mflr r0
/* 80454270 004511B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80454274 004511B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80454278 004511B8  3B E0 00 01 */	li r31, 1
/* 8045427C 004511BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80454280 004511C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80454284 004511C4  7C 9D 23 78 */	mr r29, r4
/* 80454288 004511C8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8045428C 004511CC  48 00 00 2C */	b lbl_804542B8
lbl_80454290:
/* 80454290 004511D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80454294 004511D4  7F A4 EB 78 */	mr r4, r29
/* 80454298 004511D8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8045429C 004511DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804542A0 004511E0  7D 89 03 A6 */	mtctr r12
/* 804542A4 004511E4  4E 80 04 21 */	bctrl 
/* 804542A8 004511E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804542AC 004511EC  40 82 00 08 */	bne lbl_804542B4
/* 804542B0 004511F0  3B E0 00 00 */	li r31, 0
lbl_804542B4:
/* 804542B4 004511F4  7F C3 F3 78 */	mr r3, r30
lbl_804542B8:
/* 804542B8 004511F8  28 03 00 00 */	cmplwi r3, 0
/* 804542BC 004511FC  40 82 FF D4 */	bne lbl_80454290
/* 804542C0 00451200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804542C4 00451204  7F E3 FB 78 */	mr r3, r31
/* 804542C8 00451208  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804542CC 0045120C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804542D0 00451210  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804542D4 00451214  7C 08 03 A6 */	mtlr r0
/* 804542D8 00451218  38 21 00 20 */	addi r1, r1, 0x20
/* 804542DC 0045121C  4E 80 00 20 */	blr 

.global end__Q26Screen10ObjMgrBaseFPQ26Screen11EndSceneArg
end__Q26Screen10ObjMgrBaseFPQ26Screen11EndSceneArg:
/* 804542E0 00451220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804542E4 00451224  7C 08 02 A6 */	mflr r0
/* 804542E8 00451228  90 01 00 24 */	stw r0, 0x24(r1)
/* 804542EC 0045122C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804542F0 00451230  3B E0 00 01 */	li r31, 1
/* 804542F4 00451234  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804542F8 00451238  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804542FC 0045123C  7C 9D 23 78 */	mr r29, r4
/* 80454300 00451240  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80454304 00451244  48 00 00 2C */	b lbl_80454330
lbl_80454308:
/* 80454308 00451248  81 83 00 00 */	lwz r12, 0(r3)
/* 8045430C 0045124C  7F A4 EB 78 */	mr r4, r29
/* 80454310 00451250  83 C3 00 04 */	lwz r30, 4(r3)
/* 80454314 00451254  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80454318 00451258  7D 89 03 A6 */	mtctr r12
/* 8045431C 0045125C  4E 80 04 21 */	bctrl 
/* 80454320 00451260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80454324 00451264  40 82 00 08 */	bne lbl_8045432C
/* 80454328 00451268  3B E0 00 00 */	li r31, 0
lbl_8045432C:
/* 8045432C 0045126C  7F C3 F3 78 */	mr r3, r30
lbl_80454330:
/* 80454330 00451270  28 03 00 00 */	cmplwi r3, 0
/* 80454334 00451274  40 82 FF D4 */	bne lbl_80454308
/* 80454338 00451278  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045433C 0045127C  7F E3 FB 78 */	mr r3, r31
/* 80454340 00451280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80454344 00451284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80454348 00451288  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045434C 0045128C  7C 08 03 A6 */	mtlr r0
/* 80454350 00451290  38 21 00 20 */	addi r1, r1, 0x20
/* 80454354 00451294  4E 80 00 20 */	blr 

.global confirmSetScene__Q26Screen10ObjMgrBaseFRQ26Screen11SetSceneArg
confirmSetScene__Q26Screen10ObjMgrBaseFRQ26Screen11SetSceneArg:
/* 80454358 00451298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045435C 0045129C  7C 08 02 A6 */	mflr r0
/* 80454360 004512A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80454364 004512A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80454368 004512A8  3B E0 00 01 */	li r31, 1
/* 8045436C 004512AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80454370 004512B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80454374 004512B4  7C 9D 23 78 */	mr r29, r4
/* 80454378 004512B8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8045437C 004512BC  48 00 00 30 */	b lbl_804543AC
lbl_80454380:
/* 80454380 004512C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80454384 004512C4  7F A4 EB 78 */	mr r4, r29
/* 80454388 004512C8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8045438C 004512CC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80454390 004512D0  7D 89 03 A6 */	mtctr r12
/* 80454394 004512D4  4E 80 04 21 */	bctrl 
/* 80454398 004512D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045439C 004512DC  40 82 00 0C */	bne lbl_804543A8
/* 804543A0 004512E0  3B E0 00 00 */	li r31, 0
/* 804543A4 004512E4  48 00 00 10 */	b lbl_804543B4
lbl_804543A8:
/* 804543A8 004512E8  7F C3 F3 78 */	mr r3, r30
lbl_804543AC:
/* 804543AC 004512EC  28 03 00 00 */	cmplwi r3, 0
/* 804543B0 004512F0  40 82 FF D0 */	bne lbl_80454380
lbl_804543B4:
/* 804543B4 004512F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804543B8 004512F8  7F E3 FB 78 */	mr r3, r31
/* 804543BC 004512FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804543C0 00451300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804543C4 00451304  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804543C8 00451308  7C 08 03 A6 */	mtlr r0
/* 804543CC 0045130C  38 21 00 20 */	addi r1, r1, 0x20
/* 804543D0 00451310  4E 80 00 20 */	blr 

.global confirmStartScene__Q26Screen10ObjMgrBaseFPQ26Screen13StartSceneArg
confirmStartScene__Q26Screen10ObjMgrBaseFPQ26Screen13StartSceneArg:
/* 804543D4 00451314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804543D8 00451318  7C 08 02 A6 */	mflr r0
/* 804543DC 0045131C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804543E0 00451320  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804543E4 00451324  3B E0 00 01 */	li r31, 1
/* 804543E8 00451328  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804543EC 0045132C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804543F0 00451330  7C 9D 23 78 */	mr r29, r4
/* 804543F4 00451334  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804543F8 00451338  48 00 00 30 */	b lbl_80454428
lbl_804543FC:
/* 804543FC 0045133C  81 83 00 00 */	lwz r12, 0(r3)
/* 80454400 00451340  7F A4 EB 78 */	mr r4, r29
/* 80454404 00451344  83 C3 00 04 */	lwz r30, 4(r3)
/* 80454408 00451348  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8045440C 0045134C  7D 89 03 A6 */	mtctr r12
/* 80454410 00451350  4E 80 04 21 */	bctrl 
/* 80454414 00451354  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80454418 00451358  40 82 00 0C */	bne lbl_80454424
/* 8045441C 0045135C  3B E0 00 00 */	li r31, 0
/* 80454420 00451360  48 00 00 10 */	b lbl_80454430
lbl_80454424:
/* 80454424 00451364  7F C3 F3 78 */	mr r3, r30
lbl_80454428:
/* 80454428 00451368  28 03 00 00 */	cmplwi r3, 0
/* 8045442C 0045136C  40 82 FF D0 */	bne lbl_804543FC
lbl_80454430:
/* 80454430 00451370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80454434 00451374  7F E3 FB 78 */	mr r3, r31
/* 80454438 00451378  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045443C 0045137C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80454440 00451380  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80454444 00451384  7C 08 03 A6 */	mtlr r0
/* 80454448 00451388  38 21 00 20 */	addi r1, r1, 0x20
/* 8045444C 0045138C  4E 80 00 20 */	blr 

.global confirmEndScene__Q26Screen10ObjMgrBaseFPQ26Screen11EndSceneArg
confirmEndScene__Q26Screen10ObjMgrBaseFPQ26Screen11EndSceneArg:
/* 80454450 00451390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80454454 00451394  7C 08 02 A6 */	mflr r0
/* 80454458 00451398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045445C 0045139C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80454460 004513A0  3B E0 00 01 */	li r31, 1
/* 80454464 004513A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80454468 004513A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8045446C 004513AC  7C 9D 23 78 */	mr r29, r4
/* 80454470 004513B0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80454474 004513B4  48 00 00 30 */	b lbl_804544A4
lbl_80454478:
/* 80454478 004513B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8045447C 004513BC  7F A4 EB 78 */	mr r4, r29
/* 80454480 004513C0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80454484 004513C4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80454488 004513C8  7D 89 03 A6 */	mtctr r12
/* 8045448C 004513CC  4E 80 04 21 */	bctrl 
/* 80454490 004513D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80454494 004513D4  40 82 00 0C */	bne lbl_804544A0
/* 80454498 004513D8  3B E0 00 00 */	li r31, 0
/* 8045449C 004513DC  48 00 00 10 */	b lbl_804544AC
lbl_804544A0:
/* 804544A0 004513E0  7F C3 F3 78 */	mr r3, r30
lbl_804544A4:
/* 804544A4 004513E4  28 03 00 00 */	cmplwi r3, 0
/* 804544A8 004513E8  40 82 FF D0 */	bne lbl_80454478
lbl_804544AC:
/* 804544AC 004513EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804544B0 004513F0  7F E3 FB 78 */	mr r3, r31
/* 804544B4 004513F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804544B8 004513F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804544BC 004513FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804544C0 00451400  7C 08 03 A6 */	mtlr r0
/* 804544C4 00451404  38 21 00 20 */	addi r1, r1, 0x20
/* 804544C8 00451408  4E 80 00 20 */	blr 

.global "@24@__dt__Q26Screen7ObjBaseFv"
"@24@__dt__Q26Screen7ObjBaseFv":
/* 804544CC 0045140C  38 63 FF E8 */	addi r3, r3, -24
/* 804544D0 00451410  4B EB 93 98 */	b __dt__Q26Screen7ObjBaseFv
