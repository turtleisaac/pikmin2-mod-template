.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
	.4byte __sinit_ebiP2TitleChappy_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_80497628, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_80497628
.balign 4
.obj lbl_80497634, local
	.asciz "ebiP2TitleChappy"
.endobj lbl_80497634
.balign 4
.obj lbl_80497648, local
	.asciz "ChappyMgr"
.endobj lbl_80497648
.balign 4
.obj lbl_80497654, local # Shift-JIS
	.4byte 0x83588350
	.4byte 0x815B838B
	.4byte 0x00000000
.endobj lbl_80497654
.balign 4
.obj lbl_80497660, local # Shift-JIS
	.4byte 0x834A838A
	.4byte 0x8393834F
	.4byte 0x94BC8C61
	.4byte 0x00000000
.endobj lbl_80497660
.balign 4
.obj lbl_80497670, local # Shift-JIS
	.4byte 0x8352838A
	.4byte 0x83578387
	.4byte 0x839394BC
	.4byte 0x8C610000
.endobj lbl_80497670
.balign 4
.obj lbl_80497680, local # Shift-JIS
	.4byte 0x8373834E
	.4byte 0x837E8393
	.4byte 0x94BD899E
	.4byte 0x94BC8C61
	.4byte 0x00000000
.endobj lbl_80497680
.balign 4
.obj lbl_80497694, local # Shift-JIS
	.4byte 0x939682BD
	.4byte 0x82E84F66
	.4byte 0x66736574
	.4byte 0x00000000
.endobj lbl_80497694
.balign 4
.obj lbl_804976A4, local # Shift-JIS
	.4byte 0x939682BD
	.4byte 0x82E894BC
	.4byte 0x8C610000
.endobj lbl_804976A4
.balign 4
.obj lbl_804976B0, local # Shift-JIS
	.4byte 0x95E08D73
	.4byte 0x83898393
	.4byte 0x835F8380
	.4byte 0x8A709378
	.4byte 0x00000000
.endobj lbl_804976B0
.balign 4
.obj lbl_804976C4, local # Shift-JIS
	.4byte 0x95E08D73
	.4byte 0x91AC9378
	.4byte 0x00000000
.endobj lbl_804976C4
.balign 4
.obj lbl_804976D0, local # Shift-JIS
	.4byte 0x90F989F1
	.4byte 0x90AB945C
	.4byte 0x00000000
.endobj lbl_804976D0
.balign 4
.obj lbl_804976DC, local # Shift-JIS
	.4byte 0x91D282BF
	.4byte 0x8E9E8AD4
	.4byte 0x8DC58FAC
	.4byte 0x28956229
	.4byte 0x00000000
.endobj lbl_804976DC
.balign 4
.obj lbl_804976F0, local # Shift-JIS
	.4byte 0x91D282BF
	.4byte 0x8E9E8AD4
	.4byte 0x8DC591E5
	.4byte 0x28956229
	.4byte 0x00000000
.endobj lbl_804976F0
.balign 4
.obj lbl_80497704, local # Shift-JIS
	.4byte 0x88DA93AE
	.4byte 0x8E9E8AD4
	.4byte 0x8DC58FAC
	.4byte 0x28956229
	.4byte 0x00000000
.endobj lbl_80497704
.balign 4
.obj lbl_80497718, local # Shift-JIS
	.4byte 0x88DA93AE
	.4byte 0x8E9E8AD4
	.4byte 0x8DC591E5
	.4byte 0x28956229
	.4byte 0x00000000
.endobj lbl_80497718
.balign 4
.obj lbl_8049772C, local # Shift-JIS
	.4byte 0x83528393
	.4byte 0x8367838D
	.4byte 0x815B8389
	.4byte 0x8FF391D4
	.4byte 0x8E9E8AD4
	.4byte 0x28956229
	.4byte 0x00000000
.endobj lbl_8049772C
.balign 4
.obj lbl_80497748, local
	.asciz "param/param_chappy.txt"
.endobj lbl_80497748
.balign 4
.obj lbl_80497760, local
	.asciz "chappy/move1.bck"
.endobj lbl_80497760
.balign 4
.obj lbl_80497774, local
	.asciz "chappy/waitact1.bck"
.endobj lbl_80497774
.balign 4
.obj lbl_80497788, local
	.asciz "chappy/attack.bck"
.endobj lbl_80497788
.balign 4
.obj lbl_8049779C, local
	.asciz "chappy/waitact2.bck"
.endobj lbl_8049779C
.balign 4
.obj lbl_804977B0, local
	.asciz "chappy/swallow_model.bmd"
.endobj lbl_804977B0
.balign 4
.obj lbl_804977CC, local
	.asciz "ebiP2TitleChappy.cpp"
.endobj lbl_804977CC
.balign 4
.obj lbl_804977E4, local
	.asciz "P2Assert"
.endobj lbl_804977E4

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj govNAN___Q24Game5P2JST, local
	.float 0.0
	.float 0.0
	.float 0.0
.endobj govNAN___Q24Game5P2JST
.obj lbl_804E9E6C, local
	.4byte .L_803E8B88
	.4byte .L_803E8BC8
	.4byte .L_803E8C20
	.4byte .L_803E8D38
	.4byte .L_803E8DEC
	.4byte .L_803E8D90
	.4byte .L_803E8DEC
	.4byte .L_803E8BA4
.endobj lbl_804E9E6C
.obj lbl_804E9E8C, local
	.4byte .L_803E914C
	.4byte .L_803E8F48
	.4byte .L_803E8F70
	.4byte .L_803E9024
	.4byte .L_803E9108
	.4byte .L_803E9130
	.4byte .L_803E9140
	.4byte .L_803E8F10
.endobj lbl_804E9E8C
.obj __vt__Q43ebi5title6Chappy5TUnit, global
	.4byte 0
	.4byte 0
	.4byte getCreatureType__Q43ebi5title6Chappy5TUnitFv
	.4byte isCalc__Q43ebi5title6Chappy5TUnitFv
.endobj __vt__Q43ebi5title6Chappy5TUnit
.obj __vt__Q43ebi5title6Chappy11TAnimFolder, weak
	.4byte 0
	.4byte 0
	.4byte getAnimRes__Q43ebi5title6Chappy11TAnimFolderFl
.endobj __vt__Q43ebi5title6Chappy11TAnimFolder

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj gu32NAN___Q24Game5P2JST, local
	.skip 0x4
.endobj gu32NAN___Q24Game5P2JST
.obj gfNAN___Q24Game5P2JST, local
	.skip 0x4
.endobj gfNAN___Q24Game5P2JST

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_8051FD68, local
	.float 0.0
.endobj lbl_8051FD68
.obj lbl_8051FD6C, local
	.float -1.0
.endobj lbl_8051FD6C
.obj lbl_8051FD70, local
	.float 1.0
.endobj lbl_8051FD70
.balign 4
.obj lbl_8051FD74, local
	.asciz "Parms"
.endobj lbl_8051FD74
.balign 4
.obj lbl_8051FD7C, local
	.float 2.0
.endobj lbl_8051FD7C
.obj lbl_8051FD80, local
	.float 10.0
.endobj lbl_8051FD80
.obj lbl_8051FD84, local
	.float 100.0
.endobj lbl_8051FD84
.obj lbl_8051FD88, local
	.float 500.0
.endobj lbl_8051FD88
.obj lbl_8051FD8C, local
	.float 150.0
.endobj lbl_8051FD8C
.obj lbl_8051FD90, local
	.float 300.0
.endobj lbl_8051FD90
.obj lbl_8051FD94, local
	.float 80.0
.endobj lbl_8051FD94
.obj lbl_8051FD98, local
	.float 30.0
.endobj lbl_8051FD98
.obj lbl_8051FD9C, local
	.float 90.0
.endobj lbl_8051FD9C
.obj lbl_8051FDA0, local
	.float 8.0
.endobj lbl_8051FDA0
.obj lbl_8051FDA4, local
	.float 0.05
.endobj lbl_8051FDA4
.obj lbl_8051FDA8, local
	.float 0.3
.endobj lbl_8051FDA8
.obj lbl_8051FDAC, local
	.float 0.5
.endobj lbl_8051FDAC
.obj lbl_8051FDB0, local
	.float 1.5
.endobj lbl_8051FDB0
.obj lbl_8051FDB4, local
	.float 5.0
.endobj lbl_8051FDB4
.obj lbl_8051FDB8, local
	.float 60.0
.endobj lbl_8051FDB8
.obj lbl_8051FDBC, local
	.float 34.0
.endobj lbl_8051FDBC
.obj lbl_8051FDC0, local
	.float 19.0
.endobj lbl_8051FDC0
.obj lbl_8051FDC4, local
	.float 32767.0
.endobj lbl_8051FDC4
.obj lbl_8051FDC8, local # pi
	.float 3.1415927
.endobj lbl_8051FDC8
.obj lbl_8051FDCC, local
	.float 0.0055555557
.endobj lbl_8051FDCC
.obj lbl_8051FDD0, local
	.float -325.9493
.endobj lbl_8051FDD0
.obj lbl_8051FDD4, local
	.float 325.9493
.endobj lbl_8051FDD4
.balign 8
.obj lbl_8051FDD8, local
	.8byte 0x4330000080000000
.endobj lbl_8051FDD8
.obj lbl_8051FDE0, local
	.float 0.1
.endobj lbl_8051FDE0
.obj lbl_8051FDE4, local
	.float 0.7
.endobj lbl_8051FDE4
.obj lbl_8051FDE8, local # tau
	.float 6.2831855
.endobj lbl_8051FDE8
.obj lbl_8051FDEC, local # -pi
	.float -3.1415927
.endobj lbl_8051FDEC
.obj lbl_8051FDF0, local
	.float 0.09817477
.endobj lbl_8051FDF0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __ct__Q43ebi5title6Chappy4TMgrFv, global
/* 803E85D8 003E5518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E85DC 003E551C  7C 08 02 A6 */	mflr r0
/* 803E85E0 003E5520  3C 80 80 4F */	lis r4, __vt__5CNode@ha
/* 803E85E4 003E5524  38 C0 00 00 */	li r6, 0
/* 803E85E8 003E5528  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E85EC 003E552C  38 04 B5 28 */	addi r0, r4, __vt__5CNode@l
/* 803E85F0 003E5530  3C 80 80 49 */	lis r4, lbl_80497648@ha
/* 803E85F4 003E5534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E85F8 003E5538  38 A4 76 48 */	addi r5, r4, lbl_80497648@l
/* 803E85FC 003E553C  7C 7F 1B 78 */	mr r31, r3
/* 803E8600 003E5540  38 80 00 01 */	li r4, 1
/* 803E8604 003E5544  93 C1 00 08 */	stw r30, 8(r1)
/* 803E8608 003E5548  90 03 00 00 */	stw r0, 0(r3)
/* 803E860C 003E554C  3C 60 80 4E */	lis r3, __vt__Q43ebi5title6Chappy4TMgr@ha
/* 803E8610 003E5550  38 03 78 9C */	addi r0, r3, __vt__Q43ebi5title6Chappy4TMgr@l
/* 803E8614 003E5554  90 DF 00 10 */	stw r6, 0x10(r31)
/* 803E8618 003E5558  38 7F 00 1C */	addi r3, r31, 0x1c
/* 803E861C 003E555C  90 DF 00 0C */	stw r6, 0xc(r31)
/* 803E8620 003E5560  90 DF 00 08 */	stw r6, 8(r31)
/* 803E8624 003E5564  90 DF 00 04 */	stw r6, 4(r31)
/* 803E8628 003E5568  90 BF 00 14 */	stw r5, 0x14(r31)
/* 803E862C 003E556C  90 1F 00 00 */	stw r0, 0(r31)
/* 803E8630 003E5570  48 00 12 49 */	bl __ct__Q43ebi5title6Chappy6TParamFv
/* 803E8634 003E5574  38 60 00 88 */	li r3, 0x88
/* 803E8638 003E5578  4B C3 B8 6D */	bl __nw__FUl
/* 803E863C 003E557C  7C 60 1B 79 */	or. r0, r3, r3
/* 803E8640 003E5580  41 82 00 0C */	beq .L_803E864C
/* 803E8644 003E5584  48 00 01 5D */	bl __ct__Q43ebi5title6Chappy9TAnimatorFv
/* 803E8648 003E5588  7C 60 1B 78 */	mr r0, r3
.L_803E864C:
/* 803E864C 003E558C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 803E8650 003E5590  38 60 00 70 */	li r3, 0x70
/* 803E8654 003E5594  4B C3 B8 51 */	bl __nw__FUl
/* 803E8658 003E5598  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E865C 003E559C  41 82 00 AC */	beq .L_803E8708
/* 803E8660 003E55A0  3C 80 80 4E */	lis r4, __vt__Q33ebi5title8TObjBase@ha
/* 803E8664 003E55A4  3C 60 80 4F */	lis r3, __vt__Q43ebi5title6Chappy5TUnit@ha
/* 803E8668 003E55A8  38 04 79 A8 */	addi r0, r4, __vt__Q33ebi5title8TObjBase@l
/* 803E866C 003E55AC  C0 42 1A 08 */	lfs f2, lbl_8051FD68@sda21(r2)
/* 803E8670 003E55B0  90 1E 00 00 */	stw r0, 0(r30)
/* 803E8674 003E55B4  38 80 00 00 */	li r4, 0
/* 803E8678 003E55B8  C0 22 1A 0C */	lfs f1, lbl_8051FD6C@sda21(r2)
/* 803E867C 003E55BC  38 03 9E AC */	addi r0, r3, __vt__Q43ebi5title6Chappy5TUnit@l
/* 803E8680 003E55C0  D0 5E 00 04 */	stfs f2, 4(r30)
/* 803E8684 003E55C4  C0 02 1A 10 */	lfs f0, lbl_8051FD70@sda21(r2)
/* 803E8688 003E55C8  D0 5E 00 08 */	stfs f2, 8(r30)
/* 803E868C 003E55CC  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803E8690 003E55D0  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 803E8694 003E55D4  D0 5E 00 14 */	stfs f2, 0x14(r30)
/* 803E8698 003E55D8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 803E869C 003E55DC  D0 5E 00 1C */	stfs f2, 0x1c(r30)
/* 803E86A0 003E55E0  D0 5E 00 20 */	stfs f2, 0x20(r30)
/* 803E86A4 003E55E4  D0 5E 00 24 */	stfs f2, 0x24(r30)
/* 803E86A8 003E55E8  90 9E 00 28 */	stw r4, 0x28(r30)
/* 803E86AC 003E55EC  90 1E 00 00 */	stw r0, 0(r30)
/* 803E86B0 003E55F0  90 9E 00 3C */	stw r4, 0x3c(r30)
/* 803E86B4 003E55F4  90 9E 00 40 */	stw r4, 0x40(r30)
/* 803E86B8 003E55F8  90 9E 00 5C */	stw r4, 0x5c(r30)
/* 803E86BC 003E55FC  90 9E 00 60 */	stw r4, 0x60(r30)
/* 803E86C0 003E5600  D0 5E 00 2C */	stfs f2, 0x2c(r30)
/* 803E86C4 003E5604  D0 5E 00 30 */	stfs f2, 0x30(r30)
/* 803E86C8 003E5608  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 803E86CC 003E560C  D0 5E 00 38 */	stfs f2, 0x38(r30)
/* 803E86D0 003E5610  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803E86D4 003E5614  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803E86D8 003E5618  EC 22 00 24 */	fdivs f1, f2, f0
/* 803E86DC 003E561C  4B CD 94 71 */	bl __cvt_fp2unsigned
/* 803E86E0 003E5620  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 803E86E4 003E5624  38 80 00 00 */	li r4, 0
/* 803E86E8 003E5628  38 00 FF FF */	li r0, -1
/* 803E86EC 003E562C  90 7E 00 40 */	stw r3, 0x40(r30)
/* 803E86F0 003E5630  90 9E 00 44 */	stw r4, 0x44(r30)
/* 803E86F4 003E5634  98 9E 00 48 */	stb r4, 0x48(r30)
/* 803E86F8 003E5638  90 9E 00 4C */	stw r4, 0x4c(r30)
/* 803E86FC 003E563C  90 9E 00 68 */	stw r4, 0x68(r30)
/* 803E8700 003E5640  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 803E8704 003E5644  90 9E 00 64 */	stw r4, 0x64(r30)
.L_803E8708:
/* 803E8708 003E5648  93 DF 02 5C */	stw r30, 0x25c(r31)
/* 803E870C 003E564C  7F E3 FB 78 */	mr r3, r31
/* 803E8710 003E5650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8714 003E5654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E8718 003E5658  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E871C 003E565C  7C 08 03 A6 */	mtlr r0
/* 803E8720 003E5660  38 21 00 10 */	addi r1, r1, 0x10
/* 803E8724 003E5664  4E 80 00 20 */	blr 
.endfn __ct__Q43ebi5title6Chappy4TMgrFv

