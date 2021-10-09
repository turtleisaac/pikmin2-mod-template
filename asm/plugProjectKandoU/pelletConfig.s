.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q24Game16PelletConfigListFv
__ct__Q24Game16PelletConfigListFv:
/* 801B3EEC 001B0E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B3EF0 001B0E30  7C 08 02 A6 */	mflr r0
/* 801B3EF4 001B0E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3EF8 001B0E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B3EFC 001B0E3C  7C 7F 1B 78 */	mr r31, r3
/* 801B3F00 001B0E40  48 25 D4 91 */	bl __ct__5CNodeFv
/* 801B3F04 001B0E44  3C 60 80 4B */	lis r3, __vt__Q24Game16PelletConfigList@ha
/* 801B3F08 001B0E48  38 00 00 00 */	li r0, 0
/* 801B3F0C 001B0E4C  38 83 5B 40 */	addi r4, r3, __vt__Q24Game16PelletConfigList@l
/* 801B3F10 001B0E50  7F E3 FB 78 */	mr r3, r31
/* 801B3F14 001B0E54  90 9F 00 00 */	stw r4, 0(r31)
/* 801B3F18 001B0E58  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B3F1C 001B0E5C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801B3F20 001B0E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B3F24 001B0E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B3F28 001B0E68  7C 08 03 A6 */	mtlr r0
/* 801B3F2C 001B0E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B3F30 001B0E70  4E 80 00 20 */	blr 

.global __ct__Q24Game12PelletConfigFv
__ct__Q24Game12PelletConfigFv:
/* 801B3F34 001B0E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B3F38 001B0E78  7C 08 02 A6 */	mflr r0
/* 801B3F3C 001B0E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3F40 001B0E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B3F44 001B0E84  7C 7F 1B 78 */	mr r31, r3
/* 801B3F48 001B0E88  48 25 D4 49 */	bl __ct__5CNodeFv
/* 801B3F4C 001B0E8C  3C 80 80 4B */	lis r4, __vt__Q24Game12PelletConfig@ha
/* 801B3F50 001B0E90  38 7F 00 18 */	addi r3, r31, 0x18
/* 801B3F54 001B0E94  38 04 5B 30 */	addi r0, r4, __vt__Q24Game12PelletConfig@l
/* 801B3F58 001B0E98  90 1F 00 00 */	stw r0, 0(r31)
/* 801B3F5C 001B0E9C  48 00 00 F5 */	bl __ct__Q34Game12PelletConfig6TParmsFv
/* 801B3F60 001B0EA0  38 00 FF FF */	li r0, -1
/* 801B3F64 001B0EA4  38 82 B0 10 */	addi r4, r2, lbl_80519370@sda21
/* 801B3F68 001B0EA8  B0 1F 02 58 */	sth r0, 0x258(r31)
/* 801B3F6C 001B0EAC  38 00 00 00 */	li r0, 0
/* 801B3F70 001B0EB0  C0 82 B0 14 */	lfs f4, lbl_80519374@sda21(r2)
/* 801B3F74 001B0EB4  7F E3 FB 78 */	mr r3, r31
/* 801B3F78 001B0EB8  90 9F 01 80 */	stw r4, 0x180(r31)
/* 801B3F7C 001B0EBC  C0 62 B0 18 */	lfs f3, lbl_80519378@sda21(r2)
/* 801B3F80 001B0EC0  90 9F 01 90 */	stw r4, 0x190(r31)
/* 801B3F84 001B0EC4  C0 42 B0 1C */	lfs f2, lbl_8051937C@sda21(r2)
/* 801B3F88 001B0EC8  90 1F 00 60 */	stw r0, 0x60(r31)
/* 801B3F8C 001B0ECC  C0 22 B0 20 */	lfs f1, lbl_80519380@sda21(r2)
/* 801B3F90 001B0ED0  D0 9F 01 B0 */	stfs f4, 0x1b0(r31)
/* 801B3F94 001B0ED4  C0 02 B0 24 */	lfs f0, lbl_80519384@sda21(r2)
/* 801B3F98 001B0ED8  D0 7F 01 D0 */	stfs f3, 0x1d0(r31)
/* 801B3F9C 001B0EDC  D0 5F 01 E0 */	stfs f2, 0x1e0(r31)
/* 801B3FA0 001B0EE0  D0 3F 01 F0 */	stfs f1, 0x1f0(r31)
/* 801B3FA4 001B0EE4  D0 1F 02 00 */	stfs f0, 0x200(r31)
/* 801B3FA8 001B0EE8  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 801B3FAC 001B0EEC  90 1F 02 34 */	stw r0, 0x234(r31)
/* 801B3FB0 001B0EF0  90 1F 02 30 */	stw r0, 0x230(r31)
/* 801B3FB4 001B0EF4  D0 9F 02 10 */	stfs f4, 0x210(r31)
/* 801B3FB8 001B0EF8  D0 9F 02 14 */	stfs f4, 0x214(r31)
/* 801B3FBC 001B0EFC  D0 9F 02 18 */	stfs f4, 0x218(r31)
/* 801B3FC0 001B0F00  B0 1F 02 44 */	sth r0, 0x244(r31)
/* 801B3FC4 001B0F04  B0 1F 02 54 */	sth r0, 0x254(r31)
/* 801B3FC8 001B0F08  98 1F 02 5A */	stb r0, 0x25a(r31)
/* 801B3FCC 001B0F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B3FD0 001B0F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B3FD4 001B0F14  7C 08 03 A6 */	mtlr r0
/* 801B3FD8 001B0F18  38 21 00 10 */	addi r1, r1, 0x10
/* 801B3FDC 001B0F1C  4E 80 00 20 */	blr 

