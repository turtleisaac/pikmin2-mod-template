.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_8047B718
lbl_8047B718:
	.4byte 0x945F8D6B
	.4byte 0x837D836C
	.4byte 0x815B8357
	.4byte 0x83830000
.global lbl_8047B728
lbl_8047B728:
	.4byte 0x945F8D6B
	.4byte 0x837C8343
	.4byte 0x83938367
	.4byte 0x00000000
.global lbl_8047B738
lbl_8047B738:
	.4byte 0x4661726D
	.4byte 0x4D677220
	.4byte 0x5265736F
	.4byte 0x75726365
	.4byte 0x00000000
	.4byte 0x00000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global lbl_804AD9B8
lbl_804AD9B8:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q34Game4Farm7FarmMgr
__vt__Q34Game4Farm7FarmMgr:
	.4byte 0
	.4byte 0
	.4byte doAnimation__Q34Game4Farm7FarmMgrFv
	.4byte doEntry__Q34Game4Farm7FarmMgrFv
	.4byte doSetView__Q34Game4Farm7FarmMgrFi
	.4byte doViewCalc__Q34Game4Farm7FarmMgrFv
	.4byte doSimulation__Q34Game4Farm7FarmMgrFf
	.4byte doDirectDraw__Q34Game4Farm7FarmMgrFR8Graphics
	.4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
	.4byte loadResources__16GenericObjectMgrFv
	.4byte resetMgr__16GenericObjectMgrFv
	.4byte pausable__16GenericObjectMgrFv
	.4byte frozenable__16GenericObjectMgrFv
	.4byte getMatrixLoadType__16GenericObjectMgrFv
	.4byte 0
	.4byte 0
	.4byte "@4@__dt__Q34Game4Farm7FarmMgrFv"
	.4byte getChildCount__5CNodeFv
	.4byte doDebugDraw__Q34Game4Farm7FarmMgrFR8Graphics
	.4byte __dt__Q34Game4Farm7FarmMgrFv
	.4byte 0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game4Farm7FarmMgrFUl
__ct__Q34Game4Farm7FarmMgrFUl:
/* 80124018 00120F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012401C 00120F5C  7C 08 02 A6 */	mflr r0
/* 80124020 00120F60  3C A0 80 4B */	lis r5, __vt__16GenericObjectMgr@ha
/* 80124024 00120F64  39 00 00 00 */	li r8, 0
/* 80124028 00120F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012402C 00120F6C  38 05 B5 F0 */	addi r0, r5, __vt__16GenericObjectMgr@l
/* 80124030 00120F70  3C A0 80 48 */	lis r5, lbl_8047B718@ha
/* 80124034 00120F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124038 00120F78  7C 7F 1B 78 */	mr r31, r3
/* 8012403C 00120F7C  3C 60 80 4F */	lis r3, __vt__5CNode@ha
/* 80124040 00120F80  38 E5 B7 18 */	addi r7, r5, lbl_8047B718@l
/* 80124044 00120F84  90 1F 00 00 */	stw r0, 0(r31)
/* 80124048 00120F88  39 23 B5 28 */	addi r9, r3, __vt__5CNode@l
/* 8012404C 00120F8C  3C 60 80 4B */	lis r3, __vt__Q34Game4Farm7FarmMgr@ha
/* 80124050 00120F90  91 3F 00 04 */	stw r9, 4(r31)
/* 80124054 00120F94  38 C3 D9 C4 */	addi r6, r3, __vt__Q34Game4Farm7FarmMgr@l
/* 80124058 00120F98  3C 60 80 48 */	lis r3, lbl_8047B728@ha
/* 8012405C 00120F9C  91 1F 00 14 */	stw r8, 0x14(r31)
/* 80124060 00120FA0  38 03 B7 28 */	addi r0, r3, lbl_8047B728@l
/* 80124064 00120FA4  38 A6 00 38 */	addi r5, r6, 0x38
/* 80124068 00120FA8  38 7F 00 04 */	addi r3, r31, 4
/* 8012406C 00120FAC  91 1F 00 10 */	stw r8, 0x10(r31)
/* 80124070 00120FB0  91 1F 00 0C */	stw r8, 0xc(r31)
/* 80124074 00120FB4  91 1F 00 08 */	stw r8, 8(r31)
/* 80124078 00120FB8  90 FF 00 18 */	stw r7, 0x18(r31)
/* 8012407C 00120FBC  90 DF 00 00 */	stw r6, 0(r31)
/* 80124080 00120FC0  90 BF 00 04 */	stw r5, 4(r31)
/* 80124084 00120FC4  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80124088 00120FC8  38 9F 00 20 */	addi r4, r31, 0x20
/* 8012408C 00120FCC  91 3F 00 20 */	stw r9, 0x20(r31)
/* 80124090 00120FD0  91 1F 00 30 */	stw r8, 0x30(r31)
/* 80124094 00120FD4  91 1F 00 2C */	stw r8, 0x2c(r31)
/* 80124098 00120FD8  91 1F 00 28 */	stw r8, 0x28(r31)
/* 8012409C 00120FDC  91 1F 00 24 */	stw r8, 0x24(r31)
/* 801240A0 00120FE0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801240A4 00120FE4  91 1F 00 38 */	stw r8, 0x38(r31)
/* 801240A8 00120FE8  99 1F 00 3C */	stb r8, 0x3c(r31)
/* 801240AC 00120FEC  99 1F 00 3D */	stb r8, 0x3d(r31)
/* 801240B0 00120FF0  48 2E D3 59 */	bl add__5CNodeFP5CNode
/* 801240B4 00120FF4  38 00 00 00 */	li r0, 0
/* 801240B8 00120FF8  7F E3 FB 78 */	mr r3, r31
/* 801240BC 00120FFC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 801240C0 00121000  98 1F 00 3D */	stb r0, 0x3d(r31)
/* 801240C4 00121004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801240C8 00121008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801240CC 0012100C  7C 08 03 A6 */	mtlr r0
/* 801240D0 00121010  38 21 00 10 */	addi r1, r1, 0x10
/* 801240D4 00121014  4E 80 00 20 */	blr 

