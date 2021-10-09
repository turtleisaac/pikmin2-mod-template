.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__7TagParm
__vt__7TagParm:
  .4byte 0
  .4byte 0
  .4byte doWrite__7TagParmFR6Stream
  .4byte doRead__7TagParmFR6Stream
  .4byte flushValue__7TagParmFv
  .4byte doDump__7TagParmFv
.global __vt__13StringTagParm
__vt__13StringTagParm:
  .4byte 0
  .4byte 0
  .4byte doWrite__13StringTagParmFR6Stream
  .4byte doRead__13StringTagParmFR6Stream
  .4byte flushValue__13StringTagParmFv
  .4byte doDump__13StringTagParmFv

.section .text, "ax"  # 0x800056C0 - 0x80472F00

.global __ct__7TagParmFP13TagParametersPc
__ct__7TagParmFP13TagParametersPc:
/* 8041C09C 00418FDC  3C C0 80 4F */	lis r6, __vt__7TagParm@ha
/* 8041C0A0 00418FE0  38 00 00 00 */	li r0, 0
/* 8041C0A4 00418FE4  38 C6 B8 F0 */	addi r6, r6, __vt__7TagParm@l
/* 8041C0A8 00418FE8  90 C3 00 00 */	stw r6, 0(r3)
/* 8041C0AC 00418FEC  90 A3 00 04 */	stw r5, 4(r3)
/* 8041C0B0 00418FF0  90 03 00 08 */	stw r0, 8(r3)
/* 8041C0B4 00418FF4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8041C0B8 00418FF8  28 00 00 00 */	cmplwi r0, 0
/* 8041C0BC 00418FFC  41 82 00 10 */	beq lbl_8041C0CC
/* 8041C0C0 00419000  90 03 00 08 */	stw r0, 8(r3)
/* 8041C0C4 00419004  90 64 00 18 */	stw r3, 0x18(r4)
/* 8041C0C8 00419008  4E 80 00 20 */	blr 
lbl_8041C0CC:
/* 8041C0CC 0041900C  90 64 00 18 */	stw r3, 0x18(r4)
/* 8041C0D0 00419010  4E 80 00 20 */	blr 

.global read__13TagParametersFR6Stream
read__13TagParametersFR6Stream:
/* 8041C0D4 00419014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041C0D8 00419018  7C 08 02 A6 */	mflr r0
/* 8041C0DC 0041901C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041C0E0 00419020  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8041C0E4 00419024  7C 7B 1B 78 */	mr r27, r3
/* 8041C0E8 00419028  7C 9C 23 78 */	mr r28, r4
lbl_8041C0EC:
/* 8041C0EC 0041902C  7F 83 E3 78 */	mr r3, r28
/* 8041C0F0 00419030  38 80 00 00 */	li r4, 0
/* 8041C0F4 00419034  38 A0 00 00 */	li r5, 0
/* 8041C0F8 00419038  4B FF 8F DD */	bl readString__6StreamFPci
/* 8041C0FC 0041903C  7C 60 1B 78 */	mr r0, r3
/* 8041C100 00419040  38 62 20 40 */	addi r3, r2, lbl_805203A0@sda21
/* 8041C104 00419044  7C 1E 03 78 */	mr r30, r0
/* 8041C108 00419048  4B CA E8 09 */	bl strlen
/* 8041C10C 0041904C  7C 65 1B 78 */	mr r5, r3
/* 8041C110 00419050  7F C4 F3 78 */	mr r4, r30
/* 8041C114 00419054  38 62 20 40 */	addi r3, r2, lbl_805203A0@sda21
/* 8041C118 00419058  4B CA E5 69 */	bl strncmp
/* 8041C11C 0041905C  7C 60 00 34 */	cntlzw r0, r3
/* 8041C120 00419060  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 8041C124 00419064  40 82 00 70 */	bne lbl_8041C194
/* 8041C128 00419068  83 BB 00 18 */	lwz r29, 0x18(r27)
/* 8041C12C 0041906C  48 00 00 5C */	b lbl_8041C188
lbl_8041C130:
/* 8041C130 00419070  7F C3 F3 78 */	mr r3, r30
/* 8041C134 00419074  4B CA E7 DD */	bl strlen
/* 8041C138 00419078  7C 7F 1B 78 */	mr r31, r3
/* 8041C13C 0041907C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041C140 00419080  4B CA E7 D1 */	bl strlen
/* 8041C144 00419084  7C 1F 18 00 */	cmpw r31, r3
/* 8041C148 00419088  40 82 00 3C */	bne lbl_8041C184
/* 8041C14C 0041908C  7F C3 F3 78 */	mr r3, r30
/* 8041C150 00419090  4B CA E7 C1 */	bl strlen
/* 8041C154 00419094  7C 65 1B 78 */	mr r5, r3
/* 8041C158 00419098  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041C15C 0041909C  7F C4 F3 78 */	mr r4, r30
/* 8041C160 004190A0  4B CA E5 21 */	bl strncmp
/* 8041C164 004190A4  2C 03 00 00 */	cmpwi r3, 0
/* 8041C168 004190A8  40 82 00 1C */	bne lbl_8041C184
/* 8041C16C 004190AC  7F A3 EB 78 */	mr r3, r29
/* 8041C170 004190B0  7F 84 E3 78 */	mr r4, r28
/* 8041C174 004190B4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8041C178 004190B8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8041C17C 004190BC  7D 89 03 A6 */	mtctr r12
/* 8041C180 004190C0  4E 80 04 21 */	bctrl 
lbl_8041C184:
/* 8041C184 004190C4  83 BD 00 08 */	lwz r29, 8(r29)
lbl_8041C188:
/* 8041C188 004190C8  28 1D 00 00 */	cmplwi r29, 0
/* 8041C18C 004190CC  40 82 FF A4 */	bne lbl_8041C130
/* 8041C190 004190D0  4B FF FF 5C */	b lbl_8041C0EC
lbl_8041C194:
/* 8041C194 004190D4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8041C198 004190D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041C19C 004190DC  7C 08 03 A6 */	mtlr r0
/* 8041C1A0 004190E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8041C1A4 004190E4  4E 80 00 20 */	blr 
