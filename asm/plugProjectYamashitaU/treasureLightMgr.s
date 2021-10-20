.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_8047C530
lbl_8047C530:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x82A895F3
	.4byte 0x83898343
	.4byte 0x83670000
	.4byte 0x83818343
	.4byte 0x83938389
	.4byte 0x83438367
	.4byte 0x00000000
	.4byte 0x83588379
	.4byte 0x834C8385
	.4byte 0x83892D83
	.4byte 0x89834383
	.4byte 0x67000000
	.4byte 0x00000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global lbl_804AFA80
lbl_804AFA80:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q213TreasureLight3Mgr
__vt__Q213TreasureLight3Mgr:
	.4byte 0
	.4byte 0
	.4byte __dt__Q213TreasureLight3MgrFv
	.4byte getChildCount__5CNodeFv
	.4byte update__Q213TreasureLight3MgrFv
	.4byte set__Q213TreasureLight3MgrFR8Graphics
	.4byte set__Q213TreasureLight3MgrFR7Matrixf
	.4byte drawDebugInfo__Q213TreasureLight3MgrFR8Graphics
	.4byte 0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q213TreasureLight3MgrFv
__ct__Q213TreasureLight3MgrFv:
/* 8013286C 0012F7AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132870 0012F7B0  7C 08 02 A6 */	mflr r0
/* 80132874 0012F7B4  3C 80 80 48 */	lis r4, lbl_8047C530@ha
/* 80132878 0012F7B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013287C 0012F7BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80132880 0012F7C0  7C 7F 1B 78 */	mr r31, r3
/* 80132884 0012F7C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80132888 0012F7C8  3B C4 C5 30 */	addi r30, r4, lbl_8047C530@l
/* 8013288C 0012F7CC  38 9E 00 0C */	addi r4, r30, 0xc
/* 80132890 0012F7D0  48 2F 91 FD */	bl __ct__8LightMgrFPc
/* 80132894 0012F7D4  3C 60 80 4B */	lis r3, __vt__Q213TreasureLight3Mgr@ha
/* 80132898 0012F7D8  C0 22 9E 70 */	lfs f1, lbl_805181D0@sda21(r2)
/* 8013289C 0012F7DC  38 03 FA 8C */	addi r0, r3, __vt__Q213TreasureLight3Mgr@l
/* 801328A0 0012F7E0  C0 02 9E 74 */	lfs f0, lbl_805181D4@sda21(r2)
/* 801328A4 0012F7E4  90 1F 00 00 */	stw r0, 0(r31)
/* 801328A8 0012F7E8  38 60 00 58 */	li r3, 0x58
/* 801328AC 0012F7EC  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 801328B0 0012F7F0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 801328B4 0012F7F4  4B EF 15 F1 */	bl __nw__FUl
/* 801328B8 0012F7F8  7C 60 1B 79 */	or. r0, r3, r3
/* 801328BC 0012F7FC  41 82 00 38 */	beq lbl_801328F4
/* 801328C0 0012F800  38 00 00 FF */	li r0, 0xff
/* 801328C4 0012F804  38 9E 00 18 */	addi r4, r30, 0x18
/* 801328C8 0012F808  98 01 00 10 */	stb r0, 0x10(r1)
/* 801328CC 0012F80C  38 E1 00 14 */	addi r7, r1, 0x14
/* 801328D0 0012F810  38 A0 00 01 */	li r5, 1
/* 801328D4 0012F814  38 C0 00 02 */	li r6, 2
/* 801328D8 0012F818  98 01 00 11 */	stb r0, 0x11(r1)
/* 801328DC 0012F81C  98 01 00 12 */	stb r0, 0x12(r1)
/* 801328E0 0012F820  98 01 00 13 */	stb r0, 0x13(r1)
/* 801328E4 0012F824  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801328E8 0012F828  90 01 00 14 */	stw r0, 0x14(r1)
/* 801328EC 0012F82C  48 2F 8B 81 */	bl __ct__8LightObjFPc10_GXLightID14ELightTypeFlagQ28JUtility6TColor
/* 801328F0 0012F830  7C 60 1B 78 */	mr r0, r3
lbl_801328F4:
/* 801328F4 0012F834  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801328F8 0012F838  38 00 00 03 */	li r0, 3
/* 801328FC 0012F83C  C0 22 9E 78 */	lfs f1, lbl_805181D8@sda21(r2)
/* 80132900 0012F840  7F E3 FB 78 */	mr r3, r31
/* 80132904 0012F844  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80132908 0012F848  C0 02 9E 7C */	lfs f0, lbl_805181DC@sda21(r2)
/* 8013290C 0012F84C  98 04 00 49 */	stb r0, 0x49(r4)
/* 80132910 0012F850  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80132914 0012F854  D0 24 00 28 */	stfs f1, 0x28(r4)
/* 80132918 0012F858  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8013291C 0012F85C  D0 24 00 30 */	stfs f1, 0x30(r4)
/* 80132920 0012F860  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80132924 0012F864  48 2F 92 41 */	bl registLightObj__8LightMgrFP8LightObj
/* 80132928 0012F868  38 60 00 58 */	li r3, 0x58
/* 8013292C 0012F86C  4B EF 15 79 */	bl __nw__FUl
/* 80132930 0012F870  7C 60 1B 79 */	or. r0, r3, r3
/* 80132934 0012F874  41 82 00 38 */	beq lbl_8013296C
/* 80132938 0012F878  38 00 00 FF */	li r0, 0xff
/* 8013293C 0012F87C  38 9E 00 28 */	addi r4, r30, 0x28
/* 80132940 0012F880  98 01 00 08 */	stb r0, 8(r1)
/* 80132944 0012F884  38 E1 00 0C */	addi r7, r1, 0xc
/* 80132948 0012F888  38 A0 00 80 */	li r5, 0x80
/* 8013294C 0012F88C  38 C0 00 04 */	li r6, 4
/* 80132950 0012F890  98 01 00 09 */	stb r0, 9(r1)
/* 80132954 0012F894  98 01 00 0A */	stb r0, 0xa(r1)
/* 80132958 0012F898  98 01 00 0B */	stb r0, 0xb(r1)
/* 8013295C 0012F89C  80 01 00 08 */	lwz r0, 8(r1)
/* 80132960 0012F8A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80132964 0012F8A4  48 2F 8B 09 */	bl __ct__8LightObjFPc10_GXLightID14ELightTypeFlagQ28JUtility6TColor
/* 80132968 0012F8A8  7C 60 1B 78 */	mr r0, r3
lbl_8013296C:
/* 8013296C 0012F8AC  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80132970 0012F8B0  7F E3 FB 78 */	mr r3, r31
/* 80132974 0012F8B4  C0 02 9E 80 */	lfs f0, lbl_805181E0@sda21(r2)
/* 80132978 0012F8B8  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 8013297C 0012F8BC  D0 04 00 4C */	stfs f0, 0x4c(r4)
/* 80132980 0012F8C0  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 80132984 0012F8C4  48 2F 91 E1 */	bl registLightObj__8LightMgrFP8LightObj
/* 80132988 0012F8C8  38 80 00 32 */	li r4, 0x32
/* 8013298C 0012F8CC  38 00 00 FF */	li r0, 0xff
/* 80132990 0012F8D0  98 9F 00 30 */	stb r4, 0x30(r31)
/* 80132994 0012F8D4  7F E3 FB 78 */	mr r3, r31
/* 80132998 0012F8D8  98 9F 00 31 */	stb r4, 0x31(r31)
/* 8013299C 0012F8DC  98 9F 00 32 */	stb r4, 0x32(r31)
/* 801329A0 0012F8E0  98 1F 00 33 */	stb r0, 0x33(r31)
/* 801329A4 0012F8E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801329A8 0012F8E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801329AC 0012F8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801329B0 0012F8F0  7C 08 03 A6 */	mtlr r0
/* 801329B4 0012F8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801329B8 0012F8F8  4E 80 00 20 */	blr 

