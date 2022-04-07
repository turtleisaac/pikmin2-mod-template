.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_80474280:
	.asciz "Font Encode Type %d\n"
.balign 4
lbl_80474298:
	.asciz "IPLROM fontdata size : %u\n"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global saoAboutEncoding___10JUTRomFont
saoAboutEncoding___10JUTRomFont:
	.4byte 0x00000000
	.4byte 0x00020120
	.4byte isLeadByte_1Byte__7JUTFontFi
	.4byte 0x00000002
	.4byte 0x00120F00
	.4byte isLeadByte_ShiftJIS__7JUTFontFi
.global __vt__10JUTRomFont
__vt__10JUTRomFont:
	.4byte 0
	.4byte 0
	.4byte __dt__10JUTRomFontFv
	.4byte setGX__10JUTRomFontFv
	.4byte setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
	.4byte drawChar_scale__10JUTRomFontFffffib
	.4byte getLeading__10JUTRomFontCFv
	.4byte getAscent__10JUTRomFontCFv
	.4byte getDescent__10JUTRomFontCFv
	.4byte getHeight__10JUTRomFontCFv
	.4byte getWidth__10JUTRomFontCFv
	.4byte getWidthEntry__10JUTRomFontCFiPQ27JUTFont6TWidth
	.4byte getCellWidth__10JUTRomFontCFv
	.4byte getCellHeight__10JUTRomFontCFv
	.4byte getFontType__10JUTRomFontCFv
	.4byte getResFont__10JUTRomFontCFv
	.4byte isLeadByte__10JUTRomFontCFi

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global spAboutEncoding___10JUTRomFont
spAboutEncoding___10JUTRomFont:
	.skip 0x4
.global spFontHeader___10JUTRomFont
spFontHeader___10JUTRomFont:
	.skip 0x4
.global suFontHeaderRefered___10JUTRomFont
suFontHeaderRefered___10JUTRomFont:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_805166F8:
	.float 0.0
lbl_805166FC:
	.float 0.5
.balign 8
lbl_80516700:
	.4byte 0x43300000
	.4byte 0x80000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__10JUTRomFontFP7JKRHeap
__ct__10JUTRomFontFP7JKRHeap:
/* 8003264C 0002F58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032650 0002F590  7C 08 02 A6 */	mflr r0
/* 80032654 0002F594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032658 0002F598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003265C 0002F59C  7C 9F 23 78 */	mr r31, r4
/* 80032660 0002F5A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80032664 0002F5A4  7C 7E 1B 78 */	mr r30, r3
/* 80032668 0002F5A8  4B FF AA DD */	bl __ct__7JUTFontFv
/* 8003266C 0002F5AC  3C 80 80 4A */	lis r4, __vt__10JUTRomFont@ha
/* 80032670 0002F5B0  7F C3 F3 78 */	mr r3, r30
/* 80032674 0002F5B4  38 04 05 58 */	addi r0, r4, __vt__10JUTRomFont@l
/* 80032678 0002F5B8  7F E4 FB 78 */	mr r4, r31
/* 8003267C 0002F5BC  90 1E 00 00 */	stw r0, 0(r30)
/* 80032680 0002F5C0  48 00 00 21 */	bl initiate__10JUTRomFontFP7JKRHeap
/* 80032684 0002F5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032688 0002F5C8  7F C3 F3 78 */	mr r3, r30
/* 8003268C 0002F5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032690 0002F5D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80032694 0002F5D4  7C 08 03 A6 */	mtlr r0
/* 80032698 0002F5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003269C 0002F5DC  4E 80 00 20 */	blr 

.global initiate__10JUTRomFontFP7JKRHeap
initiate__10JUTRomFontFP7JKRHeap:
/* 800326A0 0002F5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800326A4 0002F5E4  7C 08 02 A6 */	mflr r0
/* 800326A8 0002F5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800326AC 0002F5EC  38 00 00 00 */	li r0, 0
/* 800326B0 0002F5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800326B4 0002F5F4  7C 9F 23 78 */	mr r31, r4
/* 800326B8 0002F5F8  93 C1 00 08 */	stw r30, 8(r1)
/* 800326BC 0002F5FC  7C 7E 1B 78 */	mr r30, r3
/* 800326C0 0002F600  98 03 00 04 */	stb r0, 4(r3)
/* 800326C4 0002F604  4B FF AA AD */	bl initialize_state__7JUTFontFv
/* 800326C8 0002F608  7F C3 F3 78 */	mr r3, r30
/* 800326CC 0002F60C  7F E4 FB 78 */	mr r4, r31
/* 800326D0 0002F610  48 00 00 C1 */	bl loadImage__10JUTRomFontFP7JKRHeap
/* 800326D4 0002F614  38 00 00 01 */	li r0, 1
/* 800326D8 0002F618  98 1E 00 04 */	stb r0, 4(r30)
/* 800326DC 0002F61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800326E0 0002F620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800326E4 0002F624  83 C1 00 08 */	lwz r30, 8(r1)
/* 800326E8 0002F628  7C 08 03 A6 */	mtlr r0
/* 800326EC 0002F62C  38 21 00 10 */	addi r1, r1, 0x10
/* 800326F0 0002F630  4E 80 00 20 */	blr 

