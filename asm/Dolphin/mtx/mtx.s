.include "macros.inc"
.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 8
.obj Unit01, local
	.float 0.0
	.float 1.0
.endobj Unit01

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80517710, local
	.float 1.0
.endobj lbl_80517710
.obj lbl_80517714, local
	.float 0.0
.endobj lbl_80517714
.obj lbl_80517718, local
	.float 0.5
.endobj lbl_80517718
.obj lbl_8051771C, local
	.float 3.0
.endobj lbl_8051771C
.obj lbl_80517720, local
	.float 2.0
.endobj lbl_80517720
.obj lbl_80517724, local
	.float -1.0
.endobj lbl_80517724
.obj lbl_80517728, local
	.float 0.017453292
.endobj lbl_80517728

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn PSMTXIdentity, global
/* 800EA2A0 000E71E0  C0 02 93 B4 */	lfs f0, lbl_80517714@sda21(r2)
/* 800EA2A4 000E71E4  C0 22 93 B0 */	lfs f1, lbl_80517710@sda21(r2)
/* 800EA2A8 000E71E8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800EA2AC 000E71EC  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 800EA2B0 000E71F0  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800EA2B4 000E71F4  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 800EA2B8 000E71F8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800EA2BC 000E71FC  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 800EA2C0 000E7200  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 800EA2C4 000E7204  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 800EA2C8 000E7208  4E 80 00 20 */	blr 
.endfn PSMTXIdentity

.fn PSMTXCopy, global
/* 800EA2CC 000E720C  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800EA2D0 000E7210  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800EA2D4 000E7214  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800EA2D8 000E7218  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 800EA2DC 000E721C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800EA2E0 000E7220  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 800EA2E4 000E7224  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800EA2E8 000E7228  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 800EA2EC 000E722C  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800EA2F0 000E7230  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 800EA2F4 000E7234  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800EA2F8 000E7238  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 800EA2FC 000E723C  4E 80 00 20 */	blr 
.endfn PSMTXCopy

.fn PSMTXConcat, global
/* 800EA300 000E7240  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800EA304 000E7244  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800EA308 000E7248  D9 C1 00 08 */	stfd f14, 8(r1)
/* 800EA30C 000E724C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 800EA310 000E7250  3C C0 80 51 */	lis r6, Unit01@ha
/* 800EA314 000E7254  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 800EA318 000E7258  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 800EA31C 000E725C  38 C6 49 C0 */	addi r6, r6, Unit01@l
/* 800EA320 000E7260  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 800EA324 000E7264  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 800EA328 000E7268  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 800EA32C 000E726C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800EA330 000E7270  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 800EA334 000E7274  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 800EA338 000E7278  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 800EA33C 000E727C  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 800EA340 000E7280  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 800EA344 000E7284  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800EA348 000E7288  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 800EA34C 000E728C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800EA350 000E7290  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 800EA354 000E7294  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 800EA358 000E7298  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 800EA35C 000E729C  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 800EA360 000E72A0  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 800EA364 000E72A4  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800EA368 000E72A8  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800EA36C 000E72AC  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 800EA370 000E72B0  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 800EA374 000E72B4  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 800EA378 000E72B8  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 800EA37C 000E72BC  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 800EA380 000E72C0  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 800EA384 000E72C4  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 800EA388 000E72C8  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 800EA38C 000E72CC  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 800EA390 000E72D0  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 800EA394 000E72D4  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 800EA398 000E72D8  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 800EA39C 000E72DC  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 800EA3A0 000E72E0  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 800EA3A4 000E72E4  C9 C1 00 08 */	lfd f14, 8(r1)
/* 800EA3A8 000E72E8  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 800EA3AC 000E72EC  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 800EA3B0 000E72F0  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 800EA3B4 000E72F4  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 800EA3B8 000E72F8  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 800EA3BC 000E72FC  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 800EA3C0 000E7300  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800EA3C4 000E7304  38 21 00 40 */	addi r1, r1, 0x40
/* 800EA3C8 000E7308  4E 80 00 20 */	blr 
.endfn PSMTXConcat

.fn PSMTXTranspose, global
/* 800EA3CC 000E730C  C0 02 93 B4 */	lfs f0, lbl_80517714@sda21(r2)
/* 800EA3D0 000E7310  E0 23 00 00 */	psq_l f1, 0(r3), 0, qr0
/* 800EA3D4 000E7314  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 800EA3D8 000E7318  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800EA3DC 000E731C  10 81 14 20 */	ps_merge00 f4, f1, f2
/* 800EA3E0 000E7320  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 800EA3E4 000E7324  10 A1 14 E0 */	ps_merge11 f5, f1, f2
/* 800EA3E8 000E7328  E0 43 80 18 */	psq_l f2, 24(r3), 1, qr0
/* 800EA3EC 000E732C  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800EA3F0 000E7330  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 800EA3F4 000E7334  10 43 14 20 */	ps_merge00 f2, f3, f2
/* 800EA3F8 000E7338  F0 A4 00 10 */	psq_st f5, 16(r4), 0, qr0
/* 800EA3FC 000E733C  10 81 04 20 */	ps_merge00 f4, f1, f0
/* 800EA400 000E7340  F0 44 00 20 */	psq_st f2, 32(r4), 0, qr0
/* 800EA404 000E7344  10 A1 04 A0 */	ps_merge10 f5, f1, f0
/* 800EA408 000E7348  F0 84 00 08 */	psq_st f4, 8(r4), 0, qr0
/* 800EA40C 000E734C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 800EA410 000E7350  F0 A4 00 18 */	psq_st f5, 24(r4), 0, qr0
/* 800EA414 000E7354  D0 64 00 28 */	stfs f3, 0x28(r4)
/* 800EA418 000E7358  4E 80 00 20 */	blr 
.endfn PSMTXTranspose

