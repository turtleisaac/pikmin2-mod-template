.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj OSC_RELEASE_TABLE__10JASBankMgr, local
	.4byte 0x0001000A
	.4byte 0x0000000F
	.4byte 0x00000000
.endobj OSC_RELEASE_TABLE__10JASBankMgr
.obj OSC_ENV__10JASBankMgr, local
	.4byte 0
	.float 1.0
	.4byte 0x00000000
	.4byte OSC_RELEASE_TABLE__10JASBankMgr
	.float 1.0
	.float 0.0
.endobj OSC_ENV__10JASBankMgr

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj sTableSize__10JASBankMgr, local
	.skip 0x4
.endobj sTableSize__10JASBankMgr
.obj sBankArray__10JASBankMgr, local
	.skip 0x4
.endobj sBankArray__10JASBankMgr
.obj sVir2PhyTable__10JASBankMgr, local
	.skip 0x4
.endobj sVir2PhyTable__10JASBankMgr
.obj "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>", weak
	.skip 0x4
.endobj "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80516C88, local
	.float 1.0
.endobj lbl_80516C88
.obj lbl_80516C8C, local
	.float 0.5
.endobj lbl_80516C8C
.obj lbl_80516C90, local
	.float 0.0
.endobj lbl_80516C90
.obj lbl_80516C94, local
	.float 127.0
.endobj lbl_80516C94
.balign 8
.obj lbl_80516C98, local
	.8byte 0x4330000000000000
.endobj lbl_80516C98
.obj lbl_80516CA0, local
	.float 16736.016
.endobj lbl_80516CA0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn init__10JASBankMgrFi, global
/* 80098F34 00095E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098F38 00095E78  7C 08 02 A6 */	mflr r0
/* 80098F3C 00095E7C  38 A0 00 00 */	li r5, 0
/* 80098F40 00095E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098F44 00095E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80098F48 00095E88  7C 7F 1B 78 */	mr r31, r3
/* 80098F4C 00095E8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80098F50 00095E90  54 7E 10 3A */	slwi r30, r3, 2
/* 80098F54 00095E94  7F C3 F3 78 */	mr r3, r30
/* 80098F58 00095E98  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 80098F5C 00095E9C  4B F8 B0 ED */	bl __nwa__FUlP7JKRHeapi
/* 80098F60 00095EA0  90 6D 8A 1C */	stw r3, sBankArray__10JASBankMgr@sda21(r13)
/* 80098F64 00095EA4  57 E3 08 3C */	slwi r3, r31, 1
/* 80098F68 00095EA8  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 80098F6C 00095EAC  38 A0 00 00 */	li r5, 0
/* 80098F70 00095EB0  4B F8 B0 D9 */	bl __nwa__FUlP7JKRHeapi
/* 80098F74 00095EB4  90 6D 8A 20 */	stw r3, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80098F78 00095EB8  7F C4 F3 78 */	mr r4, r30
/* 80098F7C 00095EBC  80 6D 8A 1C */	lwz r3, sBankArray__10JASBankMgr@sda21(r13)
/* 80098F80 00095EC0  48 00 D2 E5 */	bl bzero__7JASCalcFPvUl
/* 80098F84 00095EC4  2C 1F 00 00 */	cmpwi r31, 0
/* 80098F88 00095EC8  39 80 00 00 */	li r12, 0
/* 80098F8C 00095ECC  40 81 00 C4 */	ble .L_80099050
/* 80098F90 00095ED0  2C 1F 00 08 */	cmpwi r31, 8
/* 80098F94 00095ED4  38 9F FF F8 */	addi r4, r31, -8
/* 80098F98 00095ED8  40 81 00 8C */	ble .L_80099024
/* 80098F9C 00095EDC  38 04 00 07 */	addi r0, r4, 7
/* 80098FA0 00095EE0  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80098FA4 00095EE4  54 00 E8 FE */	srwi r0, r0, 3
/* 80098FA8 00095EE8  39 60 00 00 */	li r11, 0
/* 80098FAC 00095EEC  39 43 FF FF */	addi r10, r3, 0x0000FFFF@l
/* 80098FB0 00095EF0  7C 09 03 A6 */	mtctr r0
/* 80098FB4 00095EF4  2C 04 00 00 */	cmpwi r4, 0
/* 80098FB8 00095EF8  40 81 00 6C */	ble .L_80099024
.L_80098FBC:
/* 80098FBC 00095EFC  80 6D 8A 20 */	lwz r3, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80098FC0 00095F00  39 0B 00 02 */	addi r8, r11, 2
/* 80098FC4 00095F04  38 EB 00 04 */	addi r7, r11, 4
/* 80098FC8 00095F08  38 CB 00 06 */	addi r6, r11, 6
/* 80098FCC 00095F0C  7D 43 5B 2E */	sthx r10, r3, r11
/* 80098FD0 00095F10  38 AB 00 08 */	addi r5, r11, 8
/* 80098FD4 00095F14  38 8B 00 0A */	addi r4, r11, 0xa
/* 80098FD8 00095F18  38 6B 00 0C */	addi r3, r11, 0xc
/* 80098FDC 00095F1C  81 2D 8A 20 */	lwz r9, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80098FE0 00095F20  38 0B 00 0E */	addi r0, r11, 0xe
/* 80098FE4 00095F24  39 6B 00 10 */	addi r11, r11, 0x10
/* 80098FE8 00095F28  39 8C 00 08 */	addi r12, r12, 8
/* 80098FEC 00095F2C  7D 49 43 2E */	sthx r10, r9, r8
/* 80098FF0 00095F30  81 0D 8A 20 */	lwz r8, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80098FF4 00095F34  7D 48 3B 2E */	sthx r10, r8, r7
/* 80098FF8 00095F38  80 ED 8A 20 */	lwz r7, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80098FFC 00095F3C  7D 47 33 2E */	sthx r10, r7, r6
/* 80099000 00095F40  80 CD 8A 20 */	lwz r6, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80099004 00095F44  7D 46 2B 2E */	sthx r10, r6, r5
/* 80099008 00095F48  80 AD 8A 20 */	lwz r5, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 8009900C 00095F4C  7D 45 23 2E */	sthx r10, r5, r4
/* 80099010 00095F50  80 8D 8A 20 */	lwz r4, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80099014 00095F54  7D 44 1B 2E */	sthx r10, r4, r3
/* 80099018 00095F58  80 6D 8A 20 */	lwz r3, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 8009901C 00095F5C  7D 43 03 2E */	sthx r10, r3, r0
/* 80099020 00095F60  42 00 FF 9C */	bdnz .L_80098FBC
.L_80099024:
/* 80099024 00095F64  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80099028 00095F68  7C 0C F8 50 */	subf r0, r12, r31
/* 8009902C 00095F6C  55 85 08 3C */	slwi r5, r12, 1
/* 80099030 00095F70  38 83 FF FF */	addi r4, r3, 0x0000FFFF@l
/* 80099034 00095F74  7C 09 03 A6 */	mtctr r0
/* 80099038 00095F78  7C 0C F8 00 */	cmpw r12, r31
/* 8009903C 00095F7C  40 80 00 14 */	bge .L_80099050
.L_80099040:
/* 80099040 00095F80  80 6D 8A 20 */	lwz r3, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 80099044 00095F84  7C 83 2B 2E */	sthx r4, r3, r5
/* 80099048 00095F88  38 A5 00 02 */	addi r5, r5, 2
/* 8009904C 00095F8C  42 00 FF F4 */	bdnz .L_80099040
.L_80099050:
/* 80099050 00095F90  93 ED 8A 18 */	stw r31, sTableSize__10JASBankMgr@sda21(r13)
/* 80099054 00095F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099058 00095F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009905C 00095F9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099060 00095FA0  7C 08 03 A6 */	mtlr r0
/* 80099064 00095FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80099068 00095FA8  4E 80 00 20 */	blr 
.endfn init__10JASBankMgrFi

