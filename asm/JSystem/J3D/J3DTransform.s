.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj j3dDefaultTransformInfo, global
	.float 1.0
	.float 1.0
	.float 1.0
	.4byte 0
	.4byte 0
	.float 0.0
	.float 0.0
	.float 0.0
.endobj j3dDefaultTransformInfo
.obj j3dDefaultScale, global
	.float 1.0
	.float 1.0
	.float 1.0
.endobj j3dDefaultScale
.obj j3dDefaultMtx, global
	.float 1.0
	.float 0.0
	.float 0.0
	.float 0.0
	.float 0.0
	.float 1.0
	.float 0.0
	.float 0.0
	.float 0.0
	.float 0.0
	.float 1.0
	.float 0.0
.endobj j3dDefaultMtx
.obj lbl_8047889C, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8047889C

.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 8
.obj Unit01, local
	.float 0.0
	.float 1.0
.endobj Unit01

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80516998, local
	.float 0.0
.endobj lbl_80516998
.obj lbl_8051699C, local
	.float 1.0
.endobj lbl_8051699C
.obj lbl_805169A0, local
	.float 0.5
.endobj lbl_805169A0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn J3DCalcBBoardMtx__FPA4_f, global
/* 8005EE78 0005BDB8  C0 43 00 00 */	lfs f2, 0(r3)
/* 8005EE7C 0005BDBC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8005EE80 0005BDC0  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8005EE84 0005BDC4  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 8005EE88 0005BDC8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8005EE8C 0005BDCC  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8005EE90 0005BDD0  C0 83 00 14 */	lfs f4, 0x14(r3)
/* 8005EE94 0005BDD4  EC E3 00 F2 */	fmuls f7, f3, f3
/* 8005EE98 0005BDD8  C0 63 00 08 */	lfs f3, 8(r3)
/* 8005EE9C 0005BDDC  EC C2 08 2A */	fadds f6, f2, f1
/* 8005EEA0 0005BDE0  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8005EEA4 0005BDE4  EC A5 01 72 */	fmuls f5, f5, f5
/* 8005EEA8 0005BDE8  EC 84 01 32 */	fmuls f4, f4, f4
/* 8005EEAC 0005BDEC  C1 03 00 24 */	lfs f8, 0x24(r3)
/* 8005EEB0 0005BDF0  C1 23 00 28 */	lfs f9, 0x28(r3)
/* 8005EEB4 0005BDF4  EC 63 00 F2 */	fmuls f3, f3, f3
/* 8005EEB8 0005BDF8  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005EEBC 0005BDFC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8005EEC0 0005BE00  EC E7 30 2A */	fadds f7, f7, f6
/* 8005EEC4 0005BE04  EC C8 02 32 */	fmuls f6, f8, f8
/* 8005EEC8 0005BE08  EC A5 20 2A */	fadds f5, f5, f4
/* 8005EECC 0005BE0C  EC 89 02 72 */	fmuls f4, f9, f9
/* 8005EED0 0005BE10  EC 43 10 2A */	fadds f2, f3, f2
/* 8005EED4 0005BE14  FC 07 08 40 */	fcmpo cr0, f7, f1
/* 8005EED8 0005BE18  EC 66 28 2A */	fadds f3, f6, f5
/* 8005EEDC 0005BE1C  EC 44 10 2A */	fadds f2, f4, f2
/* 8005EEE0 0005BE20  40 81 00 1C */	ble .L_8005EEFC
/* 8005EEE4 0005BE24  40 81 00 10 */	ble .L_8005EEF4
/* 8005EEE8 0005BE28  FC 20 38 34 */	frsqrte f1, f7
/* 8005EEEC 0005BE2C  EC 21 01 F2 */	fmuls f1, f1, f7
/* 8005EEF0 0005BE30  48 00 00 08 */	b .L_8005EEF8
.L_8005EEF4:
/* 8005EEF4 0005BE34  FC 20 38 90 */	fmr f1, f7
.L_8005EEF8:
/* 8005EEF8 0005BE38  FC E0 08 90 */	fmr f7, f1
.L_8005EEFC:
/* 8005EEFC 0005BE3C  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005EF00 0005BE40  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8005EF04 0005BE44  40 81 00 1C */	ble .L_8005EF20
/* 8005EF08 0005BE48  40 81 00 10 */	ble .L_8005EF18
/* 8005EF0C 0005BE4C  FC 20 18 34 */	frsqrte f1, f3
/* 8005EF10 0005BE50  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8005EF14 0005BE54  48 00 00 08 */	b .L_8005EF1C
.L_8005EF18:
/* 8005EF18 0005BE58  FC 20 18 90 */	fmr f1, f3
.L_8005EF1C:
/* 8005EF1C 0005BE5C  FC 60 08 90 */	fmr f3, f1
.L_8005EF20:
/* 8005EF20 0005BE60  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005EF24 0005BE64  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8005EF28 0005BE68  40 81 00 1C */	ble .L_8005EF44
/* 8005EF2C 0005BE6C  40 81 00 10 */	ble .L_8005EF3C
/* 8005EF30 0005BE70  FC 20 10 34 */	frsqrte f1, f2
/* 8005EF34 0005BE74  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8005EF38 0005BE78  48 00 00 08 */	b .L_8005EF40
.L_8005EF3C:
/* 8005EF3C 0005BE7C  FC 20 10 90 */	fmr f1, f2
.L_8005EF40:
/* 8005EF40 0005BE80  FC 40 08 90 */	fmr f2, f1
.L_8005EF44:
/* 8005EF44 0005BE84  C0 02 86 38 */	lfs f0, lbl_80516998@sda21(r2)
/* 8005EF48 0005BE88  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8005EF4C 0005BE8C  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8005EF50 0005BE90  D0 E3 00 00 */	stfs f7, 0(r3)
/* 8005EF54 0005BE94  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8005EF58 0005BE98  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8005EF5C 0005BE9C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8005EF60 0005BEA0  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 8005EF64 0005BEA4  4E 80 00 20 */	blr 
.endfn J3DCalcBBoardMtx__FPA4_f