.fn PSMTXInverse, global
/* 800EA41C 000E735C  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 800EA420 000E7360  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 800EA424 000E7364  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 800EA428 000E7368  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 800EA42C 000E736C  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 800EA430 000E7370  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 800EA434 000E7374  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 800EA438 000E7378  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 800EA43C 000E737C  11 63 01 B2 */	ps_mul f11, f3, f6
/* 800EA440 000E7380  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 800EA444 000E7384  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 800EA448 000E7388  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 800EA44C 000E738C  11 81 02 32 */	ps_mul f12, f1, f8
/* 800EA450 000E7390  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 800EA454 000E7394  11 43 01 32 */	ps_mul f10, f3, f4
/* 800EA458 000E7398  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 800EA45C 000E739C  11 20 01 72 */	ps_mul f9, f0, f5
/* 800EA460 000E73A0  11 01 00 B2 */	ps_mul f8, f1, f2
/* 800EA464 000E73A4  10 C6 30 28 */	ps_sub f6, f6, f6
/* 800EA468 000E73A8  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 800EA46C 000E73AC  10 E0 03 72 */	ps_mul f7, f0, f13
/* 800EA470 000E73B0  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 800EA474 000E73B4  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 800EA478 000E73B8  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 800EA47C 000E73BC  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 800EA480 000E73C0  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 800EA484 000E73C4  40 82 00 0C */	bne .L_800EA490
/* 800EA488 000E73C8  38 60 00 00 */	li r3, 0
/* 800EA48C 000E73CC  4E 80 00 20 */	blr 
.L_800EA490:
/* 800EA490 000E73D0  EC 00 38 30 */	fres f0, f7
/* 800EA494 000E73D4  10 C0 00 2A */	ps_add f6, f0, f0
/* 800EA498 000E73D8  10 A0 00 32 */	ps_mul f5, f0, f0
/* 800EA49C 000E73DC  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 800EA4A0 000E73E0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800EA4A4 000E73E4  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 800EA4A8 000E73E8  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 800EA4AC 000E73EC  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 800EA4B0 000E73F0  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 800EA4B4 000E73F4  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 800EA4B8 000E73F8  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 800EA4BC 000E73FC  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 800EA4C0 000E7400  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 800EA4C4 000E7404  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 800EA4C8 000E7408  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 800EA4CC 000E740C  10 CD 00 72 */	ps_mul f6, f13, f1
/* 800EA4D0 000E7410  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 800EA4D4 000E7414  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 800EA4D8 000E7418  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 800EA4DC 000E741C  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 800EA4E0 000E7420  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 800EA4E4 000E7424  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 800EA4E8 000E7428  10 EA 00 72 */	ps_mul f7, f10, f1
/* 800EA4EC 000E742C  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 800EA4F0 000E7430  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 800EA4F4 000E7434  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 800EA4F8 000E7438  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800EA4FC 000E743C  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 800EA500 000E7440  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 800EA504 000E7444  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 800EA508 000E7448  38 60 00 01 */	li r3, 1
/* 800EA50C 000E744C  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 800EA510 000E7450  4E 80 00 20 */	blr 
.endfn PSMTXInverse

.fn PSMTXRotRad, global
/* 800EA514 000E7454  7C 08 02 A6 */	mflr r0
/* 800EA518 000E7458  90 01 00 04 */	stw r0, 4(r1)
/* 800EA51C 000E745C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800EA520 000E7460  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800EA524 000E7464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EA528 000E7468  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EA52C 000E746C  FF E0 08 90 */	fmr f31, f1
/* 800EA530 000E7470  7C 7E 1B 78 */	mr r30, r3
/* 800EA534 000E7474  7C 9F 23 78 */	mr r31, r4
/* 800EA538 000E7478  FC 20 F8 90 */	fmr f1, f31
/* 800EA53C 000E747C  4B FE 57 39 */	bl sinf
/* 800EA540 000E7480  FC 00 08 90 */	fmr f0, f1
/* 800EA544 000E7484  FC 20 F8 90 */	fmr f1, f31
/* 800EA548 000E7488  FF E0 00 90 */	fmr f31, f0
/* 800EA54C 000E748C  4B FE 57 4D */	bl cosf
/* 800EA550 000E7490  FC 00 08 90 */	fmr f0, f1
/* 800EA554 000E7494  7F C3 F3 78 */	mr r3, r30
/* 800EA558 000E7498  FC 20 F8 90 */	fmr f1, f31
/* 800EA55C 000E749C  7F E4 FB 78 */	mr r4, r31
/* 800EA560 000E74A0  FC 40 00 90 */	fmr f2, f0
/* 800EA564 000E74A4  48 00 00 21 */	bl PSMTXRotTrig
/* 800EA568 000E74A8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800EA56C 000E74AC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800EA570 000E74B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EA574 000E74B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EA578 000E74B8  38 21 00 28 */	addi r1, r1, 0x28
/* 800EA57C 000E74BC  7C 08 03 A6 */	mtlr r0
/* 800EA580 000E74C0  4E 80 00 20 */	blr 
.endfn PSMTXRotRad

