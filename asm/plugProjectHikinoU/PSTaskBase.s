.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_8048FF20, local
	.asciz "PSTaskBase.cpp"
.endobj lbl_8048FF20
.balign 4
.obj lbl_8048FF30, local
	.asciz "P2Assert"
.endobj lbl_8048FF30
.balign 4
.obj lbl_8048FF3C, local
	.asciz "PSTaskBase.h"
.endobj lbl_8048FF3C

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __ct__Q28PSSystem8TaskBaseFv, global
/* 8033E1F8 0033B138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033E1FC 0033B13C  7C 08 02 A6 */	mflr r0
/* 8033E200 0033B140  3C 80 80 4E */	lis r4, __vt__Q28PSSystem8TaskBase@ha
/* 8033E204 0033B144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033E208 0033B148  38 04 A5 20 */	addi r0, r4, __vt__Q28PSSystem8TaskBase@l
/* 8033E20C 0033B14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033E210 0033B150  7C 7F 1B 78 */	mr r31, r3
/* 8033E214 0033B154  7F E4 FB 78 */	mr r4, r31
/* 8033E218 0033B158  90 03 00 00 */	stw r0, 0(r3)
/* 8033E21C 0033B15C  38 7F 00 04 */	addi r3, r31, 4
/* 8033E220 0033B160  4B CE 85 99 */	bl __ct__10JSUPtrLinkFPv
/* 8033E224 0033B164  38 00 00 00 */	li r0, 0
/* 8033E228 0033B168  7F E3 FB 78 */	mr r3, r31
/* 8033E22C 0033B16C  98 1F 00 14 */	stb r0, 0x14(r31)
/* 8033E230 0033B170  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8033E234 0033B174  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033E238 0033B178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033E23C 0033B17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033E240 0033B180  7C 08 03 A6 */	mtlr r0
/* 8033E244 0033B184  38 21 00 10 */	addi r1, r1, 0x10
/* 8033E248 0033B188  4E 80 00 20 */	blr 
.endfn __ct__Q28PSSystem8TaskBaseFv

.fn append__Q28PSSystem9TaskEntryFPQ28PSSystem8TaskBase, global
/* 8033E24C 0033B18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033E250 0033B190  7C 08 02 A6 */	mflr r0
/* 8033E254 0033B194  38 84 00 04 */	addi r4, r4, 4
/* 8033E258 0033B198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033E25C 0033B19C  48 00 03 A9 */	bl "append_Lock__Q28PSSystem31MutexList<Q28PSSystem8TaskBase>FP29JSULink<Q28PSSystem8TaskBase>"
/* 8033E260 0033B1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033E264 0033B1A4  7C 08 03 A6 */	mtlr r0
/* 8033E268 0033B1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033E26C 0033B1AC  4E 80 00 20 */	blr 
.endfn append__Q28PSSystem9TaskEntryFPQ28PSSystem8TaskBase

.fn isUnderTask_byDirector__Q28PSSystem12TaskEntryMgrFPQ28PSSystem12DirectorBase, global
/* 8033E270 0033B1B0  80 A3 00 00 */	lwz r5, 0(r3)
/* 8033E274 0033B1B4  48 00 00 20 */	b .L_8033E294
.L_8033E278:
/* 8033E278 0033B1B8  80 65 00 00 */	lwz r3, 0(r5)
/* 8033E27C 0033B1BC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8033E280 0033B1C0  7C 00 20 40 */	cmplw r0, r4
/* 8033E284 0033B1C4  40 82 00 0C */	bne .L_8033E290
/* 8033E288 0033B1C8  38 60 00 01 */	li r3, 1
/* 8033E28C 0033B1CC  4E 80 00 20 */	blr 
.L_8033E290:
/* 8033E290 0033B1D0  80 A5 00 0C */	lwz r5, 0xc(r5)
.L_8033E294:
/* 8033E294 0033B1D4  28 05 00 00 */	cmplwi r5, 0
/* 8033E298 0033B1D8  40 82 FF E0 */	bne .L_8033E278
/* 8033E29C 0033B1DC  38 60 00 00 */	li r3, 0
/* 8033E2A0 0033B1E0  4E 80 00 20 */	blr 
.endfn isUnderTask_byDirector__Q28PSSystem12TaskEntryMgrFPQ28PSSystem12DirectorBase