.fn J3DCalcYBBoardMtx__FPA4_f, global
/* 8005EF68 0005BEA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8005EF6C 0005BEAC  7C 08 02 A6 */	mflr r0
/* 8005EF70 0005BEB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8005EF74 0005BEB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8005EF78 0005BEB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8005EF7C 0005BEBC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8005EF80 0005BEC0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8005EF84 0005BEC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005EF88 0005BEC8  7C 7F 1B 78 */	mr r31, r3
/* 8005EF8C 0005BECC  C0 02 86 38 */	lfs f0, lbl_80516998@sda21(r2)
/* 8005EF90 0005BED0  C0 43 00 00 */	lfs f2, 0(r3)
/* 8005EF94 0005BED4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8005EF98 0005BED8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8005EF9C 0005BEDC  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 8005EFA0 0005BEE0  EC 21 00 72 */	fmuls f1, f1, f1
/* 8005EFA4 0005BEE4  C0 C3 00 08 */	lfs f6, 8(r3)
/* 8005EFA8 0005BEE8  C0 A3 00 18 */	lfs f5, 0x18(r3)
/* 8005EFAC 0005BEEC  EC 83 00 F2 */	fmuls f4, f3, f3
/* 8005EFB0 0005BEF0  EC 62 08 2A */	fadds f3, f2, f1
/* 8005EFB4 0005BEF4  C0 E3 00 28 */	lfs f7, 0x28(r3)
/* 8005EFB8 0005BEF8  EC 46 01 B2 */	fmuls f2, f6, f6
/* 8005EFBC 0005BEFC  EC 25 01 72 */	fmuls f1, f5, f5
/* 8005EFC0 0005BF00  EF E4 18 2A */	fadds f31, f4, f3
/* 8005EFC4 0005BF04  EC 67 01 F2 */	fmuls f3, f7, f7
/* 8005EFC8 0005BF08  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EFCC 0005BF0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8005EFD0 0005BF10  EF C3 08 2A */	fadds f30, f3, f1
/* 8005EFD4 0005BF14  40 81 00 1C */	ble .L_8005EFF0
/* 8005EFD8 0005BF18  40 81 00 10 */	ble .L_8005EFE8
/* 8005EFDC 0005BF1C  FC 00 F8 34 */	frsqrte f0, f31
/* 8005EFE0 0005BF20  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8005EFE4 0005BF24  48 00 00 08 */	b .L_8005EFEC
.L_8005EFE8:
/* 8005EFE8 0005BF28  FC 00 F8 90 */	fmr f0, f31
.L_8005EFEC:
/* 8005EFEC 0005BF2C  FF E0 00 90 */	fmr f31, f0
.L_8005EFF0:
/* 8005EFF0 0005BF30  C0 02 86 38 */	lfs f0, lbl_80516998@sda21(r2)
/* 8005EFF4 0005BF34  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8005EFF8 0005BF38  40 81 00 1C */	ble .L_8005F014
/* 8005EFFC 0005BF3C  40 81 00 10 */	ble .L_8005F00C
/* 8005F000 0005BF40  FC 00 F0 34 */	frsqrte f0, f30
/* 8005F004 0005BF44  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8005F008 0005BF48  48 00 00 08 */	b .L_8005F010
.L_8005F00C:
/* 8005F00C 0005BF4C  FC 00 F0 90 */	fmr f0, f30
.L_8005F010:
/* 8005F010 0005BF50  FF C0 00 90 */	fmr f30, f0
.L_8005F014:
/* 8005F014 0005BF54  3C 80 80 48 */	lis r4, lbl_8047889C@ha
/* 8005F018 0005BF58  38 61 00 08 */	addi r3, r1, 8
/* 8005F01C 0005BF5C  38 E4 88 9C */	addi r7, r4, lbl_8047889C@l
/* 8005F020 0005BF60  80 C7 00 00 */	lwz r6, 0(r7)
/* 8005F024 0005BF64  7C 64 1B 78 */	mr r4, r3
/* 8005F028 0005BF68  80 A7 00 04 */	lwz r5, 4(r7)
/* 8005F02C 0005BF6C  80 07 00 08 */	lwz r0, 8(r7)
/* 8005F030 0005BF70  90 C1 00 08 */	stw r6, 8(r1)
/* 8005F034 0005BF74  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8005F038 0005BF78  90 01 00 10 */	stw r0, 0x10(r1)
/* 8005F03C 0005BF7C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8005F040 0005BF80  FC 00 00 50 */	fneg f0, f0
/* 8005F044 0005BF84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8005F048 0005BF88  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8005F04C 0005BF8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005F050 0005BF90  48 08 BE AD */	bl PSVECNormalize
/* 8005F054 0005BF94  D3 FF 00 00 */	stfs f31, 0(r31)
/* 8005F058 0005BF98  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005F05C 0005BF9C  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8005F060 0005BFA0  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8005F064 0005BFA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8005F068 0005BFA8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8005F06C 0005BFAC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8005F070 0005BFB0  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8005F074 0005BFB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8005F078 0005BFB8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8005F07C 0005BFBC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8005F080 0005BFC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8005F084 0005BFC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8005F088 0005BFC8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8005F08C 0005BFCC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8005F090 0005BFD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005F094 0005BFD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005F098 0005BFD8  7C 08 03 A6 */	mtlr r0
/* 8005F09C 0005BFDC  38 21 00 40 */	addi r1, r1, 0x40
/* 8005F0A0 0005BFE0  4E 80 00 20 */	blr 
.endfn J3DCalcYBBoardMtx__FPA4_f