.global setupSound__Q34Game4Farm7FarmMgrFv
setupSound__Q34Game4Farm7FarmMgrFv:
/* 801240D8 00121018  80 63 00 30 */	lwz r3, 0x30(r3)
/* 801240DC 0012101C  48 00 00 1C */	b lbl_801240F8
lbl_801240E0:
/* 801240E0 00121020  80 83 00 40 */	lwz r4, 0x40(r3)
/* 801240E4 00121024  48 00 00 08 */	b lbl_801240EC
lbl_801240E8:
/* 801240E8 00121028  80 84 00 04 */	lwz r4, 4(r4)
lbl_801240EC:
/* 801240EC 0012102C  28 04 00 00 */	cmplwi r4, 0
/* 801240F0 00121030  40 82 FF F8 */	bne lbl_801240E8
/* 801240F4 00121034  80 63 00 04 */	lwz r3, 4(r3)
lbl_801240F8:
/* 801240F8 00121038  28 03 00 00 */	cmplwi r3, 0
/* 801240FC 0012103C  40 82 FF E4 */	bne lbl_801240E0
/* 80124100 00121040  4E 80 00 20 */	blr 

.global doAnimation__Q34Game4Farm7FarmMgrFv
doAnimation__Q34Game4Farm7FarmMgrFv:
/* 80124104 00121044  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80124108 00121048  7C 08 02 A6 */	mflr r0
/* 8012410C 0012104C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80124110 00121050  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80124114 00121054  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80124118 00121058  BF 41 00 08 */	stmw r26, 8(r1)
/* 8012411C 0012105C  7C 7A 1B 78 */	mr r26, r3
/* 80124120 00121060  3B C0 00 00 */	li r30, 0
/* 80124124 00121064  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80124128 00121068  28 00 00 00 */	cmplwi r0, 0
/* 8012412C 0012106C  41 82 00 D0 */	beq lbl_801241FC
/* 80124130 00121070  C3 E2 9B 40 */	lfs f31, lbl_80517EA0@sda21(r2)
/* 80124134 00121074  7C 1D 03 78 */	mr r29, r0
/* 80124138 00121078  48 00 00 BC */	b lbl_801241F4
lbl_8012413C:
/* 8012413C 0012107C  83 9D 00 40 */	lwz r28, 0x40(r29)
/* 80124140 00121080  48 00 00 98 */	b lbl_801241D8
lbl_80124144:
/* 80124144 00121084  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80124148 00121088  81 83 00 00 */	lwz r12, 0(r3)
/* 8012414C 0012108C  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 80124150 00121090  7D 89 03 A6 */	mtctr r12
/* 80124154 00121094  4E 80 04 21 */	bctrl 
/* 80124158 00121098  7C 7F 1B 79 */	or. r31, r3, r3
/* 8012415C 0012109C  41 82 00 08 */	beq lbl_80124164
/* 80124160 001210A0  3B FF FF D0 */	addi r31, r31, -48
lbl_80124164:
/* 80124164 001210A4  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 80124168 001210A8  48 03 6A B9 */	bl getActiveNavi__Q24Game7NaviMgrFv
/* 8012416C 001210AC  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 80124170 001210B0  7C 7B 1B 78 */	mr r27, r3
/* 80124174 001210B4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80124178 001210B8  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8012417C 001210BC  4C 40 13 82 */	cror 2, 0, 2
/* 80124180 001210C0  40 82 00 3C */	bne lbl_801241BC
/* 80124184 001210C4  28 1B 00 00 */	cmplwi r27, 0
/* 80124188 001210C8  41 82 00 34 */	beq lbl_801241BC
/* 8012418C 001210CC  48 33 F0 B9 */	bl PSMGetNoukouDist__Fv
/* 80124190 001210D0  7F E3 FB 78 */	mr r3, r31
/* 80124194 001210D4  7F 64 DB 78 */	mr r4, r27
/* 80124198 001210D8  48 33 90 1D */	bl isNear__Q23PSM8CreatureFPQ24Game8Creaturef
/* 8012419C 001210DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801241A0 001210E0  41 82 00 1C */	beq lbl_801241BC
/* 801241A4 001210E4  80 7A 00 38 */	lwz r3, 0x38(r26)
/* 801241A8 001210E8  28 03 00 00 */	cmplwi r3, 0
/* 801241AC 001210EC  41 82 00 24 */	beq lbl_801241D0
/* 801241B0 001210F0  7F C4 F3 78 */	mr r4, r30
/* 801241B4 001210F4  48 33 43 65 */	bl directOn__Q23PSM15DirectorUpdatorFUc
/* 801241B8 001210F8  48 00 00 18 */	b lbl_801241D0
lbl_801241BC:
/* 801241BC 001210FC  80 7A 00 38 */	lwz r3, 0x38(r26)
/* 801241C0 00121100  28 03 00 00 */	cmplwi r3, 0
/* 801241C4 00121104  41 82 00 0C */	beq lbl_801241D0
/* 801241C8 00121108  7F C4 F3 78 */	mr r4, r30
/* 801241CC 0012110C  48 33 43 81 */	bl directOff__Q23PSM15DirectorUpdatorFUc
lbl_801241D0:
/* 801241D0 00121110  83 9C 00 04 */	lwz r28, 4(r28)
/* 801241D4 00121114  3B DE 00 01 */	addi r30, r30, 1
lbl_801241D8:
/* 801241D8 00121118  28 1C 00 00 */	cmplwi r28, 0
/* 801241DC 0012111C  40 82 FF 68 */	bne lbl_80124144
/* 801241E0 00121120  7F A3 EB 78 */	mr r3, r29
/* 801241E4 00121124  4B FF F6 01 */	bl update__Q34Game4Farm4FarmFv
/* 801241E8 00121128  7F A3 EB 78 */	mr r3, r29
/* 801241EC 0012112C  4B FF F5 FD */	bl doAnimation__Q34Game4Farm4FarmFv
/* 801241F0 00121130  83 BD 00 04 */	lwz r29, 4(r29)
lbl_801241F4:
/* 801241F4 00121134  28 1D 00 00 */	cmplwi r29, 0
/* 801241F8 00121138  40 82 FF 44 */	bne lbl_8012413C
lbl_801241FC:
/* 801241FC 0012113C  80 7A 00 38 */	lwz r3, 0x38(r26)
/* 80124200 00121140  28 03 00 00 */	cmplwi r3, 0
/* 80124204 00121144  41 82 00 08 */	beq lbl_8012420C
/* 80124208 00121148  48 33 43 79 */	bl frameEndWork__Q23PSM15DirectorUpdatorFv
lbl_8012420C:
/* 8012420C 0012114C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80124210 00121150  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80124214 00121154  BB 41 00 08 */	lmw r26, 8(r1)
/* 80124218 00121158  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012421C 0012115C  7C 08 03 A6 */	mtlr r0
/* 80124220 00121160  38 21 00 30 */	addi r1, r1, 0x30
/* 80124224 00121164  4E 80 00 20 */	blr 