.global __dt__Q34Game12PelletConfig6TParmsFv
__dt__Q34Game12PelletConfig6TParmsFv:
/* 801B3FE0 001B0F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B3FE4 001B0F24  7C 08 02 A6 */	mflr r0
/* 801B3FE8 001B0F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3FEC 001B0F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B3FF0 001B0F30  7C 9F 23 78 */	mr r31, r4
/* 801B3FF4 001B0F34  93 C1 00 08 */	stw r30, 8(r1)
/* 801B3FF8 001B0F38  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B3FFC 001B0F3C  41 82 00 38 */	beq lbl_801B4034
/* 801B4000 001B0F40  3C 80 80 4B */	lis r4, __vt__Q34Game12PelletConfig6TParms@ha
/* 801B4004 001B0F44  38 04 5B 20 */	addi r0, r4, __vt__Q34Game12PelletConfig6TParms@l
/* 801B4008 001B0F48  90 1E 00 00 */	stw r0, 0(r30)
/* 801B400C 001B0F4C  41 82 00 18 */	beq lbl_801B4024
/* 801B4010 001B0F50  3C A0 80 4B */	lis r5, __vt__13TagParameters@ha
/* 801B4014 001B0F54  38 80 00 00 */	li r4, 0
/* 801B4018 001B0F58  38 05 5B 10 */	addi r0, r5, __vt__13TagParameters@l
/* 801B401C 001B0F5C  90 1E 00 00 */	stw r0, 0(r30)
/* 801B4020 001B0F60  48 25 D5 69 */	bl __dt__5CNodeFv
lbl_801B4024:
/* 801B4024 001B0F64  7F E0 07 35 */	extsh. r0, r31
/* 801B4028 001B0F68  40 81 00 0C */	ble lbl_801B4034
/* 801B402C 001B0F6C  7F C3 F3 78 */	mr r3, r30
/* 801B4030 001B0F70  4B E7 00 85 */	bl __dl__FPv
lbl_801B4034:
/* 801B4034 001B0F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4038 001B0F78  7F C3 F3 78 */	mr r3, r30
/* 801B403C 001B0F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4040 001B0F80  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4044 001B0F84  7C 08 03 A6 */	mtlr r0
/* 801B4048 001B0F88  38 21 00 10 */	addi r1, r1, 0x10
/* 801B404C 001B0F8C  4E 80 00 20 */	blr 