.global update__Q213TreasureLight3MgrFv
update__Q213TreasureLight3MgrFv:
/* 801329BC 0012F8FC  4E 80 00 20 */	blr 

.global set__Q213TreasureLight3MgrFR8Graphics
set__Q213TreasureLight3MgrFR8Graphics:
/* 801329C0 0012F900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801329C4 0012F904  7C 08 02 A6 */	mflr r0
/* 801329C8 0012F908  90 01 00 14 */	stw r0, 0x14(r1)
/* 801329CC 0012F90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801329D0 0012F910  7C 9F 23 78 */	mr r31, r4
/* 801329D4 0012F914  93 C1 00 08 */	stw r30, 8(r1)
/* 801329D8 0012F918  7C 7E 1B 78 */	mr r30, r3
/* 801329DC 0012F91C  48 00 00 6D */	bl setCommonProc__Q213TreasureLight3MgrFv
/* 801329E0 0012F920  7F C3 F3 78 */	mr r3, r30
/* 801329E4 0012F924  7F E4 FB 78 */	mr r4, r31
/* 801329E8 0012F928  48 2F 91 B9 */	bl set__8LightMgrFR8Graphics
/* 801329EC 0012F92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801329F0 0012F930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801329F4 0012F934  83 C1 00 08 */	lwz r30, 8(r1)
/* 801329F8 0012F938  7C 08 03 A6 */	mtlr r0
/* 801329FC 0012F93C  38 21 00 10 */	addi r1, r1, 0x10
/* 80132A00 0012F940  4E 80 00 20 */	blr 

