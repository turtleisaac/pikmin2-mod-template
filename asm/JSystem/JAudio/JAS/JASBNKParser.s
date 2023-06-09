.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj __vt__13JASInstEffect, weak
	.4byte 0
	.4byte 0
	.4byte 0
.endobj __vt__13JASInstEffect

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj sUsedHeapSize__12JASBNKParser, local
	.skip 0x4
.endobj sUsedHeapSize__12JASBNKParser

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80516CB8, local
	.float 1.0
.endobj lbl_80516CB8
.obj lbl_80516CBC, local
	.float 0.0
.endobj lbl_80516CBC
.obj lbl_80516CC0, local
	.float 127.0
.endobj lbl_80516CC0
.balign 8
.obj lbl_80516CC8, local
	.8byte 0x4330000080000000
.endobj lbl_80516CC8
.obj lbl_80516CD0, local
	.float 0.5
.endobj lbl_80516CD0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn createBasicBank__12JASBNKParserFPv, global
/* 8009A7DC 0009771C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8009A7E0 00097720  7C 08 02 A6 */	mflr r0
/* 8009A7E4 00097724  90 01 00 64 */	stw r0, 0x64(r1)
/* 8009A7E8 00097728  BD C1 00 18 */	stmw r14, 0x18(r1)
/* 8009A7EC 0009772C  7C 6F 1B 78 */	mr r15, r3
/* 8009A7F0 00097730  48 00 1B 0D */	bl getCurrentHeap__7JASBankFv
/* 8009A7F4 00097734  7C 7E 1B 78 */	mr r30, r3
/* 8009A7F8 00097738  4B F8 8F BD */	bl getFreeSize__7JKRHeapFv
/* 8009A7FC 0009773C  7C 6E 1B 78 */	mr r14, r3
/* 8009A800 00097740  7D FF 7B 78 */	mr r31, r15
/* 8009A804 00097744  7F C4 F3 78 */	mr r4, r30
/* 8009A808 00097748  38 60 00 10 */	li r3, 0x10
/* 8009A80C 0009774C  38 A0 00 00 */	li r5, 0
/* 8009A810 00097750  4B F8 97 31 */	bl __nw__FUlP7JKRHeapi
/* 8009A814 00097754  7C 7D 1B 79 */	or. r29, r3, r3
/* 8009A818 00097758  41 82 00 0C */	beq .L_8009A824
/* 8009A81C 0009775C  4B FF EE E1 */	bl __ct__12JASBasicBankFv
/* 8009A820 00097760  7C 7D 1B 78 */	mr r29, r3
.L_8009A824:
/* 8009A824 00097764  28 1D 00 00 */	cmplwi r29, 0
/* 8009A828 00097768  40 82 00 0C */	bne .L_8009A834
/* 8009A82C 0009776C  38 60 00 00 */	li r3, 0
/* 8009A830 00097770  48 00 06 68 */	b .L_8009AE98
.L_8009A834:
/* 8009A834 00097774  7F A3 EB 78 */	mr r3, r29
/* 8009A838 00097778  38 80 01 00 */	li r4, 0x100
/* 8009A83C 0009777C  4B FF EF A9 */	bl setInstCount__12JASBasicBankFUl
/* 8009A840 00097780  3A A0 00 00 */	li r21, 0
/* 8009A844 00097784  7F F8 FB 78 */	mr r24, r31
.L_8009A848:
/* 8009A848 00097788  80 98 00 24 */	lwz r4, 0x24(r24)
/* 8009A84C 0009778C  7F E3 FB 78 */	mr r3, r31
/* 8009A850 00097790  48 00 08 51 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TInst>__FPCvUl"
/* 8009A854 00097794  7C 70 1B 79 */	or. r16, r3, r3
/* 8009A858 00097798  41 82 03 C4 */	beq .L_8009AC1C
/* 8009A85C 0009779C  7F C4 F3 78 */	mr r4, r30
/* 8009A860 000977A0  38 60 00 24 */	li r3, 0x24
/* 8009A864 000977A4  38 A0 00 00 */	li r5, 0
/* 8009A868 000977A8  4B F8 96 D9 */	bl __nw__FUlP7JKRHeapi
/* 8009A86C 000977AC  7C 6F 1B 79 */	or. r15, r3, r3
/* 8009A870 000977B0  41 82 00 0C */	beq .L_8009A87C
/* 8009A874 000977B4  4B FF F0 15 */	bl __ct__12JASBasicInstFv
/* 8009A878 000977B8  7C 6F 1B 78 */	mr r15, r3
.L_8009A87C:
/* 8009A87C 000977BC  C0 10 00 08 */	lfs f0, 8(r16)
/* 8009A880 000977C0  7D E3 7B 78 */	mr r3, r15
/* 8009A884 000977C4  38 80 00 02 */	li r4, 2
/* 8009A888 000977C8  D0 0F 00 04 */	stfs f0, 4(r15)
/* 8009A88C 000977CC  C0 10 00 0C */	lfs f0, 0xc(r16)
/* 8009A890 000977D0  D0 0F 00 08 */	stfs f0, 8(r15)
/* 8009A894 000977D4  4B FF F4 21 */	bl setOscCount__12JASBasicInstFUl
/* 8009A898 000977D8  7E 11 83 78 */	mr r17, r16
/* 8009A89C 000977DC  3A 40 00 00 */	li r18, 0
/* 8009A8A0 000977E0  3A 60 00 00 */	li r19, 0
.L_8009A8A4:
/* 8009A8A4 000977E4  80 91 00 10 */	lwz r4, 0x10(r17)
/* 8009A8A8 000977E8  7F E3 FB 78 */	mr r3, r31
/* 8009A8AC 000977EC  48 00 07 DD */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser4TOsc>__FPCvUl"
/* 8009A8B0 000977F0  7C 74 1B 79 */	or. r20, r3, r3
/* 8009A8B4 000977F4  41 82 01 2C */	beq .L_8009A9E0
/* 8009A8B8 000977F8  7F A3 EB 78 */	mr r3, r29
/* 8009A8BC 000977FC  7F E4 FB 78 */	mr r4, r31
/* 8009A8C0 00097800  7E 85 A3 78 */	mr r5, r20
/* 8009A8C4 00097804  48 00 05 E9 */	bl findOscPtr__12JASBNKParserFP12JASBasicBankPQ212JASBNKParser7THeaderPQ212JASBNKParser4TOsc
/* 8009A8C8 00097808  7C 77 1B 79 */	or. r23, r3, r3
/* 8009A8CC 0009780C  40 82 01 00 */	bne .L_8009A9CC
/* 8009A8D0 00097810  7F C4 F3 78 */	mr r4, r30
/* 8009A8D4 00097814  38 60 00 18 */	li r3, 0x18
/* 8009A8D8 00097818  38 A0 00 00 */	li r5, 0
/* 8009A8DC 0009781C  4B F8 96 65 */	bl __nw__FUlP7JKRHeapi
/* 8009A8E0 00097820  88 14 00 00 */	lbz r0, 0(r20)
/* 8009A8E4 00097824  7C 77 1B 78 */	mr r23, r3
/* 8009A8E8 00097828  7F E3 FB 78 */	mr r3, r31
/* 8009A8EC 0009782C  90 17 00 00 */	stw r0, 0(r23)
/* 8009A8F0 00097830  C0 14 00 04 */	lfs f0, 4(r20)
/* 8009A8F4 00097834  D0 17 00 04 */	stfs f0, 4(r23)
/* 8009A8F8 00097838  80 94 00 08 */	lwz r4, 8(r20)
/* 8009A8FC 0009783C  48 00 07 75 */	bl "JSUConvertOffsetToPtr<s>__FPCvUl"
/* 8009A900 00097840  7C 76 1B 79 */	or. r22, r3, r3
/* 8009A904 00097844  41 82 00 4C */	beq .L_8009A950
/* 8009A908 00097848  48 00 06 C5 */	bl getOscTableEndPtr__12JASBNKParserFPs
/* 8009A90C 0009784C  7C 76 18 50 */	subf r3, r22, r3
/* 8009A910 00097850  7F C4 F3 78 */	mr r4, r30
/* 8009A914 00097854  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8009A918 00097858  38 A0 00 00 */	li r5, 0
/* 8009A91C 0009785C  7C 00 1A 14 */	add r0, r0, r3
/* 8009A920 00097860  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009A924 00097864  54 19 08 3C */	slwi r25, r0, 1
/* 8009A928 00097868  7F 23 CB 78 */	mr r3, r25
/* 8009A92C 0009786C  4B F8 97 1D */	bl __nwa__FUlP7JKRHeapi
/* 8009A930 00097870  7C 60 1B 78 */	mr r0, r3
/* 8009A934 00097874  7E C3 B3 78 */	mr r3, r22
/* 8009A938 00097878  7C 16 03 78 */	mr r22, r0
/* 8009A93C 0009787C  7F 25 CB 78 */	mr r5, r25
/* 8009A940 00097880  7E C4 B3 78 */	mr r4, r22
/* 8009A944 00097884  48 00 B6 4D */	bl bcopy__7JASCalcFPCvPvUl
/* 8009A948 00097888  92 D7 00 08 */	stw r22, 8(r23)
/* 8009A94C 0009788C  48 00 00 0C */	b .L_8009A958
.L_8009A950:
/* 8009A950 00097890  38 00 00 00 */	li r0, 0
/* 8009A954 00097894  90 17 00 08 */	stw r0, 8(r23)
.L_8009A958:
/* 8009A958 00097898  80 94 00 0C */	lwz r4, 0xc(r20)
/* 8009A95C 0009789C  7F E3 FB 78 */	mr r3, r31
/* 8009A960 000978A0  48 00 07 11 */	bl "JSUConvertOffsetToPtr<s>__FPCvUl"
/* 8009A964 000978A4  7C 76 1B 79 */	or. r22, r3, r3
/* 8009A968 000978A8  41 82 00 4C */	beq .L_8009A9B4
/* 8009A96C 000978AC  48 00 06 61 */	bl getOscTableEndPtr__12JASBNKParserFPs
/* 8009A970 000978B0  7C 76 18 50 */	subf r3, r22, r3
/* 8009A974 000978B4  7F C4 F3 78 */	mr r4, r30
/* 8009A978 000978B8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8009A97C 000978BC  38 A0 00 00 */	li r5, 0
/* 8009A980 000978C0  7C 00 1A 14 */	add r0, r0, r3
/* 8009A984 000978C4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009A988 000978C8  54 19 08 3C */	slwi r25, r0, 1
/* 8009A98C 000978CC  7F 23 CB 78 */	mr r3, r25
/* 8009A990 000978D0  4B F8 96 B9 */	bl __nwa__FUlP7JKRHeapi
/* 8009A994 000978D4  7C 60 1B 78 */	mr r0, r3
/* 8009A998 000978D8  7E C3 B3 78 */	mr r3, r22
/* 8009A99C 000978DC  7C 16 03 78 */	mr r22, r0
/* 8009A9A0 000978E0  7F 25 CB 78 */	mr r5, r25
/* 8009A9A4 000978E4  7E C4 B3 78 */	mr r4, r22
/* 8009A9A8 000978E8  48 00 B5 E9 */	bl bcopy__7JASCalcFPCvPvUl
/* 8009A9AC 000978EC  92 D7 00 0C */	stw r22, 0xc(r23)
/* 8009A9B0 000978F0  48 00 00 0C */	b .L_8009A9BC
.L_8009A9B4:
/* 8009A9B4 000978F4  38 00 00 00 */	li r0, 0
/* 8009A9B8 000978F8  90 17 00 0C */	stw r0, 0xc(r23)
.L_8009A9BC:
/* 8009A9BC 000978FC  C0 14 00 10 */	lfs f0, 0x10(r20)
/* 8009A9C0 00097900  D0 17 00 10 */	stfs f0, 0x10(r23)
/* 8009A9C4 00097904  C0 14 00 14 */	lfs f0, 0x14(r20)
/* 8009A9C8 00097908  D0 17 00 14 */	stfs f0, 0x14(r23)
.L_8009A9CC:
/* 8009A9CC 0009790C  7D E3 7B 78 */	mr r3, r15
/* 8009A9D0 00097910  7E 44 93 78 */	mr r4, r18
/* 8009A9D4 00097914  7E E5 BB 78 */	mr r5, r23
/* 8009A9D8 00097918  4B FF F3 55 */	bl setOsc__12JASBasicInstFiPQ213JASOscillator4Data
/* 8009A9DC 0009791C  3A 52 00 01 */	addi r18, r18, 1
.L_8009A9E0:
/* 8009A9E0 00097920  3A 73 00 01 */	addi r19, r19, 1
/* 8009A9E4 00097924  3A 31 00 04 */	addi r17, r17, 4
/* 8009A9E8 00097928  2C 13 00 02 */	cmpwi r19, 2
/* 8009A9EC 0009792C  41 80 FE B8 */	blt .L_8009A8A4
/* 8009A9F0 00097930  7D E3 7B 78 */	mr r3, r15
/* 8009A9F4 00097934  38 80 00 04 */	li r4, 4
/* 8009A9F8 00097938  4B FF F2 35 */	bl setEffectCount__12JASBasicInstFUl
/* 8009A9FC 0009793C  3A 40 00 00 */	li r18, 0
/* 8009AA00 00097940  7E 11 83 78 */	mr r17, r16
.L_8009AA04:
/* 8009AA04 00097944  80 91 00 18 */	lwz r4, 0x18(r17)
/* 8009AA08 00097948  7F E3 FB 78 */	mr r3, r31
/* 8009AA0C 0009794C  48 00 06 4D */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TRand>__FPCvUl"
/* 8009AA10 00097950  7C 73 1B 79 */	or. r19, r3, r3
/* 8009AA14 00097954  41 82 00 78 */	beq .L_8009AA8C
/* 8009AA18 00097958  7F C4 F3 78 */	mr r4, r30
/* 8009AA1C 0009795C  38 60 00 10 */	li r3, 0x10
/* 8009AA20 00097960  38 A0 00 00 */	li r5, 0
/* 8009AA24 00097964  4B F8 95 1D */	bl __nw__FUlP7JKRHeapi
/* 8009AA28 00097968  7C 74 1B 79 */	or. r20, r3, r3
/* 8009AA2C 0009796C  41 82 00 34 */	beq .L_8009AA60
/* 8009AA30 00097970  3C 80 80 4A */	lis r4, __vt__13JASInstEffect@ha
/* 8009AA34 00097974  3C 60 80 4A */	lis r3, __vt__11JASInstRand@ha
/* 8009AA38 00097978  38 04 38 10 */	addi r0, r4, __vt__13JASInstEffect@l
/* 8009AA3C 0009797C  38 80 00 00 */	li r4, 0
/* 8009AA40 00097980  90 14 00 00 */	stw r0, 0(r20)
/* 8009AA44 00097984  38 03 38 38 */	addi r0, r3, __vt__11JASInstRand@l
/* 8009AA48 00097988  C0 22 89 58 */	lfs f1, lbl_80516CB8@sda21(r2)
/* 8009AA4C 0009798C  98 94 00 04 */	stb r4, 4(r20)
/* 8009AA50 00097990  C0 02 89 5C */	lfs f0, lbl_80516CBC@sda21(r2)
/* 8009AA54 00097994  90 14 00 00 */	stw r0, 0(r20)
/* 8009AA58 00097998  D0 34 00 08 */	stfs f1, 8(r20)
/* 8009AA5C 0009799C  D0 14 00 0C */	stfs f0, 0xc(r20)
.L_8009AA60:
/* 8009AA60 000979A0  88 93 00 00 */	lbz r4, 0(r19)
/* 8009AA64 000979A4  7E 83 A3 78 */	mr r3, r20
/* 8009AA68 000979A8  48 00 0A 79 */	bl setTarget__13JASInstEffectFi
/* 8009AA6C 000979AC  C0 13 00 04 */	lfs f0, 4(r19)
/* 8009AA70 000979B0  7D E3 7B 78 */	mr r3, r15
/* 8009AA74 000979B4  7E 44 93 78 */	mr r4, r18
/* 8009AA78 000979B8  7E 85 A3 78 */	mr r5, r20
/* 8009AA7C 000979BC  D0 14 00 08 */	stfs f0, 8(r20)
/* 8009AA80 000979C0  C0 13 00 08 */	lfs f0, 8(r19)
/* 8009AA84 000979C4  D0 14 00 0C */	stfs f0, 0xc(r20)
/* 8009AA88 000979C8  4B FF F2 1D */	bl setEffect__12JASBasicInstFiP13JASInstEffect
.L_8009AA8C:
/* 8009AA8C 000979CC  3A 52 00 01 */	addi r18, r18, 1
/* 8009AA90 000979D0  3A 31 00 04 */	addi r17, r17, 4
/* 8009AA94 000979D4  2C 12 00 02 */	cmpwi r18, 2
/* 8009AA98 000979D8  41 80 FF 6C */	blt .L_8009AA04
/* 8009AA9C 000979DC  3A 80 00 00 */	li r20, 0
/* 8009AAA0 000979E0  7E 13 83 78 */	mr r19, r16
.L_8009AAA4:
/* 8009AAA4 000979E4  80 93 00 20 */	lwz r4, 0x20(r19)
/* 8009AAA8 000979E8  7F E3 FB 78 */	mr r3, r31
/* 8009AAAC 000979EC  48 00 05 95 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser6TSense>__FPCvUl"
/* 8009AAB0 000979F0  7C 71 1B 79 */	or. r17, r3, r3
/* 8009AAB4 000979F4  41 82 00 88 */	beq .L_8009AB3C
/* 8009AAB8 000979F8  7F C4 F3 78 */	mr r4, r30
/* 8009AABC 000979FC  38 60 00 14 */	li r3, 0x14
/* 8009AAC0 00097A00  38 A0 00 00 */	li r5, 0
/* 8009AAC4 00097A04  4B F8 94 7D */	bl __nw__FUlP7JKRHeapi
/* 8009AAC8 00097A08  7C 72 1B 79 */	or. r18, r3, r3
/* 8009AACC 00097A0C  41 82 00 3C */	beq .L_8009AB08
/* 8009AAD0 00097A10  3C 80 80 4A */	lis r4, __vt__13JASInstEffect@ha
/* 8009AAD4 00097A14  3C 60 80 4A */	lis r3, __vt__12JASInstSense@ha
/* 8009AAD8 00097A18  38 04 38 10 */	addi r0, r4, __vt__13JASInstEffect@l
/* 8009AADC 00097A1C  38 80 00 00 */	li r4, 0
/* 8009AAE0 00097A20  90 12 00 00 */	stw r0, 0(r18)
/* 8009AAE4 00097A24  38 63 38 48 */	addi r3, r3, __vt__12JASInstSense@l
/* 8009AAE8 00097A28  38 00 00 3C */	li r0, 0x3c
/* 8009AAEC 00097A2C  C0 02 89 58 */	lfs f0, lbl_80516CB8@sda21(r2)
/* 8009AAF0 00097A30  98 92 00 04 */	stb r4, 4(r18)
/* 8009AAF4 00097A34  90 72 00 00 */	stw r3, 0(r18)
/* 8009AAF8 00097A38  98 92 00 08 */	stb r4, 8(r18)
/* 8009AAFC 00097A3C  98 12 00 09 */	stb r0, 9(r18)
/* 8009AB00 00097A40  D0 12 00 0C */	stfs f0, 0xc(r18)
/* 8009AB04 00097A44  D0 12 00 10 */	stfs f0, 0x10(r18)
.L_8009AB08:
/* 8009AB08 00097A48  88 91 00 00 */	lbz r4, 0(r17)
/* 8009AB0C 00097A4C  7E 43 93 78 */	mr r3, r18
/* 8009AB10 00097A50  48 00 09 D1 */	bl setTarget__13JASInstEffectFi
/* 8009AB14 00097A54  88 91 00 01 */	lbz r4, 1(r17)
/* 8009AB18 00097A58  7E 43 93 78 */	mr r3, r18
/* 8009AB1C 00097A5C  88 B1 00 02 */	lbz r5, 2(r17)
/* 8009AB20 00097A60  C0 31 00 04 */	lfs f1, 4(r17)
/* 8009AB24 00097A64  C0 51 00 08 */	lfs f2, 8(r17)
/* 8009AB28 00097A68  48 00 0B 89 */	bl setParams__12JASInstSenseFiiff
/* 8009AB2C 00097A6C  7D E3 7B 78 */	mr r3, r15
/* 8009AB30 00097A70  7E 45 93 78 */	mr r5, r18
/* 8009AB34 00097A74  38 94 00 02 */	addi r4, r20, 2
/* 8009AB38 00097A78  4B FF F1 6D */	bl setEffect__12JASBasicInstFiP13JASInstEffect
.L_8009AB3C:
/* 8009AB3C 00097A7C  3A 94 00 01 */	addi r20, r20, 1
/* 8009AB40 00097A80  3A 73 00 04 */	addi r19, r19, 4
/* 8009AB44 00097A84  2C 14 00 02 */	cmpwi r20, 2
/* 8009AB48 00097A88  41 80 FF 5C */	blt .L_8009AAA4
/* 8009AB4C 00097A8C  80 90 00 28 */	lwz r4, 0x28(r16)
/* 8009AB50 00097A90  7D E3 7B 78 */	mr r3, r15
/* 8009AB54 00097A94  4B FF F0 3D */	bl setKeyRegionCount__12JASBasicInstFUl
/* 8009AB58 00097A98  7E 14 83 78 */	mr r20, r16
/* 8009AB5C 00097A9C  3A C0 00 00 */	li r22, 0
/* 8009AB60 00097AA0  48 00 00 A0 */	b .L_8009AC00
.L_8009AB64:
/* 8009AB64 00097AA4  7D E3 7B 78 */	mr r3, r15
/* 8009AB68 00097AA8  7E C4 B3 78 */	mr r4, r22
/* 8009AB6C 00097AAC  4B FF F1 D1 */	bl getKeyRegion__12JASBasicInstFi
/* 8009AB70 00097AB0  80 94 00 2C */	lwz r4, 0x2c(r20)
/* 8009AB74 00097AB4  7C 77 1B 78 */	mr r23, r3
/* 8009AB78 00097AB8  7F E3 FB 78 */	mr r3, r31
/* 8009AB7C 00097ABC  48 00 04 AD */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser7TKeymap>__FPCvUl"
/* 8009AB80 00097AC0  7C 72 1B 78 */	mr r18, r3
/* 8009AB84 00097AC4  7E E3 BB 78 */	mr r3, r23
/* 8009AB88 00097AC8  88 12 00 00 */	lbz r0, 0(r18)
/* 8009AB8C 00097ACC  90 17 00 00 */	stw r0, 0(r23)
/* 8009AB90 00097AD0  80 92 00 04 */	lwz r4, 4(r18)
/* 8009AB94 00097AD4  4B FF F2 21 */	bl setVeloRegionCount__Q212JASBasicInst7TKeymapFUl
/* 8009AB98 00097AD8  7E 53 93 78 */	mr r19, r18
/* 8009AB9C 00097ADC  3B 20 00 00 */	li r25, 0
/* 8009ABA0 00097AE0  48 00 00 4C */	b .L_8009ABEC
.L_8009ABA4:
/* 8009ABA4 00097AE4  7E E3 BB 78 */	mr r3, r23
/* 8009ABA8 00097AE8  7F 24 CB 78 */	mr r4, r25
/* 8009ABAC 00097AEC  4B FF F2 61 */	bl getVeloRegion__Q212JASBasicInst7TKeymapFi
/* 8009ABB0 00097AF0  80 93 00 08 */	lwz r4, 8(r19)
/* 8009ABB4 00097AF4  7C 71 1B 78 */	mr r17, r3
/* 8009ABB8 00097AF8  7F E3 FB 78 */	mr r3, r31
/* 8009ABBC 00097AFC  48 00 04 55 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TVmap>__FPCvUl"
/* 8009ABC0 00097B00  88 03 00 00 */	lbz r0, 0(r3)
/* 8009ABC4 00097B04  3A 73 00 04 */	addi r19, r19, 4
/* 8009ABC8 00097B08  3B 39 00 01 */	addi r25, r25, 1
/* 8009ABCC 00097B0C  90 11 00 00 */	stw r0, 0(r17)
/* 8009ABD0 00097B10  80 03 00 04 */	lwz r0, 4(r3)
/* 8009ABD4 00097B14  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8009ABD8 00097B18  90 11 00 04 */	stw r0, 4(r17)
/* 8009ABDC 00097B1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009ABE0 00097B20  D0 11 00 08 */	stfs f0, 8(r17)
/* 8009ABE4 00097B24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009ABE8 00097B28  D0 11 00 0C */	stfs f0, 0xc(r17)
.L_8009ABEC:
/* 8009ABEC 00097B2C  80 12 00 04 */	lwz r0, 4(r18)
/* 8009ABF0 00097B30  7C 19 00 40 */	cmplw r25, r0
/* 8009ABF4 00097B34  41 80 FF B0 */	blt .L_8009ABA4
/* 8009ABF8 00097B38  3A 94 00 04 */	addi r20, r20, 4
/* 8009ABFC 00097B3C  3A D6 00 01 */	addi r22, r22, 1
.L_8009AC00:
/* 8009AC00 00097B40  80 10 00 28 */	lwz r0, 0x28(r16)
/* 8009AC04 00097B44  7C 16 00 40 */	cmplw r22, r0
/* 8009AC08 00097B48  41 80 FF 5C */	blt .L_8009AB64
/* 8009AC0C 00097B4C  7F A3 EB 78 */	mr r3, r29
/* 8009AC10 00097B50  7E A4 AB 78 */	mr r4, r21
/* 8009AC14 00097B54  7D E5 7B 78 */	mr r5, r15
/* 8009AC18 00097B58  4B FF EC 31 */	bl setInst__12JASBasicBankFiP7JASInst
.L_8009AC1C:
/* 8009AC1C 00097B5C  3A B5 00 01 */	addi r21, r21, 1
/* 8009AC20 00097B60  3B 18 00 04 */	addi r24, r24, 4
/* 8009AC24 00097B64  2C 15 00 80 */	cmpwi r21, 0x80
/* 8009AC28 00097B68  41 80 FC 20 */	blt .L_8009A848
/* 8009AC2C 00097B6C  3B 60 00 00 */	li r27, 0
/* 8009AC30 00097B70  7F FC FB 78 */	mr r28, r31
.L_8009AC34:
/* 8009AC34 00097B74  80 9C 03 B4 */	lwz r4, 0x3b4(r28)
/* 8009AC38 00097B78  7F E3 FB 78 */	mr r3, r31
/* 8009AC3C 00097B7C  48 00 03 BD */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TPerc>__FPCvUl"
/* 8009AC40 00097B80  7C 79 1B 79 */	or. r25, r3, r3
/* 8009AC44 00097B84  41 82 02 28 */	beq .L_8009AE6C
/* 8009AC48 00097B88  7F C4 F3 78 */	mr r4, r30
/* 8009AC4C 00097B8C  38 60 10 04 */	li r3, 0x1004
/* 8009AC50 00097B90  38 A0 00 00 */	li r5, 0
/* 8009AC54 00097B94  4B F8 92 ED */	bl __nw__FUlP7JKRHeapi
/* 8009AC58 00097B98  7C 7A 1B 79 */	or. r26, r3, r3
/* 8009AC5C 00097B9C  41 82 00 40 */	beq .L_8009AC9C
/* 8009AC60 00097BA0  3C 80 80 4A */	lis r4, __vt__7JASInst@ha
/* 8009AC64 00097BA4  3C 60 80 4A */	lis r3, __vt__10JASDrumSet@ha
/* 8009AC68 00097BA8  38 04 37 90 */	addi r0, r4, __vt__7JASInst@l
/* 8009AC6C 00097BAC  7F 46 D3 78 */	mr r6, r26
/* 8009AC70 00097BB0  90 1A 00 00 */	stw r0, 0(r26)
/* 8009AC74 00097BB4  38 03 38 20 */	addi r0, r3, __vt__10JASDrumSet@l
/* 8009AC78 00097BB8  3C 80 80 0A */	lis r4, __ct__Q210JASDrumSet5TPercFv@ha
/* 8009AC7C 00097BBC  3C 60 80 0A */	lis r3, __dt__Q210JASDrumSet5TPercFv@ha
/* 8009AC80 00097BC0  90 1A 00 00 */	stw r0, 0(r26)
/* 8009AC84 00097BC4  38 A3 B2 FC */	addi r5, r3, __dt__Q210JASDrumSet5TPercFv@l
/* 8009AC88 00097BC8  38 66 00 04 */	addi r3, r6, 4
/* 8009AC8C 00097BCC  38 84 B2 C8 */	addi r4, r4, __ct__Q210JASDrumSet5TPercFv@l
/* 8009AC90 00097BD0  38 C0 00 20 */	li r6, 0x20
/* 8009AC94 00097BD4  38 E0 00 80 */	li r7, 0x80
/* 8009AC98 00097BD8  48 02 6B A5 */	bl __construct_array
.L_8009AC9C:
/* 8009AC9C 00097BDC  7F 36 CB 78 */	mr r22, r25
/* 8009ACA0 00097BE0  7F 35 CB 78 */	mr r21, r25
/* 8009ACA4 00097BE4  3A 80 00 00 */	li r20, 0
.L_8009ACA8:
/* 8009ACA8 00097BE8  80 96 00 88 */	lwz r4, 0x88(r22)
/* 8009ACAC 00097BEC  7F E3 FB 78 */	mr r3, r31
/* 8009ACB0 00097BF0  48 00 03 31 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TPmap>__FPCvUl"
/* 8009ACB4 00097BF4  7C 78 1B 79 */	or. r24, r3, r3
/* 8009ACB8 00097BF8  41 82 01 90 */	beq .L_8009AE48
/* 8009ACBC 00097BFC  7F 43 D3 78 */	mr r3, r26
/* 8009ACC0 00097C00  7E 84 A3 78 */	mr r4, r20
/* 8009ACC4 00097C04  48 00 05 F1 */	bl getPerc__10JASDrumSetFi
/* 8009ACC8 00097C08  C0 18 00 00 */	lfs f0, 0(r24)
/* 8009ACCC 00097C0C  7C 73 1B 78 */	mr r19, r3
/* 8009ACD0 00097C10  D0 03 00 00 */	stfs f0, 0(r3)
/* 8009ACD4 00097C14  C0 18 00 04 */	lfs f0, 4(r24)
/* 8009ACD8 00097C18  D0 03 00 04 */	stfs f0, 4(r3)
/* 8009ACDC 00097C1C  80 99 00 00 */	lwz r4, 0(r25)
/* 8009ACE0 00097C20  3C 04 AF BB */	addis r0, r4, 0xafbb
/* 8009ACE4 00097C24  28 00 52 32 */	cmplwi r0, 0x5232
/* 8009ACE8 00097C28  40 82 00 40 */	bne .L_8009AD28
/* 8009ACEC 00097C2C  38 94 02 88 */	addi r4, r20, 0x288
/* 8009ACF0 00097C30  3C 00 43 30 */	lis r0, 0x4330
/* 8009ACF4 00097C34  7C 99 20 AE */	lbzx r4, r25, r4
/* 8009ACF8 00097C38  90 01 00 08 */	stw r0, 8(r1)
/* 8009ACFC 00097C3C  7C 80 07 74 */	extsb r0, r4
/* 8009AD00 00097C40  C8 42 89 68 */	lfd f2, lbl_80516CC8@sda21(r2)
/* 8009AD04 00097C44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009AD08 00097C48  C0 02 89 60 */	lfs f0, lbl_80516CC0@sda21(r2)
/* 8009AD0C 00097C4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009AD10 00097C50  C8 21 00 08 */	lfd f1, 8(r1)
/* 8009AD14 00097C54  EC 21 10 28 */	fsubs f1, f1, f2
/* 8009AD18 00097C58  EC 01 00 24 */	fdivs f0, f1, f0
/* 8009AD1C 00097C5C  D0 13 00 08 */	stfs f0, 8(r19)
/* 8009AD20 00097C60  A0 95 03 08 */	lhz r4, 0x308(r21)
/* 8009AD24 00097C64  48 00 07 25 */	bl setRelease__Q210JASDrumSet5TPercFUl
.L_8009AD28:
/* 8009AD28 00097C68  7E 63 9B 78 */	mr r3, r19
/* 8009AD2C 00097C6C  38 80 00 02 */	li r4, 2
/* 8009AD30 00097C70  48 00 06 29 */	bl setEffectCount__Q210JASDrumSet5TPercFUl
/* 8009AD34 00097C74  7F 17 C3 78 */	mr r23, r24
/* 8009AD38 00097C78  3A 40 00 00 */	li r18, 0
/* 8009AD3C 00097C7C  3A 20 00 00 */	li r17, 0
.L_8009AD40:
/* 8009AD40 00097C80  80 97 00 08 */	lwz r4, 8(r23)
/* 8009AD44 00097C84  7F E3 FB 78 */	mr r3, r31
/* 8009AD48 00097C88  48 00 03 11 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TRand>__FPCvUl"
/* 8009AD4C 00097C8C  7C 70 1B 79 */	or. r16, r3, r3
/* 8009AD50 00097C90  41 82 00 7C */	beq .L_8009ADCC
/* 8009AD54 00097C94  7F C4 F3 78 */	mr r4, r30
/* 8009AD58 00097C98  38 60 00 10 */	li r3, 0x10
/* 8009AD5C 00097C9C  38 A0 00 00 */	li r5, 0
/* 8009AD60 00097CA0  4B F8 91 E1 */	bl __nw__FUlP7JKRHeapi
/* 8009AD64 00097CA4  7C 6F 1B 79 */	or. r15, r3, r3
/* 8009AD68 00097CA8  41 82 00 34 */	beq .L_8009AD9C
/* 8009AD6C 00097CAC  3C 80 80 4A */	lis r4, __vt__13JASInstEffect@ha
/* 8009AD70 00097CB0  3C 60 80 4A */	lis r3, __vt__11JASInstRand@ha
/* 8009AD74 00097CB4  38 04 38 10 */	addi r0, r4, __vt__13JASInstEffect@l
/* 8009AD78 00097CB8  38 80 00 00 */	li r4, 0
/* 8009AD7C 00097CBC  90 0F 00 00 */	stw r0, 0(r15)
/* 8009AD80 00097CC0  38 03 38 38 */	addi r0, r3, __vt__11JASInstRand@l
/* 8009AD84 00097CC4  C0 22 89 58 */	lfs f1, lbl_80516CB8@sda21(r2)
/* 8009AD88 00097CC8  98 8F 00 04 */	stb r4, 4(r15)
/* 8009AD8C 00097CCC  C0 02 89 5C */	lfs f0, lbl_80516CBC@sda21(r2)
/* 8009AD90 00097CD0  90 0F 00 00 */	stw r0, 0(r15)
/* 8009AD94 00097CD4  D0 2F 00 08 */	stfs f1, 8(r15)
/* 8009AD98 00097CD8  D0 0F 00 0C */	stfs f0, 0xc(r15)
.L_8009AD9C:
/* 8009AD9C 00097CDC  88 90 00 00 */	lbz r4, 0(r16)
/* 8009ADA0 00097CE0  7D E3 7B 78 */	mr r3, r15
/* 8009ADA4 00097CE4  48 00 07 3D */	bl setTarget__13JASInstEffectFi
/* 8009ADA8 00097CE8  C0 10 00 04 */	lfs f0, 4(r16)
/* 8009ADAC 00097CEC  7E 63 9B 78 */	mr r3, r19
/* 8009ADB0 00097CF0  7E 44 93 78 */	mr r4, r18
/* 8009ADB4 00097CF4  7D E5 7B 78 */	mr r5, r15
/* 8009ADB8 00097CF8  D0 0F 00 08 */	stfs f0, 8(r15)
/* 8009ADBC 00097CFC  C0 10 00 08 */	lfs f0, 8(r16)
/* 8009ADC0 00097D00  D0 0F 00 0C */	stfs f0, 0xc(r15)
/* 8009ADC4 00097D04  48 00 06 75 */	bl setEffect__Q210JASDrumSet5TPercFiP13JASInstEffect
/* 8009ADC8 00097D08  3A 52 00 01 */	addi r18, r18, 1
.L_8009ADCC:
/* 8009ADCC 00097D0C  3A 31 00 01 */	addi r17, r17, 1
/* 8009ADD0 00097D10  3A F7 00 04 */	addi r23, r23, 4
/* 8009ADD4 00097D14  2C 11 00 02 */	cmpwi r17, 2
/* 8009ADD8 00097D18  41 80 FF 68 */	blt .L_8009AD40
/* 8009ADDC 00097D1C  80 98 00 10 */	lwz r4, 0x10(r24)
/* 8009ADE0 00097D20  7E 63 9B 78 */	mr r3, r19
/* 8009ADE4 00097D24  48 00 05 ED */	bl setVeloRegionCount__Q210JASDrumSet5TPercFUl
/* 8009ADE8 00097D28  7F 10 C3 78 */	mr r16, r24
/* 8009ADEC 00097D2C  3A 20 00 00 */	li r17, 0
/* 8009ADF0 00097D30  48 00 00 4C */	b .L_8009AE3C
.L_8009ADF4:
/* 8009ADF4 00097D34  7E 63 9B 78 */	mr r3, r19
/* 8009ADF8 00097D38  7E 24 8B 78 */	mr r4, r17
/* 8009ADFC 00097D3C  48 00 06 2D */	bl getVeloRegion__Q210JASDrumSet5TPercFi
/* 8009AE00 00097D40  80 90 00 14 */	lwz r4, 0x14(r16)
/* 8009AE04 00097D44  7C 6F 1B 78 */	mr r15, r3
/* 8009AE08 00097D48  7F E3 FB 78 */	mr r3, r31
/* 8009AE0C 00097D4C  48 00 02 05 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TVmap>__FPCvUl"
/* 8009AE10 00097D50  88 03 00 00 */	lbz r0, 0(r3)
/* 8009AE14 00097D54  3A 10 00 04 */	addi r16, r16, 4
/* 8009AE18 00097D58  3A 31 00 01 */	addi r17, r17, 1
/* 8009AE1C 00097D5C  90 0F 00 00 */	stw r0, 0(r15)
/* 8009AE20 00097D60  80 03 00 04 */	lwz r0, 4(r3)
/* 8009AE24 00097D64  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8009AE28 00097D68  90 0F 00 04 */	stw r0, 4(r15)
/* 8009AE2C 00097D6C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009AE30 00097D70  D0 0F 00 08 */	stfs f0, 8(r15)
/* 8009AE34 00097D74  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009AE38 00097D78  D0 0F 00 0C */	stfs f0, 0xc(r15)
.L_8009AE3C:
/* 8009AE3C 00097D7C  80 18 00 10 */	lwz r0, 0x10(r24)
/* 8009AE40 00097D80  7C 11 00 40 */	cmplw r17, r0
/* 8009AE44 00097D84  41 80 FF B0 */	blt .L_8009ADF4
.L_8009AE48:
/* 8009AE48 00097D88  3A 94 00 01 */	addi r20, r20, 1
/* 8009AE4C 00097D8C  3A B5 00 02 */	addi r21, r21, 2
/* 8009AE50 00097D90  2C 14 00 80 */	cmpwi r20, 0x80
/* 8009AE54 00097D94  3A D6 00 04 */	addi r22, r22, 4
/* 8009AE58 00097D98  41 80 FE 50 */	blt .L_8009ACA8
/* 8009AE5C 00097D9C  7F A3 EB 78 */	mr r3, r29
/* 8009AE60 00097DA0  7F 45 D3 78 */	mr r5, r26
/* 8009AE64 00097DA4  38 9B 00 E4 */	addi r4, r27, 0xe4
/* 8009AE68 00097DA8  4B FF E9 E1 */	bl setInst__12JASBasicBankFiP7JASInst
.L_8009AE6C:
/* 8009AE6C 00097DAC  3B 7B 00 01 */	addi r27, r27, 1
/* 8009AE70 00097DB0  3B 9C 00 04 */	addi r28, r28, 4
/* 8009AE74 00097DB4  2C 1B 00 0C */	cmpwi r27, 0xc
/* 8009AE78 00097DB8  41 80 FD BC */	blt .L_8009AC34
/* 8009AE7C 00097DBC  7F C3 F3 78 */	mr r3, r30
/* 8009AE80 00097DC0  4B F8 89 35 */	bl getFreeSize__7JKRHeapFv
/* 8009AE84 00097DC4  80 0D 8A 28 */	lwz r0, sUsedHeapSize__12JASBNKParser@sda21(r13)
/* 8009AE88 00097DC8  7C 83 70 50 */	subf r4, r3, r14
/* 8009AE8C 00097DCC  7F A3 EB 78 */	mr r3, r29
/* 8009AE90 00097DD0  7C 00 22 14 */	add r0, r0, r4
/* 8009AE94 00097DD4  90 0D 8A 28 */	stw r0, sUsedHeapSize__12JASBNKParser@sda21(r13)
.L_8009AE98:
/* 8009AE98 00097DD8  B9 C1 00 18 */	lmw r14, 0x18(r1)
/* 8009AE9C 00097DDC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8009AEA0 00097DE0  7C 08 03 A6 */	mtlr r0
/* 8009AEA4 00097DE4  38 21 00 60 */	addi r1, r1, 0x60
/* 8009AEA8 00097DE8  4E 80 00 20 */	blr 
.endfn createBasicBank__12JASBNKParserFPv