.global __ct__Q34Game12PelletConfig6TParmsFv
__ct__Q34Game12PelletConfig6TParmsFv:
/* 801B4050 001B0F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4054 001B0F94  7C 08 02 A6 */	mflr r0
/* 801B4058 001B0F98  3C 80 80 48 */	lis r4, lbl_8047FAA8@ha
/* 801B405C 001B0F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4060 001B0FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4064 001B0FA4  3B E4 FA A8 */	addi r31, r4, lbl_8047FAA8@l
/* 801B4068 001B0FA8  38 9F 00 10 */	addi r4, r31, 0x10
/* 801B406C 001B0FAC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B4070 001B0FB0  7C 7E 1B 78 */	mr r30, r3
/* 801B4074 001B0FB4  48 26 7F D5 */	bl __ct__13TagParametersFPc
/* 801B4078 001B0FB8  3C 60 80 4B */	lis r3, __vt__Q34Game12PelletConfig6TParms@ha
/* 801B407C 001B0FBC  7F C4 F3 78 */	mr r4, r30
/* 801B4080 001B0FC0  38 03 5B 20 */	addi r0, r3, __vt__Q34Game12PelletConfig6TParms@l
/* 801B4084 001B0FC4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 801B4088 001B0FC8  90 1E 00 00 */	stw r0, 0(r30)
/* 801B408C 001B0FCC  38 A2 B0 28 */	addi r5, r2, lbl_80519388@sda21
/* 801B4090 001B0FD0  48 26 7F 05 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B4094 001B0FD4  7F C4 F3 78 */	mr r4, r30
/* 801B4098 001B0FD8  38 7E 00 2C */	addi r3, r30, 0x2c
/* 801B409C 001B0FDC  38 A2 B0 30 */	addi r5, r2, lbl_80519390@sda21
/* 801B40A0 001B0FE0  48 26 7E F5 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B40A4 001B0FE4  7F C4 F3 78 */	mr r4, r30
/* 801B40A8 001B0FE8  38 7E 00 3C */	addi r3, r30, 0x3c
/* 801B40AC 001B0FEC  38 BF 00 20 */	addi r5, r31, 0x20
/* 801B40B0 001B0FF0  48 26 7E E5 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B40B4 001B0FF4  7F C4 F3 78 */	mr r4, r30
/* 801B40B8 001B0FF8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801B40BC 001B0FFC  38 A2 B0 38 */	addi r5, r2, lbl_80519398@sda21
/* 801B40C0 001B1000  48 26 7E D5 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B40C4 001B1004  7F C4 F3 78 */	mr r4, r30
/* 801B40C8 001B1008  38 7E 00 5C */	addi r3, r30, 0x5c
/* 801B40CC 001B100C  38 A2 B0 3C */	addi r5, r2, lbl_8051939C@sda21
/* 801B40D0 001B1010  48 26 7E C5 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B40D4 001B1014  7F C4 F3 78 */	mr r4, r30
/* 801B40D8 001B1018  38 7E 00 6C */	addi r3, r30, 0x6c
/* 801B40DC 001B101C  38 BF 00 2C */	addi r5, r31, 0x2c
/* 801B40E0 001B1020  48 26 7E B5 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B40E4 001B1024  7F C4 F3 78 */	mr r4, r30
/* 801B40E8 001B1028  38 7E 00 7C */	addi r3, r30, 0x7c
/* 801B40EC 001B102C  38 A2 B0 44 */	addi r5, r2, lbl_805193A4@sda21
/* 801B40F0 001B1030  48 26 7F AD */	bl __ct__7TagParmFP13TagParametersPc
/* 801B40F4 001B1034  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B40F8 001B1038  7F C4 F3 78 */	mr r4, r30
/* 801B40FC 001B103C  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B4100 001B1040  38 7E 00 8C */	addi r3, r30, 0x8c
/* 801B4104 001B1044  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 801B4108 001B1048  38 BF 00 38 */	addi r5, r31, 0x38
/* 801B410C 001B104C  48 26 7F 91 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4110 001B1050  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B4114 001B1054  7F C4 F3 78 */	mr r4, r30
/* 801B4118 001B1058  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B411C 001B105C  38 7E 00 9C */	addi r3, r30, 0x9c
/* 801B4120 001B1060  90 1E 00 8C */	stw r0, 0x8c(r30)
/* 801B4124 001B1064  38 A2 B0 4C */	addi r5, r2, lbl_805193AC@sda21
/* 801B4128 001B1068  48 26 7F 75 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B412C 001B106C  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B4130 001B1070  7F C4 F3 78 */	mr r4, r30
/* 801B4134 001B1074  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B4138 001B1078  38 7E 00 AC */	addi r3, r30, 0xac
/* 801B413C 001B107C  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 801B4140 001B1080  38 BF 00 44 */	addi r5, r31, 0x44
/* 801B4144 001B1084  48 26 7F 59 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4148 001B1088  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B414C 001B108C  7F C4 F3 78 */	mr r4, r30
/* 801B4150 001B1090  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B4154 001B1094  38 7E 00 BC */	addi r3, r30, 0xbc
/* 801B4158 001B1098  90 1E 00 AC */	stw r0, 0xac(r30)
/* 801B415C 001B109C  38 BF 00 54 */	addi r5, r31, 0x54
/* 801B4160 001B10A0  48 26 7E 35 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B4164 001B10A4  7F C4 F3 78 */	mr r4, r30
/* 801B4168 001B10A8  38 7E 00 CC */	addi r3, r30, 0xcc
/* 801B416C 001B10AC  38 BF 00 64 */	addi r5, r31, 0x64
/* 801B4170 001B10B0  48 26 7F 2D */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4174 001B10B4  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B4178 001B10B8  7F C4 F3 78 */	mr r4, r30
/* 801B417C 001B10BC  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B4180 001B10C0  38 7E 00 DC */	addi r3, r30, 0xdc
/* 801B4184 001B10C4  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 801B4188 001B10C8  38 BF 00 74 */	addi r5, r31, 0x74
/* 801B418C 001B10CC  48 26 7F 11 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4190 001B10D0  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B4194 001B10D4  7F C4 F3 78 */	mr r4, r30
/* 801B4198 001B10D8  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B419C 001B10DC  38 7E 00 EC */	addi r3, r30, 0xec
/* 801B41A0 001B10E0  90 1E 00 DC */	stw r0, 0xdc(r30)
/* 801B41A4 001B10E4  38 BF 00 84 */	addi r5, r31, 0x84
/* 801B41A8 001B10E8  48 26 7E F5 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B41AC 001B10EC  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B41B0 001B10F0  7F C4 F3 78 */	mr r4, r30
/* 801B41B4 001B10F4  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B41B8 001B10F8  38 7E 00 FC */	addi r3, r30, 0xfc
/* 801B41BC 001B10FC  90 1E 00 EC */	stw r0, 0xec(r30)
/* 801B41C0 001B1100  38 A2 B0 54 */	addi r5, r2, lbl_805193B4@sda21
/* 801B41C4 001B1104  48 26 7E D9 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B41C8 001B1108  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B41CC 001B110C  7F C4 F3 78 */	mr r4, r30
/* 801B41D0 001B1110  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B41D4 001B1114  38 7E 01 0C */	addi r3, r30, 0x10c
/* 801B41D8 001B1118  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 801B41DC 001B111C  38 A2 B0 58 */	addi r5, r2, lbl_805193B8@sda21
/* 801B41E0 001B1120  48 26 7E BD */	bl __ct__7TagParmFP13TagParametersPc
/* 801B41E4 001B1124  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B41E8 001B1128  7F C4 F3 78 */	mr r4, r30
/* 801B41EC 001B112C  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B41F0 001B1130  38 7E 01 1C */	addi r3, r30, 0x11c
/* 801B41F4 001B1134  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 801B41F8 001B1138  38 BF 00 90 */	addi r5, r31, 0x90
/* 801B41FC 001B113C  48 26 7E A1 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4200 001B1140  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B4204 001B1144  7F C4 F3 78 */	mr r4, r30
/* 801B4208 001B1148  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B420C 001B114C  38 7E 01 2C */	addi r3, r30, 0x12c
/* 801B4210 001B1150  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 801B4214 001B1154  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 801B4218 001B1158  48 26 7E 85 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B421C 001B115C  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B4220 001B1160  7F C4 F3 78 */	mr r4, r30
/* 801B4224 001B1164  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B4228 001B1168  38 7E 01 3C */	addi r3, r30, 0x13c
/* 801B422C 001B116C  90 1E 01 2C */	stw r0, 0x12c(r30)
/* 801B4230 001B1170  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 801B4234 001B1174  48 26 7D 61 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B4238 001B1178  7F C4 F3 78 */	mr r4, r30
/* 801B423C 001B117C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 801B4240 001B1180  38 A2 B0 5C */	addi r5, r2, lbl_805193BC@sda21
/* 801B4244 001B1184  48 26 7E 59 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4248 001B1188  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B424C 001B118C  7F C4 F3 78 */	mr r4, r30
/* 801B4250 001B1190  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B4254 001B1194  38 7E 01 5C */	addi r3, r30, 0x15c
/* 801B4258 001B1198  90 1E 01 4C */	stw r0, 0x14c(r30)
/* 801B425C 001B119C  38 A2 B0 64 */	addi r5, r2, lbl_805193C4@sda21
/* 801B4260 001B11A0  48 26 7D 35 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B4264 001B11A4  7F C4 F3 78 */	mr r4, r30
/* 801B4268 001B11A8  38 7E 01 6C */	addi r3, r30, 0x16c
/* 801B426C 001B11AC  38 BF 00 BC */	addi r5, r31, 0xbc
/* 801B4270 001B11B0  48 26 7D 25 */	bl __ct__13StringTagParmFP13TagParametersPc
/* 801B4274 001B11B4  7F C4 F3 78 */	mr r4, r30
/* 801B4278 001B11B8  38 7E 01 7C */	addi r3, r30, 0x17c
/* 801B427C 001B11BC  38 BF 00 C8 */	addi r5, r31, 0xc8
/* 801B4280 001B11C0  48 26 7E 1D */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4284 001B11C4  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<i>"@ha
/* 801B4288 001B11C8  7F C4 F3 78 */	mr r4, r30
/* 801B428C 001B11CC  38 03 5A E0 */	addi r0, r3, "__vt__14PrimTagParm<i>"@l
/* 801B4290 001B11D0  38 7E 01 8C */	addi r3, r30, 0x18c
/* 801B4294 001B11D4  90 1E 01 7C */	stw r0, 0x17c(r30)
/* 801B4298 001B11D8  38 A2 B0 6C */	addi r5, r2, lbl_805193CC@sda21
/* 801B429C 001B11DC  48 26 7E 01 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B42A0 001B11E0  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B42A4 001B11E4  7F C4 F3 78 */	mr r4, r30
/* 801B42A8 001B11E8  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B42AC 001B11EC  38 7E 01 9C */	addi r3, r30, 0x19c
/* 801B42B0 001B11F0  90 1E 01 8C */	stw r0, 0x18c(r30)
/* 801B42B4 001B11F4  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 801B42B8 001B11F8  48 26 7D E5 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B42BC 001B11FC  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B42C0 001B1200  7F C4 F3 78 */	mr r4, r30
/* 801B42C4 001B1204  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B42C8 001B1208  38 7E 01 AC */	addi r3, r30, 0x1ac
/* 801B42CC 001B120C  90 1E 01 9C */	stw r0, 0x19c(r30)
/* 801B42D0 001B1210  38 A2 B0 74 */	addi r5, r2, lbl_805193D4@sda21
/* 801B42D4 001B1214  48 26 7D C9 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B42D8 001B1218  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B42DC 001B121C  7F C4 F3 78 */	mr r4, r30
/* 801B42E0 001B1220  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B42E4 001B1224  38 7E 01 BC */	addi r3, r30, 0x1bc
/* 801B42E8 001B1228  90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 801B42EC 001B122C  38 A2 B0 7C */	addi r5, r2, lbl_805193DC@sda21
/* 801B42F0 001B1230  48 26 7D AD */	bl __ct__7TagParmFP13TagParametersPc
/* 801B42F4 001B1234  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B42F8 001B1238  7F C4 F3 78 */	mr r4, r30
/* 801B42FC 001B123C  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B4300 001B1240  38 7E 01 CC */	addi r3, r30, 0x1cc
/* 801B4304 001B1244  90 1E 01 BC */	stw r0, 0x1bc(r30)
/* 801B4308 001B1248  38 A2 B0 84 */	addi r5, r2, lbl_805193E4@sda21
/* 801B430C 001B124C  48 26 7D 91 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4310 001B1250  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B4314 001B1254  7F C4 F3 78 */	mr r4, r30
/* 801B4318 001B1258  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B431C 001B125C  38 7E 01 DC */	addi r3, r30, 0x1dc
/* 801B4320 001B1260  90 1E 01 CC */	stw r0, 0x1cc(r30)
/* 801B4324 001B1264  38 A2 B0 8C */	addi r5, r2, lbl_805193EC@sda21
/* 801B4328 001B1268  48 26 7D 75 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B432C 001B126C  3C 60 80 4B */	lis r3, "__vt__14PrimTagParm<f>"@ha
/* 801B4330 001B1270  7F C4 F3 78 */	mr r4, r30
/* 801B4334 001B1274  38 03 5A F8 */	addi r0, r3, "__vt__14PrimTagParm<f>"@l
/* 801B4338 001B1278  38 7E 01 EC */	addi r3, r30, 0x1ec
/* 801B433C 001B127C  90 1E 01 DC */	stw r0, 0x1dc(r30)
/* 801B4340 001B1280  38 A2 B0 94 */	addi r5, r2, lbl_805193F4@sda21
/* 801B4344 001B1284  48 26 7D 59 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4348 001B1288  3C 60 80 4B */	lis r3, "__vt__25PrimTagParm<10Vector3<f>>"@ha
/* 801B434C 001B128C  7F C4 F3 78 */	mr r4, r30
/* 801B4350 001B1290  38 03 5A C8 */	addi r0, r3, "__vt__25PrimTagParm<10Vector3<f>>"@l
/* 801B4354 001B1294  38 7E 02 08 */	addi r3, r30, 0x208
/* 801B4358 001B1298  90 1E 01 EC */	stw r0, 0x1ec(r30)
/* 801B435C 001B129C  38 A2 B0 9C */	addi r5, r2, lbl_805193FC@sda21
/* 801B4360 001B12A0  48 26 7D 3D */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4364 001B12A4  3C 60 80 4B */	lis r3, "__vt__15PrimTagParm<Ux>"@ha
/* 801B4368 001B12A8  7F C4 F3 78 */	mr r4, r30
/* 801B436C 001B12AC  38 03 5A B0 */	addi r0, r3, "__vt__15PrimTagParm<Ux>"@l
/* 801B4370 001B12B0  38 7E 02 20 */	addi r3, r30, 0x220
/* 801B4374 001B12B4  90 1E 02 08 */	stw r0, 0x208(r30)
/* 801B4378 001B12B8  38 A2 B0 A4 */	addi r5, r2, lbl_80519404@sda21
/* 801B437C 001B12BC  48 26 7D 21 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B4380 001B12C0  3C 60 80 4B */	lis r3, "__vt__15PrimTagParm<Us>"@ha
/* 801B4384 001B12C4  7F C4 F3 78 */	mr r4, r30
/* 801B4388 001B12C8  38 03 5A 98 */	addi r0, r3, "__vt__15PrimTagParm<Us>"@l
/* 801B438C 001B12CC  38 7E 02 30 */	addi r3, r30, 0x230
/* 801B4390 001B12D0  90 1E 02 20 */	stw r0, 0x220(r30)
/* 801B4394 001B12D4  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 801B4398 001B12D8  48 26 7D 05 */	bl __ct__7TagParmFP13TagParametersPc
/* 801B439C 001B12DC  3C 80 80 4B */	lis r4, "__vt__15PrimTagParm<Us>"@ha
/* 801B43A0 001B12E0  7F C3 F3 78 */	mr r3, r30
/* 801B43A4 001B12E4  38 04 5A 98 */	addi r0, r4, "__vt__15PrimTagParm<Us>"@l
/* 801B43A8 001B12E8  90 1E 02 30 */	stw r0, 0x230(r30)
/* 801B43AC 001B12EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B43B0 001B12F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B43B4 001B12F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B43B8 001B12F8  7C 08 03 A6 */	mtlr r0
/* 801B43BC 001B12FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B43C0 001B1300  4E 80 00 20 */	blr 