.fn registBankBNK__10JASBankMgrFiPv, global
/* 8009906C 00095FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099070 00095FB0  7C 08 02 A6 */	mflr r0
/* 80099074 00095FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099078 00095FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009907C 00095FBC  7C 9F 23 78 */	mr r31, r4
/* 80099080 00095FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80099084 00095FC4  7C 7E 1B 78 */	mr r30, r3
/* 80099088 00095FC8  80 64 00 08 */	lwz r3, 8(r4)
/* 8009908C 00095FCC  7F C4 F3 78 */	mr r4, r30
/* 80099090 00095FD0  48 00 00 55 */	bl setVir2PhyTable__10JASBankMgrFUli
/* 80099094 00095FD4  7F E3 FB 78 */	mr r3, r31
/* 80099098 00095FD8  48 00 17 45 */	bl createBasicBank__12JASBNKParserFPv
/* 8009909C 00095FDC  28 03 00 00 */	cmplwi r3, 0
/* 800990A0 00095FE0  40 82 00 0C */	bne .L_800990AC
/* 800990A4 00095FE4  38 60 00 00 */	li r3, 0
/* 800990A8 00095FE8  48 00 00 14 */	b .L_800990BC
.L_800990AC:
/* 800990AC 00095FEC  80 8D 8A 1C */	lwz r4, sBankArray__10JASBankMgr@sda21(r13)
/* 800990B0 00095FF0  57 C0 10 3A */	slwi r0, r30, 2
/* 800990B4 00095FF4  7C 64 01 2E */	stwx r3, r4, r0
/* 800990B8 00095FF8  38 60 00 01 */	li r3, 1
.L_800990BC:
/* 800990BC 00095FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800990C0 00096000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800990C4 00096004  83 C1 00 08 */	lwz r30, 8(r1)
/* 800990C8 00096008  7C 08 03 A6 */	mtlr r0
/* 800990CC 0009600C  38 21 00 10 */	addi r1, r1, 0x10
/* 800990D0 00096010  4E 80 00 20 */	blr 
.endfn registBankBNK__10JASBankMgrFiPv

