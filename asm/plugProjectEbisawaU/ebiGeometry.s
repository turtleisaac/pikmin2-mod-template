.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_8051F9F0, local
	.float 0.0
.endobj lbl_8051F9F0
.obj lbl_8051F9F4, local
	.float 1.0
.endobj lbl_8051F9F4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn "isOut__Q23ebi8EGEBox2fFR10Vector2<f>", global
/* 803C9FF4 003C6F34  C0 24 00 00 */	lfs f1, 0(r4)
/* 803C9FF8 003C6F38  C0 03 00 00 */	lfs f0, 0(r3)
/* 803C9FFC 003C6F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA000 003C6F40  40 80 00 0C */	bge .L_803CA00C
/* 803CA004 003C6F44  38 60 00 01 */	li r3, 1
/* 803CA008 003C6F48  4E 80 00 20 */	blr 
.L_803CA00C:
/* 803CA00C 003C6F4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 803CA010 003C6F50  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803CA014 003C6F54  40 80 00 0C */	bge .L_803CA020
/* 803CA018 003C6F58  38 60 00 01 */	li r3, 1
/* 803CA01C 003C6F5C  4E 80 00 20 */	blr 
.L_803CA020:
/* 803CA020 003C6F60  C0 24 00 04 */	lfs f1, 4(r4)
/* 803CA024 003C6F64  C0 03 00 04 */	lfs f0, 4(r3)
/* 803CA028 003C6F68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA02C 003C6F6C  40 80 00 0C */	bge .L_803CA038
/* 803CA030 003C6F70  38 60 00 01 */	li r3, 1
/* 803CA034 003C6F74  4E 80 00 20 */	blr 
.L_803CA038:
/* 803CA038 003C6F78  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803CA03C 003C6F7C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803CA040 003C6F80  7C 00 00 26 */	mfcr r0
/* 803CA044 003C6F84  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803CA048 003C6F88  4E 80 00 20 */	blr 
.endfn "isOut__Q23ebi8EGEBox2fFR10Vector2<f>"

.fn "isIn__Q23ebi8EGEBox2fFR10Vector2<f>f", global
/* 803CA04C 003C6F8C  C0 64 00 00 */	lfs f3, 0(r4)
/* 803CA050 003C6F90  C0 03 00 00 */	lfs f0, 0(r3)
/* 803CA054 003C6F94  EC 43 08 28 */	fsubs f2, f3, f1
/* 803CA058 003C6F98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA05C 003C6F9C  40 80 00 0C */	bge .L_803CA068
/* 803CA060 003C6FA0  38 60 00 00 */	li r3, 0
/* 803CA064 003C6FA4  4E 80 00 20 */	blr 
.L_803CA068:
/* 803CA068 003C6FA8  EC 03 08 2A */	fadds f0, f3, f1
/* 803CA06C 003C6FAC  C0 43 00 08 */	lfs f2, 8(r3)
/* 803CA070 003C6FB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA074 003C6FB4  40 80 00 0C */	bge .L_803CA080
/* 803CA078 003C6FB8  38 60 00 00 */	li r3, 0
/* 803CA07C 003C6FBC  4E 80 00 20 */	blr 
.L_803CA080:
/* 803CA080 003C6FC0  C0 64 00 04 */	lfs f3, 4(r4)
/* 803CA084 003C6FC4  C0 03 00 04 */	lfs f0, 4(r3)
/* 803CA088 003C6FC8  EC 43 08 28 */	fsubs f2, f3, f1
/* 803CA08C 003C6FCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA090 003C6FD0  40 80 00 0C */	bge .L_803CA09C
/* 803CA094 003C6FD4  38 60 00 00 */	li r3, 0
/* 803CA098 003C6FD8  4E 80 00 20 */	blr 
.L_803CA09C:
/* 803CA09C 003C6FDC  EC 03 08 2A */	fadds f0, f3, f1
/* 803CA0A0 003C6FE0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803CA0A4 003C6FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA0A8 003C6FE8  7C 00 00 26 */	mfcr r0
/* 803CA0AC 003C6FEC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803CA0B0 003C6FF0  7C 00 00 34 */	cntlzw r0, r0
/* 803CA0B4 003C6FF4  54 03 D9 7E */	srwi r3, r0, 5
/* 803CA0B8 003C6FF8  4E 80 00 20 */	blr 
.endfn "isIn__Q23ebi8EGEBox2fFR10Vector2<f>f"