.fn PSMTXRotTrig, global
/* 800EA584 000E74C4  FC A0 08 18 */	frsp f5, f1
/* 800EA588 000E74C8  FC 80 10 18 */	frsp f4, f2
/* 800EA58C 000E74CC  C0 02 93 B4 */	lfs f0, lbl_80517714@sda21(r2)
/* 800EA590 000E74D0  C0 22 93 B0 */	lfs f1, lbl_80517710@sda21(r2)
/* 800EA594 000E74D4  60 80 00 20 */	ori r0, r4, 0x20
/* 800EA598 000E74D8  10 40 28 50 */	ps_neg f2, f5
/* 800EA59C 000E74DC  28 00 00 78 */	cmplwi r0, 0x78
/* 800EA5A0 000E74E0  41 82 00 18 */	beq .L_800EA5B8
/* 800EA5A4 000E74E4  28 00 00 79 */	cmplwi r0, 0x79
/* 800EA5A8 000E74E8  41 82 00 38 */	beq .L_800EA5E0
/* 800EA5AC 000E74EC  28 00 00 7A */	cmplwi r0, 0x7a
/* 800EA5B0 000E74F0  41 82 00 5C */	beq .L_800EA60C
/* 800EA5B4 000E74F4  48 00 00 7C */	b .L_800EA630
.L_800EA5B8:
/* 800EA5B8 000E74F8  F0 23 80 00 */	psq_st f1, 0(r3), 1, qr0
/* 800EA5BC 000E74FC  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800EA5C0 000E7500  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 800EA5C4 000E7504  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 800EA5C8 000E7508  10 24 14 20 */	ps_merge00 f1, f4, f2
/* 800EA5CC 000E750C  F0 03 00 1C */	psq_st f0, 28(r3), 0, qr0
/* 800EA5D0 000E7510  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 800EA5D4 000E7514  F0 63 00 24 */	psq_st f3, 36(r3), 0, qr0
/* 800EA5D8 000E7518  F0 23 00 14 */	psq_st f1, 20(r3), 0, qr0
/* 800EA5DC 000E751C  48 00 00 54 */	b .L_800EA630
.L_800EA5E0:
/* 800EA5E0 000E7520  10 64 04 20 */	ps_merge00 f3, f4, f0
/* 800EA5E4 000E7524  10 20 0C 20 */	ps_merge00 f1, f0, f1
/* 800EA5E8 000E7528  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800EA5EC 000E752C  F0 63 00 00 */	psq_st f3, 0(r3), 0, qr0
/* 800EA5F0 000E7530  10 42 04 20 */	ps_merge00 f2, f2, f0
/* 800EA5F4 000E7534  10 05 04 20 */	ps_merge00 f0, f5, f0
/* 800EA5F8 000E7538  F0 63 00 28 */	psq_st f3, 40(r3), 0, qr0
/* 800EA5FC 000E753C  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 800EA600 000E7540  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800EA604 000E7544  F0 43 00 20 */	psq_st f2, 32(r3), 0, qr0
/* 800EA608 000E7548  48 00 00 28 */	b .L_800EA630
.L_800EA60C:
/* 800EA60C 000E754C  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800EA610 000E7550  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 800EA614 000E7554  10 44 14 20 */	ps_merge00 f2, f4, f2
/* 800EA618 000E7558  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800EA61C 000E755C  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800EA620 000E7560  10 21 04 20 */	ps_merge00 f1, f1, f0
/* 800EA624 000E7564  F0 63 00 10 */	psq_st f3, 16(r3), 0, qr0
/* 800EA628 000E7568  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 800EA62C 000E756C  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
.L_800EA630:
/* 800EA630 000E7570  4E 80 00 20 */	blr 
.endfn PSMTXRotTrig