.fn getPhysicalNumber__10JASBankMgrFUs, global
/* 800990D4 00096014  80 8D 8A 20 */	lwz r4, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 800990D8 00096018  54 60 0B FC */	rlwinm r0, r3, 1, 0xf, 0x1e
/* 800990DC 0009601C  7C 64 02 2E */	lhzx r3, r4, r0
/* 800990E0 00096020  4E 80 00 20 */	blr 
.endfn getPhysicalNumber__10JASBankMgrFUs

.fn setVir2PhyTable__10JASBankMgrFUli, global
/* 800990E4 00096024  28 03 FF FF */	cmplwi r3, 0xffff
/* 800990E8 00096028  4D 82 00 20 */	beqlr 
/* 800990EC 0009602C  80 AD 8A 20 */	lwz r5, sVir2PhyTable__10JASBankMgr@sda21(r13)
/* 800990F0 00096030  54 60 08 3C */	slwi r0, r3, 1
/* 800990F4 00096034  7C 85 03 2E */	sthx r4, r5, r0
/* 800990F8 00096038  4E 80 00 20 */	blr 
.endfn setVir2PhyTable__10JASBankMgrFUli

.fn assignWaveBank__10JASBankMgrFii, global
/* 800990FC 0009603C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099100 00096040  7C 08 02 A6 */	mflr r0
/* 80099104 00096044  2C 03 00 00 */	cmpwi r3, 0
/* 80099108 00096048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009910C 0009604C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099110 00096050  40 80 00 0C */	bge .L_8009911C
/* 80099114 00096054  3B E0 00 00 */	li r31, 0
/* 80099118 00096058  48 00 00 24 */	b .L_8009913C
.L_8009911C:
/* 8009911C 0009605C  80 0D 8A 18 */	lwz r0, sTableSize__10JASBankMgr@sda21(r13)
/* 80099120 00096060  7C 03 00 00 */	cmpw r3, r0
/* 80099124 00096064  41 80 00 0C */	blt .L_80099130
/* 80099128 00096068  3B E0 00 00 */	li r31, 0
/* 8009912C 0009606C  48 00 00 10 */	b .L_8009913C
.L_80099130:
/* 80099130 00096070  80 AD 8A 1C */	lwz r5, sBankArray__10JASBankMgr@sda21(r13)
/* 80099134 00096074  54 60 10 3A */	slwi r0, r3, 2
/* 80099138 00096078  7F E5 00 2E */	lwzx r31, r5, r0
.L_8009913C:
/* 8009913C 0009607C  28 1F 00 00 */	cmplwi r31, 0
/* 80099140 00096080  40 82 00 0C */	bne .L_8009914C
/* 80099144 00096084  38 60 00 00 */	li r3, 0
/* 80099148 00096088  48 00 00 24 */	b .L_8009916C
.L_8009914C:
/* 8009914C 0009608C  7C 83 23 78 */	mr r3, r4
/* 80099150 00096090  48 00 2F 49 */	bl getWaveBank__14JASWaveBankMgrFi
/* 80099154 00096094  28 03 00 00 */	cmplwi r3, 0
/* 80099158 00096098  40 82 00 0C */	bne .L_80099164
/* 8009915C 0009609C  38 60 00 00 */	li r3, 0
/* 80099160 000960A0  48 00 00 0C */	b .L_8009916C
.L_80099164:
/* 80099164 000960A4  90 7F 00 04 */	stw r3, 4(r31)
/* 80099168 000960A8  38 60 00 01 */	li r3, 1
.L_8009916C:
/* 8009916C 000960AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099170 000960B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099174 000960B4  7C 08 03 A6 */	mtlr r0
/* 80099178 000960B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009917C 000960BC  4E 80 00 20 */	blr 
.endfn assignWaveBank__10JASBankMgrFii