.fn update__Q28PSSystem12TaskEntryMgrFv, global
/* 8033E2A4 0033B1E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033E2A8 0033B1E8  7C 08 02 A6 */	mflr r0
/* 8033E2AC 0033B1EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033E2B0 0033B1F0  BF 41 00 08 */	stmw r26, 8(r1)
/* 8033E2B4 0033B1F4  7C 7F 1B 78 */	mr r31, r3
/* 8033E2B8 0033B1F8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8033E2BC 0033B1FC  28 00 00 00 */	cmplwi r0, 0
/* 8033E2C0 0033B200  40 82 00 20 */	bne .L_8033E2E0
/* 8033E2C4 0033B204  3C 60 80 49 */	lis r3, lbl_8048FF20@ha
/* 8033E2C8 0033B208  3C A0 80 49 */	lis r5, lbl_8048FF30@ha
/* 8033E2CC 0033B20C  38 63 FF 20 */	addi r3, r3, lbl_8048FF20@l
/* 8033E2D0 0033B210  38 80 00 C5 */	li r4, 0xc5
/* 8033E2D4 0033B214  38 A5 FF 30 */	addi r5, r5, lbl_8048FF30@l
/* 8033E2D8 0033B218  4C C6 31 82 */	crclr 6
/* 8033E2DC 0033B21C  4B CE C3 65 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8033E2E0:
/* 8033E2E0 0033B220  38 7F 00 0C */	addi r3, r31, 0xc
/* 8033E2E4 0033B224  4B DB 18 85 */	bl OSLockMutex
/* 8033E2E8 0033B228  83 9F 00 00 */	lwz r28, 0(r31)
/* 8033E2EC 0033B22C  28 1C 00 00 */	cmplwi r28, 0
/* 8033E2F0 0033B230  41 82 00 E8 */	beq .L_8033E3D8
/* 8033E2F4 0033B234  83 DC 00 00 */	lwz r30, 0(r28)
/* 8033E2F8 0033B238  83 BF 00 24 */	lwz r29, 0x24(r31)
/* 8033E2FC 0033B23C  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E300 0033B240  4B DB 18 69 */	bl OSLockMutex
/* 8033E304 0033B244  83 7E 00 00 */	lwz r27, 0(r30)
/* 8033E308 0033B248  28 1B 00 00 */	cmplwi r27, 0
/* 8033E30C 0033B24C  40 82 00 A4 */	bne .L_8033E3B0
/* 8033E310 0033B250  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E314 0033B254  4B DB 19 31 */	bl OSUnlockMutex
/* 8033E318 0033B258  38 00 00 00 */	li r0, 0
/* 8033E31C 0033B25C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8033E320 0033B260  48 00 00 A4 */	b .L_8033E3C4
/* 8033E324 0033B264  48 00 00 8C */	b .L_8033E3B0
.L_8033E328:
/* 8033E328 0033B268  83 5B 00 00 */	lwz r26, 0(r27)
/* 8033E32C 0033B26C  38 60 FF F0 */	li r3, -16
/* 8033E330 0033B270  80 9A 00 18 */	lwz r4, 0x18(r26)
/* 8033E334 0033B274  28 04 00 00 */	cmplwi r4, 0
/* 8033E338 0033B278  41 82 00 14 */	beq .L_8033E34C
/* 8033E33C 0033B27C  80 04 00 04 */	lwz r0, 4(r4)
/* 8033E340 0033B280  28 00 00 00 */	cmplwi r0, 0
/* 8033E344 0033B284  40 82 00 08 */	bne .L_8033E34C
/* 8033E348 0033B288  38 60 FF FF */	li r3, -1
.L_8033E34C:
/* 8033E34C 0033B28C  3C 03 00 01 */	addis r0, r3, 1
/* 8033E350 0033B290  28 00 FF FF */	cmplwi r0, 0xffff
/* 8033E354 0033B294  41 82 00 1C */	beq .L_8033E370
/* 8033E358 0033B298  7F 43 D3 78 */	mr r3, r26
/* 8033E35C 0033B29C  7F A4 EB 78 */	mr r4, r29
/* 8033E360 0033B2A0  81 9A 00 00 */	lwz r12, 0(r26)
/* 8033E364 0033B2A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8033E368 0033B2A8  7D 89 03 A6 */	mtctr r12
/* 8033E36C 0033B2AC  4E 80 04 21 */	bctrl 
.L_8033E370:
/* 8033E370 0033B2B0  3C 03 00 01 */	addis r0, r3, 1
/* 8033E374 0033B2B4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8033E378 0033B2B8  40 82 00 20 */	bne .L_8033E398
/* 8033E37C 0033B2BC  7F C3 F3 78 */	mr r3, r30
/* 8033E380 0033B2C0  7F 64 DB 78 */	mr r4, r27
/* 8033E384 0033B2C4  4B CE 88 A1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8033E388 0033B2C8  38 00 00 00 */	li r0, 0
/* 8033E38C 0033B2CC  98 1A 00 14 */	stb r0, 0x14(r26)
/* 8033E390 0033B2D0  98 1A 00 15 */	stb r0, 0x15(r26)
/* 8033E394 0033B2D4  90 1A 00 18 */	stw r0, 0x18(r26)
.L_8033E398:
/* 8033E398 0033B2D8  88 1A 00 15 */	lbz r0, 0x15(r26)
/* 8033E39C 0033B2DC  28 00 00 00 */	cmplwi r0, 0
/* 8033E3A0 0033B2E0  41 82 00 0C */	beq .L_8033E3AC
/* 8033E3A4 0033B2E4  83 7B 00 0C */	lwz r27, 0xc(r27)
/* 8033E3A8 0033B2E8  48 00 00 08 */	b .L_8033E3B0
.L_8033E3AC:
/* 8033E3AC 0033B2EC  3B 60 00 00 */	li r27, 0
.L_8033E3B0:
/* 8033E3B0 0033B2F0  28 1B 00 00 */	cmplwi r27, 0
/* 8033E3B4 0033B2F4  40 82 FF 74 */	bne .L_8033E328
/* 8033E3B8 0033B2F8  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E3BC 0033B2FC  4B DB 18 89 */	bl OSUnlockMutex
/* 8033E3C0 0033B300  38 00 00 01 */	li r0, 1
.L_8033E3C4:
/* 8033E3C4 0033B304  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8033E3C8 0033B308  40 82 00 10 */	bne .L_8033E3D8
/* 8033E3CC 0033B30C  7F E3 FB 78 */	mr r3, r31
/* 8033E3D0 0033B310  7F 84 E3 78 */	mr r4, r28
/* 8033E3D4 0033B314  4B CE 88 51 */	bl remove__10JSUPtrListFP10JSUPtrLink
.L_8033E3D8:
/* 8033E3D8 0033B318  38 7F 00 0C */	addi r3, r31, 0xc
/* 8033E3DC 0033B31C  4B DB 18 69 */	bl OSUnlockMutex
/* 8033E3E0 0033B320  BB 41 00 08 */	lmw r26, 8(r1)
/* 8033E3E4 0033B324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033E3E8 0033B328  7C 08 03 A6 */	mtlr r0
/* 8033E3EC 0033B32C  38 21 00 20 */	addi r1, r1, 0x20
/* 8033E3F0 0033B330  4E 80 00 20 */	blr 
.endfn update__Q28PSSystem12TaskEntryMgrFv