.fn __PSMTXRotAxisRadInternal, local
/* 800EA634 000E7574  C1 42 93 B8 */	lfs f10, lbl_80517718@sda21(r2)
/* 800EA638 000E7578  C1 22 93 BC */	lfs f9, lbl_8051771C@sda21(r2)
/* 800EA63C 000E757C  FD 60 10 18 */	frsp f11, f2
/* 800EA640 000E7580  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 800EA644 000E7584  FD 80 08 18 */	frsp f12, f1
/* 800EA648 000E7588  C0 64 00 08 */	lfs f3, 8(r4)
/* 800EA64C 000E758C  10 82 00 B2 */	ps_mul f4, f2, f2
/* 800EA650 000E7590  ED 0A 50 2A */	fadds f8, f10, f10
/* 800EA654 000E7594  10 A3 20 FA */	ps_madd f5, f3, f3, f4
/* 800EA658 000E7598  EC 2A 50 28 */	fsubs f1, f10, f10
/* 800EA65C 000E759C  10 C5 20 D4 */	ps_sum0 f6, f5, f3, f4
/* 800EA660 000E75A0  EC 08 58 28 */	fsubs f0, f8, f11
/* 800EA664 000E75A4  FC E0 30 34 */	frsqrte f7, f6
/* 800EA668 000E75A8  EC 87 01 F2 */	fmuls f4, f7, f7
/* 800EA66C 000E75AC  EC A7 02 B2 */	fmuls f5, f7, f10
/* 800EA670 000E75B0  EC 84 49 BC */	fnmsubs f4, f4, f6, f9
/* 800EA674 000E75B4  EC E4 01 72 */	fmuls f7, f4, f5
/* 800EA678 000E75B8  11 6B 5C 20 */	ps_merge00 f11, f11, f11
/* 800EA67C 000E75BC  10 42 01 D8 */	ps_muls0 f2, f2, f7
/* 800EA680 000E75C0  10 63 01 D8 */	ps_muls0 f3, f3, f7
/* 800EA684 000E75C4  10 C2 00 18 */	ps_muls0 f6, f2, f0
/* 800EA688 000E75C8  11 42 03 18 */	ps_muls0 f10, f2, f12
/* 800EA68C 000E75CC  10 E3 00 18 */	ps_muls0 f7, f3, f0
/* 800EA690 000E75D0  10 A6 00 9A */	ps_muls1 f5, f6, f2
/* 800EA694 000E75D4  10 86 00 98 */	ps_muls0 f4, f6, f2
/* 800EA698 000E75D8  10 C6 00 D8 */	ps_muls0 f6, f6, f3
/* 800EA69C 000E75DC  EC 03 2B 3C */	fnmsubs f0, f3, f12, f5
/* 800EA6A0 000E75E0  ED 03 2B 3A */	fmadds f8, f3, f12, f5
/* 800EA6A4 000E75E4  10 40 50 50 */	ps_neg f2, f10
/* 800EA6A8 000E75E8  11 26 50 54 */	ps_sum0 f9, f6, f1, f10
/* 800EA6AC 000E75EC  10 84 58 14 */	ps_sum0 f4, f4, f0, f11
/* 800EA6B0 000E75F0  10 AB 2A 16 */	ps_sum1 f5, f11, f8, f5
/* 800EA6B4 000E75F4  10 02 30 54 */	ps_sum0 f0, f2, f1, f6
/* 800EA6B8 000E75F8  F1 23 00 08 */	psq_st f9, 8(r3), 0, qr0
/* 800EA6BC 000E75FC  10 46 11 94 */	ps_sum0 f2, f6, f6, f2
/* 800EA6C0 000E7600  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 800EA6C4 000E7604  10 E7 00 D8 */	ps_muls0 f7, f7, f3
/* 800EA6C8 000E7608  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 800EA6CC 000E760C  10 CA 30 96 */	ps_sum1 f6, f10, f2, f6
/* 800EA6D0 000E7610  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800EA6D4 000E7614  10 E7 58 54 */	ps_sum0 f7, f7, f1, f11
/* 800EA6D8 000E7618  F0 C3 00 20 */	psq_st f6, 32(r3), 0, qr0
/* 800EA6DC 000E761C  F0 E3 00 28 */	psq_st f7, 40(r3), 0, qr0
/* 800EA6E0 000E7620  4E 80 00 20 */	blr 
.endfn __PSMTXRotAxisRadInternal

.fn PSMTXRotAxisRad, global
/* 800EA6E4 000E7624  7C 08 02 A6 */	mflr r0
/* 800EA6E8 000E7628  90 01 00 04 */	stw r0, 4(r1)
/* 800EA6EC 000E762C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800EA6F0 000E7630  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800EA6F4 000E7634  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EA6F8 000E7638  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EA6FC 000E763C  FF E0 08 90 */	fmr f31, f1
/* 800EA700 000E7640  7C 7E 1B 78 */	mr r30, r3
/* 800EA704 000E7644  7C 9F 23 78 */	mr r31, r4
/* 800EA708 000E7648  FC 20 F8 90 */	fmr f1, f31
/* 800EA70C 000E764C  4B FE 55 69 */	bl sinf
/* 800EA710 000E7650  FC 00 08 90 */	fmr f0, f1
/* 800EA714 000E7654  FC 20 F8 90 */	fmr f1, f31
/* 800EA718 000E7658  FF E0 00 90 */	fmr f31, f0
/* 800EA71C 000E765C  4B FE 55 7D */	bl cosf
/* 800EA720 000E7660  FC 00 08 90 */	fmr f0, f1
/* 800EA724 000E7664  7F C3 F3 78 */	mr r3, r30
/* 800EA728 000E7668  FC 20 F8 90 */	fmr f1, f31
/* 800EA72C 000E766C  7F E4 FB 78 */	mr r4, r31
/* 800EA730 000E7670  FC 40 00 90 */	fmr f2, f0
/* 800EA734 000E7674  4B FF FF 01 */	bl __PSMTXRotAxisRadInternal
/* 800EA738 000E7678  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800EA73C 000E767C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800EA740 000E7680  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EA744 000E7684  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EA748 000E7688  38 21 00 28 */	addi r1, r1, 0x28
/* 800EA74C 000E768C  7C 08 03 A6 */	mtlr r0
/* 800EA750 000E7690  4E 80 00 20 */	blr 
.endfn PSMTXRotAxisRad