.global set__Q213TreasureLight3MgrFR7Matrixf
set__Q213TreasureLight3MgrFR7Matrixf:
/* 80132A04 0012F944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132A08 0012F948  7C 08 02 A6 */	mflr r0
/* 80132A0C 0012F94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132A10 0012F950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80132A14 0012F954  7C 9F 23 78 */	mr r31, r4
/* 80132A18 0012F958  93 C1 00 08 */	stw r30, 8(r1)
/* 80132A1C 0012F95C  7C 7E 1B 78 */	mr r30, r3
/* 80132A20 0012F960  48 00 00 29 */	bl setCommonProc__Q213TreasureLight3MgrFv
/* 80132A24 0012F964  7F C3 F3 78 */	mr r3, r30
/* 80132A28 0012F968  7F E4 FB 78 */	mr r4, r31
/* 80132A2C 0012F96C  48 2F 91 C5 */	bl set__8LightMgrFR7Matrixf
/* 80132A30 0012F970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80132A34 0012F974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80132A38 0012F978  83 C1 00 08 */	lwz r30, 8(r1)
/* 80132A3C 0012F97C  7C 08 03 A6 */	mtlr r0
/* 80132A40 0012F980  38 21 00 10 */	addi r1, r1, 0x10
/* 80132A44 0012F984  4E 80 00 20 */	blr 