.fn J3DPSCalcInverseTranspose__FPA4_fPA3_f, global
/* 8005F0A4 0005BFE4  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 8005F0A8 0005BFE8  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 8005F0AC 0005BFEC  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 8005F0B0 0005BFF0  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 8005F0B4 0005BFF4  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 8005F0B8 0005BFF8  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 8005F0BC 0005BFFC  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 8005F0C0 0005C000  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 8005F0C4 0005C004  11 63 01 B2 */	ps_mul f11, f3, f6
/* 8005F0C8 0005C008  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 8005F0CC 0005C00C  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 8005F0D0 0005C010  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 8005F0D4 0005C014  11 81 02 32 */	ps_mul f12, f1, f8
/* 8005F0D8 0005C018  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 8005F0DC 0005C01C  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 8005F0E0 0005C020  11 43 01 32 */	ps_mul f10, f3, f4
/* 8005F0E4 0005C024  11 20 01 72 */	ps_mul f9, f0, f5
/* 8005F0E8 0005C028  11 01 00 B2 */	ps_mul f8, f1, f2
/* 8005F0EC 0005C02C  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 8005F0F0 0005C030  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8005F0F4 0005C034  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 8005F0F8 0005C038  10 E0 03 72 */	ps_mul f7, f0, f13
/* 8005F0FC 0005C03C  10 21 08 28 */	ps_sub f1, f1, f1
/* 8005F100 0005C040  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8005F104 0005C044  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 8005F108 0005C048  10 07 08 40 */	ps_cmpo0 cr0, f7, f1
/* 8005F10C 0005C04C  40 82 00 0C */	bne .L_8005F118
/* 8005F110 0005C050  38 60 00 00 */	li r3, 0
/* 8005F114 0005C054  4E 80 00 20 */	blr 
.L_8005F118:
/* 8005F118 0005C058  EC 00 38 30 */	fres f0, f7
/* 8005F11C 0005C05C  10 C0 00 2A */	ps_add f6, f0, f0
/* 8005F120 0005C060  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8005F124 0005C064  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8005F128 0005C068  10 C0 00 2A */	ps_add f6, f0, f0
/* 8005F12C 0005C06C  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8005F130 0005C070  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8005F134 0005C074  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 8005F138 0005C078  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 8005F13C 0005C07C  F1 A4 00 00 */	psq_st f13, 0(r4), 0, qr0
/* 8005F140 0005C080  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8005F144 0005C084  F1 84 00 0C */	psq_st f12, 12(r4), 0, qr0
/* 8005F148 0005C088  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 8005F14C 0005C08C  F1 64 00 18 */	psq_st f11, 24(r4), 0, qr0
/* 8005F150 0005C090  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8005F154 0005C094  F1 44 80 08 */	psq_st f10, 8(r4), 1, qr0
/* 8005F158 0005C098  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 8005F15C 0005C09C  F1 24 80 14 */	psq_st f9, 20(r4), 1, qr0
/* 8005F160 0005C0A0  38 60 00 01 */	li r3, 1
/* 8005F164 0005C0A4  F1 04 80 20 */	psq_st f8, 32(r4), 1, qr0
/* 8005F168 0005C0A8  4E 80 00 20 */	blr 
.endfn J3DPSCalcInverseTranspose__FPA4_fPA3_f

.fn J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f, global
/* 8005F16C 0005C0AC  A8 A3 00 0E */	lha r5, 0xe(r3)
/* 8005F170 0005C0B0  3C C0 80 50 */	lis r6, sincosTable___5JMath@ha
/* 8005F174 0005C0B4  38 C6 71 A0 */	addi r6, r6, sincosTable___5JMath@l
/* 8005F178 0005C0B8  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8005F17C 0005C0BC  54 A5 F4 B8 */	rlwinm r5, r5, 0x1e, 0x12, 0x1c
/* 8005F180 0005C0C0  A8 E3 00 0C */	lha r7, 0xc(r3)
/* 8005F184 0005C0C4  7D 06 2C 2E */	lfsx f8, r6, r5
/* 8005F188 0005C0C8  54 09 F4 B8 */	rlwinm r9, r0, 0x1e, 0x12, 0x1c
/* 8005F18C 0005C0CC  39 06 00 04 */	addi r8, r6, 4
/* 8005F190 0005C0D0  54 E0 F4 B8 */	rlwinm r0, r7, 0x1e, 0x12, 0x1c
/* 8005F194 0005C0D4  FC 00 40 50 */	fneg f0, f8
/* 8005F198 0005C0D8  7C C8 2C 2E */	lfsx f6, r8, r5
/* 8005F19C 0005C0DC  7D 48 4C 2E */	lfsx f10, r8, r9
/* 8005F1A0 0005C0E0  7C 86 04 2E */	lfsx f4, r6, r0
/* 8005F1A4 0005C0E4  7C A8 04 2E */	lfsx f5, r8, r0
/* 8005F1A8 0005C0E8  EC 2A 01 B2 */	fmuls f1, f10, f6
/* 8005F1AC 0005C0EC  7D 26 4C 2E */	lfsx f9, r6, r9
/* 8005F1B0 0005C0F0  ED 84 02 B2 */	fmuls f12, f4, f10
/* 8005F1B4 0005C0F4  EC 66 01 32 */	fmuls f3, f6, f4
/* 8005F1B8 0005C0F8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8005F1BC 0005C0FC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8005F1C0 0005C100  EC 09 01 B2 */	fmuls f0, f9, f6
/* 8005F1C4 0005C104  D0 24 00 00 */	stfs f1, 0(r4)
/* 8005F1C8 0005C108  ED 65 02 72 */	fmuls f11, f5, f9
/* 8005F1CC 0005C10C  EC E6 01 72 */	fmuls f7, f6, f5
/* 8005F1D0 0005C110  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8005F1D4 0005C114  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8005F1D8 0005C118  ED 45 02 B2 */	fmuls f10, f5, f10
/* 8005F1DC 0005C11C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8005F1E0 0005C120  D0 64 00 24 */	stfs f3, 0x24(r4)
/* 8005F1E4 0005C124  ED 24 02 72 */	fmuls f9, f4, f9
/* 8005F1E8 0005C128  EC CC 5A 38 */	fmsubs f6, f12, f8, f11
/* 8005F1EC 0005C12C  D0 E4 00 28 */	stfs f7, 0x28(r4)
/* 8005F1F0 0005C130  EC AB 62 38 */	fmsubs f5, f11, f8, f12
/* 8005F1F4 0005C134  EC 8A 4A 3A */	fmadds f4, f10, f8, f9
/* 8005F1F8 0005C138  D0 C4 00 04 */	stfs f6, 4(r4)
/* 8005F1FC 0005C13C  EC 69 52 3A */	fmadds f3, f9, f8, f10
/* 8005F200 0005C140  D0 A4 00 18 */	stfs f5, 0x18(r4)
/* 8005F204 0005C144  D0 84 00 08 */	stfs f4, 8(r4)
/* 8005F208 0005C148  D0 64 00 14 */	stfs f3, 0x14(r4)
/* 8005F20C 0005C14C  D0 44 00 0C */	stfs f2, 0xc(r4)
/* 8005F210 0005C150  D0 24 00 1C */	stfs f1, 0x1c(r4)
/* 8005F214 0005C154  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8005F218 0005C158  4E 80 00 20 */	blr 
.endfn J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f