.fn PSMTXTrans, global
/* 800EA754 000E7694  C0 02 93 B4 */	lfs f0, lbl_80517714@sda21(r2)
/* 800EA758 000E7698  C0 82 93 B0 */	lfs f4, lbl_80517710@sda21(r2)
/* 800EA75C 000E769C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800EA760 000E76A0  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 800EA764 000E76A4  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800EA768 000E76A8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800EA76C 000E76AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800EA770 000E76B0  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 800EA774 000E76B4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800EA778 000E76B8  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 800EA77C 000E76BC  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 800EA780 000E76C0  D0 83 00 00 */	stfs f4, 0(r3)
/* 800EA784 000E76C4  4E 80 00 20 */	blr 
.endfn PSMTXTrans

.fn PSMTXTransApply, global
/* 800EA788 000E76C8  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 800EA78C 000E76CC  FC 20 08 18 */	frsp f1, f1
/* 800EA790 000E76D0  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 800EA794 000E76D4  FC 40 10 18 */	frsp f2, f2
/* 800EA798 000E76D8  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 800EA79C 000E76DC  FC 60 18 18 */	frsp f3, f3
/* 800EA7A0 000E76E0  E1 03 00 28 */	psq_l f8, 40(r3), 0, qr0
/* 800EA7A4 000E76E4  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800EA7A8 000E76E8  10 A1 29 56 */	ps_sum1 f5, f1, f5, f5
/* 800EA7AC 000E76EC  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 800EA7B0 000E76F0  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800EA7B4 000E76F4  10 E2 39 D6 */	ps_sum1 f7, f2, f7, f7
/* 800EA7B8 000E76F8  E1 23 00 20 */	psq_l f9, 32(r3), 0, qr0
/* 800EA7BC 000E76FC  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 800EA7C0 000E7700  11 03 42 16 */	ps_sum1 f8, f3, f8, f8
/* 800EA7C4 000E7704  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 800EA7C8 000E7708  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 800EA7CC 000E770C  F1 04 00 28 */	psq_st f8, 40(r4), 0, qr0
/* 800EA7D0 000E7710  4E 80 00 20 */	blr 
.endfn PSMTXTransApply

.fn PSMTXScale, global
/* 800EA7D4 000E7714  C0 02 93 B4 */	lfs f0, lbl_80517714@sda21(r2)
/* 800EA7D8 000E7718  D0 23 00 00 */	stfs f1, 0(r3)
/* 800EA7DC 000E771C  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800EA7E0 000E7720  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 800EA7E4 000E7724  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 800EA7E8 000E7728  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800EA7EC 000E772C  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800EA7F0 000E7730  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 800EA7F4 000E7734  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800EA7F8 000E7738  4E 80 00 20 */	blr 
.endfn PSMTXScale

.fn PSMTXScaleApply, global
/* 800EA7FC 000E773C  FC 20 08 18 */	frsp f1, f1
/* 800EA800 000E7740  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 800EA804 000E7744  FC 40 10 18 */	frsp f2, f2
/* 800EA808 000E7748  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 800EA80C 000E774C  FC 60 18 18 */	frsp f3, f3
/* 800EA810 000E7750  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 800EA814 000E7754  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 800EA818 000E7758  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 800EA81C 000E775C  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 800EA820 000E7760  10 C6 00 98 */	ps_muls0 f6, f6, f2
/* 800EA824 000E7764  E1 03 00 20 */	psq_l f8, 32(r3), 0, qr0
/* 800EA828 000E7768  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800EA82C 000E776C  10 E7 00 98 */	ps_muls0 f7, f7, f2
/* 800EA830 000E7770  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 800EA834 000E7774  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800EA838 000E7778  11 08 00 D8 */	ps_muls0 f8, f8, f3
/* 800EA83C 000E777C  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 800EA840 000E7780  10 42 00 D8 */	ps_muls0 f2, f2, f3
/* 800EA844 000E7784  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 800EA848 000E7788  F1 04 00 20 */	psq_st f8, 32(r4), 0, qr0
/* 800EA84C 000E778C  F0 44 00 28 */	psq_st f2, 40(r4), 0, qr0
/* 800EA850 000E7790  4E 80 00 20 */	blr 
.endfn PSMTXScaleApply

