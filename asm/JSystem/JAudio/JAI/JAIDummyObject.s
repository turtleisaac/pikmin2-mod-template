.include "macros.inc"
.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj deadObjectFreePointer__Q27JAInter14DummyObjectMgr, global
	.skip 0x4
.endobj deadObjectFreePointer__Q27JAInter14DummyObjectMgr
.obj deadObjectUsedPointer__Q27JAInter14DummyObjectMgr, global
	.skip 0x4
.endobj deadObjectUsedPointer__Q27JAInter14DummyObjectMgr
.obj deadObjectObject__Q27JAInter14DummyObjectMgr, global
	.skip 0x4
.endobj deadObjectObject__Q27JAInter14DummyObjectMgr

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn init__Q27JAInter14DummyObjectMgrFv, global
/* 800AD490 000AA3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD494 000AA3D4  7C 08 02 A6 */	mflr r0
/* 800AD498 000AA3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD49C 000AA3DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AD4A0 000AA3E0  93 C1 00 08 */	stw r30, 8(r1)
/* 800AD4A4 000AA3E4  83 ED 8B 6C */	lwz r31, msCurrentHeap__8JAIBasic@sda21(r13)
/* 800AD4A8 000AA3E8  48 00 06 C5 */	bl getParamDummyObjectMax__18JAIGlobalParameterFv
/* 800AD4AC 000AA3EC  1C 63 00 1C */	mulli r3, r3, 0x1c
/* 800AD4B0 000AA3F0  7F E4 FB 78 */	mr r4, r31
/* 800AD4B4 000AA3F4  38 A0 00 20 */	li r5, 0x20
/* 800AD4B8 000AA3F8  4B F7 6B 91 */	bl __nwa__FUlP7JKRHeapi
/* 800AD4BC 000AA3FC  38 00 00 00 */	li r0, 0
/* 800AD4C0 000AA400  90 6D 8B 98 */	stw r3, deadObjectObject__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD4C4 000AA404  3B E0 00 01 */	li r31, 1
/* 800AD4C8 000AA408  3B C0 00 1C */	li r30, 0x1c
/* 800AD4CC 000AA40C  90 6D 8B 90 */	stw r3, deadObjectFreePointer__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD4D0 000AA410  90 0D 8B 94 */	stw r0, deadObjectUsedPointer__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD4D4 000AA414  90 03 00 00 */	stw r0, 0(r3)
/* 800AD4D8 000AA418  80 6D 8B 98 */	lwz r3, deadObjectObject__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD4DC 000AA41C  38 03 00 1C */	addi r0, r3, 0x1c
/* 800AD4E0 000AA420  90 03 00 04 */	stw r0, 4(r3)
/* 800AD4E4 000AA424  48 00 00 38 */	b .L_800AD51C
.L_800AD4E8:
/* 800AD4E8 000AA428  38 1F FF FF */	addi r0, r31, -1
/* 800AD4EC 000AA42C  38 7F 00 01 */	addi r3, r31, 1
/* 800AD4F0 000AA430  1C 80 00 1C */	mulli r4, r0, 0x1c
/* 800AD4F4 000AA434  80 AD 8B 98 */	lwz r5, deadObjectObject__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD4F8 000AA438  38 1E 00 04 */	addi r0, r30, 4
/* 800AD4FC 000AA43C  3B FF 00 01 */	addi r31, r31, 1
/* 800AD500 000AA440  7C 85 22 14 */	add r4, r5, r4
/* 800AD504 000AA444  7C 85 F1 2E */	stwx r4, r5, r30
/* 800AD508 000AA448  1C 63 00 1C */	mulli r3, r3, 0x1c
/* 800AD50C 000AA44C  3B DE 00 1C */	addi r30, r30, 0x1c
/* 800AD510 000AA450  80 8D 8B 98 */	lwz r4, deadObjectObject__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD514 000AA454  7C 64 1A 14 */	add r3, r4, r3
/* 800AD518 000AA458  7C 64 01 2E */	stwx r3, r4, r0
.L_800AD51C:
/* 800AD51C 000AA45C  48 00 06 51 */	bl getParamDummyObjectMax__18JAIGlobalParameterFv
/* 800AD520 000AA460  38 03 FF FF */	addi r0, r3, -1
/* 800AD524 000AA464  7C 1F 00 40 */	cmplw r31, r0
/* 800AD528 000AA468  41 80 FF C0 */	blt .L_800AD4E8
/* 800AD52C 000AA46C  38 1F FF FF */	addi r0, r31, -1
/* 800AD530 000AA470  80 6D 8B 98 */	lwz r3, deadObjectObject__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD534 000AA474  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 800AD538 000AA478  38 80 00 00 */	li r4, 0
/* 800AD53C 000AA47C  1C BF 00 1C */	mulli r5, r31, 0x1c
/* 800AD540 000AA480  7C 03 02 14 */	add r0, r3, r0
/* 800AD544 000AA484  7C 03 29 2E */	stwx r0, r3, r5
/* 800AD548 000AA488  80 0D 8B 98 */	lwz r0, deadObjectObject__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD54C 000AA48C  7C 60 2A 14 */	add r3, r0, r5
/* 800AD550 000AA490  90 83 00 04 */	stw r4, 4(r3)
/* 800AD554 000AA494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AD558 000AA498  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AD55C 000AA49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD560 000AA4A0  7C 08 03 A6 */	mtlr r0
/* 800AD564 000AA4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD568 000AA4A8  4E 80 00 20 */	blr 
.endfn init__Q27JAInter14DummyObjectMgrFv

