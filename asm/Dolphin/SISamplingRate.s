.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
XYNTSC: # static u16[24]
	.2byte 0x00F6
	.2byte 0x0200
	.2byte 0x000F
	.2byte 0x1200
	.2byte 0x001E
	.2byte 0x0900
	.2byte 0x002C
	.2byte 0x0600
	.2byte 0x0034
	.2byte 0x0500
	.2byte 0x0041
	.2byte 0x0400
	.2byte 0x0057
	.2byte 0x0300
	.2byte 0x0057
	.2byte 0x0300
	.2byte 0x0057
	.2byte 0x0300
	.2byte 0x0083
	.2byte 0x0200
	.2byte 0x0083
	.2byte 0x0200
	.2byte 0x0083
	.2byte 0x0200
XYPAL: # static u16[24]
	.2byte 0x0128
	.2byte 0x0200
	.2byte 0x000F
	.2byte 0x1500
	.2byte 0x001D
	.2byte 0x0B00
	.2byte 0x002D
	.2byte 0x0700
	.2byte 0x0034
	.2byte 0x0600
	.2byte 0x003F
	.2byte 0x0500
	.2byte 0x004E
	.2byte 0x0400
	.2byte 0x0068
	.2byte 0x0300
	.2byte 0x0068
	.2byte 0x0300
	.2byte 0x0068
	.2byte 0x0300
	.2byte 0x0068
	.2byte 0x0300
	.2byte 0x009C
	.2byte 0x0200
.balign 4
lbl_804AA030:
	.asciz "SISetSamplingRate: unknown TV format. Use default."

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
SamplingRate:
	.skip 4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global SISetSamplingRate
SISetSamplingRate:
/* 800F675C 000F369C  7C 08 02 A6 */	mflr r0
/* 800F6760 000F36A0  90 01 00 04 */	stw r0, 4(r1)
/* 800F6764 000F36A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F6768 000F36A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F676C 000F36AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800F6770 000F36B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800F6774 000F36B4  3B A3 00 00 */	addi r29, r3, 0
/* 800F6778 000F36B8  28 1D 00 0B */	cmplwi r29, 0xb
/* 800F677C 000F36BC  3C 60 80 4B */	lis r3, XYNTSC@ha
/* 800F6780 000F36C0  3B E3 9F D0 */	addi r31, r3, XYNTSC@l
/* 800F6784 000F36C4  40 81 00 08 */	ble lbl_800F678C
/* 800F6788 000F36C8  3B A0 00 0B */	li r29, 0xb
lbl_800F678C:
/* 800F678C 000F36CC  4B FF 84 AD */	bl OSDisableInterrupts
/* 800F6790 000F36D0  93 AD 90 30 */	stw r29, SamplingRate@sda21(r13)
/* 800F6794 000F36D4  7C 7E 1B 78 */	mr r30, r3
/* 800F6798 000F36D8  4B FD BB 8D */	bl VIGetTvFormat
/* 800F679C 000F36DC  2C 03 00 02 */	cmpwi r3, 2
/* 800F67A0 000F36E0  41 82 00 24 */	beq lbl_800F67C4
/* 800F67A4 000F36E4  40 80 00 14 */	bge lbl_800F67B8
/* 800F67A8 000F36E8  2C 03 00 00 */	cmpwi r3, 0
/* 800F67AC 000F36EC  41 82 00 18 */	beq lbl_800F67C4
/* 800F67B0 000F36F0  40 80 00 1C */	bge lbl_800F67CC
/* 800F67B4 000F36F4  48 00 00 20 */	b lbl_800F67D4
lbl_800F67B8:
/* 800F67B8 000F36F8  2C 03 00 05 */	cmpwi r3, 5
/* 800F67BC 000F36FC  41 82 00 08 */	beq lbl_800F67C4
/* 800F67C0 000F3700  48 00 00 14 */	b lbl_800F67D4
lbl_800F67C4:
/* 800F67C4 000F3704  7F E4 FB 78 */	mr r4, r31
/* 800F67C8 000F3708  48 00 00 20 */	b lbl_800F67E8
lbl_800F67CC:
/* 800F67CC 000F370C  38 9F 00 30 */	addi r4, r31, 0x30
/* 800F67D0 000F3710  48 00 00 18 */	b lbl_800F67E8
lbl_800F67D4:
/* 800F67D4 000F3714  38 7F 00 60 */	addi r3, r31, 0x60
/* 800F67D8 000F3718  4C C6 31 82 */	crclr 6
/* 800F67DC 000F371C  4B FF 6F 11 */	bl OSReport
/* 800F67E0 000F3720  3B A0 00 00 */	li r29, 0
/* 800F67E4 000F3724  38 9F 00 00 */	addi r4, r31, 0
lbl_800F67E8:
/* 800F67E8 000F3728  3C 60 CC 00 */	lis r3, 0xCC00206C@ha
/* 800F67EC 000F372C  A0 03 20 6C */	lhz r0, 0xCC00206C@l(r3)
/* 800F67F0 000F3730  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800F67F4 000F3734  41 82 00 0C */	beq lbl_800F6800
/* 800F67F8 000F3738  38 A0 00 02 */	li r5, 2
/* 800F67FC 000F373C  48 00 00 08 */	b lbl_800F6804
lbl_800F6800:
/* 800F6800 000F3740  38 A0 00 01 */	li r5, 1
lbl_800F6804:
/* 800F6804 000F3744  57 A3 10 3A */	slwi r3, r29, 2
/* 800F6808 000F3748  7C 04 1A 2E */	lhzx r0, r4, r3
/* 800F680C 000F374C  7C 64 1A 14 */	add r3, r4, r3
/* 800F6810 000F3750  88 83 00 02 */	lbz r4, 2(r3)
/* 800F6814 000F3754  7C 65 01 D6 */	mullw r3, r5, r0
/* 800F6818 000F3758  4B FF F3 39 */	bl SISetXY
/* 800F681C 000F375C  7F C3 F3 78 */	mr r3, r30
/* 800F6820 000F3760  4B FF 84 41 */	bl OSRestoreInterrupts
/* 800F6824 000F3764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F6828 000F3768  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F682C 000F376C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800F6830 000F3770  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800F6834 000F3774  38 21 00 20 */	addi r1, r1, 0x20
/* 800F6838 000F3778  7C 08 03 A6 */	mtlr r0
/* 800F683C 000F377C  4E 80 00 20 */	blr 

.global SIRefreshSamplingRate
SIRefreshSamplingRate:
/* 800F6840 000F3780  7C 08 02 A6 */	mflr r0
/* 800F6844 000F3784  90 01 00 04 */	stw r0, 4(r1)
/* 800F6848 000F3788  94 21 FF F8 */	stwu r1, -8(r1)
/* 800F684C 000F378C  80 6D 90 30 */	lwz r3, SamplingRate@sda21(r13)
/* 800F6850 000F3790  4B FF FF 0D */	bl SISetSamplingRate
/* 800F6854 000F3794  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800F6858 000F3798  38 21 00 08 */	addi r1, r1, 8
/* 800F685C 000F379C  7C 08 03 A6 */	mtlr r0
/* 800F6860 000F37A0  4E 80 00 20 */	blr 