.fn PSMTXQuat, global
/* 800EA854 000E7794  C0 22 93 B0 */	lfs f1, lbl_80517710@sda21(r2)
/* 800EA858 000E7798  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 800EA85C 000E779C  E0 A4 00 08 */	psq_l f5, 8(r4), 0, qr0
/* 800EA860 000E77A0  EC 01 08 28 */	fsubs f0, f1, f1
/* 800EA864 000E77A4  EC 41 08 2A */	fadds f2, f1, f1
/* 800EA868 000E77A8  10 C4 01 32 */	ps_mul f6, f4, f4
/* 800EA86C 000E77AC  11 24 24 A0 */	ps_merge10 f9, f4, f4
/* 800EA870 000E77B0  11 05 31 7A */	ps_madd f8, f5, f5, f6
/* 800EA874 000E77B4  10 E5 01 72 */	ps_mul f7, f5, f5
/* 800EA878 000E77B8  10 68 42 14 */	ps_sum0 f3, f8, f8, f8
/* 800EA87C 000E77BC  11 49 01 5A */	ps_muls1 f10, f9, f5
/* 800EA880 000E77C0  ED 60 18 30 */	fres f11, f3
/* 800EA884 000E77C4  11 07 32 16 */	ps_sum1 f8, f7, f8, f6
/* 800EA888 000E77C8  10 63 12 FC */	ps_nmsub f3, f3, f11, f2
/* 800EA88C 000E77CC  10 E5 01 5A */	ps_muls1 f7, f5, f5
/* 800EA890 000E77D0  10 6B 00 F2 */	ps_mul f3, f11, f3
/* 800EA894 000E77D4  10 C6 31 94 */	ps_sum0 f6, f6, f6, f6
/* 800EA898 000E77D8  EC 63 00 B2 */	fmuls f3, f3, f2
/* 800EA89C 000E77DC  11 64 3A 7A */	ps_madd f11, f4, f9, f7
/* 800EA8A0 000E77E0  10 E4 3A 78 */	ps_msub f7, f4, f9, f7
/* 800EA8A4 000E77E4  F0 03 80 0C */	psq_st f0, 12(r3), 1, qr0
/* 800EA8A8 000E77E8  10 C6 08 FC */	ps_nmsub f6, f6, f3, f1
/* 800EA8AC 000E77EC  11 08 08 FC */	ps_nmsub f8, f8, f3, f1
/* 800EA8B0 000E77F0  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 800EA8B4 000E77F4  11 6B 00 F2 */	ps_mul f11, f11, f3
/* 800EA8B8 000E77F8  10 E7 00 F2 */	ps_mul f7, f7, f3
/* 800EA8BC 000E77FC  F0 C3 80 28 */	psq_st f6, 40(r3), 1, qr0
/* 800EA8C0 000E7800  11 24 51 5C */	ps_madds0 f9, f4, f5, f10
/* 800EA8C4 000E7804  10 AB 44 20 */	ps_merge00 f5, f11, f8
/* 800EA8C8 000E7808  11 4A 48 BC */	ps_nmsub f10, f10, f2, f9
/* 800EA8CC 000E780C  10 88 3C A0 */	ps_merge10 f4, f8, f7
/* 800EA8D0 000E7810  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 800EA8D4 000E7814  11 29 00 F2 */	ps_mul f9, f9, f3
/* 800EA8D8 000E7818  11 4A 00 F2 */	ps_mul f10, f10, f3
/* 800EA8DC 000E781C  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 800EA8E0 000E7820  F1 23 80 08 */	psq_st f9, 8(r3), 1, qr0
/* 800EA8E4 000E7824  10 EA 04 A0 */	ps_merge10 f7, f10, f0
/* 800EA8E8 000E7828  11 6A 4C 60 */	ps_merge01 f11, f10, f9
/* 800EA8EC 000E782C  F0 E3 00 18 */	psq_st f7, 24(r3), 0, qr0
/* 800EA8F0 000E7830  F1 63 00 20 */	psq_st f11, 32(r3), 0, qr0
/* 800EA8F4 000E7834  4E 80 00 20 */	blr 
.endfn PSMTXQuat