.global __dt__10JUTRomFontFv
__dt__10JUTRomFontFv:
/* 800326F4 0002F634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800326F8 0002F638  7C 08 02 A6 */	mflr r0
/* 800326FC 0002F63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032700 0002F640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032704 0002F644  7C 9F 23 78 */	mr r31, r4
/* 80032708 0002F648  93 C1 00 08 */	stw r30, 8(r1)
/* 8003270C 0002F64C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80032710 0002F650  41 82 00 64 */	beq lbl_80032774
/* 80032714 0002F654  3C 60 80 4A */	lis r3, __vt__10JUTRomFont@ha
/* 80032718 0002F658  38 03 05 58 */	addi r0, r3, __vt__10JUTRomFont@l
/* 8003271C 0002F65C  90 1E 00 00 */	stw r0, 0(r30)
/* 80032720 0002F660  80 6D 89 18 */	lwz r3, suFontHeaderRefered___10JUTRomFont@sda21(r13)
/* 80032724 0002F664  34 03 FF FF */	addic. r0, r3, -1
/* 80032728 0002F668  90 0D 89 18 */	stw r0, suFontHeaderRefered___10JUTRomFont@sda21(r13)
/* 8003272C 0002F66C  40 82 00 1C */	bne lbl_80032748
/* 80032730 0002F670  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032734 0002F674  38 80 00 00 */	li r4, 0
/* 80032738 0002F678  4B FF 0F 35 */	bl free__7JKRHeapFPvP7JKRHeap
/* 8003273C 0002F67C  38 00 00 00 */	li r0, 0
/* 80032740 0002F680  90 0D 89 14 */	stw r0, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032744 0002F684  90 0D 89 10 */	stw r0, spAboutEncoding___10JUTRomFont@sda21(r13)
lbl_80032748:
/* 80032748 0002F688  38 00 00 00 */	li r0, 0
/* 8003274C 0002F68C  28 1E 00 00 */	cmplwi r30, 0
/* 80032750 0002F690  98 1E 00 04 */	stb r0, 4(r30)
/* 80032754 0002F694  41 82 00 10 */	beq lbl_80032764
/* 80032758 0002F698  3C 60 80 4A */	lis r3, __vt__7JUTFont@ha
/* 8003275C 0002F69C  38 03 04 58 */	addi r0, r3, __vt__7JUTFont@l
/* 80032760 0002F6A0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80032764:
/* 80032764 0002F6A4  7F E0 07 35 */	extsh. r0, r31
/* 80032768 0002F6A8  40 81 00 0C */	ble lbl_80032774
/* 8003276C 0002F6AC  7F C3 F3 78 */	mr r3, r30
/* 80032770 0002F6B0  4B FF 19 45 */	bl __dl__FPv
lbl_80032774:
/* 80032774 0002F6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032778 0002F6B8  7F C3 F3 78 */	mr r3, r30
/* 8003277C 0002F6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032780 0002F6C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80032784 0002F6C4  7C 08 03 A6 */	mtlr r0
/* 80032788 0002F6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003278C 0002F6CC  4E 80 00 20 */	blr 

.global loadImage__10JUTRomFontFP7JKRHeap
loadImage__10JUTRomFontFP7JKRHeap:
/* 80032790 0002F6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032794 0002F6D4  7C 08 02 A6 */	mflr r0
/* 80032798 0002F6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003279C 0002F6DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800327A0 0002F6E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800327A4 0002F6E4  7C 9E 23 79 */	or. r30, r4, r4
/* 800327A8 0002F6E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800327AC 0002F6EC  7C 7D 1B 78 */	mr r29, r3
/* 800327B0 0002F6F0  40 82 00 08 */	bne lbl_800327B8
/* 800327B4 0002F6F4  83 CD 88 2C */	lwz r30, sCurrentHeap__7JKRHeap@sda21(r13)
lbl_800327B8:
/* 800327B8 0002F6F8  80 0D 89 14 */	lwz r0, spFontHeader___10JUTRomFont@sda21(r13)
/* 800327BC 0002F6FC  28 00 00 00 */	cmplwi r0, 0
/* 800327C0 0002F700  40 82 00 74 */	bne lbl_80032834
/* 800327C4 0002F704  48 0B B8 E5 */	bl OSGetFontEncode
/* 800327C8 0002F708  3C A0 80 47 */	lis r5, lbl_80474280@ha
/* 800327CC 0002F70C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 800327D0 0002F710  38 65 42 80 */	addi r3, r5, lbl_80474280@l
/* 800327D4 0002F714  4C C6 31 82 */	crclr 6
/* 800327D8 0002F718  4B FF 6A ED */	bl JUTReportConsole_f
/* 800327DC 0002F71C  48 0B B8 CD */	bl OSGetFontEncode
/* 800327E0 0002F720  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 800327E4 0002F724  3C 60 80 47 */	lis r3, lbl_80474298@ha
/* 800327E8 0002F728  1C A0 00 0C */	mulli r5, r0, 0xc
/* 800327EC 0002F72C  3C 80 80 4A */	lis r4, saoAboutEncoding___10JUTRomFont@ha
/* 800327F0 0002F730  38 63 42 98 */	addi r3, r3, lbl_80474298@l
/* 800327F4 0002F734  38 04 05 40 */	addi r0, r4, saoAboutEncoding___10JUTRomFont@l
/* 800327F8 0002F738  7C 80 2A 14 */	add r4, r0, r5
/* 800327FC 0002F73C  90 8D 89 10 */	stw r4, spAboutEncoding___10JUTRomFont@sda21(r13)
/* 80032800 0002F740  83 E4 00 04 */	lwz r31, 4(r4)
/* 80032804 0002F744  7F E4 FB 78 */	mr r4, r31
/* 80032808 0002F748  4C C6 31 82 */	crclr 6
/* 8003280C 0002F74C  4B FF 6A B9 */	bl JUTReportConsole_f
/* 80032810 0002F750  7F E3 FB 78 */	mr r3, r31
/* 80032814 0002F754  7F C5 F3 78 */	mr r5, r30
/* 80032818 0002F758  38 80 00 20 */	li r4, 0x20
/* 8003281C 0002F75C  4B FF 0D C5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80032820 0002F760  90 6D 89 14 */	stw r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032824 0002F764  48 0B C0 4D */	bl OSInitFont
/* 80032828 0002F768  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 8003282C 0002F76C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 80032830 0002F770  90 1D 00 08 */	stw r0, 8(r29)
lbl_80032834:
/* 80032834 0002F774  80 6D 89 18 */	lwz r3, suFontHeaderRefered___10JUTRomFont@sda21(r13)
/* 80032838 0002F778  38 03 00 01 */	addi r0, r3, 1
/* 8003283C 0002F77C  90 0D 89 18 */	stw r0, suFontHeaderRefered___10JUTRomFont@sda21(r13)
/* 80032840 0002F780  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80032844 0002F784  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80032848 0002F788  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003284C 0002F78C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032850 0002F790  7C 08 03 A6 */	mtlr r0
/* 80032854 0002F794  38 21 00 20 */	addi r1, r1, 0x20
/* 80032858 0002F798  4E 80 00 20 */	blr 