.fn J3DGetTranslateRotateMtx__FsssfffPA4_f, global
/* 8005F21C 0005C15C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005F220 0005C160  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8005F224 0005C164  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8005F228 0005C168  3C E0 80 50 */	lis r7, sincosTable___5JMath@ha
/* 8005F22C 0005C16C  54 84 F4 B8 */	rlwinm r4, r4, 0x1e, 0x12, 0x1c
/* 8005F230 0005C170  38 E7 71 A0 */	addi r7, r7, sincosTable___5JMath@l
/* 8005F234 0005C174  54 A5 F4 B8 */	rlwinm r5, r5, 0x1e, 0x12, 0x1c
/* 8005F238 0005C178  7D 47 24 2E */	lfsx f10, r7, r4
/* 8005F23C 0005C17C  39 07 00 04 */	addi r8, r7, 4
/* 8005F240 0005C180  54 60 F4 B8 */	rlwinm r0, r3, 0x1e, 0x12, 0x1c
/* 8005F244 0005C184  7C C8 24 2E */	lfsx f6, r8, r4
/* 8005F248 0005C188  7D 88 2C 2E */	lfsx f12, r8, r5
/* 8005F24C 0005C18C  FC 80 50 50 */	fneg f4, f10
/* 8005F250 0005C190  7D 07 04 2E */	lfsx f8, r7, r0
/* 8005F254 0005C194  7D 28 04 2E */	lfsx f9, r8, r0
/* 8005F258 0005C198  EC AC 01 B2 */	fmuls f5, f12, f6
/* 8005F25C 0005C19C  7D 67 2C 2E */	lfsx f11, r7, r5
/* 8005F260 0005C1A0  EC 06 02 32 */	fmuls f0, f6, f8
/* 8005F264 0005C1A4  EF E8 03 32 */	fmuls f31, f8, f12
/* 8005F268 0005C1A8  D0 86 00 20 */	stfs f4, 0x20(r6)
/* 8005F26C 0005C1AC  EC 8B 01 B2 */	fmuls f4, f11, f6
/* 8005F270 0005C1B0  ED A9 02 F2 */	fmuls f13, f9, f11
/* 8005F274 0005C1B4  D0 A6 00 00 */	stfs f5, 0(r6)
/* 8005F278 0005C1B8  EC E6 02 72 */	fmuls f7, f6, f9
/* 8005F27C 0005C1BC  ED 08 02 F2 */	fmuls f8, f8, f11
/* 8005F280 0005C1C0  D0 86 00 10 */	stfs f4, 0x10(r6)
/* 8005F284 0005C1C4  ED 29 03 32 */	fmuls f9, f9, f12
/* 8005F288 0005C1C8  EC DF 6A B8 */	fmsubs f6, f31, f10, f13
/* 8005F28C 0005C1CC  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8005F290 0005C1D0  EC AD FA B8 */	fmsubs f5, f13, f10, f31
/* 8005F294 0005C1D4  EC 89 42 BA */	fmadds f4, f9, f10, f8
/* 8005F298 0005C1D8  D0 E6 00 28 */	stfs f7, 0x28(r6)
/* 8005F29C 0005C1DC  EC 08 4A BA */	fmadds f0, f8, f10, f9
/* 8005F2A0 0005C1E0  D0 C6 00 04 */	stfs f6, 4(r6)
/* 8005F2A4 0005C1E4  D0 A6 00 18 */	stfs f5, 0x18(r6)
/* 8005F2A8 0005C1E8  D0 86 00 08 */	stfs f4, 8(r6)
/* 8005F2AC 0005C1EC  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 8005F2B0 0005C1F0  D0 26 00 0C */	stfs f1, 0xc(r6)
/* 8005F2B4 0005C1F4  D0 46 00 1C */	stfs f2, 0x1c(r6)
/* 8005F2B8 0005C1F8  D0 66 00 2C */	stfs f3, 0x2c(r6)
/* 8005F2BC 0005C1FC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8005F2C0 0005C200  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8005F2C4 0005C204  38 21 00 20 */	addi r1, r1, 0x20
/* 8005F2C8 0005C208  4E 80 00 20 */	blr 
.endfn J3DGetTranslateRotateMtx__FsssfffPA4_f

