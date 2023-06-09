.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80517730, local
	.float 1.0
.endobj lbl_80517730
.obj lbl_80517734, local
	.float 2.0
.endobj lbl_80517734
.obj lbl_80517738, local
	.float 0.0
.endobj lbl_80517738
.obj lbl_8051773C, local
	.float -1.0
.endobj lbl_8051773C
.obj lbl_80517740, local
	.float 0.5
.endobj lbl_80517740
.obj lbl_80517744, local
	.float 0.017453292
.endobj lbl_80517744

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn C_MTXPerspective, global
/* 800EAD08 000E7C48  7C 08 02 A6 */	mflr r0
/* 800EAD0C 000E7C4C  90 01 00 04 */	stw r0, 4(r1)
/* 800EAD10 000E7C50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800EAD14 000E7C54  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 800EAD18 000E7C58  FF E0 20 90 */	fmr f31, f4
/* 800EAD1C 000E7C5C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800EAD20 000E7C60  FF C0 18 90 */	fmr f30, f3
/* 800EAD24 000E7C64  DB A1 00 28 */	stfd f29, 0x28(r1)
/* 800EAD28 000E7C68  FF A0 10 90 */	fmr f29, f2
/* 800EAD2C 000E7C6C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800EAD30 000E7C70  7C 7F 1B 78 */	mr r31, r3
/* 800EAD34 000E7C74  C0 A2 93 E0 */	lfs f5, lbl_80517740@sda21(r2)
/* 800EAD38 000E7C78  C0 02 93 E4 */	lfs f0, lbl_80517744@sda21(r2)
/* 800EAD3C 000E7C7C  EC 25 00 72 */	fmuls f1, f5, f1
/* 800EAD40 000E7C80  EC 20 00 72 */	fmuls f1, f0, f1
/* 800EAD44 000E7C84  4B FE 4F 0D */	bl tanf
/* 800EAD48 000E7C88  C0 62 93 D0 */	lfs f3, lbl_80517730@sda21(r2)
/* 800EAD4C 000E7C8C  EC 5F F0 28 */	fsubs f2, f31, f30
/* 800EAD50 000E7C90  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 800EAD54 000E7C94  EC 83 08 24 */	fdivs f4, f3, f1
/* 800EAD58 000E7C98  EC 24 E8 24 */	fdivs f1, f4, f29
/* 800EAD5C 000E7C9C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 800EAD60 000E7CA0  EC 63 10 24 */	fdivs f3, f3, f2
/* 800EAD64 000E7CA4  C0 42 93 D8 */	lfs f2, lbl_80517738@sda21(r2)
/* 800EAD68 000E7CA8  D0 5F 00 04 */	stfs f2, 4(r31)
/* 800EAD6C 000E7CAC  D0 5F 00 08 */	stfs f2, 8(r31)
/* 800EAD70 000E7CB0  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 800EAD74 000E7CB4  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 800EAD78 000E7CB8  FC 20 F0 50 */	fneg f1, f30
/* 800EAD7C 000E7CBC  FC 00 00 50 */	fneg f0, f0
/* 800EAD80 000E7CC0  D0 9F 00 14 */	stfs f4, 0x14(r31)
/* 800EAD84 000E7CC4  EC 21 00 F2 */	fmuls f1, f1, f3
/* 800EAD88 000E7CC8  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 800EAD8C 000E7CCC  EC 03 00 32 */	fmuls f0, f3, f0
/* 800EAD90 000E7CD0  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 800EAD94 000E7CD4  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 800EAD98 000E7CD8  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 800EAD9C 000E7CDC  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 800EADA0 000E7CE0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 800EADA4 000E7CE4  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 800EADA8 000E7CE8  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 800EADAC 000E7CEC  C0 02 93 DC */	lfs f0, lbl_8051773C@sda21(r2)
/* 800EADB0 000E7CF0  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 800EADB4 000E7CF4  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 800EADB8 000E7CF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EADBC 000E7CFC  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 800EADC0 000E7D00  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800EADC4 000E7D04  CB A1 00 28 */	lfd f29, 0x28(r1)
/* 800EADC8 000E7D08  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800EADCC 000E7D0C  38 21 00 40 */	addi r1, r1, 0x40
/* 800EADD0 000E7D10  7C 08 03 A6 */	mtlr r0
/* 800EADD4 000E7D14  4E 80 00 20 */	blr 
.endfn C_MTXPerspective