.global setGX__10JUTRomFontFv
setGX__10JUTRomFontFv:
/* 8003285C 0002F79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032860 0002F7A0  7C 08 02 A6 */	mflr r0
/* 80032864 0002F7A4  38 60 00 01 */	li r3, 1
/* 80032868 0002F7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003286C 0002F7AC  48 0B 45 F9 */	bl GXSetNumChans
/* 80032870 0002F7B0  38 60 00 01 */	li r3, 1
/* 80032874 0002F7B4  48 0B 63 45 */	bl GXSetNumTevStages
/* 80032878 0002F7B8  38 60 00 01 */	li r3, 1
/* 8003287C 0002F7BC  48 0B 27 21 */	bl GXSetNumTexGens
/* 80032880 0002F7C0  38 60 00 00 */	li r3, 0
/* 80032884 0002F7C4  38 80 00 00 */	li r4, 0
/* 80032888 0002F7C8  38 A0 00 00 */	li r5, 0
/* 8003288C 0002F7CC  38 C0 00 04 */	li r6, 4
/* 80032890 0002F7D0  48 0B 61 8D */	bl GXSetTevOrder
/* 80032894 0002F7D4  38 60 00 04 */	li r3, 4
/* 80032898 0002F7D8  38 80 00 00 */	li r4, 0
/* 8003289C 0002F7DC  38 A0 00 00 */	li r5, 0
/* 800328A0 0002F7E0  38 C0 00 01 */	li r6, 1
/* 800328A4 0002F7E4  38 E0 00 00 */	li r7, 0
/* 800328A8 0002F7E8  39 00 00 00 */	li r8, 0
/* 800328AC 0002F7EC  39 20 00 02 */	li r9, 2
/* 800328B0 0002F7F0  48 0B 45 F1 */	bl GXSetChanCtrl
/* 800328B4 0002F7F4  38 60 00 00 */	li r3, 0
/* 800328B8 0002F7F8  38 80 00 00 */	li r4, 0
/* 800328BC 0002F7FC  48 0B 5B C1 */	bl GXSetTevOp
/* 800328C0 0002F800  38 60 00 01 */	li r3, 1
/* 800328C4 0002F804  38 80 00 04 */	li r4, 4
/* 800328C8 0002F808  38 A0 00 05 */	li r5, 5
/* 800328CC 0002F80C  38 C0 00 0F */	li r6, 0xf
/* 800328D0 0002F810  48 0B 68 09 */	bl GXSetBlendMode
/* 800328D4 0002F814  38 60 00 00 */	li r3, 0
/* 800328D8 0002F818  38 80 00 09 */	li r4, 9
/* 800328DC 0002F81C  38 A0 00 01 */	li r5, 1
/* 800328E0 0002F820  38 C0 00 04 */	li r6, 4
/* 800328E4 0002F824  38 E0 00 00 */	li r7, 0
/* 800328E8 0002F828  48 0B 1E 21 */	bl GXSetVtxAttrFmt
/* 800328EC 0002F82C  38 60 00 00 */	li r3, 0
/* 800328F0 0002F830  38 80 00 0B */	li r4, 0xb
/* 800328F4 0002F834  38 A0 00 01 */	li r5, 1
/* 800328F8 0002F838  38 C0 00 05 */	li r6, 5
/* 800328FC 0002F83C  38 E0 00 00 */	li r7, 0
/* 80032900 0002F840  48 0B 1E 09 */	bl GXSetVtxAttrFmt
/* 80032904 0002F844  38 60 00 00 */	li r3, 0
/* 80032908 0002F848  38 80 00 0D */	li r4, 0xd
/* 8003290C 0002F84C  38 A0 00 01 */	li r5, 1
/* 80032910 0002F850  38 C0 00 02 */	li r6, 2
/* 80032914 0002F854  38 E0 00 0F */	li r7, 0xf
/* 80032918 0002F858  48 0B 1D F1 */	bl GXSetVtxAttrFmt
/* 8003291C 0002F85C  48 0B 1D B5 */	bl GXClearVtxDesc
/* 80032920 0002F860  38 60 00 09 */	li r3, 9
/* 80032924 0002F864  38 80 00 01 */	li r4, 1
/* 80032928 0002F868  48 0B 19 5D */	bl GXSetVtxDesc
/* 8003292C 0002F86C  38 60 00 0B */	li r3, 0xb
/* 80032930 0002F870  38 80 00 01 */	li r4, 1
/* 80032934 0002F874  48 0B 19 51 */	bl GXSetVtxDesc
/* 80032938 0002F878  38 60 00 0D */	li r3, 0xd
/* 8003293C 0002F87C  38 80 00 01 */	li r4, 1
/* 80032940 0002F880  48 0B 19 45 */	bl GXSetVtxDesc
/* 80032944 0002F884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032948 0002F888  7C 08 03 A6 */	mtlr r0
/* 8003294C 0002F88C  38 21 00 10 */	addi r1, r1, 0x10
/* 80032950 0002F890  4E 80 00 20 */	blr 