.global __dt__13TagParametersFv
__dt__13TagParametersFv:
/* 801B43C4 001B1304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B43C8 001B1308  7C 08 02 A6 */	mflr r0
/* 801B43CC 001B130C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B43D0 001B1310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B43D4 001B1314  7C 9F 23 78 */	mr r31, r4
/* 801B43D8 001B1318  93 C1 00 08 */	stw r30, 8(r1)
/* 801B43DC 001B131C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B43E0 001B1320  41 82 00 28 */	beq lbl_801B4408
/* 801B43E4 001B1324  3C A0 80 4B */	lis r5, __vt__13TagParameters@ha
/* 801B43E8 001B1328  38 80 00 00 */	li r4, 0
/* 801B43EC 001B132C  38 05 5B 10 */	addi r0, r5, __vt__13TagParameters@l
/* 801B43F0 001B1330  90 1E 00 00 */	stw r0, 0(r30)
/* 801B43F4 001B1334  48 25 D1 95 */	bl __dt__5CNodeFv
/* 801B43F8 001B1338  7F E0 07 35 */	extsh. r0, r31
/* 801B43FC 001B133C  40 81 00 0C */	ble lbl_801B4408
/* 801B4400 001B1340  7F C3 F3 78 */	mr r3, r30
/* 801B4404 001B1344  4B E6 FC B1 */	bl __dl__FPv
lbl_801B4408:
/* 801B4408 001B1348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B440C 001B134C  7F C3 F3 78 */	mr r3, r30
/* 801B4410 001B1350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4414 001B1354  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4418 001B1358  7C 08 03 A6 */	mtlr r0
/* 801B441C 001B135C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4420 001B1360  4E 80 00 20 */	blr 