.fn "isOut__Q23ebi8EGEBox2fFR10Vector2<f>f", global
/* 803CA0BC 003C6FFC  C0 64 00 00 */	lfs f3, 0(r4)
/* 803CA0C0 003C7000  C0 03 00 00 */	lfs f0, 0(r3)
/* 803CA0C4 003C7004  EC 43 08 2A */	fadds f2, f3, f1
/* 803CA0C8 003C7008  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA0CC 003C700C  40 80 00 0C */	bge .L_803CA0D8
/* 803CA0D0 003C7010  38 60 00 01 */	li r3, 1
/* 803CA0D4 003C7014  4E 80 00 20 */	blr 
.L_803CA0D8:
/* 803CA0D8 003C7018  EC 03 08 28 */	fsubs f0, f3, f1
/* 803CA0DC 003C701C  C0 43 00 08 */	lfs f2, 8(r3)
/* 803CA0E0 003C7020  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA0E4 003C7024  40 80 00 0C */	bge .L_803CA0F0
/* 803CA0E8 003C7028  38 60 00 01 */	li r3, 1
/* 803CA0EC 003C702C  4E 80 00 20 */	blr 
.L_803CA0F0:
/* 803CA0F0 003C7030  C0 64 00 04 */	lfs f3, 4(r4)
/* 803CA0F4 003C7034  C0 03 00 04 */	lfs f0, 4(r3)
/* 803CA0F8 003C7038  EC 43 08 2A */	fadds f2, f3, f1
/* 803CA0FC 003C703C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA100 003C7040  40 80 00 0C */	bge .L_803CA10C
/* 803CA104 003C7044  38 60 00 01 */	li r3, 1
/* 803CA108 003C7048  4E 80 00 20 */	blr 
.L_803CA10C:
/* 803CA10C 003C704C  EC 03 08 28 */	fsubs f0, f3, f1
/* 803CA110 003C7050  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803CA114 003C7054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA118 003C7058  7C 00 00 26 */	mfcr r0
/* 803CA11C 003C705C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803CA120 003C7060  4E 80 00 20 */	blr 
.endfn "isOut__Q23ebi8EGEBox2fFR10Vector2<f>f"

.fn "in__Q23ebi8EGEBox2fFP10Vector2<f>f", global
/* 803CA124 003C7064  C0 03 00 00 */	lfs f0, 0(r3)
/* 803CA128 003C7068  C0 44 00 00 */	lfs f2, 0(r4)
/* 803CA12C 003C706C  EC 00 08 2A */	fadds f0, f0, f1
/* 803CA130 003C7070  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA134 003C7074  40 80 00 0C */	bge .L_803CA140
/* 803CA138 003C7078  D0 04 00 00 */	stfs f0, 0(r4)
/* 803CA13C 003C707C  48 00 00 18 */	b .L_803CA154
.L_803CA140:
/* 803CA140 003C7080  C0 03 00 08 */	lfs f0, 8(r3)
/* 803CA144 003C7084  EC 00 08 28 */	fsubs f0, f0, f1
/* 803CA148 003C7088  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803CA14C 003C708C  40 80 00 08 */	bge .L_803CA154
/* 803CA150 003C7090  D0 04 00 00 */	stfs f0, 0(r4)
.L_803CA154:
/* 803CA154 003C7094  C0 03 00 04 */	lfs f0, 4(r3)
/* 803CA158 003C7098  C0 44 00 04 */	lfs f2, 4(r4)
/* 803CA15C 003C709C  EC 00 08 2A */	fadds f0, f0, f1
/* 803CA160 003C70A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803CA164 003C70A4  40 80 00 0C */	bge .L_803CA170
/* 803CA168 003C70A8  D0 04 00 04 */	stfs f0, 4(r4)
/* 803CA16C 003C70AC  4E 80 00 20 */	blr 
.L_803CA170:
/* 803CA170 003C70B0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803CA174 003C70B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803CA178 003C70B8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803CA17C 003C70BC  4C 80 00 20 */	bgelr 
/* 803CA180 003C70C0  D0 04 00 04 */	stfs f0, 4(r4)
/* 803CA184 003C70C4  4E 80 00 20 */	blr 
.endfn "in__Q23ebi8EGEBox2fFP10Vector2<f>f"