.global drawChar_scale__10JUTRomFontFffffib
drawChar_scale__10JUTRomFontFffffib:
/* 80032954 0002F894  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80032958 0002F898  7C 08 02 A6 */	mflr r0
/* 8003295C 0002F89C  90 01 01 64 */	stw r0, 0x164(r1)
/* 80032960 0002F8A0  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80032964 0002F8A4  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 80032968 0002F8A8  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8003296C 0002F8AC  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 80032970 0002F8B0  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 80032974 0002F8B4  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 80032978 0002F8B8  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 8003297C 0002F8BC  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 80032980 0002F8C0  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 80032984 0002F8C4  F3 61 01 18 */	psq_st f27, 280(r1), 0, qr0
/* 80032988 0002F8C8  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 8003298C 0002F8CC  F3 41 01 08 */	psq_st f26, 264(r1), 0, qr0
/* 80032990 0002F8D0  BF 41 00 E8 */	stmw r26, 0xe8(r1)
/* 80032994 0002F8D4  7C 9B 23 79 */	or. r27, r4, r4
/* 80032998 0002F8D8  FF 80 08 90 */	fmr f28, f1
/* 8003299C 0002F8DC  FF C0 10 90 */	fmr f30, f2
/* 800329A0 0002F8E0  7C 7A 1B 78 */	mr r26, r3
/* 800329A4 0002F8E4  FF 60 18 90 */	fmr f27, f3
/* 800329A8 0002F8E8  FF 40 20 90 */	fmr f26, f4
/* 800329AC 0002F8EC  40 82 00 0C */	bne lbl_800329B8
/* 800329B0 0002F8F0  C0 22 83 98 */	lfs f1, lbl_805166F8@sda21(r2)
/* 800329B4 0002F8F4  48 00 03 DC */	b lbl_80032D90
lbl_800329B8:
/* 800329B8 0002F8F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800329BC 0002F8FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800329C0 0002F900  7D 89 03 A6 */	mtctr r12
/* 800329C4 0002F904  4E 80 04 21 */	bctrl 
/* 800329C8 0002F908  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 800329CC 0002F90C  3C 00 43 30 */	lis r0, 0x4330
/* 800329D0 0002F910  90 61 00 44 */	stw r3, 0x44(r1)
/* 800329D4 0002F914  7F 43 D3 78 */	mr r3, r26
/* 800329D8 0002F918  81 9A 00 00 */	lwz r12, 0(r26)
/* 800329DC 0002F91C  90 01 00 40 */	stw r0, 0x40(r1)
/* 800329E0 0002F920  C8 22 83 A0 */	lfd f1, lbl_80516700@sda21(r2)
/* 800329E4 0002F924  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 800329E8 0002F928  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800329EC 0002F92C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800329F0 0002F930  EF FB 00 24 */	fdivs f31, f27, f0
/* 800329F4 0002F934  7D 89 03 A6 */	mtctr r12
/* 800329F8 0002F938  4E 80 04 21 */	bctrl 
/* 800329FC 0002F93C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80032A00 0002F940  3C 00 43 30 */	lis r0, 0x4330
/* 80032A04 0002F944  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80032A08 0002F948  2C 1B 01 00 */	cmpwi r27, 0x100
/* 80032A0C 0002F94C  C8 22 83 A0 */	lfd f1, lbl_80516700@sda21(r2)
/* 80032A10 0002F950  38 61 00 08 */	addi r3, r1, 8
/* 80032A14 0002F954  90 01 00 48 */	stw r0, 0x48(r1)
/* 80032A18 0002F958  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80032A1C 0002F95C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80032A20 0002F960  EF BA 00 24 */	fdivs f29, f26, f0
/* 80032A24 0002F964  41 80 00 10 */	blt lbl_80032A34
/* 80032A28 0002F968  7F 60 46 70 */	srawi r0, r27, 8
/* 80032A2C 0002F96C  38 63 00 01 */	addi r3, r3, 1
/* 80032A30 0002F970  98 01 00 08 */	stb r0, 8(r1)
lbl_80032A34:
/* 80032A34 0002F974  9B 63 00 00 */	stb r27, 0(r3)
/* 80032A38 0002F978  38 61 00 08 */	addi r3, r1, 8
/* 80032A3C 0002F97C  38 81 00 14 */	addi r4, r1, 0x14
/* 80032A40 0002F980  38 A1 00 10 */	addi r5, r1, 0x10
/* 80032A44 0002F984  38 C1 00 0C */	addi r6, r1, 0xc
/* 80032A48 0002F988  38 E1 00 18 */	addi r7, r1, 0x18
/* 80032A4C 0002F98C  48 0B BF 05 */	bl OSGetFontTexture
/* 80032A50 0002F990  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80032A54 0002F994  38 61 00 1C */	addi r3, r1, 0x1c
/* 80032A58 0002F998  38 A0 02 00 */	li r5, 0x200
/* 80032A5C 0002F99C  38 C0 02 00 */	li r6, 0x200
/* 80032A60 0002F9A0  38 E0 00 00 */	li r7, 0
/* 80032A64 0002F9A4  39 00 00 00 */	li r8, 0
/* 80032A68 0002F9A8  39 20 00 00 */	li r9, 0
/* 80032A6C 0002F9AC  39 40 00 00 */	li r10, 0
/* 80032A70 0002F9B0  48 0B 47 0D */	bl GXInitTexObj
/* 80032A74 0002F9B4  C0 22 83 98 */	lfs f1, lbl_805166F8@sda21(r2)
/* 80032A78 0002F9B8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80032A7C 0002F9BC  38 80 00 01 */	li r4, 1
/* 80032A80 0002F9C0  38 A0 00 01 */	li r5, 1
/* 80032A84 0002F9C4  FC 40 08 90 */	fmr f2, f1
/* 80032A88 0002F9C8  38 C0 00 00 */	li r6, 0
/* 80032A8C 0002F9CC  FC 60 08 90 */	fmr f3, f1
/* 80032A90 0002F9D0  38 E0 00 00 */	li r7, 0
/* 80032A94 0002F9D4  39 00 00 00 */	li r8, 0
/* 80032A98 0002F9D8  48 0B 49 79 */	bl GXInitTexObjLOD
/* 80032A9C 0002F9DC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80032AA0 0002F9E0  38 80 00 00 */	li r4, 0
/* 80032AA4 0002F9E4  48 0B 4C 6D */	bl GXLoadTexObj
/* 80032AA8 0002F9E8  88 1A 00 05 */	lbz r0, 5(r26)
/* 80032AAC 0002F9EC  28 00 00 00 */	cmplwi r0, 0
/* 80032AB0 0002F9F0  41 82 00 14 */	beq lbl_80032AC4
/* 80032AB4 0002F9F4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80032AB8 0002F9F8  80 1A 00 08 */	lwz r0, 8(r26)
/* 80032ABC 0002F9FC  7F E3 00 50 */	subf r31, r3, r0
/* 80032AC0 0002FA00  48 00 00 08 */	b lbl_80032AC8
lbl_80032AC4:
/* 80032AC4 0002FA04  3B E0 00 00 */	li r31, 0
lbl_80032AC8:
/* 80032AC8 0002FA08  3C 80 43 30 */	lis r4, 0x4330
/* 80032ACC 0002FA0C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80032AD0 0002FA10  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80032AD4 0002FA14  7F 43 D3 78 */	mr r3, r26
/* 80032AD8 0002FA18  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80032ADC 0002FA1C  90 81 00 48 */	stw r4, 0x48(r1)
/* 80032AE0 0002FA20  C8 62 83 A0 */	lfd f3, lbl_80516700@sda21(r2)
/* 80032AE4 0002FA24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80032AE8 0002FA28  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80032AEC 0002FA2C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80032AF0 0002FA30  EC 00 18 28 */	fsubs f0, f0, f3
/* 80032AF4 0002FA34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80032AF8 0002FA38  C0 22 83 9C */	lfs f1, lbl_805166FC@sda21(r2)
/* 80032AFC 0002FA3C  90 81 00 40 */	stw r4, 0x40(r1)
/* 80032B00 0002FA40  EC 5F 00 32 */	fmuls f2, f31, f0
/* 80032B04 0002FA44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80032B08 0002FA48  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80032B0C 0002FA4C  EF 82 E0 7A */	fmadds f28, f2, f1, f28
/* 80032B10 0002FA50  EC 00 18 28 */	fsubs f0, f0, f3
/* 80032B14 0002FA54  EF 60 E7 FA */	fmadds f27, f0, f31, f28
/* 80032B18 0002FA58  7D 89 03 A6 */	mtctr r12
/* 80032B1C 0002FA5C  4E 80 04 21 */	bctrl 
/* 80032B20 0002FA60  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80032B24 0002FA64  3C 00 43 30 */	lis r0, 0x4330
/* 80032B28 0002FA68  90 61 00 54 */	stw r3, 0x54(r1)
/* 80032B2C 0002FA6C  7F 43 D3 78 */	mr r3, r26
/* 80032B30 0002FA70  81 9A 00 00 */	lwz r12, 0(r26)
/* 80032B34 0002FA74  90 01 00 50 */	stw r0, 0x50(r1)
/* 80032B38 0002FA78  C8 22 83 A0 */	lfd f1, lbl_80516700@sda21(r2)
/* 80032B3C 0002FA7C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80032B40 0002FA80  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80032B44 0002FA84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80032B48 0002FA88  EF 5D F0 3C */	fnmsubs f26, f29, f0, f30
/* 80032B4C 0002FA8C  7D 89 03 A6 */	mtctr r12
/* 80032B50 0002FA90  4E 80 04 21 */	bctrl 
/* 80032B54 0002FA94  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 80032B58 0002FA98  3C A0 43 30 */	lis r5, 0x4330
/* 80032B5C 0002FA9C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 80032B60 0002FAA0  7F 43 D3 78 */	mr r3, r26
/* 80032B64 0002FAA4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80032B68 0002FAA8  54 E4 78 20 */	slwi r4, r7, 0xf
/* 80032B6C 0002FAAC  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80032B70 0002FAB0  7C 84 4E 70 */	srawi r4, r4, 9
/* 80032B74 0002FAB4  7C 07 02 14 */	add r0, r7, r0
/* 80032B78 0002FAB8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80032B7C 0002FABC  7F C4 01 94 */	addze r30, r4
/* 80032B80 0002FAC0  54 04 78 20 */	slwi r4, r0, 0xf
/* 80032B84 0002FAC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80032B88 0002FAC8  81 9A 00 00 */	lwz r12, 0(r26)
/* 80032B8C 0002FACC  7C 84 4E 70 */	srawi r4, r4, 9
/* 80032B90 0002FAD0  C8 22 83 A0 */	lfd f1, lbl_80516700@sda21(r2)
/* 80032B94 0002FAD4  7F A4 01 94 */	addze r29, r4
/* 80032B98 0002FAD8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80032B9C 0002FADC  54 00 78 20 */	slwi r0, r0, 0xf
/* 80032BA0 0002FAE0  7C 00 4E 70 */	srawi r0, r0, 9
/* 80032BA4 0002FAE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80032BA8 0002FAE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80032BAC 0002FAEC  7F 80 01 94 */	addze r28, r0
/* 80032BB0 0002FAF0  EF BD F0 3A */	fmadds f29, f29, f0, f30
/* 80032BB4 0002FAF4  7D 89 03 A6 */	mtctr r12
/* 80032BB8 0002FAF8  4E 80 04 21 */	bctrl 
/* 80032BBC 0002FAFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80032BC0 0002FB00  38 80 00 00 */	li r4, 0
/* 80032BC4 0002FB04  38 A0 00 04 */	li r5, 4
/* 80032BC8 0002FB08  7C 00 1A 14 */	add r0, r0, r3
/* 80032BCC 0002FB0C  38 60 00 80 */	li r3, 0x80
/* 80032BD0 0002FB10  54 00 78 20 */	slwi r0, r0, 0xf
/* 80032BD4 0002FB14  7C 00 4E 70 */	srawi r0, r0, 9
/* 80032BD8 0002FB18  7F 60 01 94 */	addze r27, r0
/* 80032BDC 0002FB1C  48 0B 2D AD */	bl GXBegin
/* 80032BE0 0002FB20  FC E0 E0 1E */	fctiwz f7, f28
/* 80032BE4 0002FB24  3C 00 43 30 */	lis r0, 0x4330
/* 80032BE8 0002FB28  FC 40 D0 1E */	fctiwz f2, f26
/* 80032BEC 0002FB2C  90 01 00 68 */	stw r0, 0x68(r1)
/* 80032BF0 0002FB30  FC 60 D8 1E */	fctiwz f3, f27
/* 80032BF4 0002FB34  C8 C2 83 A0 */	lfd f6, lbl_80516700@sda21(r2)
/* 80032BF8 0002FB38  D8 E1 00 60 */	stfd f7, 0x60(r1)
/* 80032BFC 0002FB3C  FC 20 E8 1E */	fctiwz f1, f29
/* 80032C00 0002FB40  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80032C04 0002FB44  C0 82 83 98 */	lfs f4, lbl_805166F8@sda21(r2)
/* 80032C08 0002FB48  D8 41 00 70 */	stfd f2, 0x70(r1)
/* 80032C0C 0002FB4C  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 80032C10 0002FB50  80 81 00 74 */	lwz r4, 0x74(r1)
/* 80032C14 0002FB54  7C A5 07 34 */	extsh r5, r5
/* 80032C18 0002FB58  90 01 00 78 */	stw r0, 0x78(r1)
/* 80032C1C 0002FB5C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80032C20 0002FB60  7C 84 07 34 */	extsh r4, r4
/* 80032C24 0002FB64  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 80032C28 0002FB68  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80032C2C 0002FB6C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80032C30 0002FB70  D8 61 00 80 */	stfd f3, 0x80(r1)
/* 80032C34 0002FB74  EC A0 30 28 */	fsubs f5, f0, f6
/* 80032C38 0002FB78  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80032C3C 0002FB7C  80 81 00 84 */	lwz r4, 0x84(r1)
/* 80032C40 0002FB80  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80032C44 0002FB84  7C 84 07 34 */	extsh r4, r4
/* 80032C48 0002FB88  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 80032C4C 0002FB8C  EC 00 30 28 */	fsubs f0, f0, f6
/* 80032C50 0002FB90  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80032C54 0002FB94  D8 41 00 90 */	stfd f2, 0x90(r1)
/* 80032C58 0002FB98  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80032C5C 0002FB9C  80 81 00 94 */	lwz r4, 0x94(r1)
/* 80032C60 0002FBA0  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 80032C64 0002FBA4  7C 84 07 34 */	extsh r4, r4
/* 80032C68 0002FBA8  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 80032C6C 0002FBAC  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 80032C70 0002FBB0  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 80032C74 0002FBB4  90 01 00 88 */	stw r0, 0x88(r1)
/* 80032C78 0002FBB8  90 83 80 00 */	stw r4, 0xCC008000@l(r3)
/* 80032C7C 0002FBBC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80032C80 0002FBC0  B3 C3 80 00 */	sth r30, 0xCC008000@l(r3)
/* 80032C84 0002FBC4  EC 40 30 28 */	fsubs f2, f0, f6
/* 80032C88 0002FBC8  B3 83 80 00 */	sth r28, 0xCC008000@l(r3)
/* 80032C8C 0002FBCC  D8 61 00 A0 */	stfd f3, 0xa0(r1)
/* 80032C90 0002FBD0  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 80032C94 0002FBD4  D8 21 00 B0 */	stfd f1, 0xb0(r1)
/* 80032C98 0002FBD8  7C A5 07 34 */	extsh r5, r5
/* 80032C9C 0002FBDC  80 81 00 B4 */	lwz r4, 0xb4(r1)
/* 80032CA0 0002FBE0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80032CA4 0002FBE4  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 80032CA8 0002FBE8  7C 84 07 34 */	extsh r4, r4
/* 80032CAC 0002FBEC  90 01 00 98 */	stw r0, 0x98(r1)
/* 80032CB0 0002FBF0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80032CB4 0002FBF4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80032CB8 0002FBF8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80032CBC 0002FBFC  EC 00 30 28 */	fsubs f0, f0, f6
/* 80032CC0 0002FC00  90 A1 00 AC */	stw r5, 0xac(r1)
/* 80032CC4 0002FC04  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80032CC8 0002FC08  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 80032CCC 0002FC0C  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 80032CD0 0002FC10  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80032CD4 0002FC14  90 A3 80 00 */	stw r5, 0xCC008000@l(r3)
/* 80032CD8 0002FC18  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80032CDC 0002FC1C  B3 A3 80 00 */	sth r29, 0xCC008000@l(r3)
/* 80032CE0 0002FC20  EC 40 30 28 */	fsubs f2, f0, f6
/* 80032CE4 0002FC24  B3 83 80 00 */	sth r28, 0xCC008000@l(r3)
/* 80032CE8 0002FC28  90 81 00 BC */	stw r4, 0xbc(r1)
/* 80032CEC 0002FC2C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80032CF0 0002FC30  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80032CF4 0002FC34  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80032CF8 0002FC38  EC 00 30 28 */	fsubs f0, f0, f6
/* 80032CFC 0002FC3C  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80032D00 0002FC40  D8 E1 00 C0 */	stfd f7, 0xc0(r1)
/* 80032D04 0002FC44  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 80032D08 0002FC48  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 80032D0C 0002FC4C  7C 85 07 34 */	extsh r5, r4
/* 80032D10 0002FC50  D8 21 00 D0 */	stfd f1, 0xd0(r1)
/* 80032D14 0002FC54  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80032D18 0002FC58  80 DA 00 18 */	lwz r6, 0x18(r26)
/* 80032D1C 0002FC5C  80 81 00 D4 */	lwz r4, 0xd4(r1)
/* 80032D20 0002FC60  90 C3 80 00 */	stw r6, 0xCC008000@l(r3)
/* 80032D24 0002FC64  7C 84 07 34 */	extsh r4, r4
/* 80032D28 0002FC68  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80032D2C 0002FC6C  B3 A3 80 00 */	sth r29, 0xCC008000@l(r3)
/* 80032D30 0002FC70  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 80032D34 0002FC74  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80032D38 0002FC78  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80032D3C 0002FC7C  90 81 00 DC */	stw r4, 0xdc(r1)
/* 80032D40 0002FC80  EC 20 30 28 */	fsubs f1, f0, f6
/* 80032D44 0002FC84  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80032D48 0002FC88  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 80032D4C 0002FC8C  B3 63 80 00 */	sth r27, 0xCC008000@l(r3)
/* 80032D50 0002FC90  EC 00 30 28 */	fsubs f0, f0, f6
/* 80032D54 0002FC94  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 80032D58 0002FC98  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80032D5C 0002FC9C  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 80032D60 0002FCA0  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80032D64 0002FCA4  80 1A 00 14 */	lwz r0, 0x14(r26)
/* 80032D68 0002FCA8  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80032D6C 0002FCAC  B3 C3 80 00 */	sth r30, 0xCC008000@l(r3)
/* 80032D70 0002FCB0  B3 63 80 00 */	sth r27, 0xCC008000@l(r3)
/* 80032D74 0002FCB4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80032D78 0002FCB8  7C 00 FA 14 */	add r0, r0, r31
/* 80032D7C 0002FCBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80032D80 0002FCC0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80032D84 0002FCC4  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80032D88 0002FCC8  EC 00 30 28 */	fsubs f0, f0, f6
/* 80032D8C 0002FCCC  EC 3F 00 32 */	fmuls f1, f31, f0
lbl_80032D90:
/* 80032D90 0002FCD0  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 80032D94 0002FCD4  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80032D98 0002FCD8  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 80032D9C 0002FCDC  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 80032DA0 0002FCE0  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 80032DA4 0002FCE4  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 80032DA8 0002FCE8  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 80032DAC 0002FCEC  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 80032DB0 0002FCF0  E3 61 01 18 */	psq_l f27, 280(r1), 0, qr0
/* 80032DB4 0002FCF4  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 80032DB8 0002FCF8  E3 41 01 08 */	psq_l f26, 264(r1), 0, qr0
/* 80032DBC 0002FCFC  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 80032DC0 0002FD00  BB 41 00 E8 */	lmw r26, 0xe8(r1)
/* 80032DC4 0002FD04  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80032DC8 0002FD08  7C 08 03 A6 */	mtlr r0
/* 80032DCC 0002FD0C  38 21 01 60 */	addi r1, r1, 0x160
/* 80032DD0 0002FD10  4E 80 00 20 */	blr 

