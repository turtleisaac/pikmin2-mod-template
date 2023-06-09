.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __close_console, global
/* 800C0A0C 000BD94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0A10 000BD950  7C 08 02 A6 */	mflr r0
/* 800C0A14 000BD954  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0A18 000BD958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C0A1C 000BD95C  7C 7F 1B 78 */	mr r31, r3
/* 800C0A20 000BD960  4B FF CB 1D */	bl GetTRKConnected
/* 800C0A24 000BD964  2C 03 00 00 */	cmpwi r3, 0
/* 800C0A28 000BD968  40 82 00 0C */	bne .L_800C0A34
/* 800C0A2C 000BD96C  38 60 00 01 */	li r3, 1
/* 800C0A30 000BD970  48 00 00 4C */	b .L_800C0A7C
.L_800C0A34:
/* 800C0A34 000BD974  7F E4 FB 78 */	mr r4, r31
/* 800C0A38 000BD978  38 60 00 D3 */	li r3, 0xd3
/* 800C0A3C 000BD97C  4B FF F0 15 */	bl TRKCloseFile
/* 800C0A40 000BD980  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800C0A44 000BD984  2C 00 00 01 */	cmpwi r0, 1
/* 800C0A48 000BD988  41 82 00 30 */	beq .L_800C0A78
/* 800C0A4C 000BD98C  40 80 00 10 */	bge .L_800C0A5C
/* 800C0A50 000BD990  2C 00 00 00 */	cmpwi r0, 0
/* 800C0A54 000BD994  40 80 00 14 */	bge .L_800C0A68
/* 800C0A58 000BD998  48 00 00 20 */	b .L_800C0A78
.L_800C0A5C:
/* 800C0A5C 000BD99C  2C 00 00 03 */	cmpwi r0, 3
/* 800C0A60 000BD9A0  40 80 00 18 */	bge .L_800C0A78
/* 800C0A64 000BD9A4  48 00 00 0C */	b .L_800C0A70
.L_800C0A68:
/* 800C0A68 000BD9A8  38 60 00 00 */	li r3, 0
/* 800C0A6C 000BD9AC  48 00 00 10 */	b .L_800C0A7C
.L_800C0A70:
/* 800C0A70 000BD9B0  38 60 00 02 */	li r3, 2
/* 800C0A74 000BD9B4  48 00 00 08 */	b .L_800C0A7C
.L_800C0A78:
/* 800C0A78 000BD9B8  38 60 00 01 */	li r3, 1
.L_800C0A7C:
/* 800C0A7C 000BD9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0A80 000BD9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0A84 000BD9C4  7C 08 03 A6 */	mtlr r0
/* 800C0A88 000BD9C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0A8C 000BD9CC  4E 80 00 20 */	blr 
.endfn __close_console

.fn __TRK_write_console, global
/* 800C0A90 000BD9D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0A94 000BD9D4  7C 08 02 A6 */	mflr r0
/* 800C0A98 000BD9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0A9C 000BD9DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C0AA0 000BD9E0  7C BF 2B 78 */	mr r31, r5
/* 800C0AA4 000BD9E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0AA8 000BD9E8  7C 9E 23 78 */	mr r30, r4
/* 800C0AAC 000BD9EC  4B FF FF 45 */	bl GetUseSerialIO
/* 800C0AB0 000BD9F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0AB4 000BD9F4  40 82 00 0C */	bne .L_800C0AC0
/* 800C0AB8 000BD9F8  38 60 00 01 */	li r3, 1
/* 800C0ABC 000BD9FC  48 00 00 78 */	b .L_800C0B34
.L_800C0AC0:
/* 800C0AC0 000BDA00  4B FF CA 7D */	bl GetTRKConnected
/* 800C0AC4 000BDA04  2C 03 00 00 */	cmpwi r3, 0
/* 800C0AC8 000BDA08  40 82 00 0C */	bne .L_800C0AD4
/* 800C0ACC 000BDA0C  38 60 00 01 */	li r3, 1
/* 800C0AD0 000BDA10  48 00 00 64 */	b .L_800C0B34
.L_800C0AD4:
/* 800C0AD4 000BDA14  80 1F 00 00 */	lwz r0, 0(r31)
/* 800C0AD8 000BDA18  7F C6 F3 78 */	mr r6, r30
/* 800C0ADC 000BDA1C  38 A1 00 08 */	addi r5, r1, 8
/* 800C0AE0 000BDA20  38 60 00 D0 */	li r3, 0xd0
/* 800C0AE4 000BDA24  90 01 00 08 */	stw r0, 8(r1)
/* 800C0AE8 000BDA28  38 80 00 01 */	li r4, 1
/* 800C0AEC 000BDA2C  4B FF EF 55 */	bl TRKAccessFile
/* 800C0AF0 000BDA30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800C0AF4 000BDA34  80 61 00 08 */	lwz r3, 8(r1)
/* 800C0AF8 000BDA38  2C 00 00 01 */	cmpwi r0, 1
/* 800C0AFC 000BDA3C  90 7F 00 00 */	stw r3, 0(r31)
/* 800C0B00 000BDA40  41 82 00 30 */	beq .L_800C0B30
/* 800C0B04 000BDA44  40 80 00 10 */	bge .L_800C0B14
/* 800C0B08 000BDA48  2C 00 00 00 */	cmpwi r0, 0
/* 800C0B0C 000BDA4C  40 80 00 14 */	bge .L_800C0B20
/* 800C0B10 000BDA50  48 00 00 20 */	b .L_800C0B30
.L_800C0B14:
/* 800C0B14 000BDA54  2C 00 00 03 */	cmpwi r0, 3
/* 800C0B18 000BDA58  40 80 00 18 */	bge .L_800C0B30
/* 800C0B1C 000BDA5C  48 00 00 0C */	b .L_800C0B28
.L_800C0B20:
/* 800C0B20 000BDA60  38 60 00 00 */	li r3, 0
/* 800C0B24 000BDA64  48 00 00 10 */	b .L_800C0B34
.L_800C0B28:
/* 800C0B28 000BDA68  38 60 00 02 */	li r3, 2
/* 800C0B2C 000BDA6C  48 00 00 08 */	b .L_800C0B34
.L_800C0B30:
/* 800C0B30 000BDA70  38 60 00 01 */	li r3, 1
.L_800C0B34:
/* 800C0B34 000BDA74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0B38 000BDA78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0B3C 000BDA7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C0B40 000BDA80  7C 08 03 A6 */	mtlr r0
/* 800C0B44 000BDA84  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0B48 000BDA88  4E 80 00 20 */	blr 
.endfn __TRK_write_console