.fn appendEntry__Q28PSSystem12TaskEntryMgrFPQ28PSSystem9TaskEntryPQ28PSSystem12DirectorBase, global
/* 8033E3F4 0033B334  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033E3F8 0033B338  7C 08 02 A6 */	mflr r0
/* 8033E3FC 0033B33C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033E400 0033B340  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033E404 0033B344  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033E408 0033B348  7C BE 2B 78 */	mr r30, r5
/* 8033E40C 0033B34C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033E410 0033B350  7C 9D 23 79 */	or. r29, r4, r4
/* 8033E414 0033B354  3C 80 80 49 */	lis r4, lbl_8048FF20@ha
/* 8033E418 0033B358  93 81 00 10 */	stw r28, 0x10(r1)
/* 8033E41C 0033B35C  7C 7C 1B 78 */	mr r28, r3
/* 8033E420 0033B360  3B E4 FF 20 */	addi r31, r4, lbl_8048FF20@l
/* 8033E424 0033B364  40 82 00 18 */	bne .L_8033E43C
/* 8033E428 0033B368  38 7F 00 00 */	addi r3, r31, 0
/* 8033E42C 0033B36C  38 BF 00 10 */	addi r5, r31, 0x10
/* 8033E430 0033B370  38 80 00 DC */	li r4, 0xdc
/* 8033E434 0033B374  4C C6 31 82 */	crclr 6
/* 8033E438 0033B378  4B CE C2 09 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8033E43C:
/* 8033E43C 0033B37C  38 00 00 00 */	li r0, 0
/* 8033E440 0033B380  28 1E 00 00 */	cmplwi r30, 0
/* 8033E444 0033B384  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8033E448 0033B388  41 82 00 20 */	beq .L_8033E468
/* 8033E44C 0033B38C  40 82 00 18 */	bne .L_8033E464
/* 8033E450 0033B390  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8033E454 0033B394  38 BF 00 10 */	addi r5, r31, 0x10
/* 8033E458 0033B398  38 80 00 50 */	li r4, 0x50
/* 8033E45C 0033B39C  4C C6 31 82 */	crclr 6
/* 8033E460 0033B3A0  4B CE C1 E1 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8033E464:
/* 8033E464 0033B3A4  93 DD 00 24 */	stw r30, 0x24(r29)
.L_8033E468:
/* 8033E468 0033B3A8  7F 83 E3 78 */	mr r3, r28
/* 8033E46C 0033B3AC  38 9D 00 28 */	addi r4, r29, 0x28
/* 8033E470 0033B3B0  48 00 01 ED */	bl "append_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>"
/* 8033E474 0033B3B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033E478 0033B3B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033E47C 0033B3BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033E480 0033B3C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033E484 0033B3C4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8033E488 0033B3C8  7C 08 03 A6 */	mtlr r0
/* 8033E48C 0033B3CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8033E490 0033B3D0  4E 80 00 20 */	blr 
.endfn appendEntry__Q28PSSystem12TaskEntryMgrFPQ28PSSystem9TaskEntryPQ28PSSystem12DirectorBase