.global getPelletConfig__Q24Game16PelletConfigListFPc
getPelletConfig__Q24Game16PelletConfigListFPc:
/* 801B4424 001B1364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4428 001B1368  7C 08 02 A6 */	mflr r0
/* 801B442C 001B136C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4430 001B1370  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 801B4434 001B1374  7C 7B 1B 78 */	mr r27, r3
/* 801B4438 001B1378  7C 9C 23 78 */	mr r28, r4
/* 801B443C 001B137C  3B C0 00 00 */	li r30, 0
/* 801B4440 001B1380  3B E0 00 00 */	li r31, 0
/* 801B4444 001B1384  48 00 00 40 */	b lbl_801B4484
lbl_801B4448:
/* 801B4448 001B1388  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 801B444C 001B138C  7F 83 E3 78 */	mr r3, r28
/* 801B4450 001B1390  7F A0 FA 14 */	add r29, r0, r31
/* 801B4454 001B1394  4B F1 64 BD */	bl strlen
/* 801B4458 001B1398  7C 60 1B 78 */	mr r0, r3
/* 801B445C 001B139C  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 801B4460 001B13A0  7C 05 03 78 */	mr r5, r0
/* 801B4464 001B13A4  7F 84 E3 78 */	mr r4, r28
/* 801B4468 001B13A8  4B F1 62 19 */	bl strncmp
/* 801B446C 001B13AC  2C 03 00 00 */	cmpwi r3, 0
/* 801B4470 001B13B0  40 82 00 0C */	bne lbl_801B447C
/* 801B4474 001B13B4  7F A3 EB 78 */	mr r3, r29
/* 801B4478 001B13B8  48 00 00 1C */	b lbl_801B4494
lbl_801B447C:
/* 801B447C 001B13BC  3B FF 02 60 */	addi r31, r31, 0x260
/* 801B4480 001B13C0  3B DE 00 01 */	addi r30, r30, 1
lbl_801B4484:
/* 801B4484 001B13C4  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 801B4488 001B13C8  7C 1E 00 00 */	cmpw r30, r0
/* 801B448C 001B13CC  41 80 FF BC */	blt lbl_801B4448
/* 801B4490 001B13D0  38 60 00 00 */	li r3, 0
lbl_801B4494:
/* 801B4494 001B13D4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 801B4498 001B13D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B449C 001B13DC  7C 08 03 A6 */	mtlr r0
/* 801B44A0 001B13E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801B44A4 001B13E4  4E 80 00 20 */	blr 