.global setCommonProc__Q213TreasureLight3MgrFv
setCommonProc__Q213TreasureLight3MgrFv:
/* 80132A48 0012F988  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80132A4C 0012F98C  7C 08 02 A6 */	mflr r0
/* 80132A50 0012F990  90 01 00 74 */	stw r0, 0x74(r1)
/* 80132A54 0012F994  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80132A58 0012F998  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80132A5C 0012F99C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80132A60 0012F9A0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80132A64 0012F9A4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80132A68 0012F9A8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80132A6C 0012F9AC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80132A70 0012F9B0  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 80132A74 0012F9B4  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 80132A78 0012F9B8  F3 61 00 28 */	psq_st f27, 40(r1), 0, qr0
/* 80132A7C 0012F9BC  DB 41 00 10 */	stfd f26, 0x10(r1)
/* 80132A80 0012F9C0  F3 41 00 18 */	psq_st f26, 24(r1), 0, qr0
/* 80132A84 0012F9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80132A88 0012F9C8  7C 7F 1B 78 */	mr r31, r3
/* 80132A8C 0012F9CC  C0 42 9E 88 */	lfs f2, lbl_805181E8@sda21(r2)
/* 80132A90 0012F9D0  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80132A94 0012F9D4  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80132A98 0012F9D8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80132A9C 0012F9DC  C0 62 9E 84 */	lfs f3, lbl_805181E4@sda21(r2)
/* 80132AA0 0012F9E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80132AA4 0012F9E4  EF 43 00 72 */	fmuls f26, f3, f1
/* 80132AA8 0012F9E8  EF 63 00 32 */	fmuls f27, f3, f0
/* 80132AAC 0012F9EC  FC 20 D0 90 */	fmr f1, f26
/* 80132AB0 0012F9F0  48 2D EC 81 */	bl pikmin2_sinf__Ff
/* 80132AB4 0012F9F4  FF E0 08 90 */	fmr f31, f1
/* 80132AB8 0012F9F8  FC 20 D8 90 */	fmr f1, f27
/* 80132ABC 0012F9FC  48 2D EC DD */	bl pikmin2_cosf__Ff
/* 80132AC0 0012FA00  C0 02 9E 8C */	lfs f0, lbl_805181EC@sda21(r2)
/* 80132AC4 0012FA04  EC 00 00 72 */	fmuls f0, f0, f1
/* 80132AC8 0012FA08  FC 20 D8 90 */	fmr f1, f27
/* 80132ACC 0012FA0C  EF C0 07 F2 */	fmuls f30, f0, f31
/* 80132AD0 0012FA10  48 2D EC 61 */	bl pikmin2_sinf__Ff
/* 80132AD4 0012FA14  C0 02 9E 8C */	lfs f0, lbl_805181EC@sda21(r2)
/* 80132AD8 0012FA18  FC 00 00 50 */	fneg f0, f0
/* 80132ADC 0012FA1C  EF A0 00 72 */	fmuls f29, f0, f1
/* 80132AE0 0012FA20  FC 20 D0 90 */	fmr f1, f26
/* 80132AE4 0012FA24  48 2D EC B5 */	bl pikmin2_cosf__Ff
/* 80132AE8 0012FA28  FF E0 08 90 */	fmr f31, f1
/* 80132AEC 0012FA2C  FC 20 D8 90 */	fmr f1, f27
/* 80132AF0 0012FA30  48 2D EC A9 */	bl pikmin2_cosf__Ff
/* 80132AF4 0012FA34  C0 02 9E 8C */	lfs f0, lbl_805181EC@sda21(r2)
/* 80132AF8 0012FA38  FF 60 E8 50 */	fneg f27, f29
/* 80132AFC 0012FA3C  FF 80 F0 50 */	fneg f28, f30
/* 80132B00 0012FA40  EC 20 00 72 */	fmuls f1, f0, f1
/* 80132B04 0012FA44  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80132B08 0012FA48  EF E1 07 F2 */	fmuls f31, f1, f31
/* 80132B0C 0012FA4C  EC 1C 07 3A */	fmadds f0, f28, f28, f0
/* 80132B10 0012FA50  FF 40 F8 50 */	fneg f26, f31
/* 80132B14 0012FA54  EC 3A 06 BA */	fmadds f1, f26, f26, f0
/* 80132B18 0012FA58  48 2D EC ED */	bl pikmin2_sqrtf__Ff
/* 80132B1C 0012FA5C  C0 02 9E 78 */	lfs f0, lbl_805181D8@sda21(r2)
/* 80132B20 0012FA60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80132B24 0012FA64  40 81 00 18 */	ble lbl_80132B3C
/* 80132B28 0012FA68  C0 02 9E 90 */	lfs f0, lbl_805181F0@sda21(r2)
/* 80132B2C 0012FA6C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80132B30 0012FA70  EF 9C 00 32 */	fmuls f28, f28, f0
/* 80132B34 0012FA74  EF 7B 00 32 */	fmuls f27, f27, f0
/* 80132B38 0012FA78  EF 5A 00 32 */	fmuls f26, f26, f0
lbl_80132B3C:
/* 80132B3C 0012FA7C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80132B40 0012FA80  C0 02 9E 94 */	lfs f0, lbl_805181F4@sda21(r2)
/* 80132B44 0012FA84  D3 C3 00 1C */	stfs f30, 0x1c(r3)
/* 80132B48 0012FA88  D3 A3 00 20 */	stfs f29, 0x20(r3)
/* 80132B4C 0012FA8C  D3 E3 00 24 */	stfs f31, 0x24(r3)
/* 80132B50 0012FA90  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80132B54 0012FA94  D3 83 00 28 */	stfs f28, 0x28(r3)
/* 80132B58 0012FA98  D3 63 00 2C */	stfs f27, 0x2c(r3)
/* 80132B5C 0012FA9C  D3 43 00 30 */	stfs f26, 0x30(r3)
/* 80132B60 0012FAA0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80132B64 0012FAA4  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80132B68 0012FAA8  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 80132B6C 0012FAAC  D3 C3 00 1C */	stfs f30, 0x1c(r3)
/* 80132B70 0012FAB0  D3 A3 00 20 */	stfs f29, 0x20(r3)
/* 80132B74 0012FAB4  D3 E3 00 24 */	stfs f31, 0x24(r3)
/* 80132B78 0012FAB8  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 80132B7C 0012FABC  D3 83 00 28 */	stfs f28, 0x28(r3)
/* 80132B80 0012FAC0  D3 63 00 2C */	stfs f27, 0x2c(r3)
/* 80132B84 0012FAC4  D3 43 00 30 */	stfs f26, 0x30(r3)
/* 80132B88 0012FAC8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80132B8C 0012FACC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80132B90 0012FAD0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80132B94 0012FAD4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80132B98 0012FAD8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80132B9C 0012FADC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80132BA0 0012FAE0  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 80132BA4 0012FAE4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80132BA8 0012FAE8  E3 61 00 28 */	psq_l f27, 40(r1), 0, qr0
/* 80132BAC 0012FAEC  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 80132BB0 0012FAF0  E3 41 00 18 */	psq_l f26, 24(r1), 0, qr0
/* 80132BB4 0012FAF4  CB 41 00 10 */	lfd f26, 0x10(r1)
/* 80132BB8 0012FAF8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80132BBC 0012FAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80132BC0 0012FB00  7C 08 03 A6 */	mtlr r0
/* 80132BC4 0012FB04  38 21 00 70 */	addi r1, r1, 0x70
/* 80132BC8 0012FB08  4E 80 00 20 */	blr 