.fn getPointer__Q27JAInter14DummyObjectMgrFUl, global
/* 800AD56C 000AA4AC  80 0D 8B 90 */	lwz r0, deadObjectFreePointer__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD570 000AA4B0  38 AD 8B 90 */	addi r5, r13, deadObjectFreePointer__Q27JAInter14DummyObjectMgr@sda21
/* 800AD574 000AA4B4  38 CD 8B 94 */	addi r6, r13, deadObjectUsedPointer__Q27JAInter14DummyObjectMgr@sda21
/* 800AD578 000AA4B8  28 00 00 00 */	cmplwi r0, 0
/* 800AD57C 000AA4BC  41 82 00 4C */	beq .L_800AD5C8
/* 800AD580 000AA4C0  80 E5 00 00 */	lwz r7, 0(r5)
/* 800AD584 000AA4C4  80 86 00 00 */	lwz r4, 0(r6)
/* 800AD588 000AA4C8  80 07 00 04 */	lwz r0, 4(r7)
/* 800AD58C 000AA4CC  28 04 00 00 */	cmplwi r4, 0
/* 800AD590 000AA4D0  90 05 00 00 */	stw r0, 0(r5)
/* 800AD594 000AA4D4  41 82 00 14 */	beq .L_800AD5A8
/* 800AD598 000AA4D8  90 87 00 04 */	stw r4, 4(r7)
/* 800AD59C 000AA4DC  80 86 00 00 */	lwz r4, 0(r6)
/* 800AD5A0 000AA4E0  90 E4 00 00 */	stw r7, 0(r4)
/* 800AD5A4 000AA4E4  48 00 00 0C */	b .L_800AD5B0
.L_800AD5A8:
/* 800AD5A8 000AA4E8  38 00 00 00 */	li r0, 0
/* 800AD5AC 000AA4EC  90 07 00 04 */	stw r0, 4(r7)
.L_800AD5B0:
/* 800AD5B0 000AA4F0  38 00 00 00 */	li r0, 0
/* 800AD5B4 000AA4F4  90 07 00 00 */	stw r0, 0(r7)
/* 800AD5B8 000AA4F8  90 E6 00 00 */	stw r7, 0(r6)
/* 800AD5BC 000AA4FC  90 67 00 18 */	stw r3, 0x18(r7)
/* 800AD5C0 000AA500  90 07 00 08 */	stw r0, 8(r7)
/* 800AD5C4 000AA504  48 00 00 08 */	b .L_800AD5CC
.L_800AD5C8:
/* 800AD5C8 000AA508  38 E0 00 00 */	li r7, 0
.L_800AD5CC:
/* 800AD5CC 000AA50C  7C E3 3B 78 */	mr r3, r7
/* 800AD5D0 000AA510  4E 80 00 20 */	blr 
.endfn getPointer__Q27JAInter14DummyObjectMgrFUl