.global getJAIObject__Q24Game8CreatureFv
getJAIObject__Q24Game8CreatureFv:
/* 80124228 00121168  38 60 00 00 */	li r3, 0
/* 8012422C 0012116C  4E 80 00 20 */	blr 

.global doEntry__Q34Game4Farm7FarmMgrFv
doEntry__Q34Game4Farm7FarmMgrFv:
/* 80124230 00121170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124234 00121174  7C 08 02 A6 */	mflr r0
/* 80124238 00121178  38 80 00 09 */	li r4, 9
/* 8012423C 0012117C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124240 00121180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124244 00121184  7C 7F 1B 78 */	mr r31, r3
/* 80124248 00121188  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8012424C 0012118C  48 09 0D F5 */	bl setDrawBuffer__Q24Game10GameSystemFi
/* 80124250 00121190  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80124254 00121194  28 00 00 00 */	cmplwi r0, 0
/* 80124258 00121198  41 82 00 20 */	beq lbl_80124278
/* 8012425C 0012119C  7C 1F 03 78 */	mr r31, r0
/* 80124260 001211A0  48 00 00 10 */	b lbl_80124270
lbl_80124264:
/* 80124264 001211A4  7F E3 FB 78 */	mr r3, r31
/* 80124268 001211A8  4B FF F5 B5 */	bl doEntry__Q34Game4Farm4FarmFv
/* 8012426C 001211AC  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80124270:
/* 80124270 001211B0  28 1F 00 00 */	cmplwi r31, 0
/* 80124274 001211B4  40 82 FF F0 */	bne lbl_80124264
lbl_80124278:
/* 80124278 001211B8  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8012427C 001211BC  38 80 00 00 */	li r4, 0
/* 80124280 001211C0  48 09 0D C1 */	bl setDrawBuffer__Q24Game10GameSystemFi
/* 80124284 001211C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124288 001211C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012428C 001211CC  7C 08 03 A6 */	mtlr r0
/* 80124290 001211D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80124294 001211D4  4E 80 00 20 */	blr 