.fn setArchive__Q43ebi5title6Chappy4TMgrFP10JKRArchive, global
/* 803E8728 003E5668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E872C 003E566C  7C 08 02 A6 */	mflr r0
/* 803E8730 003E5670  3C A0 80 49 */	lis r5, lbl_80497748@ha
/* 803E8734 003E5674  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E8738 003E5678  38 A5 77 48 */	addi r5, r5, lbl_80497748@l
/* 803E873C 003E567C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E8740 003E5680  7C 9F 23 78 */	mr r31, r4
/* 803E8744 003E5684  93 C1 00 08 */	stw r30, 8(r1)
/* 803E8748 003E5688  7C 7E 1B 78 */	mr r30, r3
/* 803E874C 003E568C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803E8750 003E5690  4B FD 83 A9 */	bl loadSettingFile__Q33ebi5title10TParamBaseFP10JKRArchivePc
/* 803E8754 003E5694  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803E8758 003E5698  7F E4 FB 78 */	mr r4, r31
/* 803E875C 003E569C  48 00 00 AD */	bl setArchive__Q43ebi5title6Chappy9TAnimatorFP10JKRArchive
/* 803E8760 003E56A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8764 003E56A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E8768 003E56A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E876C 003E56AC  7C 08 03 A6 */	mtlr r0
/* 803E8770 003E56B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E8774 003E56B4  4E 80 00 20 */	blr 
.endfn setArchive__Q43ebi5title6Chappy4TMgrFP10JKRArchive

.fn initUnit__Q43ebi5title6Chappy4TMgrFv, global
/* 803E8778 003E56B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E877C 003E56BC  7C 08 02 A6 */	mflr r0
/* 803E8780 003E56C0  7C 64 1B 78 */	mr r4, r3
/* 803E8784 003E56C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E8788 003E56C8  80 63 02 5C */	lwz r3, 0x25c(r3)
/* 803E878C 003E56CC  48 00 01 AD */	bl init__Q43ebi5title6Chappy5TUnitFPQ43ebi5title6Chappy4TMgr
/* 803E8790 003E56D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8794 003E56D4  7C 08 03 A6 */	mtlr r0
/* 803E8798 003E56D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E879C 003E56DC  4E 80 00 20 */	blr 
.endfn initUnit__Q43ebi5title6Chappy4TMgrFv

.fn __ct__Q43ebi5title6Chappy9TAnimatorFv, global
/* 803E87A0 003E56E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E87A4 003E56E4  7C 08 02 A6 */	mflr r0
/* 803E87A8 003E56E8  3C 80 80 4F */	lis r4, __vt__Q23ebi17E3DAnimFolderBase@ha
/* 803E87AC 003E56EC  38 A0 00 00 */	li r5, 0
/* 803E87B0 003E56F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E87B4 003E56F4  38 04 9E 54 */	addi r0, r4, __vt__Q23ebi17E3DAnimFolderBase@l
/* 803E87B8 003E56F8  3C 80 80 3F */	lis r4, __ct__Q23ebi10E3DAnimResFv@ha
/* 803E87BC 003E56FC  38 C0 00 20 */	li r6, 0x20
/* 803E87C0 003E5700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E87C4 003E5704  7C 7F 1B 78 */	mr r31, r3
/* 803E87C8 003E5708  3C 60 80 4F */	lis r3, __vt__Q43ebi5title6Chappy11TAnimFolder@ha
/* 803E87CC 003E570C  38 84 85 AC */	addi r4, r4, __ct__Q23ebi10E3DAnimResFv@l
/* 803E87D0 003E5710  90 1F 00 00 */	stw r0, 0(r31)
/* 803E87D4 003E5714  38 03 9E BC */	addi r0, r3, __vt__Q43ebi5title6Chappy11TAnimFolder@l
/* 803E87D8 003E5718  38 7F 00 04 */	addi r3, r31, 4
/* 803E87DC 003E571C  38 E0 00 04 */	li r7, 4
/* 803E87E0 003E5720  90 1F 00 00 */	stw r0, 0(r31)
/* 803E87E4 003E5724  4B CD 90 59 */	bl __construct_array
/* 803E87E8 003E5728  38 00 00 00 */	li r0, 0
/* 803E87EC 003E572C  7F E3 FB 78 */	mr r3, r31
/* 803E87F0 003E5730  90 1F 00 84 */	stw r0, 0x84(r31)
/* 803E87F4 003E5734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E87F8 003E5738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E87FC 003E573C  7C 08 03 A6 */	mtlr r0
/* 803E8800 003E5740  38 21 00 10 */	addi r1, r1, 0x10
/* 803E8804 003E5744  4E 80 00 20 */	blr 
.endfn __ct__Q43ebi5title6Chappy9TAnimatorFv

.fn setArchive__Q43ebi5title6Chappy9TAnimatorFP10JKRArchive, global
/* 803E8808 003E5748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E880C 003E574C  7C 08 02 A6 */	mflr r0
/* 803E8810 003E5750  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E8814 003E5754  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E8818 003E5758  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E881C 003E575C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803E8820 003E5760  7C 9D 23 78 */	mr r29, r4
/* 803E8824 003E5764  3C 80 80 49 */	lis r4, lbl_80497628@ha
/* 803E8828 003E5768  93 81 00 10 */	stw r28, 0x10(r1)
/* 803E882C 003E576C  3B E4 76 28 */	addi r31, r4, lbl_80497628@l
/* 803E8830 003E5770  7C 7C 1B 78 */	mr r28, r3
/* 803E8834 003E5774  7F A3 EB 78 */	mr r3, r29
/* 803E8838 003E5778  81 9D 00 00 */	lwz r12, 0(r29)
/* 803E883C 003E577C  38 9F 01 88 */	addi r4, r31, 0x188
/* 803E8840 003E5780  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803E8844 003E5784  7D 89 03 A6 */	mtctr r12
/* 803E8848 003E5788  4E 80 04 21 */	bctrl 
/* 803E884C 003E578C  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E8850 003E5790  40 82 00 18 */	bne .L_803E8868
/* 803E8854 003E5794  38 7F 01 A4 */	addi r3, r31, 0x1a4
/* 803E8858 003E5798  38 BF 01 BC */	addi r5, r31, 0x1bc
/* 803E885C 003E579C  38 80 00 7A */	li r4, 0x7a
/* 803E8860 003E57A0  4C C6 31 82 */	crclr 6
/* 803E8864 003E57A4  4B C4 1D DD */	bl panic_f__12JUTExceptionFPCciPCce
.L_803E8868:
/* 803E8868 003E57A8  7F C3 F3 78 */	mr r3, r30
/* 803E886C 003E57AC  3C 80 00 10 */	lis r4, 0x10
/* 803E8870 003E57B0  4B C8 70 25 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 803E8874 003E57B4  90 7C 00 84 */	stw r3, 0x84(r28)
/* 803E8878 003E57B8  3C 80 00 04 */	lis r4, 4
/* 803E887C 003E57BC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 803E8880 003E57C0  4B C9 B0 59 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 803E8884 003E57C4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 803E8888 003E57C8  4B C9 B1 A9 */	bl makeSharedDL__12J3DModelDataFv
/* 803E888C 003E57CC  83 DC 00 84 */	lwz r30, 0x84(r28)
/* 803E8890 003E57D0  7F A5 EB 78 */	mr r5, r29
/* 803E8894 003E57D4  38 7C 00 04 */	addi r3, r28, 4
/* 803E8898 003E57D8  38 DF 01 38 */	addi r6, r31, 0x138
/* 803E889C 003E57DC  7F C4 F3 78 */	mr r4, r30
/* 803E88A0 003E57E0  4B FE 14 71 */	bl load__Q23ebi10E3DAnimResFP12J3DModelDataP10JKRArchivePc
/* 803E88A4 003E57E4  C0 22 1A 54 */	lfs f1, lbl_8051FDB4@sda21(r2)
/* 803E88A8 003E57E8  38 00 00 01 */	li r0, 1
/* 803E88AC 003E57EC  C0 02 1A 5C */	lfs f0, lbl_8051FDBC@sda21(r2)
/* 803E88B0 003E57F0  7F C4 F3 78 */	mr r4, r30
/* 803E88B4 003E57F4  D0 3C 00 14 */	stfs f1, 0x14(r28)
/* 803E88B8 003E57F8  7F A5 EB 78 */	mr r5, r29
/* 803E88BC 003E57FC  38 7C 00 24 */	addi r3, r28, 0x24
/* 803E88C0 003E5800  38 DF 01 4C */	addi r6, r31, 0x14c
/* 803E88C4 003E5804  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 803E88C8 003E5808  90 1C 00 20 */	stw r0, 0x20(r28)
/* 803E88CC 003E580C  4B FE 14 45 */	bl load__Q23ebi10E3DAnimResFP12J3DModelDataP10JKRArchivePc
/* 803E88D0 003E5810  C0 22 1A 40 */	lfs f1, lbl_8051FDA0@sda21(r2)
/* 803E88D4 003E5814  38 00 00 01 */	li r0, 1
/* 803E88D8 003E5818  C0 02 1A 60 */	lfs f0, lbl_8051FDC0@sda21(r2)
/* 803E88DC 003E581C  7F C4 F3 78 */	mr r4, r30
/* 803E88E0 003E5820  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 803E88E4 003E5824  7F A5 EB 78 */	mr r5, r29
/* 803E88E8 003E5828  38 7C 00 44 */	addi r3, r28, 0x44
/* 803E88EC 003E582C  38 DF 01 60 */	addi r6, r31, 0x160
/* 803E88F0 003E5830  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 803E88F4 003E5834  90 1C 00 40 */	stw r0, 0x40(r28)
/* 803E88F8 003E5838  4B FE 14 19 */	bl load__Q23ebi10E3DAnimResFP12J3DModelDataP10JKRArchivePc
/* 803E88FC 003E583C  7F C4 F3 78 */	mr r4, r30
/* 803E8900 003E5840  7F A5 EB 78 */	mr r5, r29
/* 803E8904 003E5844  38 7C 00 64 */	addi r3, r28, 0x64
/* 803E8908 003E5848  38 DF 01 74 */	addi r6, r31, 0x174
/* 803E890C 003E584C  4B FE 14 05 */	bl load__Q23ebi10E3DAnimResFP12J3DModelDataP10JKRArchivePc
/* 803E8910 003E5850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E8914 003E5854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E8918 003E5858  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E891C 003E585C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803E8920 003E5860  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803E8924 003E5864  7C 08 03 A6 */	mtlr r0
/* 803E8928 003E5868  38 21 00 20 */	addi r1, r1, 0x20
/* 803E892C 003E586C  4E 80 00 20 */	blr 
.endfn setArchive__Q43ebi5title6Chappy9TAnimatorFP10JKRArchive

.fn setController__Q43ebi5title6Chappy5TUnitFP10Controller, global
/* 803E8930 003E5870  90 83 00 44 */	stw r4, 0x44(r3)
/* 803E8934 003E5874  4E 80 00 20 */	blr 
.endfn setController__Q43ebi5title6Chappy5TUnitFP10Controller

.fn init__Q43ebi5title6Chappy5TUnitFPQ43ebi5title6Chappy4TMgr, global
/* 803E8938 003E5878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E893C 003E587C  7C 08 02 A6 */	mflr r0
/* 803E8940 003E5880  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E8944 003E5884  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E8948 003E5888  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E894C 003E588C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803E8950 003E5890  7C 7D 1B 78 */	mr r29, r3
/* 803E8954 003E5894  38 60 00 DC */	li r3, 0xdc
/* 803E8958 003E5898  90 9D 00 4C */	stw r4, 0x4c(r29)
/* 803E895C 003E589C  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 803E8960 003E58A0  83 E4 00 18 */	lwz r31, 0x18(r4)
/* 803E8964 003E58A4  4B C3 B5 41 */	bl __nw__FUl
/* 803E8968 003E58A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E896C 003E58AC  41 82 00 38 */	beq .L_803E89A4
/* 803E8970 003E58B0  3C 60 80 4A */	lis r3, __vt__8J3DModel@ha
/* 803E8974 003E58B4  83 FF 00 84 */	lwz r31, 0x84(r31)
/* 803E8978 003E58B8  38 03 19 F0 */	addi r0, r3, __vt__8J3DModel@l
/* 803E897C 003E58BC  90 1E 00 00 */	stw r0, 0(r30)
/* 803E8980 003E58C0  38 7E 00 88 */	addi r3, r30, 0x88
/* 803E8984 003E58C4  4B C7 62 C5 */	bl init__15J3DVertexBufferFv
/* 803E8988 003E58C8  7F C3 F3 78 */	mr r3, r30
/* 803E898C 003E58CC  4B C7 D9 71 */	bl initialize__8J3DModelFv
/* 803E8990 003E58D0  7F C3 F3 78 */	mr r3, r30
/* 803E8994 003E58D4  7F E4 FB 78 */	mr r4, r31
/* 803E8998 003E58D8  3C A0 00 02 */	lis r5, 2
/* 803E899C 003E58DC  38 C0 00 01 */	li r6, 1
/* 803E89A0 003E58E0  4B C7 D9 E1 */	bl entryModelData__8J3DModelFP12J3DModelDataUlUl
.L_803E89A4:
/* 803E89A4 003E58E4  93 DD 00 28 */	stw r30, 0x28(r29)
/* 803E89A8 003E58E8  38 7D 00 50 */	addi r3, r29, 0x50
/* 803E89AC 003E58EC  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 803E89B0 003E58F0  80 84 00 18 */	lwz r4, 0x18(r4)
/* 803E89B4 003E58F4  4B FE 14 61 */	bl setAnimFolder__Q23ebi11E3DAnimCtrlFPQ23ebi17E3DAnimFolderBase
/* 803E89B8 003E58F8  80 8D 9A 28 */	lwz r4, titleMgr__Q23ebi5title@sda21(r13)
/* 803E89BC 003E58FC  38 61 00 08 */	addi r3, r1, 8
/* 803E89C0 003E5900  4B FD 66 B9 */	bl getPosOutOfViewField__Q33ebi5title9TTitleMgrFv
/* 803E89C4 003E5904  C0 01 00 08 */	lfs f0, 8(r1)
/* 803E89C8 003E5908  D0 1D 00 04 */	stfs f0, 4(r29)
/* 803E89CC 003E590C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803E89D0 003E5910  D0 1D 00 08 */	stfs f0, 8(r29)
/* 803E89D4 003E5914  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 803E89D8 003E5918  C0 03 01 58 */	lfs f0, 0x158(r3)
/* 803E89DC 003E591C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 803E89E0 003E5920  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 803E89E4 003E5924  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 803E89E8 003E5928  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 803E89EC 003E592C  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 803E89F0 003E5930  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 803E89F4 003E5934  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 803E89F8 003E5938  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 803E89FC 003E593C  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 803E8A00 003E5940  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 803E8A04 003E5944  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 803E8A08 003E5948  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 803E8A0C 003E594C  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 803E8A10 003E5950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E8A14 003E5954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E8A18 003E5958  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803E8A1C 003E595C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E8A20 003E5960  7C 08 03 A6 */	mtlr r0
/* 803E8A24 003E5964  38 21 00 20 */	addi r1, r1, 0x20
/* 803E8A28 003E5968  4E 80 00 20 */	blr 
.endfn init__Q43ebi5title6Chappy5TUnitFPQ43ebi5title6Chappy4TMgr