.fn findOscPtr__12JASBNKParserFP12JASBasicBankPQ212JASBNKParser7THeaderPQ212JASBNKParser4TOsc, local
/* 8009AEAC 00097DEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8009AEB0 00097DF0  7C 08 02 A6 */	mflr r0
/* 8009AEB4 00097DF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8009AEB8 00097DF8  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 8009AEBC 00097DFC  7C 9A 23 78 */	mr r26, r4
/* 8009AEC0 00097E00  7C 79 1B 78 */	mr r25, r3
/* 8009AEC4 00097E04  7C BB 2B 78 */	mr r27, r5
/* 8009AEC8 00097E08  3B A0 00 00 */	li r29, 0
/* 8009AECC 00097E0C  3B DA 00 20 */	addi r30, r26, 0x20
.L_8009AED0:
/* 8009AED0 00097E10  80 9E 00 04 */	lwz r4, 4(r30)
/* 8009AED4 00097E14  7F 43 D3 78 */	mr r3, r26
/* 8009AED8 00097E18  48 00 01 C9 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser5TInst>__FPCvUl"
/* 8009AEDC 00097E1C  28 03 00 00 */	cmplwi r3, 0
/* 8009AEE0 00097E20  41 82 00 C4 */	beq .L_8009AFA4
/* 8009AEE4 00097E24  3B 80 00 00 */	li r28, 0
/* 8009AEE8 00097E28  7C 7F 1B 78 */	mr r31, r3
.L_8009AEEC:
/* 8009AEEC 00097E2C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8009AEF0 00097E30  7F 43 D3 78 */	mr r3, r26
/* 8009AEF4 00097E34  48 00 01 95 */	bl "JSUConvertOffsetToPtr<Q212JASBNKParser4TOsc>__FPCvUl"
/* 8009AEF8 00097E38  7C 03 D8 40 */	cmplw r3, r27
/* 8009AEFC 00097E3C  40 82 00 98 */	bne .L_8009AF94
/* 8009AF00 00097E40  7F 23 CB 78 */	mr r3, r25
/* 8009AF04 00097E44  7F A4 EB 78 */	mr r4, r29
/* 8009AF08 00097E48  81 99 00 00 */	lwz r12, 0(r25)
/* 8009AF0C 00097E4C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8009AF10 00097E50  7D 89 03 A6 */	mtctr r12
/* 8009AF14 00097E54  4E 80 04 21 */	bctrl 
/* 8009AF18 00097E58  28 03 00 00 */	cmplwi r3, 0
/* 8009AF1C 00097E5C  41 82 00 78 */	beq .L_8009AF94
/* 8009AF20 00097E60  C0 42 89 58 */	lfs f2, lbl_80516CB8@sda21(r2)
/* 8009AF24 00097E64  38 00 00 00 */	li r0, 0
/* 8009AF28 00097E68  C0 02 89 5C */	lfs f0, lbl_80516CBC@sda21(r2)
/* 8009AF2C 00097E6C  38 C1 00 08 */	addi r6, r1, 8
/* 8009AF30 00097E70  C0 22 89 70 */	lfs f1, lbl_80516CD0@sda21(r2)
/* 8009AF34 00097E74  38 80 00 3C */	li r4, 0x3c
/* 8009AF38 00097E78  98 01 00 08 */	stb r0, 8(r1)
/* 8009AF3C 00097E7C  38 A0 00 7F */	li r5, 0x7f
/* 8009AF40 00097E80  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009AF44 00097E84  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009AF48 00097E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AF4C 00097E8C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8009AF50 00097E90  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8009AF54 00097E94  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8009AF58 00097E98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8009AF5C 00097E9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009AF60 00097EA0  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8009AF64 00097EA4  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 8009AF68 00097EA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8009AF6C 00097EAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8009AF70 00097EB0  7D 89 03 A6 */	mtctr r12
/* 8009AF74 00097EB4  4E 80 04 21 */	bctrl 
/* 8009AF78 00097EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AF7C 00097EBC  7C 1C 00 40 */	cmplw r28, r0
/* 8009AF80 00097EC0  40 80 00 14 */	bge .L_8009AF94
/* 8009AF84 00097EC4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8009AF88 00097EC8  57 80 10 3A */	slwi r0, r28, 2
/* 8009AF8C 00097ECC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8009AF90 00097ED0  48 00 00 28 */	b .L_8009AFB8
.L_8009AF94:
/* 8009AF94 00097ED4  3B 9C 00 01 */	addi r28, r28, 1
/* 8009AF98 00097ED8  3B FF 00 04 */	addi r31, r31, 4
/* 8009AF9C 00097EDC  2C 1C 00 02 */	cmpwi r28, 2
/* 8009AFA0 00097EE0  41 80 FF 4C */	blt .L_8009AEEC
.L_8009AFA4:
/* 8009AFA4 00097EE4  3B BD 00 01 */	addi r29, r29, 1
/* 8009AFA8 00097EE8  3B DE 00 04 */	addi r30, r30, 4
/* 8009AFAC 00097EEC  2C 1D 00 80 */	cmpwi r29, 0x80
/* 8009AFB0 00097EF0  41 80 FF 20 */	blt .L_8009AED0
/* 8009AFB4 00097EF4  38 60 00 00 */	li r3, 0
.L_8009AFB8:
/* 8009AFB8 00097EF8  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 8009AFBC 00097EFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8009AFC0 00097F00  7C 08 03 A6 */	mtlr r0
/* 8009AFC4 00097F04  38 21 00 50 */	addi r1, r1, 0x50
/* 8009AFC8 00097F08  4E 80 00 20 */	blr 
.endfn findOscPtr__12JASBNKParserFP12JASBasicBankPQ212JASBNKParser7THeaderPQ212JASBNKParser4TOsc