.fn J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f, global
/* 8005F2CC 0005C20C  A8 03 00 08 */	lha r0, 8(r3)
/* 8005F2D0 0005C210  3C C0 80 50 */	lis r6, sincosTable___5JMath@ha
/* 8005F2D4 0005C214  38 E6 71 A0 */	addi r7, r6, sincosTable___5JMath@l
/* 8005F2D8 0005C218  C0 43 00 00 */	lfs f2, 0(r3)
/* 8005F2DC 0005C21C  54 00 F4 B8 */	rlwinm r0, r0, 0x1e, 0x12, 0x1c
/* 8005F2E0 0005C220  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8005F2E4 0005C224  7C C7 02 14 */	add r6, r7, r0
/* 8005F2E8 0005C228  7C 07 04 2E */	lfsx f0, r7, r0
/* 8005F2EC 0005C22C  C0 26 00 04 */	lfs f1, 4(r6)
/* 8005F2F0 0005C230  C0 63 00 04 */	lfs f3, 4(r3)
/* 8005F2F4 0005C234  EC A2 00 32 */	fmuls f5, f2, f0
/* 8005F2F8 0005C238  EC 82 00 72 */	fmuls f4, f2, f1
/* 8005F2FC 0005C23C  C1 24 00 00 */	lfs f9, 0(r4)
/* 8005F300 0005C240  ED 43 00 32 */	fmuls f10, f3, f0
/* 8005F304 0005C244  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 8005F308 0005C248  ED 63 00 72 */	fmuls f11, f3, f1
/* 8005F30C 0005C24C  FC 40 20 50 */	fneg f2, f4
/* 8005F310 0005C250  EC 05 01 B2 */	fmuls f0, f5, f6
/* 8005F314 0005C254  D0 85 00 00 */	stfs f4, 0(r5)
/* 8005F318 0005C258  FD 00 28 50 */	fneg f8, f5
/* 8005F31C 0005C25C  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 8005F320 0005C260  FC 60 50 50 */	fneg f3, f10
/* 8005F324 0005C264  EC 42 02 7A */	fmadds f2, f2, f9, f0
/* 8005F328 0005C268  D1 05 00 04 */	stfs f8, 4(r5)
/* 8005F32C 0005C26C  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005F330 0005C270  EC A9 10 2A */	fadds f5, f9, f2
/* 8005F334 0005C274  C0 02 86 3C */	lfs f0, lbl_8051699C@sda21(r2)
/* 8005F338 0005C278  EC 4B 01 B2 */	fmuls f2, f11, f6
/* 8005F33C 0005C27C  EC A7 28 2A */	fadds f5, f7, f5
/* 8005F340 0005C280  EC 43 12 78 */	fmsubs f2, f3, f9, f2
/* 8005F344 0005C284  D0 A5 00 08 */	stfs f5, 8(r5)
/* 8005F348 0005C288  EC 46 10 2A */	fadds f2, f6, f2
/* 8005F34C 0005C28C  D1 45 00 10 */	stfs f10, 0x10(r5)
/* 8005F350 0005C290  EC 44 10 2A */	fadds f2, f4, f2
/* 8005F354 0005C294  D1 65 00 14 */	stfs f11, 0x14(r5)
/* 8005F358 0005C298  D0 45 00 18 */	stfs f2, 0x18(r5)
/* 8005F35C 0005C29C  D0 25 00 2C */	stfs f1, 0x2c(r5)
/* 8005F360 0005C2A0  D0 25 00 24 */	stfs f1, 0x24(r5)
/* 8005F364 0005C2A4  D0 25 00 20 */	stfs f1, 0x20(r5)
/* 8005F368 0005C2A8  D0 25 00 1C */	stfs f1, 0x1c(r5)
/* 8005F36C 0005C2AC  D0 25 00 0C */	stfs f1, 0xc(r5)
/* 8005F370 0005C2B0  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8005F374 0005C2B4  4E 80 00 20 */	blr 
.endfn J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f

.fn J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f, global
/* 8005F378 0005C2B8  A8 03 00 08 */	lha r0, 8(r3)
/* 8005F37C 0005C2BC  3C C0 80 50 */	lis r6, sincosTable___5JMath@ha
/* 8005F380 0005C2C0  38 E6 71 A0 */	addi r7, r6, sincosTable___5JMath@l
/* 8005F384 0005C2C4  C0 43 00 00 */	lfs f2, 0(r3)
/* 8005F388 0005C2C8  54 00 F4 B8 */	rlwinm r0, r0, 0x1e, 0x12, 0x1c
/* 8005F38C 0005C2CC  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8005F390 0005C2D0  7C C7 02 14 */	add r6, r7, r0
/* 8005F394 0005C2D4  7C 07 04 2E */	lfsx f0, r7, r0
/* 8005F398 0005C2D8  C0 26 00 04 */	lfs f1, 4(r6)
/* 8005F39C 0005C2DC  C0 63 00 04 */	lfs f3, 4(r3)
/* 8005F3A0 0005C2E0  EC A2 00 32 */	fmuls f5, f2, f0
/* 8005F3A4 0005C2E4  EC 82 00 72 */	fmuls f4, f2, f1
/* 8005F3A8 0005C2E8  C1 24 00 00 */	lfs f9, 0(r4)
/* 8005F3AC 0005C2EC  ED 43 00 32 */	fmuls f10, f3, f0
/* 8005F3B0 0005C2F0  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 8005F3B4 0005C2F4  ED 63 00 72 */	fmuls f11, f3, f1
/* 8005F3B8 0005C2F8  FC 40 20 50 */	fneg f2, f4
/* 8005F3BC 0005C2FC  EC 05 01 B2 */	fmuls f0, f5, f6
/* 8005F3C0 0005C300  D0 85 00 00 */	stfs f4, 0(r5)
/* 8005F3C4 0005C304  FD 00 28 50 */	fneg f8, f5
/* 8005F3C8 0005C308  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 8005F3CC 0005C30C  FC 60 50 50 */	fneg f3, f10
/* 8005F3D0 0005C310  EC 42 02 7A */	fmadds f2, f2, f9, f0
/* 8005F3D4 0005C314  D1 05 00 04 */	stfs f8, 4(r5)
/* 8005F3D8 0005C318  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005F3DC 0005C31C  EC A9 10 2A */	fadds f5, f9, f2
/* 8005F3E0 0005C320  C0 02 86 3C */	lfs f0, lbl_8051699C@sda21(r2)
/* 8005F3E4 0005C324  EC 4B 01 B2 */	fmuls f2, f11, f6
/* 8005F3E8 0005C328  EC A7 28 2A */	fadds f5, f7, f5
/* 8005F3EC 0005C32C  EC 43 12 78 */	fmsubs f2, f3, f9, f2
/* 8005F3F0 0005C330  D0 A5 00 0C */	stfs f5, 0xc(r5)
/* 8005F3F4 0005C334  EC 46 10 2A */	fadds f2, f6, f2
/* 8005F3F8 0005C338  D1 45 00 10 */	stfs f10, 0x10(r5)
/* 8005F3FC 0005C33C  EC 44 10 2A */	fadds f2, f4, f2
/* 8005F400 0005C340  D1 65 00 14 */	stfs f11, 0x14(r5)
/* 8005F404 0005C344  D0 45 00 1C */	stfs f2, 0x1c(r5)
/* 8005F408 0005C348  D0 25 00 2C */	stfs f1, 0x2c(r5)
/* 8005F40C 0005C34C  D0 25 00 24 */	stfs f1, 0x24(r5)
/* 8005F410 0005C350  D0 25 00 20 */	stfs f1, 0x20(r5)
/* 8005F414 0005C354  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 8005F418 0005C358  D0 25 00 08 */	stfs f1, 8(r5)
/* 8005F41C 0005C35C  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8005F420 0005C360  4E 80 00 20 */	blr 
.endfn J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f