.fn "startZigzagWalk__Q43ebi5title6Chappy5TUnitFR10Vector2<f>R10Vector2<f>", global
/* 803E8A2C 003E596C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E8A30 003E5970  7C 08 02 A6 */	mflr r0
/* 803E8A34 003E5974  38 C0 FF FF */	li r6, -1
/* 803E8A38 003E5978  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E8A3C 003E597C  38 00 00 00 */	li r0, 0
/* 803E8A40 003E5980  C0 04 00 00 */	lfs f0, 0(r4)
/* 803E8A44 003E5984  D0 03 00 04 */	stfs f0, 4(r3)
/* 803E8A48 003E5988  C0 04 00 04 */	lfs f0, 4(r4)
/* 803E8A4C 003E598C  38 80 00 05 */	li r4, 5
/* 803E8A50 003E5990  D0 03 00 08 */	stfs f0, 8(r3)
/* 803E8A54 003E5994  C0 05 00 00 */	lfs f0, 0(r5)
/* 803E8A58 003E5998  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 803E8A5C 003E599C  C0 05 00 04 */	lfs f0, 4(r5)
/* 803E8A60 003E59A0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 803E8A64 003E59A4  90 C3 00 6C */	stw r6, 0x6c(r3)
/* 803E8A68 003E59A8  98 03 00 48 */	stb r0, 0x48(r3)
/* 803E8A6C 003E59AC  48 00 00 91 */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E8A70 003E59B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8A74 003E59B4  7C 08 03 A6 */	mtlr r0
/* 803E8A78 003E59B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E8A7C 003E59BC  4E 80 00 20 */	blr 
.endfn "startZigzagWalk__Q43ebi5title6Chappy5TUnitFR10Vector2<f>R10Vector2<f>"

.fn goHome__Q43ebi5title6Chappy5TUnitFv, global
/* 803E8A80 003E59C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E8A84 003E59C4  7C 08 02 A6 */	mflr r0
/* 803E8A88 003E59C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E8A8C 003E59CC  80 03 00 68 */	lwz r0, 0x68(r3)
/* 803E8A90 003E59D0  2C 00 00 00 */	cmpwi r0, 0
/* 803E8A94 003E59D4  41 82 00 0C */	beq .L_803E8AA0
/* 803E8A98 003E59D8  38 80 00 06 */	li r4, 6
/* 803E8A9C 003E59DC  48 00 00 61 */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
.L_803E8AA0:
/* 803E8AA0 003E59E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8AA4 003E59E4  7C 08 03 A6 */	mtlr r0
/* 803E8AA8 003E59E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E8AAC 003E59EC  4E 80 00 20 */	blr 
.endfn goHome__Q43ebi5title6Chappy5TUnitFv

.fn outOfCalc__Q43ebi5title6Chappy5TUnitFv, global
/* 803E8AB0 003E59F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E8AB4 003E59F4  7C 08 02 A6 */	mflr r0
/* 803E8AB8 003E59F8  38 80 00 00 */	li r4, 0
/* 803E8ABC 003E59FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E8AC0 003E5A00  48 00 00 3D */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E8AC4 003E5A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8AC8 003E5A08  7C 08 03 A6 */	mtlr r0
/* 803E8ACC 003E5A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E8AD0 003E5A10  4E 80 00 20 */	blr 
.endfn outOfCalc__Q43ebi5title6Chappy5TUnitFv

.fn isCalc__Q43ebi5title6Chappy5TUnitFv, global
/* 803E8AD4 003E5A14  80 63 00 68 */	lwz r3, 0x68(r3)
/* 803E8AD8 003E5A18  7C 03 00 D0 */	neg r0, r3
/* 803E8ADC 003E5A1C  7C 00 1B 78 */	or r0, r0, r3
/* 803E8AE0 003E5A20  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803E8AE4 003E5A24  4E 80 00 20 */	blr 
.endfn isCalc__Q43ebi5title6Chappy5TUnitFv

.fn isController__Q43ebi5title6Chappy5TUnitFv, global
/* 803E8AE8 003E5A28  80 03 00 68 */	lwz r0, 0x68(r3)
/* 803E8AEC 003E5A2C  20 00 00 07 */	subfic r0, r0, 7
/* 803E8AF0 003E5A30  7C 00 00 34 */	cntlzw r0, r0
/* 803E8AF4 003E5A34  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 803E8AF8 003E5A38  4E 80 00 20 */	blr 
.endfn isController__Q43ebi5title6Chappy5TUnitFv

.fn startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState, global
/* 803E8AFC 003E5A3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803E8B00 003E5A40  7C 08 02 A6 */	mflr r0
/* 803E8B04 003E5A44  90 01 00 64 */	stw r0, 0x64(r1)
/* 803E8B08 003E5A48  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803E8B0C 003E5A4C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 803E8B10 003E5A50  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 803E8B14 003E5A54  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 803E8B18 003E5A58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803E8B1C 003E5A5C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803E8B20 003E5A60  7C 7F 1B 78 */	mr r31, r3
/* 803E8B24 003E5A64  7C 9E 23 78 */	mr r30, r4
/* 803E8B28 003E5A68  80 03 00 68 */	lwz r0, 0x68(r3)
/* 803E8B2C 003E5A6C  7C 00 F0 00 */	cmpw r0, r30
/* 803E8B30 003E5A70  40 82 00 34 */	bne .L_803E8B64
/* 803E8B34 003E5A74  2C 00 00 07 */	cmpwi r0, 7
/* 803E8B38 003E5A78  40 82 02 B4 */	bne .L_803E8DEC
/* 803E8B3C 003E5A7C  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 803E8B40 003E5A80  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803E8B44 003E5A84  C0 24 02 48 */	lfs f1, 0x248(r4)
/* 803E8B48 003E5A88  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803E8B4C 003E5A8C  EC 21 00 24 */	fdivs f1, f1, f0
/* 803E8B50 003E5A90  4B CD 8F FD */	bl __cvt_fp2unsigned
/* 803E8B54 003E5A94  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803E8B58 003E5A98  90 7F 00 40 */	stw r3, 0x40(r31)
/* 803E8B5C 003E5A9C  48 00 00 08 */	b .L_803E8B64
/* 803E8B60 003E5AA0  48 00 02 8C */	b .L_803E8DEC
.L_803E8B64:
/* 803E8B64 003E5AA4  28 1E 00 07 */	cmplwi r30, 7
/* 803E8B68 003E5AA8  93 DF 00 68 */	stw r30, 0x68(r31)
/* 803E8B6C 003E5AAC  41 81 02 80 */	bgt .L_803E8DEC
/* 803E8B70 003E5AB0  3C 60 80 4F */	lis r3, lbl_804E9E6C@ha
/* 803E8B74 003E5AB4  57 C0 10 3A */	slwi r0, r30, 2
/* 803E8B78 003E5AB8  38 63 9E 6C */	addi r3, r3, lbl_804E9E6C@l
/* 803E8B7C 003E5ABC  7C 03 00 2E */	lwzx r0, r3, r0
/* 803E8B80 003E5AC0  7C 09 03 A6 */	mtctr r0
/* 803E8B84 003E5AC4  4E 80 04 20 */	bctr 
.L_803E8B88:
/* 803E8B88 003E5AC8  80 8D 9A 28 */	lwz r4, titleMgr__Q23ebi5title@sda21(r13)
/* 803E8B8C 003E5ACC  38 61 00 08 */	addi r3, r1, 8
/* 803E8B90 003E5AD0  4B FD 64 E9 */	bl getPosOutOfViewField__Q33ebi5title9TTitleMgrFv
/* 803E8B94 003E5AD4  C0 01 00 08 */	lfs f0, 8(r1)
/* 803E8B98 003E5AD8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803E8B9C 003E5ADC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803E8BA0 003E5AE0  D0 1F 00 08 */	stfs f0, 8(r31)
.L_803E8BA4:
/* 803E8BA4 003E5AE4  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 803E8BA8 003E5AE8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803E8BAC 003E5AEC  C0 24 02 48 */	lfs f1, 0x248(r4)
/* 803E8BB0 003E5AF0  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803E8BB4 003E5AF4  EC 21 00 24 */	fdivs f1, f1, f0
/* 803E8BB8 003E5AF8  4B CD 8F 95 */	bl __cvt_fp2unsigned
/* 803E8BBC 003E5AFC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803E8BC0 003E5B00  90 7F 00 40 */	stw r3, 0x40(r31)
/* 803E8BC4 003E5B04  48 00 02 28 */	b .L_803E8DEC
.L_803E8BC8:
/* 803E8BC8 003E5B08  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 803E8BCC 003E5B0C  C3 C3 01 A8 */	lfs f30, 0x1a8(r3)
/* 803E8BD0 003E5B10  C3 E3 01 D0 */	lfs f31, 0x1d0(r3)
/* 803E8BD4 003E5B14  4B CE 09 CD */	bl rand
/* 803E8BD8 003E5B18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803E8BDC 003E5B1C  3C 00 43 30 */	lis r0, 0x4330
/* 803E8BE0 003E5B20  90 61 00 14 */	stw r3, 0x14(r1)
/* 803E8BE4 003E5B24  EC 3F F0 28 */	fsubs f1, f31, f30
/* 803E8BE8 003E5B28  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803E8BEC 003E5B2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803E8BF0 003E5B30  C8 62 1A 78 */	lfd f3, lbl_8051FDD8@sda21(r2)
/* 803E8BF4 003E5B34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803E8BF8 003E5B38  C0 42 1A 64 */	lfs f2, lbl_8051FDC4@sda21(r2)
/* 803E8BFC 003E5B3C  EC 60 18 28 */	fsubs f3, f0, f3
/* 803E8C00 003E5B40  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803E8C04 003E5B44  EC 43 10 24 */	fdivs f2, f3, f2
/* 803E8C08 003E5B48  EC 21 F0 BA */	fmadds f1, f1, f2, f30
/* 803E8C0C 003E5B4C  EC 21 00 24 */	fdivs f1, f1, f0
/* 803E8C10 003E5B50  4B CD 8F 3D */	bl __cvt_fp2unsigned
/* 803E8C14 003E5B54  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803E8C18 003E5B58  90 7F 00 40 */	stw r3, 0x40(r31)
/* 803E8C1C 003E5B5C  48 00 01 D0 */	b .L_803E8DEC
.L_803E8C20:
/* 803E8C20 003E5B60  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 803E8C24 003E5B64  3C 60 80 51 */	lis r3, atanTable___5JMath@ha
/* 803E8C28 003E5B68  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803E8C2C 003E5B6C  38 63 D1 E0 */	addi r3, r3, atanTable___5JMath@l
/* 803E8C30 003E5B70  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 803E8C34 003E5B74  EC 21 00 28 */	fsubs f1, f1, f0
/* 803E8C38 003E5B78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803E8C3C 003E5B7C  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 803E8C40 003E5B80  EC 42 00 28 */	fsubs f2, f2, f0
/* 803E8C44 003E5B84  C3 C4 01 30 */	lfs f30, 0x130(r4)
/* 803E8C48 003E5B88  4B C4 C4 C1 */	bl "atan2___Q25JMath18TAtanTable<1024,f>CFff"
/* 803E8C4C 003E5B8C  FF E0 08 90 */	fmr f31, f1
/* 803E8C50 003E5B90  4B CE 09 51 */	bl rand
/* 803E8C54 003E5B94  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803E8C58 003E5B98  3C 00 43 30 */	lis r0, 0x4330
/* 803E8C5C 003E5B9C  90 61 00 14 */	stw r3, 0x14(r1)
/* 803E8C60 003E5BA0  C0 02 1A 6C */	lfs f0, lbl_8051FDCC@sda21(r2)
/* 803E8C64 003E5BA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803E8C68 003E5BA8  C8 42 1A 78 */	lfd f2, lbl_8051FDD8@sda21(r2)
/* 803E8C6C 003E5BAC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 803E8C70 003E5BB0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803E8C74 003E5BB4  C0 82 1A 64 */	lfs f4, lbl_8051FDC4@sda21(r2)
/* 803E8C78 003E5BB8  EC A1 10 28 */	fsubs f5, f1, f2
/* 803E8C7C 003E5BBC  C0 62 1A 68 */	lfs f3, lbl_8051FDC8@sda21(r2)
/* 803E8C80 003E5BC0  C0 42 1A 1C */	lfs f2, lbl_8051FD7C@sda21(r2)
/* 803E8C84 003E5BC4  C0 22 1A 0C */	lfs f1, lbl_8051FD6C@sda21(r2)
/* 803E8C88 003E5BC8  EC 63 00 32 */	fmuls f3, f3, f0
/* 803E8C8C 003E5BCC  EC 85 20 24 */	fdivs f4, f5, f4
/* 803E8C90 003E5BD0  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E8C94 003E5BD4  EC 22 09 3A */	fmadds f1, f2, f4, f1
/* 803E8C98 003E5BD8  EC 43 F8 7A */	fmadds f2, f3, f1, f31
/* 803E8C9C 003E5BDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803E8CA0 003E5BE0  40 80 00 30 */	bge .L_803E8CD0
/* 803E8CA4 003E5BE4  C0 02 1A 70 */	lfs f0, lbl_8051FDD0@sda21(r2)
/* 803E8CA8 003E5BE8  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 803E8CAC 003E5BEC  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 803E8CB0 003E5BF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803E8CB4 003E5BF4  FC 00 00 1E */	fctiwz f0, f0
/* 803E8CB8 003E5BF8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803E8CBC 003E5BFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803E8CC0 003E5C00  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 803E8CC4 003E5C04  7C 03 04 2E */	lfsx f0, r3, r0
/* 803E8CC8 003E5C08  FC 20 00 50 */	fneg f1, f0
/* 803E8CCC 003E5C0C  48 00 00 28 */	b .L_803E8CF4
.L_803E8CD0:
/* 803E8CD0 003E5C10  C0 02 1A 74 */	lfs f0, lbl_8051FDD4@sda21(r2)
/* 803E8CD4 003E5C14  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 803E8CD8 003E5C18  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 803E8CDC 003E5C1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803E8CE0 003E5C20  FC 00 00 1E */	fctiwz f0, f0
/* 803E8CE4 003E5C24  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803E8CE8 003E5C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E8CEC 003E5C2C  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 803E8CF0 003E5C30  7C 23 04 2E */	lfsx f1, r3, r0
.L_803E8CF4:
/* 803E8CF4 003E5C34  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E8CF8 003E5C38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803E8CFC 003E5C3C  40 80 00 08 */	bge .L_803E8D04
/* 803E8D00 003E5C40  FC 40 10 50 */	fneg f2, f2
.L_803E8D04:
/* 803E8D04 003E5C44  C0 02 1A 74 */	lfs f0, lbl_8051FDD4@sda21(r2)
/* 803E8D08 003E5C48  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 803E8D0C 003E5C4C  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 803E8D10 003E5C50  EC 02 00 32 */	fmuls f0, f2, f0
/* 803E8D14 003E5C54  FC 00 00 1E */	fctiwz f0, f0
/* 803E8D18 003E5C58  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803E8D1C 003E5C5C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803E8D20 003E5C60  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 803E8D24 003E5C64  7C 63 02 14 */	add r3, r3, r0
/* 803E8D28 003E5C68  C0 03 00 04 */	lfs f0, 4(r3)
/* 803E8D2C 003E5C6C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 803E8D30 003E5C70  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 803E8D34 003E5C74  48 00 00 B8 */	b .L_803E8DEC
.L_803E8D38:
/* 803E8D38 003E5C78  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 803E8D3C 003E5C7C  C3 C3 02 20 */	lfs f30, 0x220(r3)
/* 803E8D40 003E5C80  C3 E3 01 F8 */	lfs f31, 0x1f8(r3)
/* 803E8D44 003E5C84  4B CE 08 5D */	bl rand
/* 803E8D48 003E5C88  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803E8D4C 003E5C8C  3C 00 43 30 */	lis r0, 0x4330
/* 803E8D50 003E5C90  90 61 00 2C */	stw r3, 0x2c(r1)
/* 803E8D54 003E5C94  EC 3E F8 28 */	fsubs f1, f30, f31
/* 803E8D58 003E5C98  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 803E8D5C 003E5C9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 803E8D60 003E5CA0  C8 62 1A 78 */	lfd f3, lbl_8051FDD8@sda21(r2)
/* 803E8D64 003E5CA4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803E8D68 003E5CA8  C0 42 1A 64 */	lfs f2, lbl_8051FDC4@sda21(r2)
/* 803E8D6C 003E5CAC  EC 60 18 28 */	fsubs f3, f0, f3
/* 803E8D70 003E5CB0  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 803E8D74 003E5CB4  EC 43 10 24 */	fdivs f2, f3, f2
/* 803E8D78 003E5CB8  EC 21 F8 BA */	fmadds f1, f1, f2, f31
/* 803E8D7C 003E5CBC  EC 21 00 24 */	fdivs f1, f1, f0
/* 803E8D80 003E5CC0  4B CD 8D CD */	bl __cvt_fp2unsigned
/* 803E8D84 003E5CC4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803E8D88 003E5CC8  90 7F 00 40 */	stw r3, 0x40(r31)
/* 803E8D8C 003E5CCC  48 00 00 60 */	b .L_803E8DEC
.L_803E8D90:
/* 803E8D90 003E5CD0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803E8D94 003E5CD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 803E8D98 003E5CD8  FC 60 00 50 */	fneg f3, f0
/* 803E8D9C 003E5CDC  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E8DA0 003E5CE0  FC 40 08 50 */	fneg f2, f1
/* 803E8DA4 003E5CE4  EC 23 00 F2 */	fmuls f1, f3, f3
/* 803E8DA8 003E5CE8  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 803E8DAC 003E5CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E8DB0 003E5CF0  40 81 00 14 */	ble .L_803E8DC4
/* 803E8DB4 003E5CF4  40 81 00 14 */	ble .L_803E8DC8
/* 803E8DB8 003E5CF8  FC 00 08 34 */	frsqrte f0, f1
/* 803E8DBC 003E5CFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803E8DC0 003E5D00  48 00 00 08 */	b .L_803E8DC8
.L_803E8DC4:
/* 803E8DC4 003E5D04  FC 20 00 90 */	fmr f1, f0
.L_803E8DC8:
/* 803E8DC8 003E5D08  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E8DCC 003E5D0C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803E8DD0 003E5D10  41 82 00 14 */	beq .L_803E8DE4
/* 803E8DD4 003E5D14  C0 02 1A 10 */	lfs f0, lbl_8051FD70@sda21(r2)
/* 803E8DD8 003E5D18  EC 00 08 24 */	fdivs f0, f0, f1
/* 803E8DDC 003E5D1C  EC 42 00 32 */	fmuls f2, f2, f0
/* 803E8DE0 003E5D20  EC 63 00 32 */	fmuls f3, f3, f0
.L_803E8DE4:
/* 803E8DE4 003E5D24  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 803E8DE8 003E5D28  D0 7F 00 10 */	stfs f3, 0x10(r31)
.L_803E8DEC:
/* 803E8DEC 003E5D2C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 803E8DF0 003E5D30  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803E8DF4 003E5D34  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 803E8DF8 003E5D38  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 803E8DFC 003E5D3C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803E8E00 003E5D40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803E8E04 003E5D44  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803E8E08 003E5D48  7C 08 03 A6 */	mtlr r0
/* 803E8E0C 003E5D4C  38 21 00 60 */	addi r1, r1, 0x60
/* 803E8E10 003E5D50  4E 80 00 20 */	blr 
.endfn startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState

.fn update__Q43ebi5title6Chappy5TUnitFv, global
/* 803E8E14 003E5D54  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803E8E18 003E5D58  7C 08 02 A6 */	mflr r0
/* 803E8E1C 003E5D5C  90 01 00 84 */	stw r0, 0x84(r1)
/* 803E8E20 003E5D60  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 803E8E24 003E5D64  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 803E8E28 003E5D68  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 803E8E2C 003E5D6C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 803E8E30 003E5D70  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 803E8E34 003E5D74  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 803E8E38 003E5D78  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 803E8E3C 003E5D7C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 803E8E40 003E5D80  93 A1 00 44 */	stw r29, 0x44(r1)
/* 803E8E44 003E5D84  93 81 00 40 */	stw r28, 0x40(r1)
/* 803E8E48 003E5D88  81 83 00 00 */	lwz r12, 0(r3)
/* 803E8E4C 003E5D8C  7C 7E 1B 78 */	mr r30, r3
/* 803E8E50 003E5D90  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803E8E54 003E5D94  7D 89 03 A6 */	mtctr r12
/* 803E8E58 003E5D98  4E 80 04 21 */	bctrl 
/* 803E8E5C 003E5D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803E8E60 003E5DA0  41 82 09 E0 */	beq .L_803E9840
/* 803E8E64 003E5DA4  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 803E8E68 003E5DA8  2C 00 00 00 */	cmpwi r0, 0
/* 803E8E6C 003E5DAC  41 82 00 60 */	beq .L_803E8ECC
/* 803E8E70 003E5DB0  2C 00 00 06 */	cmpwi r0, 6
/* 803E8E74 003E5DB4  41 82 00 58 */	beq .L_803E8ECC
/* 803E8E78 003E5DB8  2C 00 00 05 */	cmpwi r0, 5
/* 803E8E7C 003E5DBC  41 82 00 50 */	beq .L_803E8ECC
/* 803E8E80 003E5DC0  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 803E8E84 003E5DC4  38 80 00 00 */	li r4, 0
/* 803E8E88 003E5DC8  28 03 00 00 */	cmplwi r3, 0
/* 803E8E8C 003E5DCC  41 82 00 2C */	beq .L_803E8EB8
/* 803E8E90 003E5DD0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 803E8E94 003E5DD4  C0 02 1A 84 */	lfs f0, lbl_8051FDE4@sda21(r2)
/* 803E8E98 003E5DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E8E9C 003E5DDC  40 81 00 0C */	ble .L_803E8EA8
/* 803E8EA0 003E5DE0  38 80 00 01 */	li r4, 1
/* 803E8EA4 003E5DE4  48 00 00 14 */	b .L_803E8EB8
.L_803E8EA8:
/* 803E8EA8 003E5DE8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803E8EAC 003E5DEC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 803E8EB0 003E5DF0  41 82 00 08 */	beq .L_803E8EB8
/* 803E8EB4 003E5DF4  38 80 00 01 */	li r4, 1
.L_803E8EB8:
/* 803E8EB8 003E5DF8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 803E8EBC 003E5DFC  41 82 00 10 */	beq .L_803E8ECC
/* 803E8EC0 003E5E00  7F C3 F3 78 */	mr r3, r30
/* 803E8EC4 003E5E04  38 80 00 07 */	li r4, 7
/* 803E8EC8 003E5E08  4B FF FC 35 */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
.L_803E8ECC:
/* 803E8ECC 003E5E0C  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E8ED0 003E5E10  3B E0 00 00 */	li r31, 0
/* 803E8ED4 003E5E14  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 803E8ED8 003E5E18  FF C0 F8 90 */	fmr f30, f31
/* 803E8EDC 003E5E1C  28 03 00 00 */	cmplwi r3, 0
/* 803E8EE0 003E5E20  41 82 00 0C */	beq .L_803E8EEC
/* 803E8EE4 003E5E24  38 03 FF FF */	addi r0, r3, -1
/* 803E8EE8 003E5E28  90 1E 00 3C */	stw r0, 0x3c(r30)
.L_803E8EEC:
/* 803E8EEC 003E5E2C  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 803E8EF0 003E5E30  28 00 00 07 */	cmplwi r0, 7
/* 803E8EF4 003E5E34  41 81 02 58 */	bgt .L_803E914C
/* 803E8EF8 003E5E38  3C 60 80 4F */	lis r3, lbl_804E9E8C@ha
/* 803E8EFC 003E5E3C  54 00 10 3A */	slwi r0, r0, 2
/* 803E8F00 003E5E40  38 63 9E 8C */	addi r3, r3, lbl_804E9E8C@l
/* 803E8F04 003E5E44  7C 03 00 2E */	lwzx r0, r3, r0
/* 803E8F08 003E5E48  7C 09 03 A6 */	mtctr r0
/* 803E8F0C 003E5E4C  4E 80 04 20 */	bctr 
.L_803E8F10:
/* 803E8F10 003E5E50  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 803E8F14 003E5E54  28 03 00 00 */	cmplwi r3, 0
/* 803E8F18 003E5E58  41 82 00 14 */	beq .L_803E8F2C
/* 803E8F1C 003E5E5C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803E8F20 003E5E60  C3 E3 00 58 */	lfs f31, 0x58(r3)
/* 803E8F24 003E5E64  C3 C3 00 5C */	lfs f30, 0x5c(r3)
/* 803E8F28 003E5E68  54 1F E7 FE */	rlwinm r31, r0, 0x1c, 0x1f, 0x1f
.L_803E8F2C:
/* 803E8F2C 003E5E6C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 803E8F30 003E5E70  28 00 00 00 */	cmplwi r0, 0
/* 803E8F34 003E5E74  40 82 02 18 */	bne .L_803E914C
/* 803E8F38 003E5E78  7F C3 F3 78 */	mr r3, r30
/* 803E8F3C 003E5E7C  38 80 00 06 */	li r4, 6
/* 803E8F40 003E5E80  4B FF FB BD */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E8F44 003E5E84  48 00 02 08 */	b .L_803E914C
.L_803E8F48:
/* 803E8F48 003E5E88  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E8F4C 003E5E8C  3B E0 00 00 */	li r31, 0
/* 803E8F50 003E5E90  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 803E8F54 003E5E94  FF C0 F8 90 */	fmr f30, f31
/* 803E8F58 003E5E98  28 00 00 00 */	cmplwi r0, 0
/* 803E8F5C 003E5E9C  40 82 01 F0 */	bne .L_803E914C
/* 803E8F60 003E5EA0  7F C3 F3 78 */	mr r3, r30
/* 803E8F64 003E5EA4  38 80 00 02 */	li r4, 2
/* 803E8F68 003E5EA8  4B FF FB 95 */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E8F6C 003E5EAC  48 00 01 E0 */	b .L_803E914C
.L_803E8F70:
/* 803E8F70 003E5EB0  3C 60 80 51 */	lis r3, atanTable___5JMath@ha
/* 803E8F74 003E5EB4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 803E8F78 003E5EB8  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 803E8F7C 003E5EBC  38 63 D1 E0 */	addi r3, r3, atanTable___5JMath@l
/* 803E8F80 003E5EC0  4B C4 C1 89 */	bl "atan2___Q25JMath18TAtanTable<1024,f>CFff"
/* 803E8F84 003E5EC4  FF A0 08 90 */	fmr f29, f1
/* 803E8F88 003E5EC8  3C 60 80 51 */	lis r3, atanTable___5JMath@ha
/* 803E8F8C 003E5ECC  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 803E8F90 003E5ED0  38 63 D1 E0 */	addi r3, r3, atanTable___5JMath@l
/* 803E8F94 003E5ED4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 803E8F98 003E5ED8  4B C4 C1 71 */	bl "atan2___Q25JMath18TAtanTable<1024,f>CFff"
/* 803E8F9C 003E5EDC  EC 5D 08 28 */	fsubs f2, f29, f1
/* 803E8FA0 003E5EE0  C0 22 1A 88 */	lfs f1, lbl_8051FDE8@sda21(r2)
/* 803E8FA4 003E5EE4  C0 02 1A 8C */	lfs f0, lbl_8051FDEC@sda21(r2)
/* 803E8FA8 003E5EE8  48 00 00 08 */	b .L_803E8FB0
.L_803E8FAC:
/* 803E8FAC 003E5EEC  EC 42 08 2A */	fadds f2, f2, f1
.L_803E8FB0:
/* 803E8FB0 003E5EF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803E8FB4 003E5EF4  41 80 FF F8 */	blt .L_803E8FAC
/* 803E8FB8 003E5EF8  C0 22 1A 88 */	lfs f1, lbl_8051FDE8@sda21(r2)
/* 803E8FBC 003E5EFC  C0 02 1A 68 */	lfs f0, lbl_8051FDC8@sda21(r2)
/* 803E8FC0 003E5F00  48 00 00 08 */	b .L_803E8FC8
.L_803E8FC4:
/* 803E8FC4 003E5F04  EC 42 08 28 */	fsubs f2, f2, f1
.L_803E8FC8:
/* 803E8FC8 003E5F08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803E8FCC 003E5F0C  4C 41 13 82 */	cror 2, 1, 2
/* 803E8FD0 003E5F10  41 82 FF F4 */	beq .L_803E8FC4
/* 803E8FD4 003E5F14  FC 20 12 10 */	fabs f1, f2
/* 803E8FD8 003E5F18  C0 02 1A 90 */	lfs f0, lbl_8051FDF0@sda21(r2)
/* 803E8FDC 003E5F1C  FC 20 08 18 */	frsp f1, f1
/* 803E8FE0 003E5F20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E8FE4 003E5F24  40 80 00 14 */	bge .L_803E8FF8
/* 803E8FE8 003E5F28  7F C3 F3 78 */	mr r3, r30
/* 803E8FEC 003E5F2C  38 80 00 03 */	li r4, 3
/* 803E8FF0 003E5F30  4B FF FB 0D */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E8FF4 003E5F34  48 00 01 58 */	b .L_803E914C
.L_803E8FF8:
/* 803E8FF8 003E5F38  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E8FFC 003E5F3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803E9000 003E5F40  40 81 00 14 */	ble .L_803E9014
/* 803E9004 003E5F44  FF C0 00 90 */	fmr f30, f0
/* 803E9008 003E5F48  C3 E2 1A 10 */	lfs f31, lbl_8051FD70@sda21(r2)
/* 803E900C 003E5F4C  3B E0 00 00 */	li r31, 0
/* 803E9010 003E5F50  48 00 01 3C */	b .L_803E914C
.L_803E9014:
/* 803E9014 003E5F54  FF C0 00 90 */	fmr f30, f0
/* 803E9018 003E5F58  C3 E2 1A 0C */	lfs f31, lbl_8051FD6C@sda21(r2)
/* 803E901C 003E5F5C  3B E0 00 00 */	li r31, 0
/* 803E9020 003E5F60  48 00 01 2C */	b .L_803E914C
.L_803E9024:
/* 803E9024 003E5F64  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 803E9028 003E5F68  28 00 00 00 */	cmplwi r0, 0
/* 803E902C 003E5F6C  41 82 00 14 */	beq .L_803E9040
/* 803E9030 003E5F70  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E9034 003E5F74  3B E0 00 00 */	li r31, 0
/* 803E9038 003E5F78  C3 C2 1A 10 */	lfs f30, lbl_8051FD70@sda21(r2)
/* 803E903C 003E5F7C  48 00 01 10 */	b .L_803E914C
.L_803E9040:
/* 803E9040 003E5F80  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E9044 003E5F84  3B E0 00 00 */	li r31, 0
/* 803E9048 003E5F88  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 803E904C 003E5F8C  FF C0 F8 90 */	fmr f30, f31
/* 803E9050 003E5F90  2C 00 00 03 */	cmpwi r0, 3
/* 803E9054 003E5F94  40 82 00 F8 */	bne .L_803E914C
/* 803E9058 003E5F98  3B A0 00 00 */	li r29, 0
/* 803E905C 003E5F9C  3B 80 00 00 */	li r28, 0
.L_803E9060:
/* 803E9060 003E5FA0  80 BE 00 4C */	lwz r5, 0x4c(r30)
/* 803E9064 003E5FA4  7F 84 E3 78 */	mr r4, r28
/* 803E9068 003E5FA8  80 6D 9A 28 */	lwz r3, titleMgr__Q23ebi5title@sda21(r13)
/* 803E906C 003E5FAC  C0 05 01 08 */	lfs f0, 0x108(r5)
/* 803E9070 003E5FB0  38 63 01 54 */	addi r3, r3, 0x154
/* 803E9074 003E5FB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 803E9078 003E5FB8  C0 85 00 E0 */	lfs f4, 0xe0(r5)
/* 803E907C 003E5FBC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 803E9080 003E5FC0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 803E9084 003E5FC4  EC 41 01 32 */	fmuls f2, f1, f4
/* 803E9088 003E5FC8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803E908C 003E5FCC  EC 00 01 32 */	fmuls f0, f0, f4
/* 803E9090 003E5FD0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 803E9094 003E5FD4  EC 43 10 2A */	fadds f2, f3, f2
/* 803E9098 003E5FD8  EC 01 00 2A */	fadds f0, f1, f0
/* 803E909C 003E5FDC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 803E90A0 003E5FE0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 803E90A4 003E5FE4  4B FF C1 E9 */	bl getUnit__Q43ebi5title6Pikmin4TMgrFl
/* 803E90A8 003E5FE8  C0 23 00 08 */	lfs f1, 8(r3)
/* 803E90AC 003E5FEC  38 81 00 18 */	addi r4, r1, 0x18
/* 803E90B0 003E5FF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 803E90B4 003E5FF4  38 61 00 2C */	addi r3, r1, 0x2c
/* 803E90B8 003E5FF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 803E90BC 003E5FFC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 803E90C0 003E6000  4B FE 10 C9 */	bl "isOut__Q23ebi11EGECircle2fFR10Vector2<f>"
/* 803E90C4 003E6004  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803E90C8 003E6008  40 82 00 0C */	bne .L_803E90D4
/* 803E90CC 003E600C  3B A0 00 01 */	li r29, 1
/* 803E90D0 003E6010  48 00 00 10 */	b .L_803E90E0
.L_803E90D4:
/* 803E90D4 003E6014  3B 9C 00 01 */	addi r28, r28, 1
/* 803E90D8 003E6018  2C 1C 01 F4 */	cmpwi r28, 0x1f4
/* 803E90DC 003E601C  41 80 FF 84 */	blt .L_803E9060
.L_803E90E0:
/* 803E90E0 003E6020  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 803E90E4 003E6024  41 82 00 14 */	beq .L_803E90F8
/* 803E90E8 003E6028  7F C3 F3 78 */	mr r3, r30
/* 803E90EC 003E602C  38 80 00 04 */	li r4, 4
/* 803E90F0 003E6030  4B FF FA 0D */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E90F4 003E6034  48 00 00 58 */	b .L_803E914C
.L_803E90F8:
/* 803E90F8 003E6038  7F C3 F3 78 */	mr r3, r30
/* 803E90FC 003E603C  38 80 00 02 */	li r4, 2
/* 803E9100 003E6040  4B FF F9 FD */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E9104 003E6044  48 00 00 48 */	b .L_803E914C
.L_803E9108:
/* 803E9108 003E6048  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E910C 003E604C  3B E0 00 01 */	li r31, 1
/* 803E9110 003E6050  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 803E9114 003E6054  FF C0 F8 90 */	fmr f30, f31
/* 803E9118 003E6058  2C 00 00 03 */	cmpwi r0, 3
/* 803E911C 003E605C  40 82 00 30 */	bne .L_803E914C
/* 803E9120 003E6060  7F C3 F3 78 */	mr r3, r30
/* 803E9124 003E6064  38 80 00 02 */	li r4, 2
/* 803E9128 003E6068  4B FF F9 D5 */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E912C 003E606C  48 00 00 20 */	b .L_803E914C
.L_803E9130:
/* 803E9130 003E6070  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E9134 003E6074  3B E0 00 00 */	li r31, 0
/* 803E9138 003E6078  C3 C2 1A 10 */	lfs f30, lbl_8051FD70@sda21(r2)
/* 803E913C 003E607C  48 00 00 10 */	b .L_803E914C
.L_803E9140:
/* 803E9140 003E6080  C3 E2 1A 08 */	lfs f31, lbl_8051FD68@sda21(r2)
/* 803E9144 003E6084  3B E0 00 00 */	li r31, 0
/* 803E9148 003E6088  C3 C2 1A 10 */	lfs f30, lbl_8051FD70@sda21(r2)
.L_803E914C:
/* 803E914C 003E608C  88 1E 00 48 */	lbz r0, 0x48(r30)
/* 803E9150 003E6090  28 00 00 00 */	cmplwi r0, 0
/* 803E9154 003E6094  41 82 00 0C */	beq .L_803E9160
/* 803E9158 003E6098  38 60 00 00 */	li r3, 0
/* 803E915C 003E609C  48 00 00 40 */	b .L_803E919C
.L_803E9160:
/* 803E9160 003E60A0  FC 20 FA 10 */	fabs f1, f31
/* 803E9164 003E60A4  C0 02 1A 84 */	lfs f0, lbl_8051FDE4@sda21(r2)
/* 803E9168 003E60A8  38 60 00 00 */	li r3, 0
/* 803E916C 003E60AC  FC 20 08 18 */	frsp f1, f1
/* 803E9170 003E60B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E9174 003E60B4  40 81 00 08 */	ble .L_803E917C
/* 803E9178 003E60B8  38 60 00 01 */	li r3, 1
.L_803E917C:
/* 803E917C 003E60BC  C0 02 1A 84 */	lfs f0, lbl_8051FDE4@sda21(r2)
/* 803E9180 003E60C0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 803E9184 003E60C4  40 81 00 08 */	ble .L_803E918C
/* 803E9188 003E60C8  38 60 00 04 */	li r3, 4
.L_803E918C:
/* 803E918C 003E60CC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803E9190 003E60D0  28 00 00 01 */	cmplwi r0, 1
/* 803E9194 003E60D4  40 82 00 08 */	bne .L_803E919C
/* 803E9198 003E60D8  38 60 00 02 */	li r3, 2
.L_803E919C:
/* 803E919C 003E60DC  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E91A0 003E60E0  7C 00 18 00 */	cmpw r0, r3
/* 803E91A4 003E60E4  41 82 01 EC */	beq .L_803E9390
/* 803E91A8 003E60E8  2C 00 00 01 */	cmpwi r0, 1
/* 803E91AC 003E60EC  40 80 00 08 */	bge .L_803E91B4
/* 803E91B0 003E60F0  48 00 01 0C */	b .L_803E92BC
.L_803E91B4:
/* 803E91B4 003E60F4  2C 00 00 05 */	cmpwi r0, 5
/* 803E91B8 003E60F8  40 80 01 04 */	bge .L_803E92BC
/* 803E91BC 003E60FC  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E91C0 003E6100  4B FE 0D D1 */	bl playStopEnd__Q23ebi11E3DAnimCtrlFv
/* 803E91C4 003E6104  38 00 00 01 */	li r0, 1
/* 803E91C8 003E6108  98 1E 00 48 */	stb r0, 0x48(r30)
/* 803E91CC 003E610C  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 803E91D0 003E6110  2C 00 00 03 */	cmpwi r0, 3
/* 803E91D4 003E6114  40 82 01 BC */	bne .L_803E9390
/* 803E91D8 003E6118  38 60 00 00 */	li r3, 0
/* 803E91DC 003E611C  98 7E 00 48 */	stb r3, 0x48(r30)
/* 803E91E0 003E6120  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E91E4 003E6124  2C 00 00 00 */	cmpwi r0, 0
/* 803E91E8 003E6128  41 82 01 A8 */	beq .L_803E9390
/* 803E91EC 003E612C  90 7E 00 6C */	stw r3, 0x6c(r30)
/* 803E91F0 003E6130  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E91F4 003E6134  2C 00 00 02 */	cmpwi r0, 2
/* 803E91F8 003E6138  41 82 00 84 */	beq .L_803E927C
/* 803E91FC 003E613C  40 80 00 14 */	bge .L_803E9210
/* 803E9200 003E6140  2C 00 00 00 */	cmpwi r0, 0
/* 803E9204 003E6144  41 82 00 1C */	beq .L_803E9220
/* 803E9208 003E6148  40 80 00 3C */	bge .L_803E9244
/* 803E920C 003E614C  48 00 01 84 */	b .L_803E9390
.L_803E9210:
/* 803E9210 003E6150  2C 00 00 04 */	cmpwi r0, 4
/* 803E9214 003E6154  41 82 00 4C */	beq .L_803E9260
/* 803E9218 003E6158  40 80 01 78 */	bge .L_803E9390
/* 803E921C 003E615C  48 00 00 84 */	b .L_803E92A0
.L_803E9220:
/* 803E9220 003E6160  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9224 003E6164  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9228 003E6168  38 80 00 01 */	li r4, 1
/* 803E922C 003E616C  4B FE 0C 41 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9230 003E6170  C0 02 1A 80 */	lfs f0, lbl_8051FDE0@sda21(r2)
/* 803E9234 003E6174  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9238 003E6178  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 803E923C 003E617C  4B FE 0C D5 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9240 003E6180  48 00 01 50 */	b .L_803E9390
.L_803E9244:
/* 803E9244 003E6184  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9248 003E6188  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E924C 003E618C  38 80 00 01 */	li r4, 1
/* 803E9250 003E6190  4B FE 0C 1D */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9254 003E6194  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9258 003E6198  4B FE 0C B9 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E925C 003E619C  48 00 01 34 */	b .L_803E9390
.L_803E9260:
/* 803E9260 003E61A0  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9264 003E61A4  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9268 003E61A8  38 80 00 00 */	li r4, 0
/* 803E926C 003E61AC  4B FE 0C 01 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9270 003E61B0  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9274 003E61B4  4B FE 0C 9D */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9278 003E61B8  48 00 01 18 */	b .L_803E9390
.L_803E927C:
/* 803E927C 003E61BC  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9280 003E61C0  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9284 003E61C4  38 80 00 02 */	li r4, 2
/* 803E9288 003E61C8  4B FE 0B E5 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E928C 003E61CC  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9290 003E61D0  4B FE 0C 81 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9294 003E61D4  38 00 00 00 */	li r0, 0
/* 803E9298 003E61D8  90 1E 00 64 */	stw r0, 0x64(r30)
/* 803E929C 003E61DC  48 00 00 F4 */	b .L_803E9390
.L_803E92A0:
/* 803E92A0 003E61E0  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E92A4 003E61E4  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E92A8 003E61E8  38 80 00 03 */	li r4, 3
/* 803E92AC 003E61EC  4B FE 0B C1 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E92B0 003E61F0  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E92B4 003E61F4  4B FE 0C 5D */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E92B8 003E61F8  48 00 00 D8 */	b .L_803E9390
.L_803E92BC:
/* 803E92BC 003E61FC  7C 03 00 00 */	cmpw r3, r0
/* 803E92C0 003E6200  41 82 00 D0 */	beq .L_803E9390
/* 803E92C4 003E6204  90 7E 00 6C */	stw r3, 0x6c(r30)
/* 803E92C8 003E6208  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E92CC 003E620C  2C 00 00 02 */	cmpwi r0, 2
/* 803E92D0 003E6210  41 82 00 84 */	beq .L_803E9354
/* 803E92D4 003E6214  40 80 00 14 */	bge .L_803E92E8
/* 803E92D8 003E6218  2C 00 00 00 */	cmpwi r0, 0
/* 803E92DC 003E621C  41 82 00 1C */	beq .L_803E92F8
/* 803E92E0 003E6220  40 80 00 3C */	bge .L_803E931C
/* 803E92E4 003E6224  48 00 00 AC */	b .L_803E9390
.L_803E92E8:
/* 803E92E8 003E6228  2C 00 00 04 */	cmpwi r0, 4
/* 803E92EC 003E622C  41 82 00 4C */	beq .L_803E9338
/* 803E92F0 003E6230  40 80 00 A0 */	bge .L_803E9390
/* 803E92F4 003E6234  48 00 00 84 */	b .L_803E9378
.L_803E92F8:
/* 803E92F8 003E6238  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E92FC 003E623C  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9300 003E6240  38 80 00 01 */	li r4, 1
/* 803E9304 003E6244  4B FE 0B 69 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9308 003E6248  C0 02 1A 80 */	lfs f0, lbl_8051FDE0@sda21(r2)
/* 803E930C 003E624C  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9310 003E6250  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 803E9314 003E6254  4B FE 0B FD */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9318 003E6258  48 00 00 78 */	b .L_803E9390
.L_803E931C:
/* 803E931C 003E625C  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9320 003E6260  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9324 003E6264  38 80 00 01 */	li r4, 1
/* 803E9328 003E6268  4B FE 0B 45 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E932C 003E626C  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9330 003E6270  4B FE 0B E1 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9334 003E6274  48 00 00 5C */	b .L_803E9390
.L_803E9338:
/* 803E9338 003E6278  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E933C 003E627C  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9340 003E6280  38 80 00 00 */	li r4, 0
/* 803E9344 003E6284  4B FE 0B 29 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9348 003E6288  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E934C 003E628C  4B FE 0B C5 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9350 003E6290  48 00 00 40 */	b .L_803E9390
.L_803E9354:
/* 803E9354 003E6294  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9358 003E6298  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E935C 003E629C  38 80 00 02 */	li r4, 2
/* 803E9360 003E62A0  4B FE 0B 0D */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9364 003E62A4  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9368 003E62A8  4B FE 0B A9 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E936C 003E62AC  38 00 00 00 */	li r0, 0
/* 803E9370 003E62B0  90 1E 00 64 */	stw r0, 0x64(r30)
/* 803E9374 003E62B4  48 00 00 1C */	b .L_803E9390
.L_803E9378:
/* 803E9378 003E62B8  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E937C 003E62BC  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9380 003E62C0  38 80 00 03 */	li r4, 3
/* 803E9384 003E62C4  4B FE 0A E9 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9388 003E62C8  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E938C 003E62CC  4B FE 0B 85 */	bl play__Q23ebi11E3DAnimCtrlFv
.L_803E9390:
/* 803E9390 003E62D0  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E9394 003E62D4  2C 00 00 02 */	cmpwi r0, 2
/* 803E9398 003E62D8  41 82 01 3C */	beq .L_803E94D4
/* 803E939C 003E62DC  40 80 00 14 */	bge .L_803E93B0
/* 803E93A0 003E62E0  2C 00 00 00 */	cmpwi r0, 0
/* 803E93A4 003E62E4  41 82 02 E8 */	beq .L_803E968C
/* 803E93A8 003E62E8  40 80 00 14 */	bge .L_803E93BC
/* 803E93AC 003E62EC  48 00 02 E0 */	b .L_803E968C
.L_803E93B0:
/* 803E93B0 003E62F0  2C 00 00 04 */	cmpwi r0, 4
/* 803E93B4 003E62F4  41 82 00 C4 */	beq .L_803E9478
/* 803E93B8 003E62F8  48 00 02 D4 */	b .L_803E968C
.L_803E93BC:
/* 803E93BC 003E62FC  FC 20 FA 10 */	fabs f1, f31
/* 803E93C0 003E6300  C0 02 1A 84 */	lfs f0, lbl_8051FDE4@sda21(r2)
/* 803E93C4 003E6304  FC 20 08 18 */	frsp f1, f1
/* 803E93C8 003E6308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E93CC 003E630C  40 81 00 0C */	ble .L_803E93D8
/* 803E93D0 003E6310  FC 40 F8 90 */	fmr f2, f31
/* 803E93D4 003E6314  48 00 00 08 */	b .L_803E93DC
.L_803E93D8:
/* 803E93D8 003E6318  C0 42 1A 08 */	lfs f2, lbl_8051FD68@sda21(r2)
.L_803E93DC:
/* 803E93DC 003E631C  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 803E93E0 003E6320  C0 BE 00 0C */	lfs f5, 0xc(r30)
/* 803E93E4 003E6324  C0 03 01 80 */	lfs f0, 0x180(r3)
/* 803E93E8 003E6328  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 803E93EC 003E632C  FC 20 28 50 */	fneg f1, f5
/* 803E93F0 003E6330  EC 62 00 32 */	fmuls f3, f2, f0
/* 803E93F4 003E6334  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E93F8 003E6338  EC 44 00 F2 */	fmuls f2, f4, f3
/* 803E93FC 003E633C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 803E9400 003E6340  EC 45 10 2A */	fadds f2, f5, f2
/* 803E9404 003E6344  EC 24 08 2A */	fadds f1, f4, f1
/* 803E9408 003E6348  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803E940C 003E634C  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 803E9410 003E6350  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 803E9414 003E6354  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 803E9418 003E6358  EC 23 00 F2 */	fmuls f1, f3, f3
/* 803E941C 003E635C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 803E9420 003E6360  EC 21 10 2A */	fadds f1, f1, f2
/* 803E9424 003E6364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E9428 003E6368  40 81 00 1C */	ble .L_803E9444
/* 803E942C 003E636C  EC 43 10 FA */	fmadds f2, f3, f3, f2
/* 803E9430 003E6370  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803E9434 003E6374  40 81 00 14 */	ble .L_803E9448
/* 803E9438 003E6378  FC 00 10 34 */	frsqrte f0, f2
/* 803E943C 003E637C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803E9440 003E6380  48 00 00 08 */	b .L_803E9448
.L_803E9444:
/* 803E9444 003E6384  FC 40 00 90 */	fmr f2, f0
.L_803E9448:
/* 803E9448 003E6388  C0 02 1A 08 */	lfs f0, lbl_8051FD68@sda21(r2)
/* 803E944C 003E638C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 803E9450 003E6390  41 82 02 3C */	beq .L_803E968C
/* 803E9454 003E6394  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9458 003E6398  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 803E945C 003E639C  EC 21 10 24 */	fdivs f1, f1, f2
/* 803E9460 003E63A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E9464 003E63A4  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 803E9468 003E63A8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 803E946C 003E63AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E9470 003E63B0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 803E9474 003E63B4  48 00 02 18 */	b .L_803E968C
.L_803E9478:
/* 803E9478 003E63B8  C0 02 1A 84 */	lfs f0, lbl_8051FDE4@sda21(r2)
/* 803E947C 003E63BC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 803E9480 003E63C0  40 81 00 0C */	ble .L_803E948C
/* 803E9484 003E63C4  FC 40 F0 90 */	fmr f2, f30
/* 803E9488 003E63C8  48 00 00 08 */	b .L_803E9490
.L_803E948C:
/* 803E948C 003E63CC  C0 42 1A 48 */	lfs f2, lbl_8051FDA8@sda21(r2)
.L_803E9490:
/* 803E9490 003E63D0  88 1E 00 48 */	lbz r0, 0x48(r30)
/* 803E9494 003E63D4  28 00 00 00 */	cmplwi r0, 0
/* 803E9498 003E63D8  41 82 00 08 */	beq .L_803E94A0
/* 803E949C 003E63DC  C0 42 1A 48 */	lfs f2, lbl_8051FDA8@sda21(r2)
.L_803E94A0:
/* 803E94A0 003E63E0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 803E94A4 003E63E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 803E94A8 003E63E8  EC 82 00 72 */	fmuls f4, f2, f1
/* 803E94AC 003E63EC  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 803E94B0 003E63F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 803E94B4 003E63F4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803E94B8 003E63F8  EC 00 01 32 */	fmuls f0, f0, f4
/* 803E94BC 003E63FC  EC 42 01 32 */	fmuls f2, f2, f4
/* 803E94C0 003E6400  EC 01 00 2A */	fadds f0, f1, f0
/* 803E94C4 003E6404  EC 23 10 2A */	fadds f1, f3, f2
/* 803E94C8 003E6408  D0 1E 00 04 */	stfs f0, 4(r30)
/* 803E94CC 003E640C  D0 3E 00 08 */	stfs f1, 8(r30)
/* 803E94D0 003E6410  48 00 01 BC */	b .L_803E968C
.L_803E94D4:
/* 803E94D4 003E6414  C3 BE 00 50 */	lfs f29, 0x50(r30)
/* 803E94D8 003E6418  C0 02 1A 40 */	lfs f0, lbl_8051FDA0@sda21(r2)
/* 803E94DC 003E641C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 803E94E0 003E6420  40 80 00 B0 */	bge .L_803E9590
/* 803E94E4 003E6424  C0 02 1A 20 */	lfs f0, lbl_8051FD80@sda21(r2)
/* 803E94E8 003E6428  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 803E94EC 003E642C  40 80 00 A4 */	bge .L_803E9590
/* 803E94F0 003E6430  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 803E94F4 003E6434  3B 80 00 00 */	li r28, 0
/* 803E94F8 003E6438  C0 03 01 08 */	lfs f0, 0x108(r3)
/* 803E94FC 003E643C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 803E9500 003E6440  C0 83 00 E0 */	lfs f4, 0xe0(r3)
/* 803E9504 003E6444  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 803E9508 003E6448  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 803E950C 003E644C  EC 41 01 32 */	fmuls f2, f1, f4
/* 803E9510 003E6450  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803E9514 003E6454  EC 00 01 32 */	fmuls f0, f0, f4
/* 803E9518 003E6458  C0 3E 00 04 */	lfs f1, 4(r30)
/* 803E951C 003E645C  EC 43 10 2A */	fadds f2, f3, f2
/* 803E9520 003E6460  EC 01 00 2A */	fadds f0, f1, f0
/* 803E9524 003E6464  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 803E9528 003E6468  D0 01 00 20 */	stfs f0, 0x20(r1)
.L_803E952C:
/* 803E952C 003E646C  80 6D 9A 28 */	lwz r3, titleMgr__Q23ebi5title@sda21(r13)
/* 803E9530 003E6470  7F 84 E3 78 */	mr r4, r28
/* 803E9534 003E6474  38 63 01 54 */	addi r3, r3, 0x154
/* 803E9538 003E6478  4B FF BD 55 */	bl getUnit__Q43ebi5title6Pikmin4TMgrFl
/* 803E953C 003E647C  7C 60 1B 78 */	mr r0, r3
/* 803E9540 003E6480  38 61 00 20 */	addi r3, r1, 0x20
/* 803E9544 003E6484  7C 1D 03 78 */	mr r29, r0
/* 803E9548 003E6488  38 81 00 10 */	addi r4, r1, 0x10
/* 803E954C 003E648C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 803E9550 003E6490  C0 1D 00 04 */	lfs f0, 4(r29)
/* 803E9554 003E6494  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803E9558 003E6498  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 803E955C 003E649C  4B FE 0C 2D */	bl "isOut__Q23ebi11EGECircle2fFR10Vector2<f>"
/* 803E9560 003E64A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803E9564 003E64A4  40 82 00 20 */	bne .L_803E9584
/* 803E9568 003E64A8  7F A3 EB 78 */	mr r3, r29
/* 803E956C 003E64AC  4B FF C1 29 */	bl beAttacked__Q43ebi5title6Pikmin5TUnitFv
/* 803E9570 003E64B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803E9574 003E64B4  41 82 00 10 */	beq .L_803E9584
/* 803E9578 003E64B8  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 803E957C 003E64BC  38 03 00 01 */	addi r0, r3, 1
/* 803E9580 003E64C0  90 1E 00 64 */	stw r0, 0x64(r30)
.L_803E9584:
/* 803E9584 003E64C4  3B 9C 00 01 */	addi r28, r28, 1
/* 803E9588 003E64C8  2C 1C 01 F4 */	cmpwi r28, 0x1f4
/* 803E958C 003E64CC  41 80 FF A0 */	blt .L_803E952C
.L_803E9590:
/* 803E9590 003E64D0  FC 00 E8 1E */	fctiwz f0, f29
/* 803E9594 003E64D4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803E9598 003E64D8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803E959C 003E64DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 803E95A0 003E64E0  40 82 00 EC */	bne .L_803E968C
/* 803E95A4 003E64E4  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 803E95A8 003E64E8  2C 00 00 00 */	cmpwi r0, 0
/* 803E95AC 003E64EC  40 82 00 E0 */	bne .L_803E968C
/* 803E95B0 003E64F0  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E95B4 003E64F4  2C 00 00 03 */	cmpwi r0, 3
/* 803E95B8 003E64F8  41 82 00 D4 */	beq .L_803E968C
/* 803E95BC 003E64FC  38 00 00 03 */	li r0, 3
/* 803E95C0 003E6500  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 803E95C4 003E6504  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 803E95C8 003E6508  2C 00 00 02 */	cmpwi r0, 2
/* 803E95CC 003E650C  41 82 00 84 */	beq .L_803E9650
/* 803E95D0 003E6510  40 80 00 14 */	bge .L_803E95E4
/* 803E95D4 003E6514  2C 00 00 00 */	cmpwi r0, 0
/* 803E95D8 003E6518  41 82 00 1C */	beq .L_803E95F4
/* 803E95DC 003E651C  40 80 00 3C */	bge .L_803E9618
/* 803E95E0 003E6520  48 00 00 AC */	b .L_803E968C
.L_803E95E4:
/* 803E95E4 003E6524  2C 00 00 04 */	cmpwi r0, 4
/* 803E95E8 003E6528  41 82 00 4C */	beq .L_803E9634
/* 803E95EC 003E652C  40 80 00 A0 */	bge .L_803E968C
/* 803E95F0 003E6530  48 00 00 84 */	b .L_803E9674
.L_803E95F4:
/* 803E95F4 003E6534  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E95F8 003E6538  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E95FC 003E653C  38 80 00 01 */	li r4, 1
/* 803E9600 003E6540  4B FE 08 6D */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9604 003E6544  C0 02 1A 80 */	lfs f0, lbl_8051FDE0@sda21(r2)
/* 803E9608 003E6548  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E960C 003E654C  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 803E9610 003E6550  4B FE 09 01 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9614 003E6554  48 00 00 78 */	b .L_803E968C
.L_803E9618:
/* 803E9618 003E6558  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E961C 003E655C  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9620 003E6560  38 80 00 01 */	li r4, 1
/* 803E9624 003E6564  4B FE 08 49 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9628 003E6568  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E962C 003E656C  4B FE 08 E5 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9630 003E6570  48 00 00 5C */	b .L_803E968C
.L_803E9634:
/* 803E9634 003E6574  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9638 003E6578  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E963C 003E657C  38 80 00 00 */	li r4, 0
/* 803E9640 003E6580  4B FE 08 2D */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9644 003E6584  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9648 003E6588  4B FE 08 C9 */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E964C 003E658C  48 00 00 40 */	b .L_803E968C
.L_803E9650:
/* 803E9650 003E6590  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9654 003E6594  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9658 003E6598  38 80 00 02 */	li r4, 2
/* 803E965C 003E659C  4B FE 08 11 */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9660 003E65A0  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9664 003E65A4  4B FE 08 AD */	bl play__Q23ebi11E3DAnimCtrlFv
/* 803E9668 003E65A8  38 00 00 00 */	li r0, 0
/* 803E966C 003E65AC  90 1E 00 64 */	stw r0, 0x64(r30)
/* 803E9670 003E65B0  48 00 00 1C */	b .L_803E968C
.L_803E9674:
/* 803E9674 003E65B4  C0 22 1A 10 */	lfs f1, lbl_8051FD70@sda21(r2)
/* 803E9678 003E65B8  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E967C 003E65BC  38 80 00 03 */	li r4, 3
/* 803E9680 003E65C0  4B FE 07 ED */	bl init__Q23ebi11E3DAnimCtrlFlf
/* 803E9684 003E65C4  38 7E 00 50 */	addi r3, r30, 0x50
/* 803E9688 003E65C8  4B FE 08 89 */	bl play__Q23ebi11E3DAnimCtrlFv
.L_803E968C:
/* 803E968C 003E65CC  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 803E9690 003E65D0  2C 00 00 05 */	cmpwi r0, 5
/* 803E9694 003E65D4  41 82 00 3C */	beq .L_803E96D0
/* 803E9698 003E65D8  40 80 00 10 */	bge .L_803E96A8
/* 803E969C 003E65DC  2C 00 00 00 */	cmpwi r0, 0
/* 803E96A0 003E65E0  41 82 00 14 */	beq .L_803E96B4
/* 803E96A4 003E65E4  48 00 00 74 */	b .L_803E9718
.L_803E96A8:
/* 803E96A8 003E65E8  2C 00 00 07 */	cmpwi r0, 7
/* 803E96AC 003E65EC  40 80 00 6C */	bge .L_803E9718
/* 803E96B0 003E65F0  48 00 00 44 */	b .L_803E96F4
.L_803E96B4:
/* 803E96B4 003E65F4  80 8D 9A 28 */	lwz r4, titleMgr__Q23ebi5title@sda21(r13)
/* 803E96B8 003E65F8  38 61 00 08 */	addi r3, r1, 8
/* 803E96BC 003E65FC  4B FD 59 BD */	bl getPosOutOfViewField__Q33ebi5title9TTitleMgrFv
/* 803E96C0 003E6600  C0 01 00 08 */	lfs f0, 8(r1)
/* 803E96C4 003E6604  D0 1E 00 04 */	stfs f0, 4(r30)
/* 803E96C8 003E6608  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803E96CC 003E660C  D0 1E 00 08 */	stfs f0, 8(r30)
.L_803E96D0:
/* 803E96D0 003E6610  80 6D 9A 28 */	lwz r3, titleMgr__Q23ebi5title@sda21(r13)
/* 803E96D4 003E6614  7F C4 F3 78 */	mr r4, r30
/* 803E96D8 003E6618  4B FD 58 4D */	bl isInViewField__Q33ebi5title9TTitleMgrFPQ33ebi5title8TObjBase
/* 803E96DC 003E661C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803E96E0 003E6620  41 82 00 44 */	beq .L_803E9724
/* 803E96E4 003E6624  7F C3 F3 78 */	mr r3, r30
/* 803E96E8 003E6628  38 80 00 03 */	li r4, 3
/* 803E96EC 003E662C  4B FF F4 11 */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E96F0 003E6630  48 00 00 34 */	b .L_803E9724
.L_803E96F4:
/* 803E96F4 003E6634  80 6D 9A 28 */	lwz r3, titleMgr__Q23ebi5title@sda21(r13)
/* 803E96F8 003E6638  7F C4 F3 78 */	mr r4, r30
/* 803E96FC 003E663C  4B FD 58 F5 */	bl isOutViewField__Q33ebi5title9TTitleMgrFPQ33ebi5title8TObjBase
/* 803E9700 003E6640  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803E9704 003E6644  41 82 00 20 */	beq .L_803E9724
/* 803E9708 003E6648  7F C3 F3 78 */	mr r3, r30
/* 803E970C 003E664C  38 80 00 00 */	li r4, 0
/* 803E9710 003E6650  4B FF F3 ED */	bl startAIState___Q43ebi5title6Chappy5TUnitFQ53ebi5title6Chappy5TUnit11enumAIState
/* 803E9714 003E6654  48 00 00 10 */	b .L_803E9724
.L_803E9718:
/* 803E9718 003E6658  80 6D 9A 28 */	lwz r3, titleMgr__Q23ebi5title@sda21(r13)
/* 803E971C 003E665C  7F C4 F3 78 */	mr r4, r30
/* 803E9720 003E6660  4B FD 57 85 */	bl inViewField__Q33ebi5title9TTitleMgrFPQ33ebi5title8TObjBase
.L_803E9724:
/* 803E9724 003E6664  7F C3 F3 78 */	mr r3, r30
/* 803E9728 003E6668  4B FD 74 59 */	bl calcModelBaseMtx___Q33ebi5title8TObjBaseFv
/* 803E972C 003E666C  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 803E9730 003E6670  28 03 00 00 */	cmplwi r3, 0
/* 803E9734 003E6674  41 82 00 9C */	beq .L_803E97D0
/* 803E9738 003E6678  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 803E973C 003E667C  2C 00 00 02 */	cmpwi r0, 2
/* 803E9740 003E6680  41 82 00 58 */	beq .L_803E9798
/* 803E9744 003E6684  40 80 00 8C */	bge .L_803E97D0
/* 803E9748 003E6688  2C 00 00 00 */	cmpwi r0, 0
/* 803E974C 003E668C  41 82 00 84 */	beq .L_803E97D0
/* 803E9750 003E6690  40 80 00 0C */	bge .L_803E975C
/* 803E9754 003E6694  48 00 00 7C */	b .L_803E97D0
/* 803E9758 003E6698  48 00 00 78 */	b .L_803E97D0
.L_803E975C:
/* 803E975C 003E669C  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 803E9760 003E66A0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 803E9764 003E66A4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 803E9768 003E66A8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 803E976C 003E66AC  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 803E9770 003E66B0  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 803E9774 003E66B4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 803E9778 003E66B8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 803E977C 003E66BC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803E9780 003E66C0  40 81 00 50 */	ble .L_803E97D0
/* 803E9784 003E66C4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803E9788 003E66C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 803E978C 003E66CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 803E9790 003E66D0  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 803E9794 003E66D4  48 00 00 3C */	b .L_803E97D0
.L_803E9798:
/* 803E9798 003E66D8  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 803E979C 003E66DC  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 803E97A0 003E66E0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 803E97A4 003E66E4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 803E97A8 003E66E8  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 803E97AC 003E66EC  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 803E97B0 003E66F0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 803E97B4 003E66F4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803E97B8 003E66F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803E97BC 003E66FC  4C 41 13 82 */	cror 2, 1, 2
/* 803E97C0 003E6700  40 82 00 10 */	bne .L_803E97D0
/* 803E97C4 003E6704  D0 3E 00 50 */	stfs f1, 0x50(r30)
/* 803E97C8 003E6708  38 00 00 03 */	li r0, 3
/* 803E97CC 003E670C  90 1E 00 58 */	stw r0, 0x58(r30)
.L_803E97D0:
/* 803E97D0 003E6710  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 803E97D4 003E6714  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 803E97D8 003E6718  28 03 00 00 */	cmplwi r3, 0
/* 803E97DC 003E671C  41 82 00 28 */	beq .L_803E9804
/* 803E97E0 003E6720  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 803E97E4 003E6724  80 63 00 00 */	lwz r3, 0(r3)
/* 803E97E8 003E6728  D0 03 00 08 */	stfs f0, 8(r3)
/* 803E97EC 003E672C  80 64 00 04 */	lwz r3, 4(r4)
/* 803E97F0 003E6730  80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 803E97F4 003E6734  80 63 00 28 */	lwz r3, 0x28(r3)
/* 803E97F8 003E6738  80 04 00 04 */	lwz r0, 4(r4)
/* 803E97FC 003E673C  80 63 00 00 */	lwz r3, 0(r3)
/* 803E9800 003E6740  90 03 00 54 */	stw r0, 0x54(r3)
.L_803E9804:
/* 803E9804 003E6744  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 803E9808 003E6748  81 83 00 00 */	lwz r12, 0(r3)
/* 803E980C 003E674C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803E9810 003E6750  7D 89 03 A6 */	mtctr r12
/* 803E9814 003E6754  4E 80 04 21 */	bctrl 
/* 803E9818 003E6758  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 803E981C 003E675C  81 83 00 00 */	lwz r12, 0(r3)
/* 803E9820 003E6760  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803E9824 003E6764  7D 89 03 A6 */	mtctr r12
/* 803E9828 003E6768  4E 80 04 21 */	bctrl 
/* 803E982C 003E676C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 803E9830 003E6770  81 83 00 00 */	lwz r12, 0(r3)
/* 803E9834 003E6774  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 803E9838 003E6778  7D 89 03 A6 */	mtctr r12
/* 803E983C 003E677C  4E 80 04 21 */	bctrl 
.L_803E9840:
/* 803E9840 003E6780  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 803E9844 003E6784  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 803E9848 003E6788  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 803E984C 003E678C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 803E9850 003E6790  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 803E9854 003E6794  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 803E9858 003E6798  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803E985C 003E679C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803E9860 003E67A0  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803E9864 003E67A4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803E9868 003E67A8  83 81 00 40 */	lwz r28, 0x40(r1)
/* 803E986C 003E67AC  7C 08 03 A6 */	mtlr r0
/* 803E9870 003E67B0  38 21 00 80 */	addi r1, r1, 0x80
/* 803E9874 003E67B4  4E 80 00 20 */	blr 
.endfn update__Q43ebi5title6Chappy5TUnitFv