.global doSetView__Q34Game4Farm7FarmMgrFi
doSetView__Q34Game4Farm7FarmMgrFi:
/* 80124298 001211D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012429C 001211DC  7C 08 02 A6 */	mflr r0
/* 801242A0 001211E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801242A4 001211E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801242A8 001211E8  93 C1 00 08 */	stw r30, 8(r1)
/* 801242AC 001211EC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 801242B0 001211F0  28 00 00 00 */	cmplwi r0, 0
/* 801242B4 001211F4  41 82 00 28 */	beq lbl_801242DC
/* 801242B8 001211F8  7C 1E 03 78 */	mr r30, r0
/* 801242BC 001211FC  7C 9F 23 78 */	mr r31, r4
/* 801242C0 00121200  48 00 00 14 */	b lbl_801242D4
lbl_801242C4:
/* 801242C4 00121204  7F C3 F3 78 */	mr r3, r30
/* 801242C8 00121208  7F E4 FB 78 */	mr r4, r31
/* 801242CC 0012120C  4B FF F5 85 */	bl doSetView__Q34Game4Farm4FarmFUl
/* 801242D0 00121210  83 DE 00 04 */	lwz r30, 4(r30)
lbl_801242D4:
/* 801242D4 00121214  28 1E 00 00 */	cmplwi r30, 0
/* 801242D8 00121218  40 82 FF EC */	bne lbl_801242C4
lbl_801242DC:
/* 801242DC 0012121C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801242E0 00121220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801242E4 00121224  83 C1 00 08 */	lwz r30, 8(r1)
/* 801242E8 00121228  7C 08 03 A6 */	mtlr r0
/* 801242EC 0012122C  38 21 00 10 */	addi r1, r1, 0x10
/* 801242F0 00121230  4E 80 00 20 */	blr 

.global doViewCalc__Q34Game4Farm7FarmMgrFv
doViewCalc__Q34Game4Farm7FarmMgrFv:
/* 801242F4 00121234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801242F8 00121238  7C 08 02 A6 */	mflr r0
/* 801242FC 0012123C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124300 00121240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124304 00121244  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80124308 00121248  28 00 00 00 */	cmplwi r0, 0
/* 8012430C 0012124C  41 82 00 20 */	beq lbl_8012432C
/* 80124310 00121250  7C 1F 03 78 */	mr r31, r0
/* 80124314 00121254  48 00 00 10 */	b lbl_80124324
lbl_80124318:
/* 80124318 00121258  7F E3 FB 78 */	mr r3, r31
/* 8012431C 0012125C  4B FF F5 59 */	bl doViewCalc__Q34Game4Farm4FarmFv
/* 80124320 00121260  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80124324:
/* 80124324 00121264  28 1F 00 00 */	cmplwi r31, 0
/* 80124328 00121268  40 82 FF F0 */	bne lbl_80124318
lbl_8012432C:
/* 8012432C 0012126C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124330 00121270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124334 00121274  7C 08 03 A6 */	mtlr r0
/* 80124338 00121278  38 21 00 10 */	addi r1, r1, 0x10
/* 8012433C 0012127C  4E 80 00 20 */	blr 

.global doSimulation__Q34Game4Farm7FarmMgrFf
doSimulation__Q34Game4Farm7FarmMgrFf:
/* 80124340 00121280  4E 80 00 20 */	blr 

.global doDirectDraw__Q34Game4Farm7FarmMgrFR8Graphics
doDirectDraw__Q34Game4Farm7FarmMgrFR8Graphics:
/* 80124344 00121284  4E 80 00 20 */	blr 