.fn J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f, global
/* 8005F424 0005C364  C1 22 86 40 */	lfs f9, lbl_805169A0@sda21(r2)
/* 8005F428 0005C368  3C A0 80 50 */	lis r5, sincosTable___5JMath@ha
/* 8005F42C 0005C36C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8005F430 0005C370  38 A5 71 A0 */	addi r5, r5, sincosTable___5JMath@l
/* 8005F434 0005C374  A8 03 00 08 */	lha r0, 8(r3)
/* 8005F438 0005C378  EC 20 48 28 */	fsubs f1, f0, f9
/* 8005F43C 0005C37C  C1 03 00 04 */	lfs f8, 4(r3)
/* 8005F440 0005C380  54 00 F4 B8 */	rlwinm r0, r0, 0x1e, 0x12, 0x1c
/* 8005F444 0005C384  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005F448 0005C388  7D 45 04 2E */	lfsx f10, r5, r0
/* 8005F44C 0005C38C  7C A5 02 14 */	add r5, r5, r0
/* 8005F450 0005C390  EC C1 40 2A */	fadds f6, f1, f8
/* 8005F454 0005C394  C1 65 00 04 */	lfs f11, 4(r5)
/* 8005F458 0005C398  C0 83 00 00 */	lfs f4, 0(r3)
/* 8005F45C 0005C39C  ED 80 48 28 */	fsubs f12, f0, f9
/* 8005F460 0005C3A0  EC E8 02 B2 */	fmuls f7, f8, f10
/* 8005F464 0005C3A4  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005F468 0005C3A8  EC 64 02 F2 */	fmuls f3, f4, f11
/* 8005F46C 0005C3AC  C0 02 86 3C */	lfs f0, lbl_8051699C@sda21(r2)
/* 8005F470 0005C3B0  EC 4A 01 B2 */	fmuls f2, f10, f6
/* 8005F474 0005C3B4  FC 80 20 50 */	fneg f4, f4
/* 8005F478 0005C3B8  D0 64 00 00 */	stfs f3, 0(r4)
/* 8005F47C 0005C3BC  FC 60 60 50 */	fneg f3, f12
/* 8005F480 0005C3C0  EC AC 12 F8 */	fmsubs f5, f12, f11, f2
/* 8005F484 0005C3C4  EC 4B 01 B2 */	fmuls f2, f11, f6
/* 8005F488 0005C3C8  D0 E4 00 04 */	stfs f7, 4(r4)
/* 8005F48C 0005C3CC  EC 84 02 B2 */	fmuls f4, f4, f10
/* 8005F490 0005C3D0  EC A9 28 2A */	fadds f5, f9, f5
/* 8005F494 0005C3D4  EC 43 12 B8 */	fmsubs f2, f3, f10, f2
/* 8005F498 0005C3D8  EC 68 02 F2 */	fmuls f3, f8, f11
/* 8005F49C 0005C3DC  D0 A4 00 08 */	stfs f5, 8(r4)
/* 8005F4A0 0005C3E0  EC 49 10 2A */	fadds f2, f9, f2
/* 8005F4A4 0005C3E4  D0 84 00 10 */	stfs f4, 0x10(r4)
/* 8005F4A8 0005C3E8  D0 64 00 14 */	stfs f3, 0x14(r4)
/* 8005F4AC 0005C3EC  D0 44 00 18 */	stfs f2, 0x18(r4)
/* 8005F4B0 0005C3F0  D0 24 00 2C */	stfs f1, 0x2c(r4)
/* 8005F4B4 0005C3F4  D0 24 00 24 */	stfs f1, 0x24(r4)
/* 8005F4B8 0005C3F8  D0 24 00 20 */	stfs f1, 0x20(r4)
/* 8005F4BC 0005C3FC  D0 24 00 1C */	stfs f1, 0x1c(r4)
/* 8005F4C0 0005C400  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 8005F4C4 0005C404  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8005F4C8 0005C408  4E 80 00 20 */	blr 
.endfn J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f