.fn __read_console, global
/* 800C0B4C 000BDA8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0B50 000BDA90  7C 08 02 A6 */	mflr r0
/* 800C0B54 000BDA94  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0B58 000BDA98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C0B5C 000BDA9C  7C BF 2B 78 */	mr r31, r5
/* 800C0B60 000BDAA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0B64 000BDAA4  7C 9E 23 78 */	mr r30, r4
/* 800C0B68 000BDAA8  4B FF FE 89 */	bl GetUseSerialIO
/* 800C0B6C 000BDAAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0B70 000BDAB0  40 82 00 0C */	bne .L_800C0B7C
/* 800C0B74 000BDAB4  38 60 00 01 */	li r3, 1
/* 800C0B78 000BDAB8  48 00 00 78 */	b .L_800C0BF0
.L_800C0B7C:
/* 800C0B7C 000BDABC  4B FF C9 C1 */	bl GetTRKConnected
/* 800C0B80 000BDAC0  2C 03 00 00 */	cmpwi r3, 0
/* 800C0B84 000BDAC4  40 82 00 0C */	bne .L_800C0B90
/* 800C0B88 000BDAC8  38 60 00 01 */	li r3, 1
/* 800C0B8C 000BDACC  48 00 00 64 */	b .L_800C0BF0
.L_800C0B90:
/* 800C0B90 000BDAD0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800C0B94 000BDAD4  7F C6 F3 78 */	mr r6, r30
/* 800C0B98 000BDAD8  38 A1 00 08 */	addi r5, r1, 8
/* 800C0B9C 000BDADC  38 60 00 D1 */	li r3, 0xd1
/* 800C0BA0 000BDAE0  90 01 00 08 */	stw r0, 8(r1)
/* 800C0BA4 000BDAE4  38 80 00 00 */	li r4, 0
/* 800C0BA8 000BDAE8  4B FF EE 99 */	bl TRKAccessFile
/* 800C0BAC 000BDAEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800C0BB0 000BDAF0  80 61 00 08 */	lwz r3, 8(r1)
/* 800C0BB4 000BDAF4  2C 00 00 01 */	cmpwi r0, 1
/* 800C0BB8 000BDAF8  90 7F 00 00 */	stw r3, 0(r31)
/* 800C0BBC 000BDAFC  41 82 00 30 */	beq .L_800C0BEC
/* 800C0BC0 000BDB00  40 80 00 10 */	bge .L_800C0BD0
/* 800C0BC4 000BDB04  2C 00 00 00 */	cmpwi r0, 0
/* 800C0BC8 000BDB08  40 80 00 14 */	bge .L_800C0BDC
/* 800C0BCC 000BDB0C  48 00 00 20 */	b .L_800C0BEC
.L_800C0BD0:
/* 800C0BD0 000BDB10  2C 00 00 03 */	cmpwi r0, 3
/* 800C0BD4 000BDB14  40 80 00 18 */	bge .L_800C0BEC
/* 800C0BD8 000BDB18  48 00 00 0C */	b .L_800C0BE4
.L_800C0BDC:
/* 800C0BDC 000BDB1C  38 60 00 00 */	li r3, 0
/* 800C0BE0 000BDB20  48 00 00 10 */	b .L_800C0BF0
.L_800C0BE4:
/* 800C0BE4 000BDB24  38 60 00 02 */	li r3, 2
/* 800C0BE8 000BDB28  48 00 00 08 */	b .L_800C0BF0
.L_800C0BEC:
/* 800C0BEC 000BDB2C  38 60 00 01 */	li r3, 1
.L_800C0BF0:
/* 800C0BF0 000BDB30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0BF4 000BDB34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0BF8 000BDB38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C0BFC 000BDB3C  7C 08 03 A6 */	mtlr r0
/* 800C0C00 000BDB40  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0C04 000BDB44  4E 80 00 20 */	blr 
.endfn __read_console