.global doDebugDraw__Q34Game4Farm7FarmMgrFR8Graphics
doDebugDraw__Q34Game4Farm7FarmMgrFR8Graphics:
/* 80124348 00121288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012434C 0012128C  7C 08 02 A6 */	mflr r0
/* 80124350 00121290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124354 00121294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124358 00121298  93 C1 00 08 */	stw r30, 8(r1)
/* 8012435C 0012129C  7C 9E 23 78 */	mr r30, r4
/* 80124360 001212A0  83 E3 00 30 */	lwz r31, 0x30(r3)
/* 80124364 001212A4  48 00 00 14 */	b lbl_80124378
lbl_80124368:
/* 80124368 001212A8  7F E3 FB 78 */	mr r3, r31
/* 8012436C 001212AC  7F C4 F3 78 */	mr r4, r30
/* 80124370 001212B0  4B FF F9 89 */	bl doDebugDraw__Q34Game4Farm4FarmFR8Graphics
/* 80124374 001212B4  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80124378:
/* 80124378 001212B8  28 1F 00 00 */	cmplwi r31, 0
/* 8012437C 001212BC  40 82 FF EC */	bne lbl_80124368
/* 80124380 001212C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124384 001212C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124388 001212C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012438C 001212CC  7C 08 03 A6 */	mtlr r0
/* 80124390 001212D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80124394 001212D4  4E 80 00 20 */	blr 

.global addFarmBmd__Q34Game4Farm7FarmMgrFPv
addFarmBmd__Q34Game4Farm7FarmMgrFPv:
/* 80124398 001212D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012439C 001212DC  7C 08 02 A6 */	mflr r0
/* 801243A0 001212E0  3C A0 80 48 */	lis r5, lbl_8047B738@ha
/* 801243A4 001212E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801243A8 001212E8  38 05 B7 38 */	addi r0, r5, lbl_8047B738@l
/* 801243AC 001212EC  38 A0 00 00 */	li r5, 0
/* 801243B0 001212F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801243B4 001212F4  7C 9F 23 78 */	mr r31, r4
/* 801243B8 001212F8  7C 04 03 78 */	mr r4, r0
/* 801243BC 001212FC  93 C1 00 08 */	stw r30, 8(r1)
/* 801243C0 00121300  7C 7E 1B 78 */	mr r30, r3
/* 801243C4 00121304  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801243C8 00121308  48 2F EF 95 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801243CC 0012130C  7F C3 F3 78 */	mr r3, r30
/* 801243D0 00121310  7F E4 FB 78 */	mr r4, r31
/* 801243D4 00121314  48 00 00 2D */	bl createNewFarm__Q34Game4Farm7FarmMgrFPv
/* 801243D8 00121318  3C 80 80 48 */	lis r4, lbl_8047B738@ha
/* 801243DC 0012131C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801243E0 00121320  38 84 B7 38 */	addi r4, r4, lbl_8047B738@l
/* 801243E4 00121324  48 2F EF 81 */	bl heapStatusEnd__6SystemFPc
/* 801243E8 00121328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801243EC 0012132C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801243F0 00121330  83 C1 00 08 */	lwz r30, 8(r1)
/* 801243F4 00121334  7C 08 03 A6 */	mtlr r0
/* 801243F8 00121338  38 21 00 10 */	addi r1, r1, 0x10
/* 801243FC 0012133C  4E 80 00 20 */	blr 

.global createNewFarm__Q34Game4Farm7FarmMgrFPv
createNewFarm__Q34Game4Farm7FarmMgrFPv:
/* 80124400 00121340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80124404 00121344  7C 08 02 A6 */	mflr r0
/* 80124408 00121348  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012440C 0012134C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80124410 00121350  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80124414 00121354  7C 9E 23 78 */	mr r30, r4
/* 80124418 00121358  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8012441C 0012135C  7C 7D 1B 78 */	mr r29, r3
/* 80124420 00121360  38 60 00 60 */	li r3, 0x60
/* 80124424 00121364  4B EF FA 81 */	bl __nw__FUl
/* 80124428 00121368  7C 7F 1B 79 */	or. r31, r3, r3
/* 8012442C 0012136C  41 82 00 0C */	beq lbl_80124438
/* 80124430 00121370  4B FF F0 F9 */	bl __ct__Q34Game4Farm4FarmFv
/* 80124434 00121374  7C 7F 1B 78 */	mr r31, r3
lbl_80124438:
/* 80124438 00121378  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 8012443C 0012137C  7F E3 FB 78 */	mr r3, r31
/* 80124440 00121380  7F C5 F3 78 */	mr r5, r30
/* 80124444 00121384  4B FF F1 A1 */	bl loadResource__Q34Game4Farm4FarmFUlPv
/* 80124448 00121388  7F E4 FB 78 */	mr r4, r31
/* 8012444C 0012138C  38 7D 00 20 */	addi r3, r29, 0x20
/* 80124450 00121390  48 2E CF B9 */	bl add__5CNodeFP5CNode
/* 80124454 00121394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124458 00121398  7F E3 FB 78 */	mr r3, r31
/* 8012445C 0012139C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80124460 001213A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80124464 001213A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80124468 001213A8  7C 08 03 A6 */	mtlr r0
/* 8012446C 001213AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80124470 001213B0  4E 80 00 20 */	blr 