.fn getOscTableEndPtr__12JASBNKParserFPs, local
/* 8009AFCC 00097F0C  A8 03 00 00 */	lha r0, 0(r3)
/* 8009AFD0 00097F10  38 63 00 06 */	addi r3, r3, 6
/* 8009AFD4 00097F14  2C 00 00 0A */	cmpwi r0, 0xa
/* 8009AFD8 00097F18  40 81 FF F4 */	ble getOscTableEndPtr__12JASBNKParserFPs
/* 8009AFDC 00097F1C  4E 80 00 20 */	blr 
.endfn getOscTableEndPtr__12JASBNKParserFPs

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser5TPmap>__FPCvUl", weak
/* 8009AFE0 00097F20  28 04 00 00 */	cmplwi r4, 0
/* 8009AFE4 00097F24  40 82 00 0C */	bne .L_8009AFF0
/* 8009AFE8 00097F28  38 60 00 00 */	li r3, 0
/* 8009AFEC 00097F2C  4E 80 00 20 */	blr 
.L_8009AFF0:
/* 8009AFF0 00097F30  7C 63 22 14 */	add r3, r3, r4
/* 8009AFF4 00097F34  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser5TPmap>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser5TPerc>__FPCvUl", weak
/* 8009AFF8 00097F38  28 04 00 00 */	cmplwi r4, 0
/* 8009AFFC 00097F3C  40 82 00 0C */	bne .L_8009B008
/* 8009B000 00097F40  38 60 00 00 */	li r3, 0
/* 8009B004 00097F44  4E 80 00 20 */	blr 
.L_8009B008:
/* 8009B008 00097F48  7C 63 22 14 */	add r3, r3, r4
/* 8009B00C 00097F4C  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser5TPerc>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser5TVmap>__FPCvUl", weak
/* 8009B010 00097F50  28 04 00 00 */	cmplwi r4, 0
/* 8009B014 00097F54  40 82 00 0C */	bne .L_8009B020
/* 8009B018 00097F58  38 60 00 00 */	li r3, 0
/* 8009B01C 00097F5C  4E 80 00 20 */	blr 
.L_8009B020:
/* 8009B020 00097F60  7C 63 22 14 */	add r3, r3, r4
/* 8009B024 00097F64  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser5TVmap>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser7TKeymap>__FPCvUl", weak
/* 8009B028 00097F68  28 04 00 00 */	cmplwi r4, 0
/* 8009B02C 00097F6C  40 82 00 0C */	bne .L_8009B038
/* 8009B030 00097F70  38 60 00 00 */	li r3, 0
/* 8009B034 00097F74  4E 80 00 20 */	blr 
.L_8009B038:
/* 8009B038 00097F78  7C 63 22 14 */	add r3, r3, r4
/* 8009B03C 00097F7C  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser7TKeymap>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser6TSense>__FPCvUl", weak
/* 8009B040 00097F80  28 04 00 00 */	cmplwi r4, 0
/* 8009B044 00097F84  40 82 00 0C */	bne .L_8009B050
/* 8009B048 00097F88  38 60 00 00 */	li r3, 0
/* 8009B04C 00097F8C  4E 80 00 20 */	blr 
.L_8009B050:
/* 8009B050 00097F90  7C 63 22 14 */	add r3, r3, r4
/* 8009B054 00097F94  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser6TSense>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser5TRand>__FPCvUl", weak
/* 8009B058 00097F98  28 04 00 00 */	cmplwi r4, 0
/* 8009B05C 00097F9C  40 82 00 0C */	bne .L_8009B068
/* 8009B060 00097FA0  38 60 00 00 */	li r3, 0
/* 8009B064 00097FA4  4E 80 00 20 */	blr 
.L_8009B068:
/* 8009B068 00097FA8  7C 63 22 14 */	add r3, r3, r4
/* 8009B06C 00097FAC  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser5TRand>__FPCvUl"

.fn "JSUConvertOffsetToPtr<s>__FPCvUl", weak
/* 8009B070 00097FB0  28 04 00 00 */	cmplwi r4, 0
/* 8009B074 00097FB4  40 82 00 0C */	bne .L_8009B080
/* 8009B078 00097FB8  38 60 00 00 */	li r3, 0
/* 8009B07C 00097FBC  4E 80 00 20 */	blr 
.L_8009B080:
/* 8009B080 00097FC0  7C 63 22 14 */	add r3, r3, r4
/* 8009B084 00097FC4  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<s>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser4TOsc>__FPCvUl", weak
/* 8009B088 00097FC8  28 04 00 00 */	cmplwi r4, 0
/* 8009B08C 00097FCC  40 82 00 0C */	bne .L_8009B098
/* 8009B090 00097FD0  38 60 00 00 */	li r3, 0
/* 8009B094 00097FD4  4E 80 00 20 */	blr 
.L_8009B098:
/* 8009B098 00097FD8  7C 63 22 14 */	add r3, r3, r4
/* 8009B09C 00097FDC  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser4TOsc>__FPCvUl"

.fn "JSUConvertOffsetToPtr<Q212JASBNKParser5TInst>__FPCvUl", weak
/* 8009B0A0 00097FE0  28 04 00 00 */	cmplwi r4, 0
/* 8009B0A4 00097FE4  40 82 00 0C */	bne .L_8009B0B0
/* 8009B0A8 00097FE8  38 60 00 00 */	li r3, 0
/* 8009B0AC 00097FEC  4E 80 00 20 */	blr 
.L_8009B0B0:
/* 8009B0B0 00097FF0  7C 63 22 14 */	add r3, r3, r4
/* 8009B0B4 00097FF4  4E 80 00 20 */	blr 
.endfn "JSUConvertOffsetToPtr<Q212JASBNKParser5TInst>__FPCvUl"