.fn J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f, global
/* 8005F4CC 0005C40C  C1 22 86 40 */	lfs f9, lbl_805169A0@sda21(r2)
/* 8005F4D0 0005C410  3C A0 80 50 */	lis r5, sincosTable___5JMath@ha
/* 8005F4D4 0005C414  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8005F4D8 0005C418  38 A5 71 A0 */	addi r5, r5, sincosTable___5JMath@l
/* 8005F4DC 0005C41C  A8 03 00 08 */	lha r0, 8(r3)
/* 8005F4E0 0005C420  EC 20 48 28 */	fsubs f1, f0, f9
/* 8005F4E4 0005C424  C1 03 00 04 */	lfs f8, 4(r3)
/* 8005F4E8 0005C428  54 00 F4 B8 */	rlwinm r0, r0, 0x1e, 0x12, 0x1c
/* 8005F4EC 0005C42C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005F4F0 0005C430  7D 45 04 2E */	lfsx f10, r5, r0
/* 8005F4F4 0005C434  7C A5 02 14 */	add r5, r5, r0
/* 8005F4F8 0005C438  EC C1 40 2A */	fadds f6, f1, f8
/* 8005F4FC 0005C43C  C1 65 00 04 */	lfs f11, 4(r5)
/* 8005F500 0005C440  C0 83 00 00 */	lfs f4, 0(r3)
/* 8005F504 0005C444  ED 80 48 28 */	fsubs f12, f0, f9
/* 8005F508 0005C448  EC E8 02 B2 */	fmuls f7, f8, f10
/* 8005F50C 0005C44C  C0 22 86 38 */	lfs f1, lbl_80516998@sda21(r2)
/* 8005F510 0005C450  EC 64 02 F2 */	fmuls f3, f4, f11
/* 8005F514 0005C454  C0 02 86 3C */	lfs f0, lbl_8051699C@sda21(r2)
/* 8005F518 0005C458  EC 4A 01 B2 */	fmuls f2, f10, f6
/* 8005F51C 0005C45C  FC 80 20 50 */	fneg f4, f4
/* 8005F520 0005C460  D0 64 00 00 */	stfs f3, 0(r4)
/* 8005F524 0005C464  FC 60 60 50 */	fneg f3, f12
/* 8005F528 0005C468  EC AC 12 F8 */	fmsubs f5, f12, f11, f2
/* 8005F52C 0005C46C  EC 4B 01 B2 */	fmuls f2, f11, f6
/* 8005F530 0005C470  D0 E4 00 04 */	stfs f7, 4(r4)
/* 8005F534 0005C474  EC 84 02 B2 */	fmuls f4, f4, f10
/* 8005F538 0005C478  EC A9 28 2A */	fadds f5, f9, f5
/* 8005F53C 0005C47C  EC 43 12 B8 */	fmsubs f2, f3, f10, f2
/* 8005F540 0005C480  EC 68 02 F2 */	fmuls f3, f8, f11
/* 8005F544 0005C484  D0 A4 00 0C */	stfs f5, 0xc(r4)
/* 8005F548 0005C488  EC 49 10 2A */	fadds f2, f9, f2
/* 8005F54C 0005C48C  D0 84 00 10 */	stfs f4, 0x10(r4)
/* 8005F550 0005C490  D0 64 00 14 */	stfs f3, 0x14(r4)
/* 8005F554 0005C494  D0 44 00 1C */	stfs f2, 0x1c(r4)
/* 8005F558 0005C498  D0 24 00 2C */	stfs f1, 0x2c(r4)
/* 8005F55C 0005C49C  D0 24 00 24 */	stfs f1, 0x24(r4)
/* 8005F560 0005C4A0  D0 24 00 20 */	stfs f1, 0x20(r4)
/* 8005F564 0005C4A4  D0 24 00 18 */	stfs f1, 0x18(r4)
/* 8005F568 0005C4A8  D0 24 00 08 */	stfs f1, 8(r4)
/* 8005F56C 0005C4AC  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8005F570 0005C4B0  4E 80 00 20 */	blr 
.endfn J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f

.fn J3DScaleNrmMtx__FPA4_fRC3Vec, global
/* 8005F574 0005C4B4  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8005F578 0005C4B8  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8005F57C 0005C4BC  C0 64 00 08 */	lfs f3, 8(r4)
/* 8005F580 0005C4C0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8005F584 0005C4C4  10 80 00 B2 */	ps_mul f4, f0, f2
/* 8005F588 0005C4C8  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 8005F58C 0005C4CC  EC 81 00 F2 */	fmuls f4, f1, f3
/* 8005F590 0005C4D0  D0 83 00 08 */	stfs f4, 8(r3)
/* 8005F594 0005C4D4  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8005F598 0005C4D8  E0 03 00 10 */	psq_l f0, 16(r3), 0, qr0
/* 8005F59C 0005C4DC  C0 64 00 08 */	lfs f3, 8(r4)
/* 8005F5A0 0005C4E0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8005F5A4 0005C4E4  10 80 00 B2 */	ps_mul f4, f0, f2
/* 8005F5A8 0005C4E8  F0 83 00 10 */	psq_st f4, 16(r3), 0, qr0
/* 8005F5AC 0005C4EC  EC 81 00 F2 */	fmuls f4, f1, f3
/* 8005F5B0 0005C4F0  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 8005F5B4 0005C4F4  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8005F5B8 0005C4F8  E0 03 00 20 */	psq_l f0, 32(r3), 0, qr0
/* 8005F5BC 0005C4FC  C0 64 00 08 */	lfs f3, 8(r4)
/* 8005F5C0 0005C500  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8005F5C4 0005C504  10 80 00 B2 */	ps_mul f4, f0, f2
/* 8005F5C8 0005C508  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 8005F5CC 0005C50C  EC 81 00 F2 */	fmuls f4, f1, f3
/* 8005F5D0 0005C510  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8005F5D4 0005C514  4E 80 00 20 */	blr 
.endfn J3DScaleNrmMtx__FPA4_fRC3Vec

.fn J3DScaleNrmMtx33__FPA3_fRC3Vec, global
/* 8005F5D8 0005C518  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8005F5DC 0005C51C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8005F5E0 0005C520  C0 23 00 08 */	lfs f1, 8(r3)
/* 8005F5E4 0005C524  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8005F5E8 0005C528  10 00 01 B2 */	ps_mul f0, f0, f6
/* 8005F5EC 0005C52C  E0 43 00 0C */	psq_l f2, 12(r3), 0, qr0
/* 8005F5F0 0005C530  EC 21 01 F2 */	fmuls f1, f1, f7
/* 8005F5F4 0005C534  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 8005F5F8 0005C538  10 42 01 B2 */	ps_mul f2, f2, f6
/* 8005F5FC 0005C53C  E0 83 00 18 */	psq_l f4, 24(r3), 0, qr0
/* 8005F600 0005C540  EC 63 01 F2 */	fmuls f3, f3, f7
/* 8005F604 0005C544  C0 A3 00 20 */	lfs f5, 0x20(r3)
/* 8005F608 0005C548  10 84 01 B2 */	ps_mul f4, f4, f6
/* 8005F60C 0005C54C  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8005F610 0005C550  EC A5 01 F2 */	fmuls f5, f5, f7
/* 8005F614 0005C554  D0 23 00 08 */	stfs f1, 8(r3)
/* 8005F618 0005C558  F0 43 00 0C */	psq_st f2, 12(r3), 0, qr0
/* 8005F61C 0005C55C  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8005F620 0005C560  F0 83 00 18 */	psq_st f4, 24(r3), 0, qr0
/* 8005F624 0005C564  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 8005F628 0005C568  4E 80 00 20 */	blr 
.endfn J3DScaleNrmMtx33__FPA3_fRC3Vec