.global addObstacle__Q34Game4Farm7FarmMgrFPQ24Game8Creatureff
addObstacle__Q34Game4Farm7FarmMgrFPQ24Game8Creatureff:
/* 80124474 001213B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80124478 001213B8  7C 08 02 A6 */	mflr r0
/* 8012447C 001213BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80124480 001213C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80124484 001213C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80124488 001213C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8012448C 001213CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80124490 001213D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80124494 001213D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80124498 001213D8  81 84 00 00 */	lwz r12, 0(r4)
/* 8012449C 001213DC  7C 7E 1B 78 */	mr r30, r3
/* 801244A0 001213E0  FF C0 08 90 */	fmr f30, f1
/* 801244A4 001213E4  7C 9F 23 78 */	mr r31, r4
/* 801244A8 001213E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801244AC 001213EC  FF E0 10 90 */	fmr f31, f2
/* 801244B0 001213F0  38 61 00 08 */	addi r3, r1, 8
/* 801244B4 001213F4  7D 89 03 A6 */	mtctr r12
/* 801244B8 001213F8  4E 80 04 21 */	bctrl 
/* 801244BC 001213FC  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 801244C0 00121400  3C 60 80 51 */	lis r3, __float_max@ha
/* 801244C4 00121404  38 83 48 D8 */	addi r4, r3, __float_max@l
/* 801244C8 00121408  C0 A1 00 08 */	lfs f5, 8(r1)
/* 801244CC 0012140C  28 05 00 00 */	cmplwi r5, 0
/* 801244D0 00121410  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 801244D4 00121414  C0 E1 00 10 */	lfs f7, 0x10(r1)
/* 801244D8 00121418  38 60 00 00 */	li r3, 0
/* 801244DC 0012141C  C0 64 00 00 */	lfs f3, 0(r4)
/* 801244E0 00121420  41 82 00 6C */	beq lbl_8012454C
/* 801244E4 00121424  C0 02 9B 40 */	lfs f0, lbl_80517EA0@sda21(r2)
/* 801244E8 00121428  48 00 00 5C */	b lbl_80124544
lbl_801244EC:
/* 801244EC 0012142C  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 801244F0 00121430  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 801244F4 00121434  EC 81 30 28 */	fsubs f4, f1, f6
/* 801244F8 00121438  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 801244FC 0012143C  EC 42 28 28 */	fsubs f2, f2, f5
/* 80124500 00121440  EC 21 38 28 */	fsubs f1, f1, f7
/* 80124504 00121444  EC 84 01 32 */	fmuls f4, f4, f4
/* 80124508 00121448  ED 01 00 72 */	fmuls f8, f1, f1
/* 8012450C 0012144C  EC 22 20 BA */	fmadds f1, f2, f2, f4
/* 80124510 00121450  EC 28 08 2A */	fadds f1, f8, f1
/* 80124514 00121454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124518 00121458  40 81 00 14 */	ble lbl_8012452C
/* 8012451C 0012145C  40 81 00 14 */	ble lbl_80124530
/* 80124520 00121460  FC 40 08 34 */	frsqrte f2, f1
/* 80124524 00121464  EC 22 00 72 */	fmuls f1, f2, f1
/* 80124528 00121468  48 00 00 08 */	b lbl_80124530
lbl_8012452C:
/* 8012452C 0012146C  FC 20 00 90 */	fmr f1, f0
lbl_80124530:
/* 80124530 00121470  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80124534 00121474  40 80 00 0C */	bge lbl_80124540
/* 80124538 00121478  7C A3 2B 78 */	mr r3, r5
/* 8012453C 0012147C  FC 60 08 90 */	fmr f3, f1
lbl_80124540:
/* 80124540 00121480  80 A5 00 04 */	lwz r5, 4(r5)
lbl_80124544:
/* 80124544 00121484  28 05 00 00 */	cmplwi r5, 0
/* 80124548 00121488  40 82 FF A4 */	bne lbl_801244EC
lbl_8012454C:
/* 8012454C 0012148C  28 03 00 00 */	cmplwi r3, 0
/* 80124550 00121490  41 82 00 18 */	beq lbl_80124568
/* 80124554 00121494  FC 20 F0 90 */	fmr f1, f30
/* 80124558 00121498  7F E4 FB 78 */	mr r4, r31
/* 8012455C 0012149C  FC 40 F8 90 */	fmr f2, f31
/* 80124560 001214A0  4B FF F3 39 */	bl addObstacle__Q34Game4Farm4FarmFPQ24Game8Creatureff
/* 80124564 001214A4  48 00 00 08 */	b lbl_8012456C
lbl_80124568:
/* 80124568 001214A8  38 60 00 00 */	li r3, 0
lbl_8012456C:
/* 8012456C 001214AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80124570 001214B0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80124574 001214B4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80124578 001214B8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8012457C 001214BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80124580 001214C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80124584 001214C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80124588 001214C8  7C 08 03 A6 */	mtlr r0
/* 8012458C 001214CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80124590 001214D0  4E 80 00 20 */	blr 