.global getPelletConfig__Q24Game16PelletConfigListFi
getPelletConfig__Q24Game16PelletConfigListFi:
/* 801B44A8 001B13E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B44AC 001B13EC  7C 08 02 A6 */	mflr r0
/* 801B44B0 001B13F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B44B4 001B13F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B44B8 001B13F8  7C 9F 23 79 */	or. r31, r4, r4
/* 801B44BC 001B13FC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B44C0 001B1400  7C 7E 1B 78 */	mr r30, r3
/* 801B44C4 001B1404  38 60 00 00 */	li r3, 0
/* 801B44C8 001B1408  41 80 00 14 */	blt lbl_801B44DC
/* 801B44CC 001B140C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 801B44D0 001B1410  7C 1F 00 00 */	cmpw r31, r0
/* 801B44D4 001B1414  40 80 00 08 */	bge lbl_801B44DC
/* 801B44D8 001B1418  38 60 00 01 */	li r3, 1
lbl_801B44DC:
/* 801B44DC 001B141C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B44E0 001B1420  40 82 00 20 */	bne lbl_801B4500
/* 801B44E4 001B1424  3C 60 80 48 */	lis r3, lbl_8047FB98@ha
/* 801B44E8 001B1428  3C A0 80 48 */	lis r5, lbl_8047FBAC@ha
/* 801B44EC 001B142C  38 63 FB 98 */	addi r3, r3, lbl_8047FB98@l
/* 801B44F0 001B1430  38 80 00 7D */	li r4, 0x7d
/* 801B44F4 001B1434  38 A5 FB AC */	addi r5, r5, lbl_8047FBAC@l
/* 801B44F8 001B1438  4C C6 31 82 */	crclr 6
/* 801B44FC 001B143C  4B E7 61 45 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801B4500:
/* 801B4500 001B1440  1C 1F 02 60 */	mulli r0, r31, 0x260
/* 801B4504 001B1444  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801B4508 001B1448  7C 63 02 14 */	add r3, r3, r0
/* 801B450C 001B144C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4510 001B1450  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4514 001B1454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4518 001B1458  7C 08 03 A6 */	mtlr r0
/* 801B451C 001B145C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4520 001B1460  4E 80 00 20 */	blr 

.global getPelletConfig_ByDictionaryNo__Q24Game16PelletConfigListFi
getPelletConfig_ByDictionaryNo__Q24Game16PelletConfigListFi:
/* 801B4524 001B1464  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801B4528 001B1468  38 84 00 01 */	addi r4, r4, 1
/* 801B452C 001B146C  38 A0 00 00 */	li r5, 0
/* 801B4530 001B1470  7C 09 03 A6 */	mtctr r0
/* 801B4534 001B1474  2C 00 00 00 */	cmpwi r0, 0
/* 801B4538 001B1478  40 81 00 28 */	ble lbl_801B4560
lbl_801B453C:
/* 801B453C 001B147C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801B4540 001B1480  7C C0 2A 14 */	add r6, r0, r5
/* 801B4544 001B1484  A0 06 02 54 */	lhz r0, 0x254(r6)
/* 801B4548 001B1488  7C 04 00 00 */	cmpw r4, r0
/* 801B454C 001B148C  40 82 00 0C */	bne lbl_801B4558
/* 801B4550 001B1490  7C C3 33 78 */	mr r3, r6
/* 801B4554 001B1494  4E 80 00 20 */	blr 
lbl_801B4558:
/* 801B4558 001B1498  38 A5 02 60 */	addi r5, r5, 0x260
/* 801B455C 001B149C  42 00 FF E0 */	bdnz lbl_801B453C
lbl_801B4560:
/* 801B4560 001B14A0  38 60 00 00 */	li r3, 0
/* 801B4564 001B14A4  4E 80 00 20 */	blr 