.fn removeEntry__Q28PSSystem12TaskEntryMgrFPQ28PSSystem9TaskEntry, global
/* 8033E494 0033B3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033E498 0033B3D8  7C 08 02 A6 */	mflr r0
/* 8033E49C 0033B3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033E4A0 0033B3E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033E4A4 0033B3E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8033E4A8 0033B3E8  7C 9E 23 79 */	or. r30, r4, r4
/* 8033E4AC 0033B3EC  41 82 00 44 */	beq .L_8033E4F0
/* 8033E4B0 0033B3F0  38 9E 00 28 */	addi r4, r30, 0x28
/* 8033E4B4 0033B3F4  48 00 00 F9 */	bl "remove_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>"
/* 8033E4B8 0033B3F8  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E4BC 0033B3FC  4B DB 16 AD */	bl OSLockMutex
/* 8033E4C0 0033B400  80 9E 00 00 */	lwz r4, 0(r30)
/* 8033E4C4 0033B404  48 00 00 14 */	b .L_8033E4D8
.L_8033E4C8:
/* 8033E4C8 0033B408  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 8033E4CC 0033B40C  7F C3 F3 78 */	mr r3, r30
/* 8033E4D0 0033B410  4B CE 87 55 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8033E4D4 0033B414  7F E4 FB 78 */	mr r4, r31
.L_8033E4D8:
/* 8033E4D8 0033B418  28 04 00 00 */	cmplwi r4, 0
/* 8033E4DC 0033B41C  40 82 FF EC */	bne .L_8033E4C8
/* 8033E4E0 0033B420  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E4E4 0033B424  4B DB 17 61 */	bl OSUnlockMutex
/* 8033E4E8 0033B428  38 00 00 00 */	li r0, 0
/* 8033E4EC 0033B42C  90 1E 00 24 */	stw r0, 0x24(r30)
.L_8033E4F0:
/* 8033E4F0 0033B430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033E4F4 0033B434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033E4F8 0033B438  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033E4FC 0033B43C  7C 08 03 A6 */	mtlr r0
/* 8033E500 0033B440  38 21 00 10 */	addi r1, r1, 0x10
/* 8033E504 0033B444  4E 80 00 20 */	blr 
.endfn removeEntry__Q28PSSystem12TaskEntryMgrFPQ28PSSystem9TaskEntry