.global addPlant__Q34Game4Farm7FarmMgrFPQ24Game8Creature
addPlant__Q34Game4Farm7FarmMgrFPQ24Game8Creature:
/* 80124594 001214D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80124598 001214D8  7C 08 02 A6 */	mflr r0
/* 8012459C 001214DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801245A0 001214E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801245A4 001214E4  7C 9F 23 78 */	mr r31, r4
/* 801245A8 001214E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801245AC 001214EC  7C 7E 1B 78 */	mr r30, r3
/* 801245B0 001214F0  38 61 00 08 */	addi r3, r1, 8
/* 801245B4 001214F4  81 84 00 00 */	lwz r12, 0(r4)
/* 801245B8 001214F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801245BC 001214FC  7D 89 03 A6 */	mtctr r12
/* 801245C0 00121500  4E 80 04 21 */	bctrl 
/* 801245C4 00121504  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 801245C8 00121508  3C 60 80 51 */	lis r3, __float_max@ha
/* 801245CC 0012150C  38 83 48 D8 */	addi r4, r3, __float_max@l
/* 801245D0 00121510  C0 A1 00 08 */	lfs f5, 8(r1)
/* 801245D4 00121514  28 05 00 00 */	cmplwi r5, 0
/* 801245D8 00121518  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 801245DC 0012151C  C0 E1 00 10 */	lfs f7, 0x10(r1)
/* 801245E0 00121520  38 60 00 00 */	li r3, 0
/* 801245E4 00121524  C0 64 00 00 */	lfs f3, 0(r4)
/* 801245E8 00121528  41 82 00 6C */	beq lbl_80124654
/* 801245EC 0012152C  C0 02 9B 40 */	lfs f0, lbl_80517EA0@sda21(r2)
/* 801245F0 00121530  48 00 00 5C */	b lbl_8012464C
lbl_801245F4:
/* 801245F4 00121534  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 801245F8 00121538  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 801245FC 0012153C  EC 81 30 28 */	fsubs f4, f1, f6
/* 80124600 00121540  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 80124604 00121544  EC 42 28 28 */	fsubs f2, f2, f5
/* 80124608 00121548  EC 21 38 28 */	fsubs f1, f1, f7
/* 8012460C 0012154C  EC 84 01 32 */	fmuls f4, f4, f4
/* 80124610 00121550  ED 01 00 72 */	fmuls f8, f1, f1
/* 80124614 00121554  EC 22 20 BA */	fmadds f1, f2, f2, f4
/* 80124618 00121558  EC 28 08 2A */	fadds f1, f8, f1
/* 8012461C 0012155C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124620 00121560  40 81 00 14 */	ble lbl_80124634
/* 80124624 00121564  40 81 00 14 */	ble lbl_80124638
/* 80124628 00121568  FC 40 08 34 */	frsqrte f2, f1
/* 8012462C 0012156C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80124630 00121570  48 00 00 08 */	b lbl_80124638
lbl_80124634:
/* 80124634 00121574  FC 20 00 90 */	fmr f1, f0
lbl_80124638:
/* 80124638 00121578  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8012463C 0012157C  40 80 00 0C */	bge lbl_80124648
/* 80124640 00121580  7C A3 2B 78 */	mr r3, r5
/* 80124644 00121584  FC 60 08 90 */	fmr f3, f1
lbl_80124648:
/* 80124648 00121588  80 A5 00 04 */	lwz r5, 4(r5)
lbl_8012464C:
/* 8012464C 0012158C  28 05 00 00 */	cmplwi r5, 0
/* 80124650 00121590  40 82 FF A4 */	bne lbl_801245F4
lbl_80124654:
/* 80124654 00121594  28 03 00 00 */	cmplwi r3, 0
/* 80124658 00121598  41 82 00 10 */	beq lbl_80124668
/* 8012465C 0012159C  7F E4 FB 78 */	mr r4, r31
/* 80124660 001215A0  4B FF F3 C9 */	bl addPlant__Q34Game4Farm4FarmFPQ24Game8Creature
/* 80124664 001215A4  48 00 00 08 */	b lbl_8012466C
lbl_80124668:
/* 80124668 001215A8  38 60 00 00 */	li r3, 0
lbl_8012466C:
/* 8012466C 001215AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124670 001215B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80124674 001215B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80124678 001215B8  7C 08 03 A6 */	mtlr r0
/* 8012467C 001215BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80124680 001215C0  4E 80 00 20 */	blr 