.global read__Q24Game16PelletConfigListFR6Stream
read__Q24Game16PelletConfigListFR6Stream:
/* 801B4568 001B14A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B456C 001B14AC  7C 08 02 A6 */	mflr r0
/* 801B4570 001B14B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4574 001B14B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B4578 001B14B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B457C 001B14BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B4580 001B14C0  7C 9D 23 78 */	mr r29, r4
/* 801B4584 001B14C4  93 81 00 10 */	stw r28, 0x10(r1)
/* 801B4588 001B14C8  7C 7C 1B 78 */	mr r28, r3
/* 801B458C 001B14CC  7F A3 EB 78 */	mr r3, r29
/* 801B4590 001B14D0  48 26 05 01 */	bl readInt__6StreamFv
/* 801B4594 001B14D4  90 7C 00 18 */	stw r3, 0x18(r28)
/* 801B4598 001B14D8  83 DC 00 18 */	lwz r30, 0x18(r28)
/* 801B459C 001B14DC  1C 7E 02 60 */	mulli r3, r30, 0x260
/* 801B45A0 001B14E0  38 63 00 10 */	addi r3, r3, 0x10
/* 801B45A4 001B14E4  4B E6 FA 09 */	bl __nwa__FUl
/* 801B45A8 001B14E8  3C 80 80 1B */	lis r4, __ct__Q24Game12PelletConfigFv@ha
/* 801B45AC 001B14EC  3C A0 80 1B */	lis r5, __dt__Q24Game12PelletConfigFv@ha
/* 801B45B0 001B14F0  38 84 3F 34 */	addi r4, r4, __ct__Q24Game12PelletConfigFv@l
/* 801B45B4 001B14F4  7F C7 F3 78 */	mr r7, r30
/* 801B45B8 001B14F8  38 A5 46 98 */	addi r5, r5, __dt__Q24Game12PelletConfigFv@l
/* 801B45BC 001B14FC  38 C0 02 60 */	li r6, 0x260
/* 801B45C0 001B1500  4B F0 D4 31 */	bl __construct_new_array
/* 801B45C4 001B1504  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 801B45C8 001B1508  3B C0 00 00 */	li r30, 0
/* 801B45CC 001B150C  3B E0 00 00 */	li r31, 0
/* 801B45D0 001B1510  48 00 00 9C */	b lbl_801B466C
lbl_801B45D4:
/* 801B45D4 001B1514  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 801B45D8 001B1518  38 7F 00 18 */	addi r3, r31, 0x18
/* 801B45DC 001B151C  7F A4 EB 78 */	mr r4, r29
/* 801B45E0 001B1520  7C 60 1A 14 */	add r3, r0, r3
/* 801B45E4 001B1524  48 26 7A F1 */	bl read__13TagParametersFR6Stream
/* 801B45E8 001B1528  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 801B45EC 001B152C  38 7F 02 58 */	addi r3, r31, 0x258
/* 801B45F0 001B1530  38 1F 01 90 */	addi r0, r31, 0x190
/* 801B45F4 001B1534  7F C4 1B 2E */	sthx r30, r4, r3
/* 801B45F8 001B1538  38 62 B0 AC */	addi r3, r2, lbl_8051940C@sda21
/* 801B45FC 001B153C  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 801B4600 001B1540  7C 84 00 2E */	lwzx r4, r4, r0
/* 801B4604 001B1544  4B F1 60 BD */	bl strcmp
/* 801B4608 001B1548  2C 03 00 00 */	cmpwi r3, 0
/* 801B460C 001B154C  40 82 00 18 */	bne lbl_801B4624
/* 801B4610 001B1550  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 801B4614 001B1554  38 1F 02 5A */	addi r0, r31, 0x25a
/* 801B4618 001B1558  38 80 00 02 */	li r4, 2
/* 801B461C 001B155C  7C 83 01 AE */	stbx r4, r3, r0
/* 801B4620 001B1560  48 00 00 44 */	b lbl_801B4664
lbl_801B4624:
/* 801B4624 001B1564  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 801B4628 001B1568  38 1F 01 90 */	addi r0, r31, 0x190
/* 801B462C 001B156C  38 62 B0 B0 */	addi r3, r2, lbl_80519410@sda21
/* 801B4630 001B1570  7C 84 00 2E */	lwzx r4, r4, r0
/* 801B4634 001B1574  4B F1 60 8D */	bl strcmp
/* 801B4638 001B1578  2C 03 00 00 */	cmpwi r3, 0
/* 801B463C 001B157C  40 82 00 18 */	bne lbl_801B4654
/* 801B4640 001B1580  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 801B4644 001B1584  38 1F 02 5A */	addi r0, r31, 0x25a
/* 801B4648 001B1588  38 80 00 01 */	li r4, 1
/* 801B464C 001B158C  7C 83 01 AE */	stbx r4, r3, r0
/* 801B4650 001B1590  48 00 00 14 */	b lbl_801B4664
lbl_801B4654:
/* 801B4654 001B1594  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 801B4658 001B1598  38 1F 02 5A */	addi r0, r31, 0x25a
/* 801B465C 001B159C  38 80 00 00 */	li r4, 0
/* 801B4660 001B15A0  7C 83 01 AE */	stbx r4, r3, r0
lbl_801B4664:
/* 801B4664 001B15A4  3B FF 02 60 */	addi r31, r31, 0x260
/* 801B4668 001B15A8  3B DE 00 01 */	addi r30, r30, 1
lbl_801B466C:
/* 801B466C 001B15AC  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 801B4670 001B15B0  7C 1E 00 00 */	cmpw r30, r0
/* 801B4674 001B15B4  41 80 FF 60 */	blt lbl_801B45D4
/* 801B4678 001B15B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B467C 001B15BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B4680 001B15C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B4684 001B15C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B4688 001B15C8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801B468C 001B15CC  7C 08 03 A6 */	mtlr r0
/* 801B4690 001B15D0  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4694 001B15D4  4E 80 00 20 */	blr 