.fn J3DMtxProjConcat__FPA4_fPA4_fPA4_f, global
/* 8005F62C 0005C56C  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8005F630 0005C570  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 8005F634 0005C574  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 8005F638 0005C578  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 8005F63C 0005C57C  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 8005F640 0005C580  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 8005F644 0005C584  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 8005F648 0005C588  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 8005F64C 0005C58C  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 8005F650 0005C590  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 8005F654 0005C594  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8005F658 0005C598  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8005F65C 0005C59C  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8005F660 0005C5A0  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8005F664 0005C5A4  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 8005F668 0005C5A8  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 8005F66C 0005C5AC  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 8005F670 0005C5B0  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 8005F674 0005C5B4  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 8005F678 0005C5B8  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8005F67C 0005C5BC  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8005F680 0005C5C0  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8005F684 0005C5C4  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8005F688 0005C5C8  F0 05 00 08 */	psq_st f0, 8(r5), 0, qr0
/* 8005F68C 0005C5CC  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8005F690 0005C5D0  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8005F694 0005C5D4  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 8005F698 0005C5D8  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 8005F69C 0005C5DC  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 8005F6A0 0005C5E0  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 8005F6A4 0005C5E4  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 8005F6A8 0005C5E8  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 8005F6AC 0005C5EC  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 8005F6B0 0005C5F0  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 8005F6B4 0005C5F4  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8005F6B8 0005C5F8  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8005F6BC 0005C5FC  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8005F6C0 0005C600  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8005F6C4 0005C604  F0 05 00 10 */	psq_st f0, 16(r5), 0, qr0
/* 8005F6C8 0005C608  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 8005F6CC 0005C60C  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 8005F6D0 0005C610  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 8005F6D4 0005C614  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 8005F6D8 0005C618  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8005F6DC 0005C61C  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8005F6E0 0005C620  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8005F6E4 0005C624  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8005F6E8 0005C628  F0 05 00 18 */	psq_st f0, 24(r5), 0, qr0
/* 8005F6EC 0005C62C  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 8005F6F0 0005C630  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 8005F6F4 0005C634  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 8005F6F8 0005C638  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 8005F6FC 0005C63C  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 8005F700 0005C640  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 8005F704 0005C644  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 8005F708 0005C648  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 8005F70C 0005C64C  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 8005F710 0005C650  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 8005F714 0005C654  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8005F718 0005C658  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8005F71C 0005C65C  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8005F720 0005C660  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8005F724 0005C664  F0 05 00 20 */	psq_st f0, 32(r5), 0, qr0
/* 8005F728 0005C668  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 8005F72C 0005C66C  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 8005F730 0005C670  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 8005F734 0005C674  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 8005F738 0005C678  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8005F73C 0005C67C  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8005F740 0005C680  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8005F744 0005C684  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8005F748 0005C688  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 8005F74C 0005C68C  4E 80 00 20 */	blr 
.endfn J3DMtxProjConcat__FPA4_fPA4_fPA4_f

.fn J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl, global
/* 8005F750 0005C690  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8005F754 0005C694  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8005F758 0005C698  3C E0 80 51 */	lis r7, Unit01@ha
/* 8005F75C 0005C69C  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8005F760 0005C6A0  38 E7 46 E0 */	addi r7, r7, Unit01@l
/* 8005F764 0005C6A4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8005F768 0005C6A8  38 84 FF F8 */	addi r4, r4, -8
/* 8005F76C 0005C6AC  38 A5 FF F8 */	addi r5, r5, -8
/* 8005F770 0005C6B0  7C C9 03 A6 */	mtctr r6
.L_8005F774:
/* 8005F774 0005C6B4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8005F778 0005C6B8  E0 C4 00 08 */	psq_l f6, 8(r4), 0, qr0
/* 8005F77C 0005C6BC  E0 E4 00 10 */	psq_l f7, 16(r4), 0, qr0
/* 8005F780 0005C6C0  E1 04 00 18 */	psq_l f8, 24(r4), 0, qr0
/* 8005F784 0005C6C4  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 8005F788 0005C6C8  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8005F78C 0005C6CC  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 8005F790 0005C6D0  E3 E7 00 00 */	psq_l f31, 0(r7), 0, qr0
/* 8005F794 0005C6D4  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 8005F798 0005C6D8  E1 24 00 20 */	psq_l f9, 32(r4), 0, qr0
/* 8005F79C 0005C6DC  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 8005F7A0 0005C6E0  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8005F7A4 0005C6E4  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 8005F7A8 0005C6E8  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8005F7AC 0005C6EC  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 8005F7B0 0005C6F0  E1 44 00 28 */	psq_l f10, 40(r4), 0, qr0
/* 8005F7B4 0005C6F4  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 8005F7B8 0005C6F8  E5 64 00 30 */	psq_lu f11, 48(r4), 0, qr0
/* 8005F7BC 0005C6FC  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 8005F7C0 0005C700  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8005F7C4 0005C704  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8005F7C8 0005C708  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 8005F7CC 0005C70C  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 8005F7D0 0005C710  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 8005F7D4 0005C714  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 8005F7D8 0005C718  F1 85 00 08 */	psq_st f12, 8(r5), 0, qr0
/* 8005F7DC 0005C71C  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 8005F7E0 0005C720  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 8005F7E4 0005C724  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 8005F7E8 0005C728  F1 C5 00 18 */	psq_st f14, 24(r5), 0, qr0
/* 8005F7EC 0005C72C  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 8005F7F0 0005C730  F1 A5 00 10 */	psq_st f13, 16(r5), 0, qr0
/* 8005F7F4 0005C734  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 8005F7F8 0005C738  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 8005F7FC 0005C73C  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 8005F800 0005C740  F1 E5 00 20 */	psq_st f15, 32(r5), 0, qr0
/* 8005F804 0005C744  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 8005F808 0005C748  F0 45 00 28 */	psq_st f2, 40(r5), 0, qr0
/* 8005F80C 0005C74C  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 8005F810 0005C750  F4 05 00 30 */	psq_stu f0, 48(r5), 0, qr0
/* 8005F814 0005C754  42 00 FF 60 */	bdnz .L_8005F774
/* 8005F818 0005C758  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8005F81C 0005C75C  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8005F820 0005C760  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8005F824 0005C764  38 21 00 40 */	addi r1, r1, 0x40
/* 8005F828 0005C768  4E 80 00 20 */	blr 
.endfn J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