.fn "isOut__Q23ebi11EGECircle2fFR10Vector2<f>", global
/* 803CA188 003C70C8  C0 24 00 04 */	lfs f1, 4(r4)
/* 803CA18C 003C70CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 803CA190 003C70D0  C0 44 00 00 */	lfs f2, 0(r4)
/* 803CA194 003C70D4  EC 61 00 28 */	fsubs f3, f1, f0
/* 803CA198 003C70D8  C0 23 00 00 */	lfs f1, 0(r3)
/* 803CA19C 003C70DC  C0 02 16 90 */	lfs f0, lbl_8051F9F0@sda21(r2)
/* 803CA1A0 003C70E0  EC 22 08 28 */	fsubs f1, f2, f1
/* 803CA1A4 003C70E4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 803CA1A8 003C70E8  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 803CA1AC 003C70EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA1B0 003C70F0  40 81 00 14 */	ble .L_803CA1C4
/* 803CA1B4 003C70F4  40 81 00 14 */	ble .L_803CA1C8
/* 803CA1B8 003C70F8  FC 00 08 34 */	frsqrte f0, f1
/* 803CA1BC 003C70FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803CA1C0 003C7100  48 00 00 08 */	b .L_803CA1C8
.L_803CA1C4:
/* 803CA1C4 003C7104  FC 20 00 90 */	fmr f1, f0
.L_803CA1C8:
/* 803CA1C8 003C7108  C0 03 00 08 */	lfs f0, 8(r3)
/* 803CA1CC 003C710C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803CA1D0 003C7110  40 80 00 0C */	bge .L_803CA1DC
/* 803CA1D4 003C7114  38 60 00 01 */	li r3, 1
/* 803CA1D8 003C7118  4E 80 00 20 */	blr 
.L_803CA1DC:
/* 803CA1DC 003C711C  38 60 00 00 */	li r3, 0
/* 803CA1E0 003C7120  4E 80 00 20 */	blr 
.endfn "isOut__Q23ebi11EGECircle2fFR10Vector2<f>"