.fn C_MTXOrtho, global
/* 800EADD8 000E7D18  ED 04 18 28 */	fsubs f8, f4, f3
/* 800EADDC 000E7D1C  C1 22 93 D0 */	lfs f9, lbl_80517730@sda21(r2)
/* 800EADE0 000E7D20  EC 01 10 28 */	fsubs f0, f1, f2
/* 800EADE4 000E7D24  C0 E2 93 D4 */	lfs f7, lbl_80517734@sda21(r2)
/* 800EADE8 000E7D28  EC 64 18 2A */	fadds f3, f4, f3
/* 800EADEC 000E7D2C  ED 49 40 24 */	fdivs f10, f9, f8
/* 800EADF0 000E7D30  ED 09 00 24 */	fdivs f8, f9, f0
/* 800EADF4 000E7D34  EC 87 02 B2 */	fmuls f4, f7, f10
/* 800EADF8 000E7D38  FC 60 18 50 */	fneg f3, f3
/* 800EADFC 000E7D3C  EC 06 28 28 */	fsubs f0, f6, f5
/* 800EAE00 000E7D40  D0 83 00 00 */	stfs f4, 0(r3)
/* 800EAE04 000E7D44  EC 21 10 2A */	fadds f1, f1, f2
/* 800EAE08 000E7D48  EC 4A 00 F2 */	fmuls f2, f10, f3
/* 800EAE0C 000E7D4C  C0 62 93 D8 */	lfs f3, lbl_80517738@sda21(r2)
/* 800EAE10 000E7D50  FC 20 08 50 */	fneg f1, f1
/* 800EAE14 000E7D54  D0 63 00 04 */	stfs f3, 4(r3)
/* 800EAE18 000E7D58  EC 89 00 24 */	fdivs f4, f9, f0
/* 800EAE1C 000E7D5C  D0 63 00 08 */	stfs f3, 8(r3)
/* 800EAE20 000E7D60  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 800EAE24 000E7D64  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 800EAE28 000E7D68  EC 47 02 32 */	fmuls f2, f7, f8
/* 800EAE2C 000E7D6C  FC 00 30 50 */	fneg f0, f6
/* 800EAE30 000E7D70  EC 28 00 72 */	fmuls f1, f8, f1
/* 800EAE34 000E7D74  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 800EAE38 000E7D78  EC 00 01 32 */	fmuls f0, f0, f4
/* 800EAE3C 000E7D7C  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 800EAE40 000E7D80  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 800EAE44 000E7D84  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 800EAE48 000E7D88  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 800EAE4C 000E7D8C  C0 22 93 DC */	lfs f1, lbl_8051773C@sda21(r2)
/* 800EAE50 000E7D90  EC 21 01 32 */	fmuls f1, f1, f4
/* 800EAE54 000E7D94  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 800EAE58 000E7D98  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800EAE5C 000E7D9C  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 800EAE60 000E7DA0  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 800EAE64 000E7DA4  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 800EAE68 000E7DA8  D1 23 00 3C */	stfs f9, 0x3c(r3)
/* 800EAE6C 000E7DAC  4E 80 00 20 */	blr 
.endfn C_MTXOrtho

.fn PSMTX44Copy, global
/* 800EAE70 000E7DB0  E0 23 00 00 */	psq_l f1, 0(r3), 0, qr0
/* 800EAE74 000E7DB4  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 800EAE78 000E7DB8  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800EAE7C 000E7DBC  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 800EAE80 000E7DC0  E0 23 00 10 */	psq_l f1, 16(r3), 0, qr0
/* 800EAE84 000E7DC4  F0 24 00 10 */	psq_st f1, 16(r4), 0, qr0
/* 800EAE88 000E7DC8  E0 23 00 18 */	psq_l f1, 24(r3), 0, qr0
/* 800EAE8C 000E7DCC  F0 24 00 18 */	psq_st f1, 24(r4), 0, qr0
/* 800EAE90 000E7DD0  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 800EAE94 000E7DD4  F0 24 00 20 */	psq_st f1, 32(r4), 0, qr0
/* 800EAE98 000E7DD8  E0 23 00 28 */	psq_l f1, 40(r3), 0, qr0
/* 800EAE9C 000E7DDC  F0 24 00 28 */	psq_st f1, 40(r4), 0, qr0
/* 800EAEA0 000E7DE0  E0 23 00 30 */	psq_l f1, 48(r3), 0, qr0
/* 800EAEA4 000E7DE4  F0 24 00 30 */	psq_st f1, 48(r4), 0, qr0
/* 800EAEA8 000E7DE8  E0 23 00 38 */	psq_l f1, 56(r3), 0, qr0
/* 800EAEAC 000E7DEC  F0 24 00 38 */	psq_st f1, 56(r4), 0, qr0
/* 800EAEB0 000E7DF0  4E 80 00 20 */	blr 
.endfn PSMTX44Copy