.global __dt__Q24Game12PelletConfigFv
__dt__Q24Game12PelletConfigFv:
/* 801B4698 001B15D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B469C 001B15DC  7C 08 02 A6 */	mflr r0
/* 801B46A0 001B15E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B46A4 001B15E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B46A8 001B15E8  7C 9F 23 78 */	mr r31, r4
/* 801B46AC 001B15EC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B46B0 001B15F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B46B4 001B15F4  41 82 00 60 */	beq lbl_801B4714
/* 801B46B8 001B15F8  3C 60 80 4B */	lis r3, __vt__Q24Game12PelletConfig@ha
/* 801B46BC 001B15FC  34 1E 00 18 */	addic. r0, r30, 0x18
/* 801B46C0 001B1600  38 03 5B 30 */	addi r0, r3, __vt__Q24Game12PelletConfig@l
/* 801B46C4 001B1604  90 1E 00 00 */	stw r0, 0(r30)
/* 801B46C8 001B1608  41 82 00 30 */	beq lbl_801B46F8
/* 801B46CC 001B160C  3C 60 80 4B */	lis r3, __vt__Q34Game12PelletConfig6TParms@ha
/* 801B46D0 001B1610  34 1E 00 18 */	addic. r0, r30, 0x18
/* 801B46D4 001B1614  38 03 5B 20 */	addi r0, r3, __vt__Q34Game12PelletConfig6TParms@l
/* 801B46D8 001B1618  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801B46DC 001B161C  41 82 00 1C */	beq lbl_801B46F8
/* 801B46E0 001B1620  3C 80 80 4B */	lis r4, __vt__13TagParameters@ha
/* 801B46E4 001B1624  38 7E 00 18 */	addi r3, r30, 0x18
/* 801B46E8 001B1628  38 04 5B 10 */	addi r0, r4, __vt__13TagParameters@l
/* 801B46EC 001B162C  38 80 00 00 */	li r4, 0
/* 801B46F0 001B1630  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801B46F4 001B1634  48 25 CE 95 */	bl __dt__5CNodeFv
lbl_801B46F8:
/* 801B46F8 001B1638  7F C3 F3 78 */	mr r3, r30
/* 801B46FC 001B163C  38 80 00 00 */	li r4, 0
/* 801B4700 001B1640  48 25 CE 89 */	bl __dt__5CNodeFv
/* 801B4704 001B1644  7F E0 07 35 */	extsh. r0, r31
/* 801B4708 001B1648  40 81 00 0C */	ble lbl_801B4714
/* 801B470C 001B164C  7F C3 F3 78 */	mr r3, r30
/* 801B4710 001B1650  4B E6 F9 A5 */	bl __dl__FPv
lbl_801B4714:
/* 801B4714 001B1654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4718 001B1658  7F C3 F3 78 */	mr r3, r30
/* 801B471C 001B165C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4720 001B1660  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4724 001B1664  7C 08 03 A6 */	mtlr r0
/* 801B4728 001B1668  38 21 00 10 */	addi r1, r1, 0x10
/* 801B472C 001B166C  4E 80 00 20 */	blr 

.global flushValue__7TagParmFv
flushValue__7TagParmFv:
/* 801B4730 001B1670  4E 80 00 20 */	blr 

.global __dt__Q24Game16PelletConfigListFv
__dt__Q24Game16PelletConfigListFv:
/* 801B4734 001B1674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4738 001B1678  7C 08 02 A6 */	mflr r0
/* 801B473C 001B167C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4740 001B1680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4744 001B1684  7C 9F 23 78 */	mr r31, r4
/* 801B4748 001B1688  93 C1 00 08 */	stw r30, 8(r1)
/* 801B474C 001B168C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B4750 001B1690  41 82 00 28 */	beq lbl_801B4778
/* 801B4754 001B1694  3C A0 80 4B */	lis r5, __vt__Q24Game16PelletConfigList@ha
/* 801B4758 001B1698  38 80 00 00 */	li r4, 0
/* 801B475C 001B169C  38 05 5B 40 */	addi r0, r5, __vt__Q24Game16PelletConfigList@l
/* 801B4760 001B16A0  90 1E 00 00 */	stw r0, 0(r30)
/* 801B4764 001B16A4  48 25 CE 25 */	bl __dt__5CNodeFv
/* 801B4768 001B16A8  7F E0 07 35 */	extsh. r0, r31
/* 801B476C 001B16AC  40 81 00 0C */	ble lbl_801B4778
/* 801B4770 001B16B0  7F C3 F3 78 */	mr r3, r30
/* 801B4774 001B16B4  4B E6 F9 41 */	bl __dl__FPv
lbl_801B4778:
/* 801B4778 001B16B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B477C 001B16BC  7F C3 F3 78 */	mr r3, r30
/* 801B4780 001B16C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4784 001B16C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4788 001B16C8  7C 08 03 A6 */	mtlr r0
/* 801B478C 001B16CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4790 001B16D0  4E 80 00 20 */	blr 