.fn "in__Q23ebi11EGECircle2fFP10Vector2<f>", global
/* 803CA1E4 003C7124  C0 E3 00 04 */	lfs f7, 4(r3)
/* 803CA1E8 003C7128  C0 04 00 04 */	lfs f0, 4(r4)
/* 803CA1EC 003C712C  C1 03 00 00 */	lfs f8, 0(r3)
/* 803CA1F0 003C7130  EC 67 00 28 */	fsubs f3, f7, f0
/* 803CA1F4 003C7134  C0 04 00 00 */	lfs f0, 0(r4)
/* 803CA1F8 003C7138  C0 22 16 90 */	lfs f1, lbl_8051F9F0@sda21(r2)
/* 803CA1FC 003C713C  EC 48 00 28 */	fsubs f2, f8, f0
/* 803CA200 003C7140  EC 83 00 F2 */	fmuls f4, f3, f3
/* 803CA204 003C7144  EC A2 20 BA */	fmadds f5, f2, f2, f4
/* 803CA208 003C7148  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803CA20C 003C714C  40 81 00 18 */	ble .L_803CA224
/* 803CA210 003C7150  40 81 00 10 */	ble .L_803CA220
/* 803CA214 003C7154  FC 00 28 34 */	frsqrte f0, f5
/* 803CA218 003C7158  EC 20 01 72 */	fmuls f1, f0, f5
/* 803CA21C 003C715C  48 00 00 08 */	b .L_803CA224
.L_803CA220:
/* 803CA220 003C7160  FC 20 28 90 */	fmr f1, f5
.L_803CA224:
/* 803CA224 003C7164  C0 C3 00 08 */	lfs f6, 8(r3)
/* 803CA228 003C7168  FC 06 08 40 */	fcmpo cr0, f6, f1
/* 803CA22C 003C716C  40 80 00 68 */	bge .L_803CA294
/* 803CA230 003C7170  C0 02 16 90 */	lfs f0, lbl_8051F9F0@sda21(r2)
/* 803CA234 003C7174  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 803CA238 003C7178  40 81 00 1C */	ble .L_803CA254
/* 803CA23C 003C717C  EC 22 20 BA */	fmadds f1, f2, f2, f4
/* 803CA240 003C7180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA244 003C7184  40 81 00 14 */	ble .L_803CA258
/* 803CA248 003C7188  FC 00 08 34 */	frsqrte f0, f1
/* 803CA24C 003C718C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803CA250 003C7190  48 00 00 08 */	b .L_803CA258
.L_803CA254:
/* 803CA254 003C7194  FC 20 00 90 */	fmr f1, f0
.L_803CA258:
/* 803CA258 003C7198  C0 02 16 90 */	lfs f0, lbl_8051F9F0@sda21(r2)
/* 803CA25C 003C719C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803CA260 003C71A0  41 82 00 14 */	beq .L_803CA274
/* 803CA264 003C71A4  C0 02 16 94 */	lfs f0, lbl_8051F9F4@sda21(r2)
/* 803CA268 003C71A8  EC 00 08 24 */	fdivs f0, f0, f1
/* 803CA26C 003C71AC  EC 42 00 32 */	fmuls f2, f2, f0
/* 803CA270 003C71B0  EC 63 00 32 */	fmuls f3, f3, f0
.L_803CA274:
/* 803CA274 003C71B4  EC 42 01 B2 */	fmuls f2, f2, f6
/* 803CA278 003C71B8  38 60 00 01 */	li r3, 1
/* 803CA27C 003C71BC  EC 63 01 B2 */	fmuls f3, f3, f6
/* 803CA280 003C71C0  EC 28 10 28 */	fsubs f1, f8, f2
/* 803CA284 003C71C4  EC 07 18 28 */	fsubs f0, f7, f3
/* 803CA288 003C71C8  D0 24 00 00 */	stfs f1, 0(r4)
/* 803CA28C 003C71CC  D0 04 00 04 */	stfs f0, 4(r4)
/* 803CA290 003C71D0  4E 80 00 20 */	blr 
.L_803CA294:
/* 803CA294 003C71D4  38 60 00 00 */	li r3, 0
/* 803CA298 003C71D8  4E 80 00 20 */	blr 
.endfn "in__Q23ebi11EGECircle2fFP10Vector2<f>"