.global getHeight__10JUTRomFontCFv
getHeight__10JUTRomFontCFv: # weak function
/* 80032DD4 0002FD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032DD8 0002FD18  7C 08 02 A6 */	mflr r0
/* 80032DDC 0002FD1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032DE0 0002FD20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032DE4 0002FD24  93 C1 00 08 */	stw r30, 8(r1)
/* 80032DE8 0002FD28  7C 7E 1B 78 */	mr r30, r3
/* 80032DEC 0002FD2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80032DF0 0002FD30  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80032DF4 0002FD34  7D 89 03 A6 */	mtctr r12
/* 80032DF8 0002FD38  4E 80 04 21 */	bctrl 
/* 80032DFC 0002FD3C  7C 7F 1B 78 */	mr r31, r3
/* 80032E00 0002FD40  7F C3 F3 78 */	mr r3, r30
/* 80032E04 0002FD44  81 9E 00 00 */	lwz r12, 0(r30)
/* 80032E08 0002FD48  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80032E0C 0002FD4C  7D 89 03 A6 */	mtctr r12
/* 80032E10 0002FD50  4E 80 04 21 */	bctrl 
/* 80032E14 0002FD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032E18 0002FD58  7C 63 FA 14 */	add r3, r3, r31
/* 80032E1C 0002FD5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032E20 0002FD60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80032E24 0002FD64  7C 08 03 A6 */	mtlr r0
/* 80032E28 0002FD68  38 21 00 10 */	addi r1, r1, 0x10
/* 80032E2C 0002FD6C  4E 80 00 20 */	blr 

