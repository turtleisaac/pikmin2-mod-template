.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __dt__Q27JGadget13TNodeLinkListFv, global
/* 800272E4 00024224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800272E8 00024228  7C 08 02 A6 */	mflr r0
/* 800272EC 0002422C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800272F0 00024230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800272F4 00024234  7C 7F 1B 79 */	or. r31, r3, r3
/* 800272F8 00024238  41 82 00 10 */	beq .L_80027308
/* 800272FC 0002423C  7C 80 07 35 */	extsh. r0, r4
/* 80027300 00024240  40 81 00 08 */	ble .L_80027308
/* 80027304 00024244  4B FF CD B1 */	bl __dl__FPv
.L_80027308:
/* 80027308 00024248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002730C 0002424C  7F E3 FB 78 */	mr r3, r31
/* 80027310 00024250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80027314 00024254  7C 08 03 A6 */	mtlr r0
/* 80027318 00024258  38 21 00 10 */	addi r1, r1, 0x10
/* 8002731C 0002425C  4E 80 00 20 */	blr 
.endfn __dt__Q27JGadget13TNodeLinkListFv

.fn Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode, global
/* 80027320 00024260  80 A5 00 00 */	lwz r5, 0(r5)
/* 80027324 00024264  80 E5 00 04 */	lwz r7, 4(r5)
/* 80027328 00024268  90 A6 00 00 */	stw r5, 0(r6)
/* 8002732C 0002426C  90 E6 00 04 */	stw r7, 4(r6)
/* 80027330 00024270  90 C5 00 04 */	stw r6, 4(r5)
/* 80027334 00024274  90 C7 00 00 */	stw r6, 0(r7)
/* 80027338 00024278  80 A4 00 00 */	lwz r5, 0(r4)
/* 8002733C 0002427C  38 05 00 01 */	addi r0, r5, 1
/* 80027340 00024280  90 04 00 00 */	stw r0, 0(r4)
/* 80027344 00024284  90 C3 00 00 */	stw r6, 0(r3)
/* 80027348 00024288  4E 80 00 20 */	blr 
.endfn Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode

.fn Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode, global
/* 8002734C 0002428C  80 C5 00 00 */	lwz r6, 0(r5)
/* 80027350 00024290  80 A5 00 04 */	lwz r5, 4(r5)
/* 80027354 00024294  90 A6 00 04 */	stw r5, 4(r6)
/* 80027358 00024298  90 C5 00 00 */	stw r6, 0(r5)
/* 8002735C 0002429C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80027360 000242A0  38 05 FF FF */	addi r0, r5, -1
/* 80027364 000242A4  90 04 00 00 */	stw r0, 0(r4)
/* 80027368 000242A8  90 C3 00 00 */	stw r6, 0(r3)
/* 8002736C 000242AC  4E 80 00 20 */	blr 
.endfn Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode

.fn Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode, global
/* 80027370 000242B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027374 000242B4  7C 08 02 A6 */	mflr r0
/* 80027378 000242B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002737C 000242BC  90 81 00 08 */	stw r4, 8(r1)
/* 80027380 000242C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80027384 000242C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80027388 000242C8  48 00 00 15 */	bl "remove_if<Q37JGadget22@unnamed@linklist_cpp@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>>__Q27JGadget13TNodeLinkListFQ37JGadget22@unnamed@linklist_cpp@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>"
/* 8002738C 000242CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027390 000242D0  7C 08 03 A6 */	mtlr r0
/* 80027394 000242D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80027398 000242D8  4E 80 00 20 */	blr 
.endfn Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode

.fn "remove_if<Q37JGadget22@unnamed@linklist_cpp@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>>__Q27JGadget13TNodeLinkListFQ37JGadget22@unnamed@linklist_cpp@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>", local
/* 8002739C 000242DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800273A0 000242E0  38 A0 00 00 */	li r5, 0
/* 800273A4 000242E4  80 C4 00 00 */	lwz r6, 0(r4)
/* 800273A8 000242E8  38 03 00 04 */	addi r0, r3, 4
/* 800273AC 000242EC  90 A1 00 44 */	stw r5, 0x44(r1)
/* 800273B0 000242F0  39 01 00 44 */	addi r8, r1, 0x44
/* 800273B4 000242F4  90 A1 00 48 */	stw r5, 0x48(r1)
/* 800273B8 000242F8  90 A1 00 40 */	stw r5, 0x40(r1)
/* 800273BC 000242FC  91 01 00 44 */	stw r8, 0x44(r1)
/* 800273C0 00024300  91 01 00 48 */	stw r8, 0x48(r1)
/* 800273C4 00024304  80 83 00 04 */	lwz r4, 4(r3)
/* 800273C8 00024308  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 800273CC 0002430C  90 81 00 20 */	stw r4, 0x20(r1)
/* 800273D0 00024310  48 00 00 94 */	b .L_80027464
.L_800273D4:
/* 800273D4 00024314  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 800273D8 00024318  7C 05 30 40 */	cmplw r5, r6
/* 800273DC 0002431C  40 82 00 80 */	bne .L_8002745C
/* 800273E0 00024320  80 85 00 00 */	lwz r4, 0(r5)
/* 800273E4 00024324  7C 08 28 40 */	cmplw r8, r5
/* 800273E8 00024328  90 A1 00 24 */	stw r5, 0x24(r1)
/* 800273EC 0002432C  90 81 00 20 */	stw r4, 0x20(r1)
/* 800273F0 00024330  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 800273F4 00024334  91 01 00 28 */	stw r8, 0x28(r1)
/* 800273F8 00024338  90 81 00 08 */	stw r4, 8(r1)
/* 800273FC 0002433C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80027400 00024340  91 01 00 0C */	stw r8, 0xc(r1)
/* 80027404 00024344  41 82 00 60 */	beq .L_80027464
/* 80027408 00024348  7C 08 20 40 */	cmplw r8, r4
/* 8002740C 0002434C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80027410 00024350  91 01 00 14 */	stw r8, 0x14(r1)
/* 80027414 00024354  41 82 00 50 */	beq .L_80027464
/* 80027418 00024358  80 E5 00 00 */	lwz r7, 0(r5)
/* 8002741C 0002435C  80 85 00 04 */	lwz r4, 4(r5)
/* 80027420 00024360  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80027424 00024364  90 87 00 04 */	stw r4, 4(r7)
/* 80027428 00024368  90 E4 00 00 */	stw r7, 0(r4)
/* 8002742C 0002436C  80 83 00 00 */	lwz r4, 0(r3)
/* 80027430 00024370  38 84 FF FF */	addi r4, r4, -1
/* 80027434 00024374  90 83 00 00 */	stw r4, 0(r3)
/* 80027438 00024378  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8002743C 0002437C  91 05 00 00 */	stw r8, 0(r5)
/* 80027440 00024380  90 85 00 04 */	stw r4, 4(r5)
/* 80027444 00024384  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80027448 00024388  90 A4 00 00 */	stw r5, 0(r4)
/* 8002744C 0002438C  80 81 00 40 */	lwz r4, 0x40(r1)
/* 80027450 00024390  38 84 00 01 */	addi r4, r4, 1
/* 80027454 00024394  90 81 00 40 */	stw r4, 0x40(r1)
/* 80027458 00024398  48 00 00 0C */	b .L_80027464
.L_8002745C:
/* 8002745C 0002439C  80 85 00 00 */	lwz r4, 0(r5)
/* 80027460 000243A0  90 81 00 20 */	stw r4, 0x20(r1)
.L_80027464:
/* 80027464 000243A4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80027468 000243A8  7C 04 00 40 */	cmplw r4, r0
/* 8002746C 000243AC  90 81 00 38 */	stw r4, 0x38(r1)
/* 80027470 000243B0  90 81 00 34 */	stw r4, 0x34(r1)
/* 80027474 000243B4  90 81 00 30 */	stw r4, 0x30(r1)
/* 80027478 000243B8  40 82 FF 5C */	bne .L_800273D4
/* 8002747C 000243BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80027480 000243C0  4E 80 00 20 */	blr 
.endfn "remove_if<Q37JGadget22@unnamed@linklist_cpp@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>>__Q27JGadget13TNodeLinkListFQ37JGadget22@unnamed@linklist_cpp@46TPRIsEqual_pointer_<Q27JGadget13TLinkListNode>"