.fn "out__Q23ebi11EGECircle2fFP10Vector2<f>", global
/* 803CA29C 003C71DC  C0 E3 00 04 */	lfs f7, 4(r3)
/* 803CA2A0 003C71E0  C0 04 00 04 */	lfs f0, 4(r4)
/* 803CA2A4 003C71E4  C1 03 00 00 */	lfs f8, 0(r3)
/* 803CA2A8 003C71E8  EC 67 00 28 */	fsubs f3, f7, f0
/* 803CA2AC 003C71EC  C0 04 00 00 */	lfs f0, 0(r4)
/* 803CA2B0 003C71F0  C0 22 16 90 */	lfs f1, lbl_8051F9F0@sda21(r2)
/* 803CA2B4 003C71F4  EC 48 00 28 */	fsubs f2, f8, f0
/* 803CA2B8 003C71F8  EC 83 00 F2 */	fmuls f4, f3, f3
/* 803CA2BC 003C71FC  EC A2 20 BA */	fmadds f5, f2, f2, f4
/* 803CA2C0 003C7200  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803CA2C4 003C7204  40 81 00 18 */	ble .L_803CA2DC
/* 803CA2C8 003C7208  40 81 00 10 */	ble .L_803CA2D8
/* 803CA2CC 003C720C  FC 00 28 34 */	frsqrte f0, f5
/* 803CA2D0 003C7210  EC 20 01 72 */	fmuls f1, f0, f5
/* 803CA2D4 003C7214  48 00 00 08 */	b .L_803CA2DC
.L_803CA2D8:
/* 803CA2D8 003C7218  FC 20 28 90 */	fmr f1, f5
.L_803CA2DC:
/* 803CA2DC 003C721C  C0 C3 00 08 */	lfs f6, 8(r3)
/* 803CA2E0 003C7220  FC 06 08 40 */	fcmpo cr0, f6, f1
/* 803CA2E4 003C7224  4C 40 13 82 */	cror 2, 0, 2
/* 803CA2E8 003C7228  40 82 00 0C */	bne .L_803CA2F4
/* 803CA2EC 003C722C  38 60 00 00 */	li r3, 0
/* 803CA2F0 003C7230  4E 80 00 20 */	blr 
.L_803CA2F4:
/* 803CA2F4 003C7234  C0 02 16 90 */	lfs f0, lbl_8051F9F0@sda21(r2)
/* 803CA2F8 003C7238  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 803CA2FC 003C723C  40 81 00 1C */	ble .L_803CA318
/* 803CA300 003C7240  EC 22 20 BA */	fmadds f1, f2, f2, f4
/* 803CA304 003C7244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA308 003C7248  40 81 00 14 */	ble .L_803CA31C
/* 803CA30C 003C724C  FC 00 08 34 */	frsqrte f0, f1
/* 803CA310 003C7250  EC 20 00 72 */	fmuls f1, f0, f1
/* 803CA314 003C7254  48 00 00 08 */	b .L_803CA31C
.L_803CA318:
/* 803CA318 003C7258  FC 20 00 90 */	fmr f1, f0
.L_803CA31C:
/* 803CA31C 003C725C  C0 02 16 90 */	lfs f0, lbl_8051F9F0@sda21(r2)
/* 803CA320 003C7260  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803CA324 003C7264  41 82 00 14 */	beq .L_803CA338
/* 803CA328 003C7268  C0 02 16 94 */	lfs f0, lbl_8051F9F4@sda21(r2)
/* 803CA32C 003C726C  EC 00 08 24 */	fdivs f0, f0, f1
/* 803CA330 003C7270  EC 42 00 32 */	fmuls f2, f2, f0
/* 803CA334 003C7274  EC 63 00 32 */	fmuls f3, f3, f0
.L_803CA338:
/* 803CA338 003C7278  EC 42 01 B2 */	fmuls f2, f2, f6
/* 803CA33C 003C727C  38 60 00 01 */	li r3, 1
/* 803CA340 003C7280  EC 63 01 B2 */	fmuls f3, f3, f6
/* 803CA344 003C7284  EC 28 10 28 */	fsubs f1, f8, f2
/* 803CA348 003C7288  EC 07 18 28 */	fsubs f0, f7, f3
/* 803CA34C 003C728C  D0 24 00 00 */	stfs f1, 0(r4)
/* 803CA350 003C7290  D0 04 00 04 */	stfs f0, 4(r4)
/* 803CA354 003C7294  4E 80 00 20 */	blr 
.endfn "out__Q23ebi11EGECircle2fFP10Vector2<f>"