.fn __ct__Q43ebi5title6Chappy6TParamFv, weak
/* 803E9878 003E67B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E987C 003E67BC  7C 08 02 A6 */	mflr r0
/* 803E9880 003E67C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E9884 003E67C4  7C 80 07 35 */	extsh. r0, r4
/* 803E9888 003E67C8  3C 80 80 49 */	lis r4, lbl_80497628@ha
/* 803E988C 003E67CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E9890 003E67D0  3B E4 76 28 */	addi r31, r4, lbl_80497628@l
/* 803E9894 003E67D4  93 C1 00 08 */	stw r30, 8(r1)
/* 803E9898 003E67D8  7C 7E 1B 78 */	mr r30, r3
/* 803E989C 003E67DC  41 82 00 0C */	beq .L_803E98A8
/* 803E98A0 003E67E0  38 1E 02 3C */	addi r0, r30, 0x23c
/* 803E98A4 003E67E4  90 1E 00 00 */	stw r0, 0(r30)
.L_803E98A8:
/* 803E98A8 003E67E8  38 00 00 00 */	li r0, 0
/* 803E98AC 003E67EC  3C A0 62 30 */	lis r5, 0x62303030@ha
/* 803E98B0 003E67F0  90 1E 00 04 */	stw r0, 4(r30)
/* 803E98B4 003E67F4  38 02 1A 14 */	addi r0, r2, lbl_8051FD74@sda21
/* 803E98B8 003E67F8  7F C4 F3 78 */	mr r4, r30
/* 803E98BC 003E67FC  38 7E 00 0C */	addi r3, r30, 0xc
/* 803E98C0 003E6800  90 1E 00 08 */	stw r0, 8(r30)
/* 803E98C4 003E6804  38 A5 30 30 */	addi r5, r5, 0x62303030@l
/* 803E98C8 003E6808  38 DF 00 2C */	addi r6, r31, 0x2c
/* 803E98CC 003E680C  48 02 9D 8D */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E98D0 003E6810  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E98D4 003E6814  3C A0 62 30 */	lis r5, 0x62303031@ha
/* 803E98D8 003E6818  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E98DC 003E681C  C0 02 1A 1C */	lfs f0, lbl_8051FD7C@sda21(r2)
/* 803E98E0 003E6820  90 1E 00 0C */	stw r0, 0xc(r30)
/* 803E98E4 003E6824  7F C4 F3 78 */	mr r4, r30
/* 803E98E8 003E6828  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E98EC 003E682C  38 7E 00 34 */	addi r3, r30, 0x34
/* 803E98F0 003E6830  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 803E98F4 003E6834  38 A5 30 31 */	addi r5, r5, 0x62303031@l
/* 803E98F8 003E6838  C0 02 1A 20 */	lfs f0, lbl_8051FD80@sda21(r2)
/* 803E98FC 003E683C  38 DF 00 38 */	addi r6, r31, 0x38
/* 803E9900 003E6840  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 803E9904 003E6844  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 803E9908 003E6848  48 02 9D 51 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E990C 003E684C  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9910 003E6850  3C A0 62 30 */	lis r5, 0x62303032@ha
/* 803E9914 003E6854  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9918 003E6858  C0 02 1A 24 */	lfs f0, lbl_8051FD84@sda21(r2)
/* 803E991C 003E685C  90 1E 00 34 */	stw r0, 0x34(r30)
/* 803E9920 003E6860  7F C4 F3 78 */	mr r4, r30
/* 803E9924 003E6864  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9928 003E6868  38 7E 00 5C */	addi r3, r30, 0x5c
/* 803E992C 003E686C  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 803E9930 003E6870  38 A5 30 32 */	addi r5, r5, 0x62303032@l
/* 803E9934 003E6874  C0 02 1A 28 */	lfs f0, lbl_8051FD88@sda21(r2)
/* 803E9938 003E6878  38 DF 00 48 */	addi r6, r31, 0x48
/* 803E993C 003E687C  D0 3E 00 54 */	stfs f1, 0x54(r30)
/* 803E9940 003E6880  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 803E9944 003E6884  48 02 9D 15 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9948 003E6888  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E994C 003E688C  3C A0 62 30 */	lis r5, 0x62303033@ha
/* 803E9950 003E6890  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9954 003E6894  C0 02 1A 2C */	lfs f0, lbl_8051FD8C@sda21(r2)
/* 803E9958 003E6898  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 803E995C 003E689C  7F C4 F3 78 */	mr r4, r30
/* 803E9960 003E68A0  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9964 003E68A4  38 7E 00 84 */	addi r3, r30, 0x84
/* 803E9968 003E68A8  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 803E996C 003E68AC  38 A5 30 33 */	addi r5, r5, 0x62303033@l
/* 803E9970 003E68B0  C0 02 1A 28 */	lfs f0, lbl_8051FD88@sda21(r2)
/* 803E9974 003E68B4  38 DF 00 58 */	addi r6, r31, 0x58
/* 803E9978 003E68B8  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 803E997C 003E68BC  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 803E9980 003E68C0  48 02 9C D9 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9984 003E68C4  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9988 003E68C8  3C A0 63 68 */	lis r5, 0x63683230@ha
/* 803E998C 003E68CC  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9990 003E68D0  C0 02 1A 30 */	lfs f0, lbl_8051FD90@sda21(r2)
/* 803E9994 003E68D4  90 1E 00 84 */	stw r0, 0x84(r30)
/* 803E9998 003E68D8  7F C4 F3 78 */	mr r4, r30
/* 803E999C 003E68DC  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E99A0 003E68E0  38 7E 00 AC */	addi r3, r30, 0xac
/* 803E99A4 003E68E4  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 803E99A8 003E68E8  38 A5 32 30 */	addi r5, r5, 0x63683230@l
/* 803E99AC 003E68EC  C0 02 1A 28 */	lfs f0, lbl_8051FD88@sda21(r2)
/* 803E99B0 003E68F0  38 DF 00 6C */	addi r6, r31, 0x6c
/* 803E99B4 003E68F4  D0 3E 00 A4 */	stfs f1, 0xa4(r30)
/* 803E99B8 003E68F8  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 803E99BC 003E68FC  48 02 9C 9D */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E99C0 003E6900  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E99C4 003E6904  3C A0 63 68 */	lis r5, 0x63683231@ha
/* 803E99C8 003E6908  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E99CC 003E690C  C0 02 1A 34 */	lfs f0, lbl_8051FD94@sda21(r2)
/* 803E99D0 003E6910  90 1E 00 AC */	stw r0, 0xac(r30)
/* 803E99D4 003E6914  7F C4 F3 78 */	mr r4, r30
/* 803E99D8 003E6918  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E99DC 003E691C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 803E99E0 003E6920  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 803E99E4 003E6924  38 A5 32 31 */	addi r5, r5, 0x63683231@l
/* 803E99E8 003E6928  C0 02 1A 28 */	lfs f0, lbl_8051FD88@sda21(r2)
/* 803E99EC 003E692C  38 DF 00 7C */	addi r6, r31, 0x7c
/* 803E99F0 003E6930  D0 3E 00 CC */	stfs f1, 0xcc(r30)
/* 803E99F4 003E6934  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 803E99F8 003E6938  48 02 9C 61 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E99FC 003E693C  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9A00 003E6940  3C A0 63 68 */	lis r5, 0x63683030@ha
/* 803E9A04 003E6944  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9A08 003E6948  C0 02 1A 24 */	lfs f0, lbl_8051FD84@sda21(r2)
/* 803E9A0C 003E694C  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 803E9A10 003E6950  7F C4 F3 78 */	mr r4, r30
/* 803E9A14 003E6954  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9A18 003E6958  38 7E 00 FC */	addi r3, r30, 0xfc
/* 803E9A1C 003E695C  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 803E9A20 003E6960  38 A5 30 30 */	addi r5, r5, 0x63683030@l
/* 803E9A24 003E6964  C0 02 1A 28 */	lfs f0, lbl_8051FD88@sda21(r2)
/* 803E9A28 003E6968  38 DF 00 88 */	addi r6, r31, 0x88
/* 803E9A2C 003E696C  D0 3E 00 F4 */	stfs f1, 0xf4(r30)
/* 803E9A30 003E6970  D0 1E 00 F8 */	stfs f0, 0xf8(r30)
/* 803E9A34 003E6974  48 02 9C 25 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9A38 003E6978  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9A3C 003E697C  3C A0 63 68 */	lis r5, 0x63683031@ha
/* 803E9A40 003E6980  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9A44 003E6984  C0 02 1A 38 */	lfs f0, lbl_8051FD98@sda21(r2)
/* 803E9A48 003E6988  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 803E9A4C 003E698C  7F C4 F3 78 */	mr r4, r30
/* 803E9A50 003E6990  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9A54 003E6994  38 7E 01 24 */	addi r3, r30, 0x124
/* 803E9A58 003E6998  D0 1E 01 14 */	stfs f0, 0x114(r30)
/* 803E9A5C 003E699C  38 A5 30 31 */	addi r5, r5, 0x63683031@l
/* 803E9A60 003E69A0  C0 02 1A 3C */	lfs f0, lbl_8051FD9C@sda21(r2)
/* 803E9A64 003E69A4  38 DF 00 9C */	addi r6, r31, 0x9c
/* 803E9A68 003E69A8  D0 3E 01 1C */	stfs f1, 0x11c(r30)
/* 803E9A6C 003E69AC  D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 803E9A70 003E69B0  48 02 9B E9 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9A74 003E69B4  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9A78 003E69B8  3C A0 63 68 */	lis r5, 0x63683233@ha
/* 803E9A7C 003E69BC  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9A80 003E69C0  C0 02 1A 40 */	lfs f0, lbl_8051FDA0@sda21(r2)
/* 803E9A84 003E69C4  90 1E 01 24 */	stw r0, 0x124(r30)
/* 803E9A88 003E69C8  7F C4 F3 78 */	mr r4, r30
/* 803E9A8C 003E69CC  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9A90 003E69D0  38 7E 01 4C */	addi r3, r30, 0x14c
/* 803E9A94 003E69D4  D0 1E 01 3C */	stfs f0, 0x13c(r30)
/* 803E9A98 003E69D8  38 A5 32 33 */	addi r5, r5, 0x63683233@l
/* 803E9A9C 003E69DC  C0 02 1A 24 */	lfs f0, lbl_8051FD84@sda21(r2)
/* 803E9AA0 003E69E0  38 DF 00 A8 */	addi r6, r31, 0xa8
/* 803E9AA4 003E69E4  D0 3E 01 44 */	stfs f1, 0x144(r30)
/* 803E9AA8 003E69E8  D0 1E 01 48 */	stfs f0, 0x148(r30)
/* 803E9AAC 003E69EC  48 02 9B AD */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9AB0 003E69F0  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9AB4 003E69F4  3C A0 63 68 */	lis r5, 0x63683130@ha
/* 803E9AB8 003E69F8  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9ABC 003E69FC  C0 02 1A 44 */	lfs f0, lbl_8051FDA4@sda21(r2)
/* 803E9AC0 003E6A00  90 1E 01 4C */	stw r0, 0x14c(r30)
/* 803E9AC4 003E6A04  7F C4 F3 78 */	mr r4, r30
/* 803E9AC8 003E6A08  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9ACC 003E6A0C  38 7E 01 74 */	addi r3, r30, 0x174
/* 803E9AD0 003E6A10  D0 1E 01 64 */	stfs f0, 0x164(r30)
/* 803E9AD4 003E6A14  38 A5 31 30 */	addi r5, r5, 0x63683130@l
/* 803E9AD8 003E6A18  C0 02 1A 10 */	lfs f0, lbl_8051FD70@sda21(r2)
/* 803E9ADC 003E6A1C  38 DF 00 B4 */	addi r6, r31, 0xb4
/* 803E9AE0 003E6A20  D0 3E 01 6C */	stfs f1, 0x16c(r30)
/* 803E9AE4 003E6A24  D0 1E 01 70 */	stfs f0, 0x170(r30)
/* 803E9AE8 003E6A28  48 02 9B 71 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9AEC 003E6A2C  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9AF0 003E6A30  3C A0 63 68 */	lis r5, 0x63683131@ha
/* 803E9AF4 003E6A34  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9AF8 003E6A38  C0 02 1A 48 */	lfs f0, lbl_8051FDA8@sda21(r2)
/* 803E9AFC 003E6A3C  90 1E 01 74 */	stw r0, 0x174(r30)
/* 803E9B00 003E6A40  7F C4 F3 78 */	mr r4, r30
/* 803E9B04 003E6A44  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9B08 003E6A48  38 7E 01 9C */	addi r3, r30, 0x19c
/* 803E9B0C 003E6A4C  D0 1E 01 8C */	stfs f0, 0x18c(r30)
/* 803E9B10 003E6A50  38 A5 31 31 */	addi r5, r5, 0x63683131@l
/* 803E9B14 003E6A54  C0 02 1A 20 */	lfs f0, lbl_8051FD80@sda21(r2)
/* 803E9B18 003E6A58  38 DF 00 C8 */	addi r6, r31, 0xc8
/* 803E9B1C 003E6A5C  D0 3E 01 94 */	stfs f1, 0x194(r30)
/* 803E9B20 003E6A60  D0 1E 01 98 */	stfs f0, 0x198(r30)
/* 803E9B24 003E6A64  48 02 9B 35 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9B28 003E6A68  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9B2C 003E6A6C  3C A0 63 68 */	lis r5, 0x63683132@ha
/* 803E9B30 003E6A70  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9B34 003E6A74  C0 02 1A 10 */	lfs f0, lbl_8051FD70@sda21(r2)
/* 803E9B38 003E6A78  90 1E 01 9C */	stw r0, 0x19c(r30)
/* 803E9B3C 003E6A7C  7F C4 F3 78 */	mr r4, r30
/* 803E9B40 003E6A80  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9B44 003E6A84  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 803E9B48 003E6A88  D0 1E 01 B4 */	stfs f0, 0x1b4(r30)
/* 803E9B4C 003E6A8C  38 A5 31 32 */	addi r5, r5, 0x63683132@l
/* 803E9B50 003E6A90  C0 02 1A 20 */	lfs f0, lbl_8051FD80@sda21(r2)
/* 803E9B54 003E6A94  38 DF 00 DC */	addi r6, r31, 0xdc
/* 803E9B58 003E6A98  D0 3E 01 BC */	stfs f1, 0x1bc(r30)
/* 803E9B5C 003E6A9C  D0 1E 01 C0 */	stfs f0, 0x1c0(r30)
/* 803E9B60 003E6AA0  48 02 9A F9 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9B64 003E6AA4  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9B68 003E6AA8  3C A0 63 68 */	lis r5, 0x63683133@ha
/* 803E9B6C 003E6AAC  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9B70 003E6AB0  C0 02 1A 4C */	lfs f0, lbl_8051FDAC@sda21(r2)
/* 803E9B74 003E6AB4  90 1E 01 C4 */	stw r0, 0x1c4(r30)
/* 803E9B78 003E6AB8  7F C4 F3 78 */	mr r4, r30
/* 803E9B7C 003E6ABC  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9B80 003E6AC0  38 7E 01 EC */	addi r3, r30, 0x1ec
/* 803E9B84 003E6AC4  D0 1E 01 DC */	stfs f0, 0x1dc(r30)
/* 803E9B88 003E6AC8  38 A5 31 33 */	addi r5, r5, 0x63683133@l
/* 803E9B8C 003E6ACC  C0 02 1A 20 */	lfs f0, lbl_8051FD80@sda21(r2)
/* 803E9B90 003E6AD0  38 DF 00 F0 */	addi r6, r31, 0xf0
/* 803E9B94 003E6AD4  D0 3E 01 E4 */	stfs f1, 0x1e4(r30)
/* 803E9B98 003E6AD8  D0 1E 01 E8 */	stfs f0, 0x1e8(r30)
/* 803E9B9C 003E6ADC  48 02 9A BD */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9BA0 003E6AE0  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9BA4 003E6AE4  3C A0 63 68 */	lis r5, 0x63683232@ha
/* 803E9BA8 003E6AE8  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9BAC 003E6AEC  C0 02 1A 50 */	lfs f0, lbl_8051FDB0@sda21(r2)
/* 803E9BB0 003E6AF0  90 1E 01 EC */	stw r0, 0x1ec(r30)
/* 803E9BB4 003E6AF4  7F C4 F3 78 */	mr r4, r30
/* 803E9BB8 003E6AF8  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9BBC 003E6AFC  38 7E 02 14 */	addi r3, r30, 0x214
/* 803E9BC0 003E6B00  D0 1E 02 04 */	stfs f0, 0x204(r30)
/* 803E9BC4 003E6B04  38 A5 32 32 */	addi r5, r5, 0x63683232@l
/* 803E9BC8 003E6B08  C0 02 1A 20 */	lfs f0, lbl_8051FD80@sda21(r2)
/* 803E9BCC 003E6B0C  38 DF 01 04 */	addi r6, r31, 0x104
/* 803E9BD0 003E6B10  D0 3E 02 0C */	stfs f1, 0x20c(r30)
/* 803E9BD4 003E6B14  D0 1E 02 10 */	stfs f0, 0x210(r30)
/* 803E9BD8 003E6B18  48 02 9A 81 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 803E9BDC 003E6B1C  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 803E9BE0 003E6B20  C0 42 1A 54 */	lfs f2, lbl_8051FDB4@sda21(r2)
/* 803E9BE4 003E6B24  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 803E9BE8 003E6B28  C0 22 1A 08 */	lfs f1, lbl_8051FD68@sda21(r2)
/* 803E9BEC 003E6B2C  90 1E 02 14 */	stw r0, 0x214(r30)
/* 803E9BF0 003E6B30  7F C3 F3 78 */	mr r3, r30
/* 803E9BF4 003E6B34  C0 02 1A 58 */	lfs f0, lbl_8051FDB8@sda21(r2)
/* 803E9BF8 003E6B38  D0 5E 02 2C */	stfs f2, 0x22c(r30)
/* 803E9BFC 003E6B3C  D0 3E 02 34 */	stfs f1, 0x234(r30)
/* 803E9C00 003E6B40  D0 1E 02 38 */	stfs f0, 0x238(r30)
/* 803E9C04 003E6B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E9C08 003E6B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E9C0C 003E6B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E9C10 003E6B50  7C 08 03 A6 */	mtlr r0
/* 803E9C14 003E6B54  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9C18 003E6B58  4E 80 00 20 */	blr 
.endfn __ct__Q43ebi5title6Chappy6TParamFv