.fn removeAllEntry__Q28PSSystem12TaskEntryMgrFv, global
/* 8033E508 0033B448  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033E50C 0033B44C  7C 08 02 A6 */	mflr r0
/* 8033E510 0033B450  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033E514 0033B454  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033E518 0033B458  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033E51C 0033B45C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033E520 0033B460  7C 7D 1B 78 */	mr r29, r3
/* 8033E524 0033B464  38 7D 00 0C */	addi r3, r29, 0xc
/* 8033E528 0033B468  4B DB 16 41 */	bl OSLockMutex
/* 8033E52C 0033B46C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8033E530 0033B470  28 03 00 00 */	cmplwi r3, 0
/* 8033E534 0033B474  41 82 00 54 */	beq .L_8033E588
/* 8033E538 0033B478  83 E3 00 00 */	lwz r31, 0(r3)
/* 8033E53C 0033B47C  28 1F 00 00 */	cmplwi r31, 0
/* 8033E540 0033B480  41 82 00 48 */	beq .L_8033E588
/* 8033E544 0033B484  7F A3 EB 78 */	mr r3, r29
/* 8033E548 0033B488  38 9F 00 28 */	addi r4, r31, 0x28
/* 8033E54C 0033B48C  48 00 00 61 */	bl "remove_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>"
/* 8033E550 0033B490  38 7F 00 0C */	addi r3, r31, 0xc
/* 8033E554 0033B494  4B DB 16 15 */	bl OSLockMutex
/* 8033E558 0033B498  80 9F 00 00 */	lwz r4, 0(r31)
/* 8033E55C 0033B49C  48 00 00 14 */	b .L_8033E570
.L_8033E560:
/* 8033E560 0033B4A0  83 C4 00 0C */	lwz r30, 0xc(r4)
/* 8033E564 0033B4A4  7F E3 FB 78 */	mr r3, r31
/* 8033E568 0033B4A8  4B CE 86 BD */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8033E56C 0033B4AC  7F C4 F3 78 */	mr r4, r30
.L_8033E570:
/* 8033E570 0033B4B0  28 04 00 00 */	cmplwi r4, 0
/* 8033E574 0033B4B4  40 82 FF EC */	bne .L_8033E560
/* 8033E578 0033B4B8  38 7F 00 0C */	addi r3, r31, 0xc
/* 8033E57C 0033B4BC  4B DB 16 C9 */	bl OSUnlockMutex
/* 8033E580 0033B4C0  38 00 00 00 */	li r0, 0
/* 8033E584 0033B4C4  90 1F 00 24 */	stw r0, 0x24(r31)
.L_8033E588:
/* 8033E588 0033B4C8  38 7D 00 0C */	addi r3, r29, 0xc
/* 8033E58C 0033B4CC  4B DB 16 B9 */	bl OSUnlockMutex
/* 8033E590 0033B4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033E594 0033B4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033E598 0033B4D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033E59C 0033B4DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033E5A0 0033B4E0  7C 08 03 A6 */	mtlr r0
/* 8033E5A4 0033B4E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8033E5A8 0033B4E8  4E 80 00 20 */	blr 
.endfn removeAllEntry__Q28PSSystem12TaskEntryMgrFv