.fn check__Q27JAInter14DummyObjectMgrFv, global
/* 800AD5D4 000AA514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD5D8 000AA518  7C 08 02 A6 */	mflr r0
/* 800AD5DC 000AA51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD5E0 000AA520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AD5E4 000AA524  93 C1 00 08 */	stw r30, 8(r1)
/* 800AD5E8 000AA528  83 ED 8B 94 */	lwz r31, deadObjectUsedPointer__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD5EC 000AA52C  48 00 00 C0 */	b .L_800AD6AC
.L_800AD5F0:
/* 800AD5F0 000AA530  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800AD5F4 000AA534  83 DF 00 04 */	lwz r30, 4(r31)
/* 800AD5F8 000AA538  38 03 FF FF */	addi r0, r3, -1
/* 800AD5FC 000AA53C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 800AD600 000AA540  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800AD604 000AA544  28 00 00 00 */	cmplwi r0, 0
/* 800AD608 000AA548  41 82 00 10 */	beq .L_800AD618
/* 800AD60C 000AA54C  80 1F 00 08 */	lwz r0, 8(r31)
/* 800AD610 000AA550  28 00 00 00 */	cmplwi r0, 0
/* 800AD614 000AA554  40 82 00 94 */	bne .L_800AD6A8
.L_800AD618:
/* 800AD618 000AA558  80 7F 00 08 */	lwz r3, 8(r31)
/* 800AD61C 000AA55C  28 03 00 00 */	cmplwi r3, 0
/* 800AD620 000AA560  41 82 00 18 */	beq .L_800AD638
/* 800AD624 000AA564  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800AD628 000AA568  38 80 00 00 */	li r4, 0
/* 800AD62C 000AA56C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800AD630 000AA570  7D 89 03 A6 */	mtctr r12
/* 800AD634 000AA574  4E 80 04 21 */	bctrl 
.L_800AD638:
/* 800AD638 000AA578  80 0D 8B 94 */	lwz r0, deadObjectUsedPointer__Q27JAInter14DummyObjectMgr@sda21(r13)
/* 800AD63C 000AA57C  38 8D 8B 90 */	addi r4, r13, deadObjectFreePointer__Q27JAInter14DummyObjectMgr@sda21
/* 800AD640 000AA580  38 6D 8B 94 */	addi r3, r13, deadObjectUsedPointer__Q27JAInter14DummyObjectMgr@sda21
/* 800AD644 000AA584  7C 00 F8 40 */	cmplw r0, r31
/* 800AD648 000AA588  41 82 00 28 */	beq .L_800AD670
/* 800AD64C 000AA58C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800AD650 000AA590  80 7F 00 00 */	lwz r3, 0(r31)
/* 800AD654 000AA594  90 03 00 04 */	stw r0, 4(r3)
/* 800AD658 000AA598  80 7F 00 04 */	lwz r3, 4(r31)
/* 800AD65C 000AA59C  28 03 00 00 */	cmplwi r3, 0
/* 800AD660 000AA5A0  41 82 00 2C */	beq .L_800AD68C
/* 800AD664 000AA5A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 800AD668 000AA5A8  90 03 00 00 */	stw r0, 0(r3)
/* 800AD66C 000AA5AC  48 00 00 20 */	b .L_800AD68C
.L_800AD670:
/* 800AD670 000AA5B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 800AD674 000AA5B4  90 03 00 00 */	stw r0, 0(r3)
/* 800AD678 000AA5B8  80 7F 00 04 */	lwz r3, 4(r31)
/* 800AD67C 000AA5BC  28 03 00 00 */	cmplwi r3, 0
/* 800AD680 000AA5C0  41 82 00 0C */	beq .L_800AD68C
/* 800AD684 000AA5C4  38 00 00 00 */	li r0, 0
/* 800AD688 000AA5C8  90 03 00 00 */	stw r0, 0(r3)
.L_800AD68C:
/* 800AD68C 000AA5CC  80 04 00 00 */	lwz r0, 0(r4)
/* 800AD690 000AA5D0  90 1F 00 04 */	stw r0, 4(r31)
/* 800AD694 000AA5D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 800AD698 000AA5D8  28 03 00 00 */	cmplwi r3, 0
/* 800AD69C 000AA5DC  41 82 00 08 */	beq .L_800AD6A4
/* 800AD6A0 000AA5E0  93 E3 00 00 */	stw r31, 0(r3)
.L_800AD6A4:
/* 800AD6A4 000AA5E4  93 E4 00 00 */	stw r31, 0(r4)
.L_800AD6A8:
/* 800AD6A8 000AA5E8  7F DF F3 78 */	mr r31, r30
.L_800AD6AC:
/* 800AD6AC 000AA5EC  28 1F 00 00 */	cmplwi r31, 0
/* 800AD6B0 000AA5F0  40 82 FF 40 */	bne .L_800AD5F0
/* 800AD6B4 000AA5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD6B8 000AA5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AD6BC 000AA5FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AD6C0 000AA600  7C 08 03 A6 */	mtlr r0
/* 800AD6C4 000AA604  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD6C8 000AA608  4E 80 00 20 */	blr 
.endfn check__Q27JAInter14DummyObjectMgrFv