.fn getCreatureType__Q43ebi5title6Chappy5TUnitFv, weak
/* 803E9C1C 003E6B5C  38 60 00 06 */	li r3, 6
/* 803E9C20 003E6B60  4E 80 00 20 */	blr 
.endfn getCreatureType__Q43ebi5title6Chappy5TUnitFv

.fn getAnimRes__Q43ebi5title6Chappy11TAnimFolderFl, weak
/* 803E9C24 003E6B64  54 84 28 34 */	slwi r4, r4, 5
/* 803E9C28 003E6B68  7C 60 1B 78 */	mr r0, r3
/* 803E9C2C 003E6B6C  38 64 00 04 */	addi r3, r4, 4
/* 803E9C30 003E6B70  7C 60 1A 14 */	add r3, r0, r3
/* 803E9C34 003E6B74  4E 80 00 20 */	blr 
.endfn getAnimRes__Q43ebi5title6Chappy11TAnimFolderFl

.fn __sinit_ebiP2TitleChappy_cpp, local
/* 803E9C38 003E6B78  3C 80 80 51 */	lis r4, __float_nan@ha
/* 803E9C3C 003E6B7C  38 00 FF FF */	li r0, -1
/* 803E9C40 003E6B80  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 803E9C44 003E6B84  3C 60 80 4F */	lis r3, govNAN___Q24Game5P2JST@ha
/* 803E9C48 003E6B88  90 0D 9A 80 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 803E9C4C 003E6B8C  D4 03 9E 60 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 803E9C50 003E6B90  D0 0D 9A 84 */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 803E9C54 003E6B94  D0 03 00 04 */	stfs f0, 4(r3)
/* 803E9C58 003E6B98  D0 03 00 08 */	stfs f0, 8(r3)
/* 803E9C5C 003E6B9C  4E 80 00 20 */	blr 
.endfn __sinit_ebiP2TitleChappy_cpp