.fn "remove_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>", weak
/* 8033E5AC 0033B4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033E5B0 0033B4F0  7C 08 02 A6 */	mflr r0
/* 8033E5B4 0033B4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033E5B8 0033B4F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033E5BC 0033B4FC  7C 9F 23 78 */	mr r31, r4
/* 8033E5C0 0033B500  93 C1 00 08 */	stw r30, 8(r1)
/* 8033E5C4 0033B504  7C 7E 1B 78 */	mr r30, r3
/* 8033E5C8 0033B508  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E5CC 0033B50C  4B DB 15 9D */	bl OSLockMutex
/* 8033E5D0 0033B510  7F C3 F3 78 */	mr r3, r30
/* 8033E5D4 0033B514  7F E4 FB 78 */	mr r4, r31
/* 8033E5D8 0033B518  4B CE 86 4D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8033E5DC 0033B51C  7C 7F 1B 78 */	mr r31, r3
/* 8033E5E0 0033B520  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E5E4 0033B524  4B DB 16 61 */	bl OSUnlockMutex
/* 8033E5E8 0033B528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033E5EC 0033B52C  7F E3 FB 78 */	mr r3, r31
/* 8033E5F0 0033B530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033E5F4 0033B534  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033E5F8 0033B538  7C 08 03 A6 */	mtlr r0
/* 8033E5FC 0033B53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8033E600 0033B540  4E 80 00 20 */	blr 
.endfn "remove_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>"

.fn "append_Lock__Q28PSSystem31MutexList<Q28PSSystem8TaskBase>FP29JSULink<Q28PSSystem8TaskBase>", weak
/* 8033E604 0033B544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033E608 0033B548  7C 08 02 A6 */	mflr r0
/* 8033E60C 0033B54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033E610 0033B550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033E614 0033B554  7C 9F 23 78 */	mr r31, r4
/* 8033E618 0033B558  93 C1 00 08 */	stw r30, 8(r1)
/* 8033E61C 0033B55C  7C 7E 1B 78 */	mr r30, r3
/* 8033E620 0033B560  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E624 0033B564  4B DB 15 45 */	bl OSLockMutex
/* 8033E628 0033B568  7F C3 F3 78 */	mr r3, r30
/* 8033E62C 0033B56C  7F E4 FB 78 */	mr r4, r31
/* 8033E630 0033B570  4B CE 82 B5 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8033E634 0033B574  7C 7F 1B 78 */	mr r31, r3
/* 8033E638 0033B578  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E63C 0033B57C  4B DB 16 09 */	bl OSUnlockMutex
/* 8033E640 0033B580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033E644 0033B584  7F E3 FB 78 */	mr r3, r31
/* 8033E648 0033B588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033E64C 0033B58C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033E650 0033B590  7C 08 03 A6 */	mtlr r0
/* 8033E654 0033B594  38 21 00 10 */	addi r1, r1, 0x10
/* 8033E658 0033B598  4E 80 00 20 */	blr 
.endfn "append_Lock__Q28PSSystem31MutexList<Q28PSSystem8TaskBase>FP29JSULink<Q28PSSystem8TaskBase>"

.fn "append_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>", weak
/* 8033E65C 0033B59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033E660 0033B5A0  7C 08 02 A6 */	mflr r0
/* 8033E664 0033B5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033E668 0033B5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033E66C 0033B5AC  7C 9F 23 78 */	mr r31, r4
/* 8033E670 0033B5B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8033E674 0033B5B4  7C 7E 1B 78 */	mr r30, r3
/* 8033E678 0033B5B8  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E67C 0033B5BC  4B DB 14 ED */	bl OSLockMutex
/* 8033E680 0033B5C0  7F C3 F3 78 */	mr r3, r30
/* 8033E684 0033B5C4  7F E4 FB 78 */	mr r4, r31
/* 8033E688 0033B5C8  4B CE 82 5D */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8033E68C 0033B5CC  7C 7F 1B 78 */	mr r31, r3
/* 8033E690 0033B5D0  38 7E 00 0C */	addi r3, r30, 0xc
/* 8033E694 0033B5D4  4B DB 15 B1 */	bl OSUnlockMutex
/* 8033E698 0033B5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033E69C 0033B5DC  7F E3 FB 78 */	mr r3, r31
/* 8033E6A0 0033B5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033E6A4 0033B5E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033E6A8 0033B5E8  7C 08 03 A6 */	mtlr r0
/* 8033E6AC 0033B5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8033E6B0 0033B5F0  4E 80 00 20 */	blr 
.endfn "append_Lock__Q28PSSystem32MutexList<Q28PSSystem9TaskEntry>FP30JSULink<Q28PSSystem9TaskEntry>"