.fn C_MTXLookAt, global
/* 800EA8F8 000E7838  7C 08 02 A6 */	mflr r0
/* 800EA8FC 000E783C  90 01 00 04 */	stw r0, 4(r1)
/* 800EA900 000E7840  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800EA904 000E7844  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800EA908 000E7848  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800EA90C 000E784C  93 A1 00 44 */	stw r29, 0x44(r1)
/* 800EA910 000E7850  7C 7D 1B 78 */	mr r29, r3
/* 800EA914 000E7854  7C 9E 23 78 */	mr r30, r4
/* 800EA918 000E7858  7C BF 2B 78 */	mr r31, r5
/* 800EA91C 000E785C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 800EA920 000E7860  38 61 00 30 */	addi r3, r1, 0x30
/* 800EA924 000E7864  C0 06 00 00 */	lfs f0, 0(r6)
/* 800EA928 000E7868  7C 64 1B 78 */	mr r4, r3
/* 800EA92C 000E786C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EA930 000E7870  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800EA934 000E7874  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800EA938 000E7878  C0 06 00 04 */	lfs f0, 4(r6)
/* 800EA93C 000E787C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EA940 000E7880  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800EA944 000E7884  C0 3E 00 08 */	lfs f1, 8(r30)
/* 800EA948 000E7888  C0 06 00 08 */	lfs f0, 8(r6)
/* 800EA94C 000E788C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EA950 000E7890  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800EA954 000E7894  48 00 05 A9 */	bl PSVECNormalize
/* 800EA958 000E7898  7F E3 FB 78 */	mr r3, r31
/* 800EA95C 000E789C  38 81 00 30 */	addi r4, r1, 0x30
/* 800EA960 000E78A0  38 A1 00 24 */	addi r5, r1, 0x24
/* 800EA964 000E78A4  48 00 06 21 */	bl PSVECCrossProduct
/* 800EA968 000E78A8  38 61 00 24 */	addi r3, r1, 0x24
/* 800EA96C 000E78AC  7C 64 1B 78 */	mr r4, r3
/* 800EA970 000E78B0  48 00 05 8D */	bl PSVECNormalize
/* 800EA974 000E78B4  38 61 00 30 */	addi r3, r1, 0x30
/* 800EA978 000E78B8  38 81 00 24 */	addi r4, r1, 0x24
/* 800EA97C 000E78BC  38 A1 00 18 */	addi r5, r1, 0x18
/* 800EA980 000E78C0  48 00 06 05 */	bl PSVECCrossProduct
/* 800EA984 000E78C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800EA988 000E78C8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800EA98C 000E78CC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800EA990 000E78D0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 800EA994 000E78D4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800EA998 000E78D8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 800EA99C 000E78DC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 800EA9A0 000E78E0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800EA9A4 000E78E4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800EA9A8 000E78E8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800EA9AC 000E78EC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800EA9B0 000E78F0  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800EA9B4 000E78F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EA9B8 000E78F8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800EA9BC 000E78FC  EC 23 00 72 */	fmuls f1, f3, f1
/* 800EA9C0 000E7900  EC 02 00 2A */	fadds f0, f2, f0
/* 800EA9C4 000E7904  EC 01 00 2A */	fadds f0, f1, f0
/* 800EA9C8 000E7908  FC 00 00 50 */	fneg f0, f0
/* 800EA9CC 000E790C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 800EA9D0 000E7910  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800EA9D4 000E7914  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 800EA9D8 000E7918  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800EA9DC 000E791C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 800EA9E0 000E7920  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800EA9E4 000E7924  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 800EA9E8 000E7928  C0 7E 00 00 */	lfs f3, 0(r30)
/* 800EA9EC 000E792C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800EA9F0 000E7930  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800EA9F4 000E7934  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800EA9F8 000E7938  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800EA9FC 000E793C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800EAA00 000E7940  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EAA04 000E7944  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800EAA08 000E7948  EC 23 00 72 */	fmuls f1, f3, f1
/* 800EAA0C 000E794C  EC 02 00 2A */	fadds f0, f2, f0
/* 800EAA10 000E7950  EC 01 00 2A */	fadds f0, f1, f0
/* 800EAA14 000E7954  FC 00 00 50 */	fneg f0, f0
/* 800EAA18 000E7958  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 800EAA1C 000E795C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800EAA20 000E7960  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 800EAA24 000E7964  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800EAA28 000E7968  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 800EAA2C 000E796C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800EAA30 000E7970  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 800EAA34 000E7974  C0 7E 00 00 */	lfs f3, 0(r30)
/* 800EAA38 000E7978  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 800EAA3C 000E797C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800EAA40 000E7980  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800EAA44 000E7984  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800EAA48 000E7988  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800EAA4C 000E798C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EAA50 000E7990  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 800EAA54 000E7994  EC 23 00 72 */	fmuls f1, f3, f1
/* 800EAA58 000E7998  EC 02 00 2A */	fadds f0, f2, f0
/* 800EAA5C 000E799C  EC 01 00 2A */	fadds f0, f1, f0
/* 800EAA60 000E79A0  FC 00 00 50 */	fneg f0, f0
/* 800EAA64 000E79A4  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 800EAA68 000E79A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800EAA6C 000E79AC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800EAA70 000E79B0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800EAA74 000E79B4  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 800EAA78 000E79B8  38 21 00 50 */	addi r1, r1, 0x50
/* 800EAA7C 000E79BC  7C 08 03 A6 */	mtlr r0
/* 800EAA80 000E79C0  4E 80 00 20 */	blr 
.endfn C_MTXLookAt