.global getDescent__10JUTRomFontCFv
getDescent__10JUTRomFontCFv: # weak function
/* 80032E30 0002FD70  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032E34 0002FD74  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 80032E38 0002FD78  4E 80 00 20 */	blr 

.global getAscent__10JUTRomFontCFv
getAscent__10JUTRomFontCFv: # weak function
/* 80032E3C 0002FD7C  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032E40 0002FD80  A0 63 00 08 */	lhz r3, 8(r3)
/* 80032E44 0002FD84  4E 80 00 20 */	blr 

.global getCellHeight__10JUTRomFontCFv
getCellHeight__10JUTRomFontCFv: # weak function
/* 80032E48 0002FD88  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032E4C 0002FD8C  A0 63 00 12 */	lhz r3, 0x12(r3)
/* 80032E50 0002FD90  4E 80 00 20 */	blr 

.global getCellWidth__10JUTRomFontCFv
getCellWidth__10JUTRomFontCFv: # weak function
/* 80032E54 0002FD94  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032E58 0002FD98  A0 63 00 10 */	lhz r3, 0x10(r3)
/* 80032E5C 0002FD9C  4E 80 00 20 */	blr 

.global getWidthEntry__10JUTRomFontCFiPQ27JUTFont6TWidth
getWidthEntry__10JUTRomFontCFiPQ27JUTFont6TWidth:
/* 80032E60 0002FDA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032E64 0002FDA4  7C 08 02 A6 */	mflr r0
/* 80032E68 0002FDA8  2C 04 01 00 */	cmpwi r4, 0x100
/* 80032E6C 0002FDAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032E70 0002FDB0  38 61 00 08 */	addi r3, r1, 8
/* 80032E74 0002FDB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80032E78 0002FDB8  7C BF 2B 78 */	mr r31, r5
/* 80032E7C 0002FDBC  41 80 00 10 */	blt lbl_80032E8C
/* 80032E80 0002FDC0  7C 80 46 70 */	srawi r0, r4, 8
/* 80032E84 0002FDC4  38 63 00 01 */	addi r3, r3, 1
/* 80032E88 0002FDC8  98 01 00 08 */	stb r0, 8(r1)
lbl_80032E8C:
/* 80032E8C 0002FDCC  98 83 00 00 */	stb r4, 0(r3)
/* 80032E90 0002FDD0  38 61 00 08 */	addi r3, r1, 8
/* 80032E94 0002FDD4  38 81 00 0C */	addi r4, r1, 0xc
/* 80032E98 0002FDD8  48 0B BC 61 */	bl OSGetFontWidth
/* 80032E9C 0002FDDC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80032EA0 0002FDE0  38 00 00 00 */	li r0, 0
/* 80032EA4 0002FDE4  98 7F 00 01 */	stb r3, 1(r31)
/* 80032EA8 0002FDE8  98 1F 00 00 */	stb r0, 0(r31)
/* 80032EAC 0002FDEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032EB0 0002FDF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80032EB4 0002FDF4  7C 08 03 A6 */	mtlr r0
/* 80032EB8 0002FDF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80032EBC 0002FDFC  4E 80 00 20 */	blr 