.fn noteOn__10JASBankMgrFiiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv, global
/* 80099180 000960C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80099184 000960C4  7C 08 02 A6 */	mflr r0
/* 80099188 000960C8  7C 8A 23 78 */	mr r10, r4
/* 8009918C 000960CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80099190 000960D0  2C 0A 00 EF */	cmpwi r10, 0xef
/* 80099194 000960D4  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 80099198 000960D8  7C B9 2B 78 */	mr r25, r5
/* 8009919C 000960DC  7C DB 33 78 */	mr r27, r6
/* 800991A0 000960E0  7C FC 3B 78 */	mr r28, r7
/* 800991A4 000960E4  7D 1D 43 78 */	mr r29, r8
/* 800991A8 000960E8  7D 3E 4B 78 */	mr r30, r9
/* 800991AC 000960EC  40 81 00 24 */	ble .L_800991D0
/* 800991B0 000960F0  7F 24 CB 78 */	mr r4, r25
/* 800991B4 000960F4  7F 65 DB 78 */	mr r5, r27
/* 800991B8 000960F8  7F 86 E3 78 */	mr r6, r28
/* 800991BC 000960FC  7F A7 EB 78 */	mr r7, r29
/* 800991C0 00096100  7F C8 F3 78 */	mr r8, r30
/* 800991C4 00096104  38 6A FF 10 */	addi r3, r10, -240
/* 800991C8 00096108  48 00 03 19 */	bl noteOnOsc__10JASBankMgrFiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 800991CC 0009610C  48 00 03 00 */	b .L_800994CC
.L_800991D0:
/* 800991D0 00096110  2C 03 00 00 */	cmpwi r3, 0
/* 800991D4 00096114  40 80 00 0C */	bge .L_800991E0
/* 800991D8 00096118  3B 00 00 00 */	li r24, 0
/* 800991DC 0009611C  48 00 00 24 */	b .L_80099200
.L_800991E0:
/* 800991E0 00096120  80 0D 8A 18 */	lwz r0, sTableSize__10JASBankMgr@sda21(r13)
/* 800991E4 00096124  7C 03 00 00 */	cmpw r3, r0
/* 800991E8 00096128  41 80 00 0C */	blt .L_800991F4
/* 800991EC 0009612C  3B 00 00 00 */	li r24, 0
/* 800991F0 00096130  48 00 00 10 */	b .L_80099200
.L_800991F4:
/* 800991F4 00096134  80 8D 8A 1C */	lwz r4, sBankArray__10JASBankMgr@sda21(r13)
/* 800991F8 00096138  54 60 10 3A */	slwi r0, r3, 2
/* 800991FC 0009613C  7F 04 00 2E */	lwzx r24, r4, r0
.L_80099200:
/* 80099200 00096140  28 18 00 00 */	cmplwi r24, 0
/* 80099204 00096144  40 82 00 0C */	bne .L_80099210
/* 80099208 00096148  38 60 00 00 */	li r3, 0
/* 8009920C 0009614C  48 00 02 C0 */	b .L_800994CC
.L_80099210:
/* 80099210 00096150  7F 03 C3 78 */	mr r3, r24
/* 80099214 00096154  7D 44 53 78 */	mr r4, r10
/* 80099218 00096158  81 98 00 00 */	lwz r12, 0(r24)
/* 8009921C 0009615C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80099220 00096160  7D 89 03 A6 */	mtctr r12
/* 80099224 00096164  4E 80 04 21 */	bctrl 
/* 80099228 00096168  28 03 00 00 */	cmplwi r3, 0
/* 8009922C 0009616C  40 82 00 0C */	bne .L_80099238
/* 80099230 00096170  38 60 00 00 */	li r3, 0
/* 80099234 00096174  48 00 02 98 */	b .L_800994CC
.L_80099238:
/* 80099238 00096178  C0 42 89 28 */	lfs f2, lbl_80516C88@sda21(r2)
/* 8009923C 0009617C  38 00 00 00 */	li r0, 0
/* 80099240 00096180  C0 02 89 30 */	lfs f0, lbl_80516C90@sda21(r2)
/* 80099244 00096184  57 3F 06 3E */	clrlwi r31, r25, 0x18
/* 80099248 00096188  C0 22 89 2C */	lfs f1, lbl_80516C8C@sda21(r2)
/* 8009924C 0009618C  7F E4 FB 78 */	mr r4, r31
/* 80099250 00096190  98 01 00 0C */	stb r0, 0xc(r1)
/* 80099254 00096194  57 65 06 3E */	clrlwi r5, r27, 0x18
/* 80099258 00096198  38 C1 00 0C */	addi r6, r1, 0xc
/* 8009925C 0009619C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80099260 000961A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099264 000961A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80099268 000961A8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8009926C 000961AC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80099270 000961B0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80099274 000961B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80099278 000961B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8009927C 000961BC  98 01 00 30 */	stb r0, 0x30(r1)
/* 80099280 000961C0  B0 01 00 32 */	sth r0, 0x32(r1)
/* 80099284 000961C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80099288 000961C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8009928C 000961CC  7D 89 03 A6 */	mtctr r12
/* 80099290 000961D0  4E 80 04 21 */	bctrl 
/* 80099294 000961D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80099298 000961D8  40 82 00 0C */	bne .L_800992A4
/* 8009929C 000961DC  38 60 00 00 */	li r3, 0
/* 800992A0 000961E0  48 00 02 2C */	b .L_800994CC
.L_800992A4:
/* 800992A4 000961E4  80 78 00 04 */	lwz r3, 4(r24)
/* 800992A8 000961E8  28 03 00 00 */	cmplwi r3, 0
/* 800992AC 000961EC  40 82 00 0C */	bne .L_800992B8
/* 800992B0 000961F0  38 60 00 00 */	li r3, 0
/* 800992B4 000961F4  48 00 02 18 */	b .L_800994CC
.L_800992B8:
/* 800992B8 000961F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800992BC 000961FC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800992C0 00096200  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800992C4 00096204  7D 89 03 A6 */	mtctr r12
/* 800992C8 00096208  4E 80 04 21 */	bctrl 
/* 800992CC 0009620C  7C 79 1B 79 */	or. r25, r3, r3
/* 800992D0 00096210  40 82 00 0C */	bne .L_800992DC
/* 800992D4 00096214  38 60 00 00 */	li r3, 0
/* 800992D8 00096218  48 00 01 F4 */	b .L_800994CC
.L_800992DC:
/* 800992DC 0009621C  81 83 00 00 */	lwz r12, 0(r3)
/* 800992E0 00096220  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800992E4 00096224  7D 89 03 A6 */	mtctr r12
/* 800992E8 00096228  4E 80 04 21 */	bctrl 
/* 800992EC 0009622C  7C 78 1B 79 */	or. r24, r3, r3
/* 800992F0 00096230  40 82 00 0C */	bne .L_800992FC
/* 800992F4 00096234  38 60 00 00 */	li r3, 0
/* 800992F8 00096238  48 00 01 D4 */	b .L_800994CC
.L_800992FC:
/* 800992FC 0009623C  7F 23 CB 78 */	mr r3, r25
/* 80099300 00096240  81 99 00 00 */	lwz r12, 0(r25)
/* 80099304 00096244  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80099308 00096248  7D 89 03 A6 */	mtctr r12
/* 8009930C 0009624C  4E 80 04 21 */	bctrl 
/* 80099310 00096250  7C 79 1B 79 */	or. r25, r3, r3
/* 80099314 00096254  40 82 00 0C */	bne .L_80099320
/* 80099318 00096258  38 60 00 00 */	li r3, 0
/* 8009931C 0009625C  48 00 01 B0 */	b .L_800994CC
.L_80099320:
/* 80099320 00096260  80 0D 8A 24 */	lwz r0, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 80099324 00096264  28 00 00 00 */	cmplwi r0, 0
/* 80099328 00096268  40 82 00 40 */	bne .L_80099368
/* 8009932C 0009626C  48 05 59 0D */	bl OSDisableInterrupts
/* 80099330 00096270  80 0D 8A 24 */	lwz r0, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 80099334 00096274  90 61 00 08 */	stw r3, 8(r1)
/* 80099338 00096278  28 00 00 00 */	cmplwi r0, 0
/* 8009933C 0009627C  40 82 00 24 */	bne .L_80099360
/* 80099340 00096280  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 80099344 00096284  38 60 00 0C */	li r3, 0xc
/* 80099348 00096288  38 A0 00 00 */	li r5, 0
/* 8009934C 0009628C  4B F8 AB F5 */	bl __nw__FUlP7JKRHeapi
/* 80099350 00096290  7C 7A 1B 79 */	or. r26, r3, r3
/* 80099354 00096294  41 82 00 08 */	beq .L_8009935C
/* 80099358 00096298  48 00 DE 2D */	bl __ct__17JASGenericMemPoolFv
.L_8009935C:
/* 8009935C 0009629C  93 4D 8A 24 */	stw r26, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
.L_80099360:
/* 80099360 000962A0  80 61 00 08 */	lwz r3, 8(r1)
/* 80099364 000962A4  48 05 58 FD */	bl OSRestoreInterrupts
.L_80099368:
/* 80099368 000962A8  80 6D 8A 24 */	lwz r3, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 8009936C 000962AC  38 80 01 18 */	li r4, 0x118
/* 80099370 000962B0  48 00 DE BD */	bl alloc__17JASGenericMemPoolFUl
/* 80099374 000962B4  7C 7A 1B 79 */	or. r26, r3, r3
/* 80099378 000962B8  41 82 00 14 */	beq .L_8009938C
/* 8009937C 000962BC  7F A4 EB 78 */	mr r4, r29
/* 80099380 000962C0  7F C5 F3 78 */	mr r5, r30
/* 80099384 000962C4  48 00 9E 81 */	bl __ct__10JASChannelFPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 80099388 000962C8  7C 7A 1B 78 */	mr r26, r3
.L_8009938C:
/* 8009938C 000962CC  28 1A 00 00 */	cmplwi r26, 0
/* 80099390 000962D0  40 82 00 0C */	bne .L_8009939C
/* 80099394 000962D4  38 60 00 00 */	li r3, 0
/* 80099398 000962D8  48 00 01 34 */	b .L_800994CC
.L_8009939C:
/* 8009939C 000962DC  C0 22 89 28 */	lfs f1, lbl_80516C88@sda21(r2)
/* 800993A0 000962E0  7F 43 D3 78 */	mr r3, r26
/* 800993A4 000962E4  FC 40 08 90 */	fmr f2, f1
/* 800993A8 000962E8  FC 60 08 90 */	fmr f3, f1
/* 800993AC 000962EC  48 00 A2 F1 */	bl setPanPower__10JASChannelFfff
/* 800993B0 000962F0  B3 9A 00 BC */	sth r28, 0xbc(r26)
/* 800993B4 000962F4  93 1A 00 E8 */	stw r24, 0xe8(r26)
/* 800993B8 000962F8  93 3A 00 EC */	stw r25, 0xec(r26)
/* 800993BC 000962FC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 800993C0 00096300  98 1A 00 E4 */	stb r0, 0xe4(r26)
/* 800993C4 00096304  48 00 EE 2D */	bl getDacRate__9JASDriverFv
/* 800993C8 00096308  C0 58 00 04 */	lfs f2, 4(r24)
/* 800993CC 0009630C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800993D0 00096310  EC 22 08 24 */	fdivs f1, f2, f1
/* 800993D4 00096314  EC 00 00 72 */	fmuls f0, f0, f1
/* 800993D8 00096318  D0 1A 00 F0 */	stfs f0, 0xf0(r26)
/* 800993DC 0009631C  C0 1A 00 F0 */	lfs f0, 0xf0(r26)
/* 800993E0 00096320  D0 1A 00 F8 */	stfs f0, 0xf8(r26)
/* 800993E4 00096324  88 01 00 30 */	lbz r0, 0x30(r1)
/* 800993E8 00096328  28 00 00 00 */	cmplwi r0, 0
/* 800993EC 0009632C  40 82 00 20 */	bne .L_8009940C
/* 800993F0 00096330  88 78 00 01 */	lbz r3, 1(r24)
/* 800993F4 00096334  38 1F 00 3C */	addi r0, r31, 0x3c
/* 800993F8 00096338  7C 63 00 50 */	subf r3, r3, r0
/* 800993FC 0009633C  48 00 B3 DD */	bl key2pitch_c5__9JASDriverFi
/* 80099400 00096340  C0 1A 00 F8 */	lfs f0, 0xf8(r26)
/* 80099404 00096344  EC 00 00 72 */	fmuls f0, f0, f1
/* 80099408 00096348  D0 1A 00 F8 */	stfs f0, 0xf8(r26)
.L_8009940C:
/* 8009940C 0009634C  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 80099410 00096350  3C 00 43 30 */	lis r0, 0x4330
/* 80099414 00096354  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80099418 00096358  3B 20 00 00 */	li r25, 0
/* 8009941C 0009635C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80099420 00096360  3B 00 00 00 */	li r24, 0
/* 80099424 00096364  90 01 00 38 */	stw r0, 0x38(r1)
/* 80099428 00096368  C8 42 89 38 */	lfd f2, lbl_80516C98@sda21(r2)
/* 8009942C 0009636C  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 80099430 00096370  C0 02 89 34 */	lfs f0, lbl_80516C94@sda21(r2)
/* 80099434 00096374  EC 21 10 28 */	fsubs f1, f1, f2
/* 80099438 00096378  D0 7A 00 F4 */	stfs f3, 0xf4(r26)
/* 8009943C 0009637C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80099440 00096380  D0 1A 00 FC */	stfs f0, 0xfc(r26)
/* 80099444 00096384  C0 1A 00 FC */	lfs f0, 0xfc(r26)
/* 80099448 00096388  EC 00 00 32 */	fmuls f0, f0, f0
/* 8009944C 0009638C  D0 1A 00 FC */	stfs f0, 0xfc(r26)
/* 80099450 00096390  C0 3A 00 FC */	lfs f1, 0xfc(r26)
/* 80099454 00096394  C0 1A 00 F4 */	lfs f0, 0xf4(r26)
/* 80099458 00096398  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009945C 0009639C  D0 1A 00 FC */	stfs f0, 0xfc(r26)
/* 80099460 000963A0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80099464 000963A4  D0 1A 00 CC */	stfs f0, 0xcc(r26)
/* 80099468 000963A8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009946C 000963AC  D0 1A 00 D4 */	stfs f0, 0xd4(r26)
/* 80099470 000963B0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80099474 000963B4  D0 1A 00 DC */	stfs f0, 0xdc(r26)
/* 80099478 000963B8  48 00 00 20 */	b .L_80099498
.L_8009947C:
/* 8009947C 000963BC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80099480 000963C0  7F 43 D3 78 */	mr r3, r26
/* 80099484 000963C4  7F 24 CB 78 */	mr r4, r25
/* 80099488 000963C8  7C A5 C0 2E */	lwzx r5, r5, r24
/* 8009948C 000963CC  48 00 A0 B9 */	bl setOscInit__10JASChannelFiPCQ213JASOscillator4Data
/* 80099490 000963D0  3B 18 00 04 */	addi r24, r24, 4
/* 80099494 000963D4  3B 39 00 01 */	addi r25, r25, 1
.L_80099498:
/* 80099498 000963D8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8009949C 000963DC  7C 19 00 40 */	cmplw r25, r0
/* 800994A0 000963E0  41 80 FF DC */	blt .L_8009947C
/* 800994A4 000963E4  A0 81 00 32 */	lhz r4, 0x32(r1)
/* 800994A8 000963E8  7F 43 D3 78 */	mr r3, r26
/* 800994AC 000963EC  48 00 A0 DD */	bl directReleaseOsc__10JASChannelFUs
/* 800994B0 000963F0  7F 43 D3 78 */	mr r3, r26
/* 800994B4 000963F4  48 00 A2 0D */	bl play__10JASChannelFv
/* 800994B8 000963F8  2C 03 00 00 */	cmpwi r3, 0
/* 800994BC 000963FC  41 82 00 0C */	beq .L_800994C8
/* 800994C0 00096400  7F 43 D3 78 */	mr r3, r26
/* 800994C4 00096404  48 00 00 08 */	b .L_800994CC
.L_800994C8:
/* 800994C8 00096408  38 60 00 00 */	li r3, 0
.L_800994CC:
/* 800994CC 0009640C  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 800994D0 00096410  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800994D4 00096414  7C 08 03 A6 */	mtlr r0
/* 800994D8 00096418  38 21 00 60 */	addi r1, r1, 0x60
/* 800994DC 0009641C  4E 80 00 20 */	blr 
.endfn noteOn__10JASBankMgrFiiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv

.fn noteOnOsc__10JASBankMgrFiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv, local
/* 800994E0 00096420  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800994E4 00096424  7C 08 02 A6 */	mflr r0
/* 800994E8 00096428  90 01 00 44 */	stw r0, 0x44(r1)
/* 800994EC 0009642C  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 800994F0 00096430  7C 79 1B 78 */	mr r25, r3
/* 800994F4 00096434  7C 9A 23 78 */	mr r26, r4
/* 800994F8 00096438  7C BB 2B 78 */	mr r27, r5
/* 800994FC 0009643C  7C DC 33 78 */	mr r28, r6
/* 80099500 00096440  7C FD 3B 78 */	mr r29, r7
/* 80099504 00096444  7D 1E 43 78 */	mr r30, r8
/* 80099508 00096448  80 0D 8A 24 */	lwz r0, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 8009950C 0009644C  28 00 00 00 */	cmplwi r0, 0
/* 80099510 00096450  40 82 00 40 */	bne .L_80099550
/* 80099514 00096454  48 05 57 25 */	bl OSDisableInterrupts
/* 80099518 00096458  80 0D 8A 24 */	lwz r0, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 8009951C 0009645C  90 61 00 08 */	stw r3, 8(r1)
/* 80099520 00096460  28 00 00 00 */	cmplwi r0, 0
/* 80099524 00096464  40 82 00 24 */	bne .L_80099548
/* 80099528 00096468  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 8009952C 0009646C  38 60 00 0C */	li r3, 0xc
/* 80099530 00096470  38 A0 00 00 */	li r5, 0
/* 80099534 00096474  4B F8 AA 0D */	bl __nw__FUlP7JKRHeapi
/* 80099538 00096478  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009953C 0009647C  41 82 00 08 */	beq .L_80099544
/* 80099540 00096480  48 00 DC 45 */	bl __ct__17JASGenericMemPoolFv
.L_80099544:
/* 80099544 00096484  93 ED 8A 24 */	stw r31, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
.L_80099548:
/* 80099548 00096488  80 61 00 08 */	lwz r3, 8(r1)
/* 8009954C 0009648C  48 05 57 15 */	bl OSRestoreInterrupts
.L_80099550:
/* 80099550 00096490  80 6D 8A 24 */	lwz r3, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 80099554 00096494  38 80 01 18 */	li r4, 0x118
/* 80099558 00096498  48 00 DC D5 */	bl alloc__17JASGenericMemPoolFUl
/* 8009955C 0009649C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80099560 000964A0  41 82 00 14 */	beq .L_80099574
/* 80099564 000964A4  7F A4 EB 78 */	mr r4, r29
/* 80099568 000964A8  7F C5 F3 78 */	mr r5, r30
/* 8009956C 000964AC  48 00 9C 99 */	bl __ct__10JASChannelFPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 80099570 000964B0  7C 7F 1B 78 */	mr r31, r3
.L_80099574:
/* 80099574 000964B4  28 1F 00 00 */	cmplwi r31, 0
/* 80099578 000964B8  40 82 00 0C */	bne .L_80099584
/* 8009957C 000964BC  38 60 00 00 */	li r3, 0
/* 80099580 000964C0  48 00 00 C0 */	b .L_80099640
.L_80099584:
/* 80099584 000964C4  C0 22 89 28 */	lfs f1, lbl_80516C88@sda21(r2)
/* 80099588 000964C8  7F E3 FB 78 */	mr r3, r31
/* 8009958C 000964CC  FC 40 08 90 */	fmr f2, f1
/* 80099590 000964D0  FC 60 08 90 */	fmr f3, f1
/* 80099594 000964D4  48 00 A1 09 */	bl setPanPower__10JASChannelFfff
/* 80099598 000964D8  B3 9F 00 BC */	sth r28, 0xbc(r31)
/* 8009959C 000964DC  38 00 00 02 */	li r0, 2
/* 800995A0 000964E0  93 3F 00 EC */	stw r25, 0xec(r31)
/* 800995A4 000964E4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 800995A8 000964E8  48 00 EC 49 */	bl getDacRate__9JASDriverFv
/* 800995AC 000964EC  C0 02 89 40 */	lfs f0, lbl_80516CA0@sda21(r2)
/* 800995B0 000964F0  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 800995B4 000964F4  EC 00 08 24 */	fdivs f0, f0, f1
/* 800995B8 000964F8  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 800995BC 000964FC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 800995C0 00096500  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 800995C4 00096504  48 00 B2 15 */	bl key2pitch_c5__9JASDriverFi
/* 800995C8 00096508  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 800995CC 0009650C  3C 00 43 30 */	lis r0, 0x4330
/* 800995D0 00096510  90 61 00 14 */	stw r3, 0x14(r1)
/* 800995D4 00096514  3C 60 80 48 */	lis r3, OSC_ENV__10JASBankMgr@ha
/* 800995D8 00096518  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 800995DC 0009651C  38 A3 8A C4 */	addi r5, r3, OSC_ENV__10JASBankMgr@l
/* 800995E0 00096520  90 01 00 10 */	stw r0, 0x10(r1)
/* 800995E4 00096524  7F E3 FB 78 */	mr r3, r31
/* 800995E8 00096528  EC 60 00 72 */	fmuls f3, f0, f1
/* 800995EC 0009652C  C8 42 89 38 */	lfd f2, lbl_80516C98@sda21(r2)
/* 800995F0 00096530  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800995F4 00096534  38 80 00 00 */	li r4, 0
/* 800995F8 00096538  C0 02 89 34 */	lfs f0, lbl_80516C94@sda21(r2)
/* 800995FC 0009653C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80099600 00096540  D0 7F 00 F8 */	stfs f3, 0xf8(r31)
/* 80099604 00096544  C0 42 89 28 */	lfs f2, lbl_80516C88@sda21(r2)
/* 80099608 00096548  EC 01 00 24 */	fdivs f0, f1, f0
/* 8009960C 0009654C  D0 5F 00 F4 */	stfs f2, 0xf4(r31)
/* 80099610 00096550  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 80099614 00096554  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80099618 00096558  EC 00 00 32 */	fmuls f0, f0, f0
/* 8009961C 0009655C  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 80099620 00096560  48 00 9F 25 */	bl setOscInit__10JASChannelFiPCQ213JASOscillator4Data
/* 80099624 00096564  7F E3 FB 78 */	mr r3, r31
/* 80099628 00096568  48 00 A0 99 */	bl play__10JASChannelFv
/* 8009962C 0009656C  2C 03 00 00 */	cmpwi r3, 0
/* 80099630 00096570  41 82 00 0C */	beq .L_8009963C
/* 80099634 00096574  7F E3 FB 78 */	mr r3, r31
/* 80099638 00096578  48 00 00 08 */	b .L_80099640
.L_8009963C:
/* 8009963C 0009657C  38 60 00 00 */	li r3, 0
.L_80099640:
/* 80099640 00096580  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 80099644 00096584  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80099648 00096588  7C 08 03 A6 */	mtlr r0
/* 8009964C 0009658C  38 21 00 40 */	addi r1, r1, 0x40
/* 80099650 00096590  4E 80 00 20 */	blr 
.endfn noteOnOsc__10JASBankMgrFiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv

.fn gateOn__10JASBankMgrFP10JASChannelUcUc, global
/* 80099654 00096594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80099658 00096598  7C 08 02 A6 */	mflr r0
/* 8009965C 0009659C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80099660 000965A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80099664 000965A4  7C BF 2B 78 */	mr r31, r5
/* 80099668 000965A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009966C 000965AC  7C 7E 1B 78 */	mr r30, r3
/* 80099670 000965B0  88 03 00 E4 */	lbz r0, 0xe4(r3)
/* 80099674 000965B4  28 00 00 02 */	cmplwi r0, 2
/* 80099678 000965B8  40 82 00 0C */	bne .L_80099684
/* 8009967C 000965BC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 80099680 000965C0  48 00 00 18 */	b .L_80099698
.L_80099684:
/* 80099684 000965C4  80 BE 00 E8 */	lwz r5, 0xe8(r30)
/* 80099688 000965C8  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8009968C 000965CC  38 03 00 3C */	addi r0, r3, 0x3c
/* 80099690 000965D0  88 65 00 01 */	lbz r3, 1(r5)
/* 80099694 000965D4  7C 63 00 50 */	subf r3, r3, r0
.L_80099698:
/* 80099698 000965D8  48 00 B1 41 */	bl key2pitch_c5__9JASDriverFi
/* 8009969C 000965DC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800996A0 000965E0  3C 00 43 30 */	lis r0, 0x4330
/* 800996A4 000965E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 800996A8 000965E8  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 800996AC 000965EC  90 01 00 08 */	stw r0, 8(r1)
/* 800996B0 000965F0  C8 42 89 38 */	lfd f2, lbl_80516C98@sda21(r2)
/* 800996B4 000965F4  EC 60 00 72 */	fmuls f3, f0, f1
/* 800996B8 000965F8  C8 21 00 08 */	lfd f1, 8(r1)
/* 800996BC 000965FC  C0 02 89 34 */	lfs f0, lbl_80516C94@sda21(r2)
/* 800996C0 00096600  EC 21 10 28 */	fsubs f1, f1, f2
/* 800996C4 00096604  D0 7E 00 F8 */	stfs f3, 0xf8(r30)
/* 800996C8 00096608  EC 01 00 24 */	fdivs f0, f1, f0
/* 800996CC 0009660C  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 800996D0 00096610  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 800996D4 00096614  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 800996D8 00096618  EC 00 00 32 */	fmuls f0, f0, f0
/* 800996DC 0009661C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800996E0 00096620  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 800996E4 00096624  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800996E8 00096628  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800996EC 0009662C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800996F0 00096630  7C 08 03 A6 */	mtlr r0
/* 800996F4 00096634  38 21 00 20 */	addi r1, r1, 0x20
/* 800996F8 00096638  4E 80 00 20 */	blr 
.endfn gateOn__10JASBankMgrFP10JASChannelUcUc