.fn C_MTXLightPerspective, global
/* 800EAA84 000E79C4  7C 08 02 A6 */	mflr r0
/* 800EAA88 000E79C8  90 01 00 04 */	stw r0, 4(r1)
/* 800EAA8C 000E79CC  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 800EAA90 000E79D0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800EAA94 000E79D4  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 800EAA98 000E79D8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800EAA9C 000E79DC  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 800EAAA0 000E79E0  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 800EAAA4 000E79E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800EAAA8 000E79E8  FF 60 10 90 */	fmr f27, f2
/* 800EAAAC 000E79EC  7C 7F 1B 78 */	mr r31, r3
/* 800EAAB0 000E79F0  FF 80 18 90 */	fmr f28, f3
/* 800EAAB4 000E79F4  FF A0 20 90 */	fmr f29, f4
/* 800EAAB8 000E79F8  FF C0 28 90 */	fmr f30, f5
/* 800EAABC 000E79FC  FF E0 30 90 */	fmr f31, f6
/* 800EAAC0 000E7A00  C0 42 93 B8 */	lfs f2, lbl_80517718@sda21(r2)
/* 800EAAC4 000E7A04  C0 02 93 C8 */	lfs f0, lbl_80517728@sda21(r2)
/* 800EAAC8 000E7A08  EC 22 00 72 */	fmuls f1, f2, f1
/* 800EAACC 000E7A0C  EC 20 00 72 */	fmuls f1, f0, f1
/* 800EAAD0 000E7A10  4B FE 51 81 */	bl tanf
/* 800EAAD4 000E7A14  C0 62 93 B0 */	lfs f3, lbl_80517710@sda21(r2)
/* 800EAAD8 000E7A18  FC 40 F0 50 */	fneg f2, f30
/* 800EAADC 000E7A1C  FC 00 F8 50 */	fneg f0, f31
/* 800EAAE0 000E7A20  EC 83 08 24 */	fdivs f4, f3, f1
/* 800EAAE4 000E7A24  EC 24 D8 24 */	fdivs f1, f4, f27
/* 800EAAE8 000E7A28  EC 7C 00 72 */	fmuls f3, f28, f1
/* 800EAAEC 000E7A2C  EC 24 07 72 */	fmuls f1, f4, f29
/* 800EAAF0 000E7A30  D0 7F 00 00 */	stfs f3, 0(r31)
/* 800EAAF4 000E7A34  C0 62 93 B4 */	lfs f3, lbl_80517714@sda21(r2)
/* 800EAAF8 000E7A38  D0 7F 00 04 */	stfs f3, 4(r31)
/* 800EAAFC 000E7A3C  D0 5F 00 08 */	stfs f2, 8(r31)
/* 800EAB00 000E7A40  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 800EAB04 000E7A44  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 800EAB08 000E7A48  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 800EAB0C 000E7A4C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800EAB10 000E7A50  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 800EAB14 000E7A54  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 800EAB18 000E7A58  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 800EAB1C 000E7A5C  C0 02 93 C4 */	lfs f0, lbl_80517724@sda21(r2)
/* 800EAB20 000E7A60  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 800EAB24 000E7A64  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 800EAB28 000E7A68  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 800EAB2C 000E7A6C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800EAB30 000E7A70  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 800EAB34 000E7A74  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800EAB38 000E7A78  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 800EAB3C 000E7A7C  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 800EAB40 000E7A80  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800EAB44 000E7A84  38 21 00 58 */	addi r1, r1, 0x58
/* 800EAB48 000E7A88  7C 08 03 A6 */	mtlr r0
/* 800EAB4C 000E7A8C  4E 80 00 20 */	blr 
.endfn C_MTXLightPerspective

.fn C_MTXLightOrtho, global
/* 800EAB50 000E7A90  ED 44 18 28 */	fsubs f10, f4, f3
/* 800EAB54 000E7A94  C1 62 93 B0 */	lfs f11, lbl_80517710@sda21(r2)
/* 800EAB58 000E7A98  EC 01 10 28 */	fsubs f0, f1, f2
/* 800EAB5C 000E7A9C  C1 22 93 C0 */	lfs f9, lbl_80517720@sda21(r2)
/* 800EAB60 000E7AA0  EC 64 18 2A */	fadds f3, f4, f3
/* 800EAB64 000E7AA4  ED 8B 50 24 */	fdivs f12, f11, f10
/* 800EAB68 000E7AA8  ED 4B 00 24 */	fdivs f10, f11, f0
/* 800EAB6C 000E7AAC  EC 89 03 32 */	fmuls f4, f9, f12
/* 800EAB70 000E7AB0  FC 60 18 50 */	fneg f3, f3
/* 800EAB74 000E7AB4  EC 01 10 2A */	fadds f0, f1, f2
/* 800EAB78 000E7AB8  EC 24 01 72 */	fmuls f1, f4, f5
/* 800EAB7C 000E7ABC  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 800EAB80 000E7AC0  FC 00 00 50 */	fneg f0, f0
/* 800EAB84 000E7AC4  D0 23 00 00 */	stfs f1, 0(r3)
/* 800EAB88 000E7AC8  EC 29 02 B2 */	fmuls f1, f9, f10
/* 800EAB8C 000E7ACC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800EAB90 000E7AD0  C0 62 93 B4 */	lfs f3, lbl_80517714@sda21(r2)
/* 800EAB94 000E7AD4  EC 0A 00 32 */	fmuls f0, f10, f0
/* 800EAB98 000E7AD8  D0 63 00 04 */	stfs f3, 4(r3)
/* 800EAB9C 000E7ADC  EC 47 10 2A */	fadds f2, f7, f2
/* 800EABA0 000E7AE0  EC 21 01 B2 */	fmuls f1, f1, f6
/* 800EABA4 000E7AE4  D0 63 00 08 */	stfs f3, 8(r3)
/* 800EABA8 000E7AE8  EC 06 00 32 */	fmuls f0, f6, f0
/* 800EABAC 000E7AEC  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 800EABB0 000E7AF0  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 800EABB4 000E7AF4  EC 08 00 2A */	fadds f0, f8, f0
/* 800EABB8 000E7AF8  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 800EABBC 000E7AFC  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 800EABC0 000E7B00  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800EABC4 000E7B04  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 800EABC8 000E7B08  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 800EABCC 000E7B0C  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 800EABD0 000E7B10  D1 63 00 2C */	stfs f11, 0x2c(r3)
/* 800EABD4 000E7B14  4E 80 00 20 */	blr 
.endfn C_MTXLightOrtho