.global isLeadByte__10JUTRomFontCFi
isLeadByte__10JUTRomFontCFi:
/* 80032EC0 0002FE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032EC4 0002FE04  7C 08 02 A6 */	mflr r0
/* 80032EC8 0002FE08  7C 83 23 78 */	mr r3, r4
/* 80032ECC 0002FE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032ED0 0002FE10  80 AD 89 10 */	lwz r5, spAboutEncoding___10JUTRomFont@sda21(r13)
/* 80032ED4 0002FE14  81 85 00 08 */	lwz r12, 8(r5)
/* 80032ED8 0002FE18  7D 89 03 A6 */	mtctr r12
/* 80032EDC 0002FE1C  4E 80 04 21 */	bctrl 
/* 80032EE0 0002FE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032EE4 0002FE24  7C 08 03 A6 */	mtlr r0
/* 80032EE8 0002FE28  38 21 00 10 */	addi r1, r1, 0x10
/* 80032EEC 0002FE2C  4E 80 00 20 */	blr 

.global getWidth__10JUTRomFontCFv
getWidth__10JUTRomFontCFv: # weak function
/* 80032EF0 0002FE30  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032EF4 0002FE34  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 80032EF8 0002FE38  4E 80 00 20 */	blr 

.global getLeading__10JUTRomFontCFv
getLeading__10JUTRomFontCFv: # weak function
/* 80032EFC 0002FE3C  80 6D 89 14 */	lwz r3, spFontHeader___10JUTRomFont@sda21(r13)
/* 80032F00 0002FE40  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 80032F04 0002FE44  4E 80 00 20 */	blr 

.global getResFont__10JUTRomFontCFv
getResFont__10JUTRomFontCFv: # weak function
/* 80032F08 0002FE48  38 60 00 00 */	li r3, 0
/* 80032F0C 0002FE4C  4E 80 00 20 */	blr 

.global getFontType__10JUTRomFontCFv
getFontType__10JUTRomFontCFv: # weak function
/* 80032F10 0002FE50  80 6D 89 10 */	lwz r3, spAboutEncoding___10JUTRomFont@sda21(r13)
/* 80032F14 0002FE54  80 63 00 00 */	lwz r3, 0(r3)
/* 80032F18 0002FE58  4E 80 00 20 */	blr 