.global drawDebugInfo__Q213TreasureLight3MgrFR8Graphics
drawDebugInfo__Q213TreasureLight3MgrFR8Graphics:
/* 80132BCC 0012FB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132BD0 0012FB10  7C 08 02 A6 */	mflr r0
/* 80132BD4 0012FB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132BD8 0012FB18  48 2F 90 AD */	bl drawDebugInfo__8LightMgrFR8Graphics
/* 80132BDC 0012FB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80132BE0 0012FB20  7C 08 03 A6 */	mtlr r0
/* 80132BE4 0012FB24  38 21 00 10 */	addi r1, r1, 0x10
/* 80132BE8 0012FB28  4E 80 00 20 */	blr 

.global __dt__Q213TreasureLight3MgrFv
__dt__Q213TreasureLight3MgrFv:
/* 80132BEC 0012FB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132BF0 0012FB30  7C 08 02 A6 */	mflr r0
/* 80132BF4 0012FB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132BF8 0012FB38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80132BFC 0012FB3C  7C 9F 23 78 */	mr r31, r4
/* 80132C00 0012FB40  93 C1 00 08 */	stw r30, 8(r1)
/* 80132C04 0012FB44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80132C08 0012FB48  41 82 00 68 */	beq lbl_80132C70
/* 80132C0C 0012FB4C  3C 60 80 4B */	lis r3, __vt__Q213TreasureLight3Mgr@ha
/* 80132C10 0012FB50  38 03 FA 8C */	addi r0, r3, __vt__Q213TreasureLight3Mgr@l
/* 80132C14 0012FB54  90 1E 00 00 */	stw r0, 0(r30)
/* 80132C18 0012FB58  41 82 00 48 */	beq lbl_80132C60
/* 80132C1C 0012FB5C  3C 80 80 4F */	lis r4, __vt__8LightMgr@ha
/* 80132C20 0012FB60  38 7E 00 34 */	addi r3, r30, 0x34
/* 80132C24 0012FB64  38 04 BE 94 */	addi r0, r4, __vt__8LightMgr@l
/* 80132C28 0012FB68  38 80 FF FF */	li r4, -1
/* 80132C2C 0012FB6C  90 1E 00 00 */	stw r0, 0(r30)
/* 80132C30 0012FB70  48 2D E9 59 */	bl __dt__5CNodeFv
/* 80132C34 0012FB74  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80132C38 0012FB78  41 82 00 1C */	beq lbl_80132C54
/* 80132C3C 0012FB7C  3C 80 80 4B */	lis r4, __vt__15AmbientLightObj@ha
/* 80132C40 0012FB80  38 7E 00 18 */	addi r3, r30, 0x18
/* 80132C44 0012FB84  38 04 C4 60 */	addi r0, r4, __vt__15AmbientLightObj@l
/* 80132C48 0012FB88  38 80 00 00 */	li r4, 0
/* 80132C4C 0012FB8C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80132C50 0012FB90  48 2D E9 39 */	bl __dt__5CNodeFv
lbl_80132C54:
/* 80132C54 0012FB94  7F C3 F3 78 */	mr r3, r30
/* 80132C58 0012FB98  38 80 00 00 */	li r4, 0
/* 80132C5C 0012FB9C  48 2D E9 2D */	bl __dt__5CNodeFv
lbl_80132C60:
/* 80132C60 0012FBA0  7F E0 07 35 */	extsh. r0, r31
/* 80132C64 0012FBA4  40 81 00 0C */	ble lbl_80132C70
/* 80132C68 0012FBA8  7F C3 F3 78 */	mr r3, r30
/* 80132C6C 0012FBAC  4B EF 14 49 */	bl __dl__FPv
lbl_80132C70:
/* 80132C70 0012FBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80132C74 0012FBB4  7F C3 F3 78 */	mr r3, r30
/* 80132C78 0012FBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80132C7C 0012FBBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80132C80 0012FBC0  7C 08 03 A6 */	mtlr r0
/* 80132C84 0012FBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80132C88 0012FBC8  4E 80 00 20 */	blr 

.global __sinit_treasureLightMgr_cpp
__sinit_treasureLightMgr_cpp:
/* 80132C8C 0012FBCC  3C 80 80 51 */	lis r4, __float_nan@ha
/* 80132C90 0012FBD0  38 00 FF FF */	li r0, -1
/* 80132C94 0012FBD4  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 80132C98 0012FBD8  3C 60 80 4B */	lis r3, lbl_804AFA80@ha
/* 80132C9C 0012FBDC  90 0D 92 58 */	stw r0, lbl_805158D8@sda21(r13)
/* 80132CA0 0012FBE0  D4 03 FA 80 */	stfsu f0, lbl_804AFA80@l(r3)
/* 80132CA4 0012FBE4  D0 0D 92 5C */	stfs f0, lbl_805158DC@sda21(r13)
/* 80132CA8 0012FBE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80132CAC 0012FBEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80132CB0 0012FBF0  4E 80 00 20 */	blr 