.global initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv:
/* 80124684 001215C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124688 001215C8  7C 08 02 A6 */	mflr r0
/* 8012468C 001215CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124690 001215D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124694 001215D4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80124698 001215D8  28 00 00 00 */	cmplwi r0, 0
/* 8012469C 001215DC  41 82 00 20 */	beq lbl_801246BC
/* 801246A0 001215E0  7C 1F 03 78 */	mr r31, r0
/* 801246A4 001215E4  48 00 00 10 */	b lbl_801246B4
lbl_801246A8:
/* 801246A8 001215E8  7F E3 FB 78 */	mr r3, r31
/* 801246AC 001215EC  4B FF F7 55 */	bl initAllObjectNodes__Q34Game4Farm4FarmFv
/* 801246B0 001215F0  83 FF 00 04 */	lwz r31, 4(r31)
lbl_801246B4:
/* 801246B4 001215F4  28 1F 00 00 */	cmplwi r31, 0
/* 801246B8 001215F8  40 82 FF F0 */	bne lbl_801246A8
lbl_801246BC:
/* 801246BC 001215FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801246C0 00121600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801246C4 00121604  7C 08 03 A6 */	mtlr r0
/* 801246C8 00121608  38 21 00 10 */	addi r1, r1, 0x10
/* 801246CC 0012160C  4E 80 00 20 */	blr 

.global __dt__Q34Game4Farm7FarmMgrFv
__dt__Q34Game4Farm7FarmMgrFv:
/* 801246D0 00121610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801246D4 00121614  7C 08 02 A6 */	mflr r0
/* 801246D8 00121618  90 01 00 14 */	stw r0, 0x14(r1)
/* 801246DC 0012161C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801246E0 00121620  7C 9F 23 78 */	mr r31, r4
/* 801246E4 00121624  93 C1 00 08 */	stw r30, 8(r1)
/* 801246E8 00121628  7C 7E 1B 79 */	or. r30, r3, r3
/* 801246EC 0012162C  41 82 00 40 */	beq lbl_8012472C
/* 801246F0 00121630  3C 80 80 4B */	lis r4, __vt__Q34Game4Farm7FarmMgr@ha
/* 801246F4 00121634  38 7E 00 20 */	addi r3, r30, 0x20
/* 801246F8 00121638  38 A4 D9 C4 */	addi r5, r4, __vt__Q34Game4Farm7FarmMgr@l
/* 801246FC 0012163C  38 80 FF FF */	li r4, -1
/* 80124700 00121640  90 BE 00 00 */	stw r5, 0(r30)
/* 80124704 00121644  38 05 00 38 */	addi r0, r5, 0x38
/* 80124708 00121648  90 1E 00 04 */	stw r0, 4(r30)
/* 8012470C 0012164C  48 2E CE 7D */	bl __dt__5CNodeFv
/* 80124710 00121650  38 7E 00 04 */	addi r3, r30, 4
/* 80124714 00121654  38 80 00 00 */	li r4, 0
/* 80124718 00121658  48 2E CE 71 */	bl __dt__5CNodeFv
/* 8012471C 0012165C  7F E0 07 35 */	extsh. r0, r31
/* 80124720 00121660  40 81 00 0C */	ble lbl_8012472C
/* 80124724 00121664  7F C3 F3 78 */	mr r3, r30
/* 80124728 00121668  4B EF F9 8D */	bl __dl__FPv
lbl_8012472C:
/* 8012472C 0012166C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124730 00121670  7F C3 F3 78 */	mr r3, r30
/* 80124734 00121674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124738 00121678  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012473C 0012167C  7C 08 03 A6 */	mtlr r0
/* 80124740 00121680  38 21 00 10 */	addi r1, r1, 0x10
/* 80124744 00121684  4E 80 00 20 */	blr 

.global __sinit_farmMgr_cpp
__sinit_farmMgr_cpp:
/* 80124748 00121688  3C 80 80 51 */	lis r4, __float_nan@ha
/* 8012474C 0012168C  38 00 FF FF */	li r0, -1
/* 80124750 00121690  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 80124754 00121694  3C 60 80 4B */	lis r3, lbl_804AD9B8@ha
/* 80124758 00121698  90 0D 92 28 */	stw r0, lbl_805158A8@sda21(r13)
/* 8012475C 0012169C  D4 03 D9 B8 */	stfsu f0, lbl_804AD9B8@l(r3)
/* 80124760 001216A0  D0 0D 92 2C */	stfs f0, lbl_805158AC@sda21(r13)
/* 80124764 001216A4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80124768 001216A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012476C 001216AC  4E 80 00 20 */	blr 

.global "@4@__dt__Q34Game4Farm7FarmMgrFv"
"@4@__dt__Q34Game4Farm7FarmMgrFv":
/* 80124770 001216B0  38 63 FF FC */	addi r3, r3, -4
/* 80124774 001216B4  4B FF FF 5C */	b __dt__Q34Game4Farm7FarmMgrFv
