#include "efx/TDango.h"
#include "efx/TKage.h"
#include "efx/TOoota.h"
#include "efx/TKch.h"
#include "efx/THdama.h"
#include "efx/TOdama.h"
#include "JSystem/JParticle/JPAMath.h"
#include "Game/MapMgr.h"

/*
    Generated from dpostproc

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_80497910
    lbl_80497910:
        .4byte 0x65667845
        .4byte 0x6E656D79
        .4byte 0x426F7373
        .4byte 0x2E637070
        .4byte 0x00000000
    .global lbl_80497924
    lbl_80497924:
        .asciz "P2Assert"
        .skip 3
        .4byte 0x41726750
        .4byte 0x726D436F
        .4byte 0x6C6F7200
        .4byte 0x41726750
        .4byte 0x6F73506F
        .4byte 0x73000000
        .4byte 0x41726753
        .4byte 0x63616C65
        .4byte 0x00000000
        .4byte 0x41726752
        .4byte 0x6F745953
        .4byte 0x63616C65
        .4byte 0x00000000
        .4byte 0x4172674B
        .4byte 0x6368596F
        .4byte 0x64617265
        .4byte 0x00000000
        .4byte 0x00000000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__Q23efx16THdamaDeadHahen2
    __vt__Q23efx16THdamaDeadHahen2:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx16THdamaDeadHahen2FPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple2Fv
        .4byte fade__Q23efx8TSimple2Fv
    .global __vt__Q23efx16THdamaDeadHahen1
    __vt__Q23efx16THdamaDeadHahen1:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx16THdamaDeadHahen1FPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple1Fv
        .4byte fade__Q23efx8TSimple1Fv
    .global __vt__Q23efx12THdamaShootA
    __vt__Q23efx12THdamaShootA:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx8TSimple1FPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple1Fv
        .4byte fade__Q23efx8TSimple1Fv
    .global __vt__Q23efx11THdamaHit2W
    __vt__Q23efx11THdamaHit2W:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx11THdamaHit2WFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple3Fv
        .4byte fade__Q23efx8TSimple3Fv
    .global __vt__Q23efx11THdamaShell
    __vt__Q23efx11THdamaShell:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx11THdamaShellFPQ23efx3Arg
        .4byte forceKill__Q23efx5TSyncFv
        .4byte fade__Q23efx5TSyncFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q23efx11THdamaShellFv"
        .4byte "@4@execute__Q23efx5TSyncFP14JPABaseEmitter"
        .4byte "@4@executeAfter__Q23efx5TSyncFP14JPABaseEmitter"
        .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte execute__Q23efx5TSyncFP14JPABaseEmitter
        .4byte executeAfter__Q23efx5TSyncFP14JPABaseEmitter
        .4byte doExecuteEmitterOperation__Q23efx9TChasePosFP14JPABaseEmitter
        .4byte doExecuteAfter__Q23efx5TSyncFP14JPABaseEmitter
        .4byte startDemoDrawOff__Q23efx5TSyncFv
        .4byte endDemoDrawOn__Q23efx5TSyncFv
        .4byte __dt__Q23efx11THdamaShellFv
    .global __vt__Q23efx22TKchYodareBaseChaseMtx
    __vt__Q23efx22TKchYodareBaseChaseMtx:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx22TKchYodareBaseChaseMtxFPQ23efx3Arg
        .4byte forceKill__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte fade__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q23efx22TKchYodareBaseChaseMtxFv"
        .4byte "@4@execute__Q23efx5TSyncFP14JPABaseEmitter"
        .4byte "@4@executeAfter__Q23efx5TSyncFP14JPABaseEmitter"
        .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte execute__Q23efx5TSyncFP14JPABaseEmitter
        .4byte executeAfter__Q23efx5TSyncFP14JPABaseEmitter
        .4byte doExecuteEmitterOperation__Q23efx9TChaseMtxFP14JPABaseEmitter
        .4byte doExecuteAfter__Q23efx5TSyncFP14JPABaseEmitter
        .4byte startDemoDrawOff__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte endDemoDrawOn__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte __dt__Q23efx22TKchYodareBaseChaseMtxFv
    .global __vt__Q23efx27TParticleCallBack_KchYodare
    __vt__Q23efx27TParticleCallBack_KchYodare:
        .4byte 0
        .4byte 0
        .4byte __dt__Q23efx27TParticleCallBack_KchYodareFv
        .4byte
   execute__Q23efx27TParticleCallBack_KchYodareFP14JPABaseEmitterP15JPABaseParticle
        .4byte draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle
        .4byte
   init__Q23efx27TParticleCallBack_KchYodareFP14JPABaseEmitterP15JPABaseParticle
    .global __vt__Q23efx13TKchDownsmoke
    __vt__Q23efx13TKchDownsmoke:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx13TKchDownsmokeFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple1Fv
        .4byte fade__Q23efx8TSimple1Fv
    .global __vt__Q23efx10TKchDamage
    __vt__Q23efx10TKchDamage:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx10TKchDamageFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple4Fv
        .4byte fade__Q23efx8TSimple4Fv
    .global __vt__Q23efx9TKchApWat
    __vt__Q23efx9TKchApWat:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx9TKchApWatFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple5Fv
        .4byte fade__Q23efx8TSimple5Fv
    .global __vt__Q23efx10TKchApSand
    __vt__Q23efx10TKchApSand:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx10TKchApSandFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple3Fv
        .4byte fade__Q23efx8TSimple3Fv
    .global __vt__Q23efx13TKchFlickSand
    __vt__Q23efx13TKchFlickSand:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx13TKchFlickSandFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple2Fv
        .4byte fade__Q23efx8TSimple2Fv
    .global __vt__Q23efx10TOootaFire
    __vt__Q23efx10TOootaFire:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx10TOootaFireFPQ23efx3Arg
        .4byte "forceKill__Q23efx29TSyncGroup6<Q23efx9TChaseMtx>Fv"
        .4byte "fade__Q23efx29TSyncGroup6<Q23efx9TChaseMtx>Fv"
        .4byte "startDemoDrawOff__Q23efx29TSyncGroup6<Q23efx9TChaseMtx>Fv"
        .4byte "endDemoDrawOn__Q23efx29TSyncGroup6<Q23efx9TChaseMtx>Fv"
    .global __vt__Q23efx13TOootaBombLeg
    __vt__Q23efx13TOootaBombLeg:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx13TOootaBombLegFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple1Fv
        .4byte fade__Q23efx8TSimple1Fv
    .global __vt__Q23efx10TKageDead2
    __vt__Q23efx10TKageDead2:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx10TKageDead2FPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple1Fv
        .4byte fade__Q23efx8TSimple1Fv
    .global __vt__Q23efx10TDangoTurn
    __vt__Q23efx10TDangoTurn:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx10TDangoTurnFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple2Fv
        .4byte fade__Q23efx8TSimple2Fv
    .global __vt__Q23efx11TDangoCrash
    __vt__Q23efx11TDangoCrash:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx11TDangoCrashFPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple2Fv
        .4byte fade__Q23efx8TSimple2Fv

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_8051FE38
    lbl_8051FE38:
        .asciz "ArgDir"
        .skip 1
    .global lbl_8051FE40
    lbl_8051FE40:
        .float 0.0
    .global lbl_8051FE44
    lbl_8051FE44:
        .float 1.0
    .global lbl_8051FE48
    lbl_8051FE48:
        .asciz "ArgRotY"
    .global lbl_8051FE50
    lbl_8051FE50:
        .float 100.0
*/

namespace efx {

/*
 * --INFO--
 * Address:	803EB360
 * Size:	0001A8
 */
bool TDangoCrash::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgDir", arg->getName()) == 0;
	P2ASSERTLINE(16, nameCheck);

	efx::ArgDir* argd = static_cast<efx::ArgDir*>(arg);

	f32 x = argd->mAngle.x;
	f32 y = argd->mAngle.y;
	f32 z = argd->mAngle.z;

	if (TSimple2::create(arg)) {
		f32 z2   = z * z;
		f32 dist = _sqrtf(x * x + y * y + z2);
		if (dist > 0.0f) {
			dist = 1.0f / dist;
			x *= dist;
			y *= dist;
			z *= dist;
		}

		Matrixf mtx;
		f32 f                     = 0.0f;
		mtx.mMatrix.structView.xx = z * 1.0f - (y * f);
		mtx.mMatrix.structView.yx = 0.0f;
		mtx.mMatrix.structView.zx = x;
		mtx.mMatrix.structView.tx = Vector3f::zero.x;

		mtx.mMatrix.structView.xy = (x * f) - (z * f);
		mtx.mMatrix.structView.yy = 1.0f;
		mtx.mMatrix.structView.zy = y;
		mtx.mMatrix.structView.ty = Vector3f::zero.y;

		mtx.mMatrix.structView.xz = x * 1.0f - y * f;
		mtx.mMatrix.structView.yz = 0.0f;
		mtx.mMatrix.structView.zz = z;
		mtx.mMatrix.structView.tz = Vector3f::zero.z;
		for (int i = 0; i < 2; i++) {
			JPASetRMtxfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68);
		}
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stfd     f30, 0x50(r1)
	psq_st   f30, 88(r1), 0, qr0
	stfd     f29, 0x40(r1)
	psq_st   f29, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	mr       r30, r4
	mr       r31, r3
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r2, lbl_8051FE38@sda21
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EB3DC
	lis      r3, lbl_80497910@ha
	lis      r5, lbl_80497924@ha
	addi     r3, r3, lbl_80497910@l
	li       r4, 0x10
	addi     r5, r5, lbl_80497924@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EB3DC:
	lfs      f31, 0x10(r30)
	mr       r3, r31
	lfs      f30, 0x14(r30)
	mr       r4, r30
	lfs      f29, 0x18(r30)
	bl       create__Q23efx8TSimple2FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EB4D4
	fmuls    f1, f30, f30
	lfs      f0, lbl_8051FE40@sda21(r2)
	fmuls    f2, f29, f29
	fmadds   f1, f31, f31, f1
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_803EB428
	ble      lbl_803EB42C
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_803EB42C

lbl_803EB428:
	fmr      f1, f0

lbl_803EB42C:
	lfs      f0, lbl_8051FE40@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_803EB44C
	lfs      f0, lbl_8051FE44@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f31, f31, f0
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0

lbl_803EB44C:
	lfs      f5, lbl_8051FE40@sda21(r2)
	lis      r3, "zero__10Vector3<f>"@ha
	lfsu     f3, "zero__10Vector3<f>"@l(r3)
	li       r30, 0
	fmuls    f2, f5, f29
	lfs      f6, lbl_8051FE44@sda21(r2)
	fmuls    f4, f5, f30
	lfs      f1, 4(r3)
	lfs      f0, 8(r3)
	fmsubs   f2, f5, f31, f2
	fnmsubs  f7, f6, f31, f4
	stfs     f5, 0xc(r1)
	fmsubs   f4, f6, f29, f4
	stfs     f31, 0x10(r1)
	stfs     f4, 8(r1)
	stfs     f3, 0x14(r1)
	stfs     f2, 0x18(r1)
	stfs     f6, 0x1c(r1)
	stfs     f30, 0x20(r1)
	stfs     f1, 0x24(r1)
	stfs     f7, 0x28(r1)
	stfs     f5, 0x2c(r1)
	stfs     f29, 0x30(r1)
	stfs     f0, 0x34(r1)

lbl_803EB4AC:
	lwz      r4, 8(r31)
	addi     r3, r1, 8
	addi     r4, r4, 0x68
	bl       JPASetRMtxfromMtx__FPA4_CfPA4_f
	addi     r30, r30, 1
	addi     r31, r31, 4
	cmpwi    r30, 2
	blt      lbl_803EB4AC
	li       r3, 1
	b        lbl_803EB4D8

lbl_803EB4D4:
	li       r3, 0

lbl_803EB4D8:
	psq_l    f31, 104(r1), 0, qr0
	lfd      f31, 0x60(r1)
	psq_l    f30, 88(r1), 0, qr0
	lfd      f30, 0x50(r1)
	psq_l    f29, 72(r1), 0, qr0
	lfd      f29, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r0, 0x74(r1)
	lwz      r30, 0x38(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EB508
 * Size:	00011C
 */
bool TDangoTurn::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgRotY", arg->getName()) == 0;
	P2ASSERTLINE(47, nameCheck);

	efx::ArgRotY* argy = static_cast<efx::ArgRotY*>(arg);

	f32 x = arg->mPosition.x;
	f32 y = arg->mPosition.y;
	f32 z = arg->mPosition.z;
	Matrixf mtx;
	PSMTXRotRad(mtx.mMatrix.mtxView, 'y', argy->mFaceDir);

	Vector3f vec(x, y, z);
	mtx.setTranslation(vec);

	if (TSimple2::create(arg)) {
		for (int i = 0; i < 2; i++) {
			JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68, &mEmitters[i]->_A4);
		}
		return true;
	} else {
		return false;
	}

	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stfd     f30, 0x50(r1)
	psq_st   f30, 88(r1), 0, qr0
	stfd     f29, 0x40(r1)
	psq_st   f29, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	mr       r30, r4
	mr       r31, r3
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r2, lbl_8051FE48@sda21
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EB584
	lis      r3, lbl_80497910@ha
	lis      r5, lbl_80497924@ha
	addi     r3, r3, lbl_80497910@l
	li       r4, 0x2f
	addi     r5, r5, lbl_80497924@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EB584:
	lfs      f31, 4(r30)
	addi     r3, r1, 8
	lfs      f30, 8(r30)
	li       r4, 0x79
	lfs      f29, 0xc(r30)
	lfs      f1, 0x10(r30)
	bl       PSMTXRotRad
	stfs     f31, 0x14(r1)
	mr       r3, r31
	mr       r4, r30
	stfs     f30, 0x24(r1)
	stfs     f29, 0x34(r1)
	bl       create__Q23efx8TSimple2FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EB5F0
	li       r30, 0

lbl_803EB5C4:
	lwz      r5, 8(r31)
	addi     r3, r1, 8
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	addi     r30, r30, 1
	addi     r31, r31, 4
	cmpwi    r30, 2
	blt      lbl_803EB5C4
	li       r3, 1
	b        lbl_803EB5F4

lbl_803EB5F0:
	li       r3, 0

lbl_803EB5F4:
	psq_l    f31, 104(r1), 0, qr0
	lfd      f31, 0x60(r1)
	psq_l    f30, 88(r1), 0, qr0
	lfd      f30, 0x50(r1)
	psq_l    f29, 72(r1), 0, qr0
	lfd      f29, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r0, 0x74(r1)
	lwz      r30, 0x38(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EB624
 * Size:	000030
 */
void TKageMove::setGlobalPrmColor(Color4& color)
{
	if (mEmitter == nullptr)
		return;

	mEmitter->setColor(color);
	/*
	lwz      r6, 8(r3)
	cmplwi   r6, 0
	beqlr
	lbz      r5, 2(r4)
	lbz      r3, 1(r4)
	lbz      r0, 0(r4)
	stb      r0, 0xb8(r6)
	stb      r3, 0xb9(r6)
	stb      r5, 0xba(r6)
	lbz      r0, 3(r4)
	stb      r0, 0xbb(r6)
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EB654
 * Size:	000030
 */
void TKageRun::setGlobalPrmColor(Color4& color)
{
	if (mEmitter == nullptr)
		return;

	mEmitter->setColor(color);
	/*
	lwz      r6, 8(r3)
	cmplwi   r6, 0
	beqlr
	lbz      r5, 2(r4)
	lbz      r3, 1(r4)
	lbz      r0, 0(r4)
	stb      r0, 0xb8(r6)
	stb      r3, 0xb9(r6)
	stb      r5, 0xba(r6)
	lbz      r0, 3(r4)
	stb      r0, 0xbb(r6)
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EB684
 * Size:	000030
 */
void TKageDead1::setGlobalPrmColor(Color4& color)
{
	if (mEmitter == nullptr)
		return;

	mEmitter->setColor(color);
	/*
	lwz      r6, 8(r3)
	cmplwi   r6, 0
	beqlr
	lbz      r5, 2(r4)
	lbz      r3, 1(r4)
	lbz      r0, 0(r4)
	stb      r0, 0xb8(r6)
	stb      r3, 0xb9(r6)
	stb      r5, 0xba(r6)
	lbz      r0, 3(r4)
	stb      r0, 0xbb(r6)
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EB6B4
 * Size:	0000CC
 */
bool TKageDead2::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgPrmColor", arg->getName()) == 0;
	P2ASSERTLINE(103, nameCheck);

	efx::ArgPrmColor* argp = static_cast<efx::ArgPrmColor*>(arg);

	if (TSimple1::create(arg)) {
		mEmitters[0]->setColorRGB(argp->mColor);
		mEmitters[0]->mColor1.a = argp->mColor.a;
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	mr       r30, r4
	lis      r4, lbl_80497910@ha
	stw      r29, 0x14(r1)
	mr       r29, r3
	mr       r3, r30
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 0(r30)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x20
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EB71C
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x67
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EB71C:
	mr       r3, r29
	mr       r4, r30
	bl       create__Q23efx8TSimple1FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EB760
	lbz      r6, 0x12(r30)
	li       r3, 1
	lbz      r5, 0x11(r30)
	lwz      r4, 8(r29)
	lbz      r0, 0x10(r30)
	stb      r0, 0xb8(r4)
	stb      r5, 0xb9(r4)
	stb      r6, 0xba(r4)
	lbz      r0, 0x13(r30)
	lwz      r4, 8(r29)
	stb      r0, 0xbb(r4)
	b        lbl_803EB764

lbl_803EB760:
	li       r3, 0

lbl_803EB764:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000018
 */
void TOootaParticle::setGlobalDynamicsScale(f32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	803EB780
 * Size:	000174
 */
bool TOootaBombLeg::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgPosPos", arg->getName()) == 0;
	P2ASSERTLINE(132, nameCheck);

	efx::ArgPosPos* argp = static_cast<efx::ArgPosPos*>(arg);
	Vector3f pos1, pos2;
	pos1 = argp->mPos1;
	pos2 = argp->mPos2;

	if (TSimple1::create(arg)) {
		Matrixf mtx;
		makeMtxZAxisAlongPosPos(mtx.mMatrix.mtxView, pos1, pos2);
		f32 dist = _distanceBetween(pos1, pos2);
		dist /= 100.0f;
		JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[0]->_68, &mEmitters[0]->_A4);
		mEmitters[0]->_04 *= dist;
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	stw      r30, 0x58(r1)
	stw      r29, 0x54(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x2c
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EB7F0
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x84
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EB7F0:
	lfs      f0, 0x10(r30)
	mr       r3, r29
	mr       r4, r30
	stfs     f0, 0x14(r1)
	lfs      f0, 0x14(r30)
	stfs     f0, 0x18(r1)
	lfs      f0, 0x18(r30)
	stfs     f0, 0x1c(r1)
	lfs      f0, 0x1c(r30)
	stfs     f0, 8(r1)
	lfs      f0, 0x20(r30)
	stfs     f0, 0xc(r1)
	lfs      f0, 0x24(r30)
	stfs     f0, 0x10(r1)
	bl       create__Q23efx8TSimple1FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EB8CC
	addi     r3, r1, 0x20
	addi     r4, r1, 0x14
	addi     r5, r1, 8
	bl       "makeMtxZAxisAlongPosPos__3efxFPA4_fR10Vector3<f>R10Vector3<f>"
	lfs      f1, 0xc(r1)
	lfs      f0, 0x18(r1)
	lfs      f3, 0x10(r1)
	fsubs    f4, f1, f0
	lfs      f2, 0x1c(r1)
	lfs      f1, 8(r1)
	lfs      f0, 0x14(r1)
	fsubs    f2, f3, f2
	fmuls    f3, f4, f4
	fsubs    f1, f1, f0
	lfs      f0, lbl_8051FE40@sda21(r2)
	fmuls    f2, f2, f2
	fmadds   f1, f1, f1, f3
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_803EB894
	ble      lbl_803EB898
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_803EB898

lbl_803EB894:
	fmr      f1, f0

lbl_803EB898:
	lfs      f0, lbl_8051FE50@sda21(r2)
	addi     r3, r1, 0x20
	lwz      r5, 8(r29)
	fdivs    f31, f1, f0
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	lwz      r4, 8(r29)
	li       r3, 1
	lfs      f1, 4(r4)
	fmuls    f1, f1, f31
	stfs     f1, 4(r4)
	b        lbl_803EB8D0

lbl_803EB8CC:
	li       r3, 0

lbl_803EB8D0:
	psq_l    f31, 104(r1), 0, qr0
	lwz      r0, 0x74(r1)
	lfd      f31, 0x60(r1)
	lwz      r31, 0x5c(r1)
	lwz      r30, 0x58(r1)
	lwz      r29, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EB8F4
 * Size:	000150
 */
bool TOootaFire::create(efx::Arg* arg)
{
	P2ASSERTLINE(161, arg);
	bool nameCheck = strcmp("ArgScale", arg->getName()) == 0;
	P2ASSERTLINE(162, nameCheck);

	efx::ArgScale* argp = static_cast<efx::ArgScale*>(arg);

	if (TSyncGroup6::create(arg)) {
		mItems[0].mEmitter->setScale(argp->mScale);
		mItems[1].mEmitter->setScale(argp->mScale);
		mItems[2].mEmitter->setScale(argp->mScale);
		mItems[3].mEmitter->setScale(argp->mScale);
		mItems[4].mEmitter->setScale(argp->mScale);
		mItems[5].mEmitter->setScale(argp->mScale);
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	or.      r30, r4, r4
	lis      r4, lbl_80497910@ha
	stw      r29, 0x14(r1)
	mr       r29, r3
	addi     r31, r4, lbl_80497910@l
	bne      lbl_803EB934
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0xa1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EB934:
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x38
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EB974
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0xa2
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EB974:
	mr       r3, r29
	mr       r4, r30
	bl       "create__Q23efx29TSyncGroup6<Q23efx9TChaseMtx>FPQ23efx3Arg"
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EBA24
	lfs      f0, 0x10(r30)
	li       r3, 1
	lwz      r4, 0xc(r29)
	stfs     f0, 0x98(r4)
	stfs     f0, 0x9c(r4)
	stfs     f0, 0xa0(r4)
	stfs     f0, 0xb0(r4)
	stfs     f0, 0xb4(r4)
	lwz      r4, 0x20(r29)
	stfs     f0, 0x98(r4)
	stfs     f0, 0x9c(r4)
	stfs     f0, 0xa0(r4)
	stfs     f0, 0xb0(r4)
	stfs     f0, 0xb4(r4)
	lwz      r4, 0x34(r29)
	stfs     f0, 0x98(r4)
	stfs     f0, 0x9c(r4)
	stfs     f0, 0xa0(r4)
	stfs     f0, 0xb0(r4)
	stfs     f0, 0xb4(r4)
	lwz      r4, 0x48(r29)
	stfs     f0, 0x98(r4)
	stfs     f0, 0x9c(r4)
	stfs     f0, 0xa0(r4)
	stfs     f0, 0xb0(r4)
	stfs     f0, 0xb4(r4)
	lwz      r4, 0x5c(r29)
	stfs     f0, 0x98(r4)
	stfs     f0, 0x9c(r4)
	stfs     f0, 0xa0(r4)
	stfs     f0, 0xb0(r4)
	stfs     f0, 0xb4(r4)
	lwz      r4, 0x70(r29)
	stfs     f0, 0x98(r4)
	stfs     f0, 0x9c(r4)
	stfs     f0, 0xa0(r4)
	stfs     f0, 0xb0(r4)
	stfs     f0, 0xb4(r4)
	b        lbl_803EBA28

lbl_803EBA24:
	li       r3, 0

lbl_803EBA28:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EBA44
 * Size:	000154
 */
bool TKchFlickSand::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgRotYScale", arg->getName()) == 0;
	P2ASSERTLINE(181, nameCheck);

	efx::ArgRotYScale* argp = static_cast<efx::ArgRotYScale*>(arg);

	f32 scale = argp->mScale;
	f32 x     = argp->mPosition.x;
	f32 y     = argp->mPosition.y;
	f32 z     = argp->mPosition.z;
	Matrixf mtx;
	PSMTXRotRad(mtx.mMatrix.mtxView, 'y', argp->mFaceDir);

	Vector3f vec(x, y, z);
	mtx.setTranslation(vec);

	if (TSimple2::create(arg)) {
		for (int i = 0; i < 2; i++) {
			JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68, &mEmitters[i]->_A4);
			mEmitters[i]->setScale(scale);
		}
		return true;
	} else {
		return false;
	}

	/*
	stwu     r1, -0x90(r1)
	mflr     r0
	stw      r0, 0x94(r1)
	stfd     f31, 0x80(r1)
	psq_st   f31, 136(r1), 0, qr0
	stfd     f30, 0x70(r1)
	psq_st   f30, 120(r1), 0, qr0
	stfd     f29, 0x60(r1)
	psq_st   f29, 104(r1), 0, qr0
	stfd     f28, 0x50(r1)
	psq_st   f28, 88(r1), 0, qr0
	stw      r31, 0x4c(r1)
	stw      r30, 0x48(r1)
	stw      r29, 0x44(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x44
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EBACC
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0xb5
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EBACC:
	lfs      f28, 0x14(r30)
	addi     r3, r1, 8
	lfs      f31, 4(r30)
	li       r4, 0x79
	lfs      f30, 8(r30)
	lfs      f29, 0xc(r30)
	lfs      f1, 0x10(r30)
	bl       PSMTXRotRad
	stfs     f31, 0x14(r1)
	mr       r3, r29
	mr       r4, r30
	stfs     f30, 0x24(r1)
	stfs     f29, 0x34(r1)
	bl       create__Q23efx8TSimple2FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EBB58
	li       r30, 0
	mr       r31, r29

lbl_803EBB14:
	lwz      r5, 8(r31)
	addi     r3, r1, 8
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	lwz      r3, 8(r31)
	addi     r30, r30, 1
	cmpwi    r30, 2
	addi     r31, r31, 4
	stfs     f28, 0x98(r3)
	stfs     f28, 0x9c(r3)
	stfs     f28, 0xa0(r3)
	stfs     f28, 0xb0(r3)
	stfs     f28, 0xb4(r3)
	blt      lbl_803EBB14
	li       r3, 1
	b        lbl_803EBB5C

lbl_803EBB58:
	li       r3, 0

lbl_803EBB5C:
	psq_l    f31, 136(r1), 0, qr0
	lfd      f31, 0x80(r1)
	psq_l    f30, 120(r1), 0, qr0
	lfd      f30, 0x70(r1)
	psq_l    f29, 104(r1), 0, qr0
	lfd      f29, 0x60(r1)
	psq_l    f28, 88(r1), 0, qr0
	lfd      f28, 0x50(r1)
	lwz      r31, 0x4c(r1)
	lwz      r30, 0x48(r1)
	lwz      r0, 0x94(r1)
	lwz      r29, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x90
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EBB98
 * Size:	000154
 */
bool TKchApSand::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgRotYScale", arg->getName()) == 0;
	P2ASSERTLINE(204, nameCheck);

	efx::ArgRotYScale* argp = static_cast<efx::ArgRotYScale*>(arg);

	f32 scale = argp->mScale;
	f32 x     = argp->mPosition.x;
	f32 y     = argp->mPosition.y;
	f32 z     = argp->mPosition.z;
	Matrixf mtx;
	PSMTXRotRad(mtx.mMatrix.mtxView, 'y', argp->mFaceDir);

	Vector3f vec(x, y, z);
	mtx.setTranslation(vec);

	if (TSimple3::create(arg)) {
		for (int i = 0; i < 3; i++) {
			JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68, &mEmitters[i]->_A4);
			mEmitters[i]->setScale(scale);
		}
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x90(r1)
	mflr     r0
	stw      r0, 0x94(r1)
	stfd     f31, 0x80(r1)
	psq_st   f31, 136(r1), 0, qr0
	stfd     f30, 0x70(r1)
	psq_st   f30, 120(r1), 0, qr0
	stfd     f29, 0x60(r1)
	psq_st   f29, 104(r1), 0, qr0
	stfd     f28, 0x50(r1)
	psq_st   f28, 88(r1), 0, qr0
	stw      r31, 0x4c(r1)
	stw      r30, 0x48(r1)
	stw      r29, 0x44(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x44
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EBC20
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0xcc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EBC20:
	lfs      f28, 0x14(r30)
	addi     r3, r1, 8
	lfs      f31, 4(r30)
	li       r4, 0x79
	lfs      f30, 8(r30)
	lfs      f29, 0xc(r30)
	lfs      f1, 0x10(r30)
	bl       PSMTXRotRad
	stfs     f31, 0x14(r1)
	mr       r3, r29
	mr       r4, r30
	stfs     f30, 0x24(r1)
	stfs     f29, 0x34(r1)
	bl       create__Q23efx8TSimple3FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EBCAC
	li       r30, 0
	mr       r31, r29

lbl_803EBC68:
	lwz      r5, 0xc(r31)
	addi     r3, r1, 8
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	lwz      r3, 0xc(r31)
	addi     r30, r30, 1
	cmpwi    r30, 3
	addi     r31, r31, 4
	stfs     f28, 0x98(r3)
	stfs     f28, 0x9c(r3)
	stfs     f28, 0xa0(r3)
	stfs     f28, 0xb0(r3)
	stfs     f28, 0xb4(r3)
	blt      lbl_803EBC68
	li       r3, 1
	b        lbl_803EBCB0

lbl_803EBCAC:
	li       r3, 0

lbl_803EBCB0:
	psq_l    f31, 136(r1), 0, qr0
	lfd      f31, 0x80(r1)
	psq_l    f30, 120(r1), 0, qr0
	lfd      f30, 0x70(r1)
	psq_l    f29, 104(r1), 0, qr0
	lfd      f29, 0x60(r1)
	psq_l    f28, 88(r1), 0, qr0
	lfd      f28, 0x50(r1)
	lwz      r31, 0x4c(r1)
	lwz      r30, 0x48(r1)
	lwz      r0, 0x94(r1)
	lwz      r29, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x90
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EBCEC
 * Size:	000154
 */
bool TKchApWat::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgRotYScale", arg->getName()) == 0;
	P2ASSERTLINE(227, nameCheck);

	efx::ArgRotYScale* argp = static_cast<efx::ArgRotYScale*>(arg);

	f32 scale = argp->mScale;
	f32 x     = argp->mPosition.x;
	f32 y     = argp->mPosition.y;
	f32 z     = argp->mPosition.z;
	Matrixf mtx;
	PSMTXRotRad(mtx.mMatrix.mtxView, 'y', argp->mFaceDir);

	Vector3f vec(x, y, z);
	mtx.setTranslation(vec);

	if (TSimple5::create(arg)) {
		for (int i = 0; i < 5; i++) {
			JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68, &mEmitters[i]->_A4);
			mEmitters[i]->setScale(scale);
		}
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x90(r1)
	mflr     r0
	stw      r0, 0x94(r1)
	stfd     f31, 0x80(r1)
	psq_st   f31, 136(r1), 0, qr0
	stfd     f30, 0x70(r1)
	psq_st   f30, 120(r1), 0, qr0
	stfd     f29, 0x60(r1)
	psq_st   f29, 104(r1), 0, qr0
	stfd     f28, 0x50(r1)
	psq_st   f28, 88(r1), 0, qr0
	stw      r31, 0x4c(r1)
	stw      r30, 0x48(r1)
	stw      r29, 0x44(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x44
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EBD74
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0xe3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EBD74:
	lfs      f28, 0x14(r30)
	addi     r3, r1, 8
	lfs      f31, 4(r30)
	li       r4, 0x79
	lfs      f30, 8(r30)
	lfs      f29, 0xc(r30)
	lfs      f1, 0x10(r30)
	bl       PSMTXRotRad
	stfs     f31, 0x14(r1)
	mr       r3, r29
	mr       r4, r30
	stfs     f30, 0x24(r1)
	stfs     f29, 0x34(r1)
	bl       create__Q23efx8TSimple5FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EBE00
	li       r30, 0
	mr       r31, r29

lbl_803EBDBC:
	lwz      r5, 0x10(r31)
	addi     r3, r1, 8
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	lwz      r3, 0x10(r31)
	addi     r30, r30, 1
	cmpwi    r30, 5
	addi     r31, r31, 4
	stfs     f28, 0x98(r3)
	stfs     f28, 0x9c(r3)
	stfs     f28, 0xa0(r3)
	stfs     f28, 0xb0(r3)
	stfs     f28, 0xb4(r3)
	blt      lbl_803EBDBC
	li       r3, 1
	b        lbl_803EBE04

lbl_803EBE00:
	li       r3, 0

lbl_803EBE04:
	psq_l    f31, 136(r1), 0, qr0
	lfd      f31, 0x80(r1)
	psq_l    f30, 120(r1), 0, qr0
	lfd      f30, 0x70(r1)
	psq_l    f29, 104(r1), 0, qr0
	lfd      f29, 0x60(r1)
	psq_l    f28, 88(r1), 0, qr0
	lfd      f28, 0x50(r1)
	lwz      r31, 0x4c(r1)
	lwz      r30, 0x48(r1)
	lwz      r0, 0x94(r1)
	lwz      r29, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x90
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EBE40
 * Size:	000040
 */
void TKchDiveSand::setGlobalScale(f32 scale)
{
	for (int i = 0; i < 3; i++) {
		if (mItems[i].mEmitter) {
			mItems[i].mEmitter->setGlobalScale(scale);
		}
	}
}

/*
 * --INFO--
 * Address:	803EBE80
 * Size:	000040
 */
void TKchDiveWat::setGlobalScale(f32 scale)
{
	for (int i = 0; i < 3; i++) {
		if (mItems[i].mEmitter) {
			mItems[i].mEmitter->setGlobalScale(scale);
		}
	}
}

/*
 * --INFO--
 * Address:	803EBEC0
 * Size:	00002C
 */
void TKchCryAB::setGlobalScale(f32 scale)
{
	for (int i = 0; i < 2; i++) {
		if (mItems[i].mEmitter) {
			mItems[i].mEmitter->setGlobalScale(scale);
		}
	}
}

/*
 * --INFO--
 * Address:	803EBEEC
 * Size:	000018
 */
void TKchCryInd::setGlobalScale(f32 scale)
{
	if (mItems[0].mEmitter) {
		mItems[0].mEmitter->setGlobalScale(scale);
	}
	/*
	lwz      r3, 8(r3)
	cmplwi   r3, 0
	beqlr
	stfs     f1, 0xb0(r3)
	stfs     f1, 0xb4(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EBF04
 * Size:	000118
 */
bool TKchDamage::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgScale", arg->getName()) == 0;
	P2ASSERTLINE(296, nameCheck);

	efx::ArgScale* argp = static_cast<efx::ArgScale*>(arg);

	f32 scale = argp->mScale;

	if (TSimple4::create(arg)) {
		mEmitters[0]->setScale(scale);
		mEmitters[1]->setScale(scale);
		mEmitters[2]->setScale(scale);
		mEmitters[3]->setScale(scale);
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stfd     f31, 0x20(r1)
	psq_st   f31, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x38
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EBF74
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x128
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EBF74:
	lfs      f31, 0x10(r30)
	mr       r3, r29
	mr       r4, r30
	bl       create__Q23efx11TSimpleMtx4FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EBFF4
	lwz      r4, 0xc(r29)
	li       r3, 1
	stfs     f31, 0x98(r4)
	stfs     f31, 0x9c(r4)
	stfs     f31, 0xa0(r4)
	stfs     f31, 0xb0(r4)
	stfs     f31, 0xb4(r4)
	lwz      r4, 0x10(r29)
	stfs     f31, 0x98(r4)
	stfs     f31, 0x9c(r4)
	stfs     f31, 0xa0(r4)
	stfs     f31, 0xb0(r4)
	stfs     f31, 0xb4(r4)
	lwz      r4, 0x14(r29)
	stfs     f31, 0x98(r4)
	stfs     f31, 0x9c(r4)
	stfs     f31, 0xa0(r4)
	stfs     f31, 0xb0(r4)
	stfs     f31, 0xb4(r4)
	lwz      r4, 0x18(r29)
	stfs     f31, 0x98(r4)
	stfs     f31, 0x9c(r4)
	stfs     f31, 0xa0(r4)
	stfs     f31, 0xb0(r4)
	stfs     f31, 0xb4(r4)
	b        lbl_803EBFF8

lbl_803EBFF4:
	li       r3, 0

lbl_803EBFF8:
	psq_l    f31, 40(r1), 0, qr0
	lwz      r0, 0x34(r1)
	lfd      f31, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EC01C
 * Size:	000018
 */
void TKchSmokeHana::setGlobalScale(f32 scale)
{
	if (mEmitter) {
		mEmitter->setGlobalScale(scale);
	}
}

/*
 * --INFO--
 * Address:	803EC034
 * Size:	0000D0
 */
bool TKchDownsmoke::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgScale", arg->getName()) == 0;
	P2ASSERTLINE(323, nameCheck);

	efx::ArgScale* argp = static_cast<efx::ArgScale*>(arg);

	f32 scale = argp->mScale;

	if (TSimple1::create(arg)) {
		mEmitters[0]->setScale(scale);
		return true;
	} else {
		return false;
	}
}

/*
 * --INFO--
 * Address:	803EC104
 * Size:	00002C
 */
void TKchDeadHana::setGlobalScale(f32 scale)
{
	for (int i = 0; i < 2; i++) {
		if (mItems[i].mEmitter) {
			mItems[i].mEmitter->setGlobalScale(scale);
		}
	}
}

/*
 * --INFO--
 * Address:	803EC130
 * Size:	000004
 */
void TParticleCallBack_KchYodare::init(JPABaseEmitter*, JPABaseParticle*) { }

/*
 * --INFO--
 * Address:	803EC134
 * Size:	00017C
 */
void TParticleCallBack_KchYodare::execute(JPABaseEmitter* emit, JPABaseParticle* ptcl)
{
	f32 z = ptcl->getCalcCurrentPositionZ(emit);
	f32 y = ptcl->getCalcCurrentPositionY(emit);
	f32 x = ptcl->getCalcCurrentPositionX(emit);
	Vector3f position(x, y, z);
	f32 groundY;
	if (Game::mapMgr) {
		groundY = Game::mapMgr->getMinY(position);
	} else {
		groundY = 0.0f;
	}

	if (position.y < groundY) {
		ptcl->_7C |= 2;
		position.y = groundY;
		if (mPosID1 < _1C) {
			Vector3f* pos = &mPosList1[mPosID1];
			*pos          = position;
			mPosID1++;
		}
	}
	if (position.y < _3C) {
		ptcl->_7C |= 2;
		position.y = _3C;
		if (mPosID2 < _38) {
			Vector3f* pos = &mPosList2[mPosID2];
			*pos          = position;
			mPosID2++;
		}
	}
}

/*
 * --INFO--
 * Address:	803EC2B0
 * Size:	000108
 */
bool TKchYodareBaseChaseMtx::create(efx::Arg* arg)
{
	P2ASSERTLINE(388, arg);
	bool nameCheck = strcmp("ArgKchYodare", arg->getName()) == 0;
	P2ASSERTLINE(389, nameCheck);

	efx::ArgKchYodare* argp = static_cast<efx::ArgKchYodare*>(arg);
	f32 scale               = argp->mScale;
	mEfxGr.create(nullptr);
	mEfxWat.create(nullptr);
	mScale = scale;

	if (TSync::create(arg)) {
		mEmitter->mEmitterCallback = &mEfxGr;
	}

	return true;
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stfd     f31, 0x20(r1)
	psq_st   f31, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	or.      r30, r4, r4
	lis      r4, lbl_80497910@ha
	mr       r29, r3
	addi     r31, r4, lbl_80497910@l
	bne      lbl_803EC2F8
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x184
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EC2F8:
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x54
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EC338
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x185
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EC338:
	addi     r3, r29, 0x18
	lfs      f31, 0x10(r30)
	lwz      r12, 0x18(r29)
	li       r4, 0
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	addi     r3, r29, 0x34
	li       r4, 0
	lwz      r12, 0x34(r29)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	stfs     f31, 0x50(r29)
	mr       r3, r29
	mr       r4, r30
	bl       create__Q23efx5TSyncFPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EC390
	lwz      r3, 8(r29)
	addi     r0, r29, 0x14
	stw      r0, 0xf0(r3)

lbl_803EC390:
	li       r3, 1
	psq_l    f31, 40(r1), 0, qr0
	lwz      r0, 0x34(r1)
	lfd      f31, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EC3B8
 * Size:	000018
 */
void TKchYodareBaseChaseMtx::setGlobalScale(f32 scale)
{
	if (mEmitter) {
		mEmitter->setGlobalScale(scale);
	}
}

/*
 * --INFO--
 * Address:	803EC3D0
 * Size:	000108
 */
void efx::THdamaSight::setPosNrm(Vector3f& pos, Vector3f& angle)
{
	if (mEmitter) {
		Matrixf mtx;
		mtx.mMatrix.structView.yy = angle.y;
		mtx.mMatrix.structView.yz = angle.z;
		mtx.mMatrix.structView.yx = angle.x;
		// f32 len = _sqrtf();

		mtx.setTranslation(pos);
		JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitter->_68, &mEmitter->_A4);
	}
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	lwz      r0, 8(r3)
	cmplwi   r0, 0
	beq      lbl_803EC4C8
	lfs      f5, 4(r5)
	lfs      f6, 8(r5)
	fmuls    f1, f5, f5
	lfs      f4, 0(r5)
	fmuls    f2, f6, f6
	lfs      f0, lbl_8051FE40@sda21(r2)
	fmadds   f1, f4, f4, f1
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_803EC420
	ble      lbl_803EC424
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_803EC424

lbl_803EC420:
	fmr      f1, f0

lbl_803EC424:
	lfs      f0, lbl_8051FE40@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_803EC444
	lfs      f0, lbl_8051FE44@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f4, f4, f0
	fmuls    f5, f5, f0
	fmuls    f6, f6, f0

lbl_803EC444:
	lfs      f1, lbl_8051FE40@sda21(r2)
	lfs      f2, lbl_8051FE44@sda21(r2)
	fmuls    f3, f1, f4
	stfs     f4, 0xc(r1)
	fmuls    f0, f1, f5
	fnmsubs  f8, f2, f6, f3
	fmsubs   f7, f1, f6, f0
	fmsubs   f3, f2, f5, f3
	fmuls    f2, f6, f8
	fmuls    f0, f5, f7
	stfs     f7, 0x10(r1)
	fmuls    f1, f4, f3
	fmsubs   f2, f5, f3, f2
	fmsubs   f0, f4, f8, f0
	fmsubs   f1, f6, f7, f1
	stfs     f2, 8(r1)
	lfs      f2, 0(r4)
	stfs     f2, 0x14(r1)
	stfs     f1, 0x18(r1)
	stfs     f5, 0x1c(r1)
	stfs     f8, 0x20(r1)
	lfs      f1, 4(r4)
	stfs     f1, 0x24(r1)
	stfs     f0, 0x28(r1)
	stfs     f6, 0x2c(r1)
	stfs     f3, 0x30(r1)
	lfs      f0, 8(r4)
	stfs     f0, 0x34(r1)
	lwz      r5, 8(r3)
	addi     r3, r1, 8
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"

lbl_803EC4C8:
	lwz      r0, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EC4D8
 * Size:	0000D0
 */
bool THdamaShell::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgDir", arg->getName()) == 0;
	P2ASSERTLINE(440, nameCheck);

	efx::ArgDir* argp = static_cast<efx::ArgDir*>(arg);

	volatile f32 x = argp->mAngle.x;
	volatile f32 y = argp->mAngle.y;
	volatile f32 z = argp->mAngle.z;

	if (TSync::create(arg)) {
		mEmitter->setAngle(x, y, z);
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r4
	stw      r30, 0x18(r1)
	mr       r30, r3
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r2, lbl_8051FE38@sda21
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EC53C
	lis      r3, lbl_80497910@ha
	lis      r5, lbl_80497924@ha
	addi     r3, r3, lbl_80497910@l
	li       r4, 0x1b8
	addi     r5, r5, lbl_80497924@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EC53C:
	lfs      f2, 0x10(r31)
	mr       r3, r30
	lfs      f1, 0x14(r31)
	mr       r4, r31
	lfs      f0, 0x18(r31)
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)
	bl       create__Q23efx5TSyncFPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EC58C
	lwz      r4, 8(r30)
	li       r3, 1
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	stfs     f0, 0x18(r4)
	lfs      f0, 0x10(r1)
	stfs     f1, 0x1c(r4)
	stfs     f0, 0x20(r4)
	b        lbl_803EC590

lbl_803EC58C:
	li       r3, 0

lbl_803EC590:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EC5A8
 * Size:	0001BC
 */
bool THdamaHit2W::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgDir", arg->getName()) == 0;
	P2ASSERTLINE(453, nameCheck);

	efx::ArgDir* argd = static_cast<efx::ArgDir*>(arg);

	f32 x = argd->mAngle.x;
	f32 y = argd->mAngle.y;
	f32 z = argd->mAngle.z;

	if (TSimple3::create(arg)) {
		f32 z2   = z * z;
		f32 dist = _sqrtf(x * x + y * y + z2);
		if (dist > 0.0f) {
			dist = 1.0f / dist;
			x *= dist;
			y *= dist;
			z *= dist;
		}

		Matrixf mtx;
		f32 f                     = 0.0f;
		mtx.mMatrix.structView.xx = z * 1.0f - (y * f);
		mtx.mMatrix.structView.yx = 0.0f;
		mtx.mMatrix.structView.zx = x;
		mtx.mMatrix.structView.tx = Vector3f::zero.x;

		mtx.mMatrix.structView.xy = (x * f) - (z * f);
		mtx.mMatrix.structView.yy = 1.0f;
		mtx.mMatrix.structView.zy = y;
		mtx.mMatrix.structView.ty = Vector3f::zero.y;

		mtx.mMatrix.structView.xz = x * 1.0f - y * f;
		mtx.mMatrix.structView.yz = 0.0f;
		mtx.mMatrix.structView.zz = z;
		mtx.mMatrix.structView.tz = Vector3f::zero.z;
		for (int i = 0; i < 3; i++) {
			JPASetRMtxfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68);
		}
		THdamaShootA effect;
		effect.create(arg);
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x90(r1)
	mflr     r0
	stw      r0, 0x94(r1)
	stfd     f31, 0x80(r1)
	psq_st   f31, 136(r1), 0, qr0
	stfd     f30, 0x70(r1)
	psq_st   f30, 120(r1), 0, qr0
	stfd     f29, 0x60(r1)
	psq_st   f29, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	stw      r30, 0x58(r1)
	stw      r29, 0x54(r1)
	mr       r29, r4
	mr       r31, r3
	mr       r3, r29
	lwz      r12, 0(r29)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r2, lbl_8051FE38@sda21
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EC628
	lis      r3, lbl_80497910@ha
	lis      r5, lbl_80497924@ha
	addi     r3, r3, lbl_80497910@l
	li       r4, 0x1c5
	addi     r5, r5, lbl_80497924@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EC628:
	lfs      f31, 0x10(r29)
	mr       r30, r29
	lfs      f30, 0x14(r29)
	mr       r3, r31
	lfs      f29, 0x18(r29)
	mr       r4, r29
	bl       create__Q23efx8TSimple3FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EC72C
	lfs      f4, lbl_8051FE40@sda21(r2)
	lis      r3, "zero__10Vector3<f>"@ha
	lfsu     f1, "zero__10Vector3<f>"@l(r3)
	li       r29, 0
	fmuls    f3, f4, f30
	lfs      f5, lbl_8051FE44@sda21(r2)
	fmuls    f8, f4, f31
	lfs      f2, 4(r3)
	lfs      f0, 8(r3)
	fmsubs   f7, f4, f29, f3
	fmsubs   f6, f5, f30, f8
	stfs     f1, 0x20(r1)
	fnmsubs  f5, f5, f29, f8
	fmuls    f1, f30, f7
	stfs     f31, 0x18(r1)
	fmuls    f3, f31, f6
	fmuls    f4, f29, f5
	stfs     f7, 0x1c(r1)
	fmsubs   f1, f31, f5, f1
	fmsubs   f3, f29, f7, f3
	stfs     f30, 0x28(r1)
	fmsubs   f4, f30, f6, f4
	stfs     f5, 0x2c(r1)
	stfs     f3, 0x24(r1)
	stfs     f4, 0x14(r1)
	stfs     f2, 0x30(r1)
	stfs     f1, 0x34(r1)
	stfs     f29, 0x38(r1)
	stfs     f6, 0x3c(r1)
	stfs     f0, 0x40(r1)

lbl_803EC6C4:
	lwz      r4, 0xc(r31)
	addi     r3, r1, 0x14
	addi     r4, r4, 0x68
	bl       JPASetRMtxfromMtx__FPA4_CfPA4_f
	addi     r29, r29, 1
	addi     r31, r31, 4
	cmpwi    r29, 3
	blt      lbl_803EC6C4
	lis      r3, __vt__Q23efx5TBase@ha
	lis      r4, __vt__Q23efx8TSimple1@ha
	addi     r0, r3, __vt__Q23efx5TBase@l
	lis      r3, __vt__Q23efx12THdamaShootA@ha
	stw      r0, 8(r1)
	addi     r0, r4, __vt__Q23efx8TSimple1@l
	li       r6, 0x9c
	li       r5, 0
	stw      r0, 8(r1)
	addi     r0, r3, __vt__Q23efx12THdamaShootA@l
	mr       r4, r30
	addi     r3, r1, 8
	sth      r6, 0xc(r1)
	stw      r5, 0x10(r1)
	stw      r0, 8(r1)
	bl       create__Q23efx8TSimple1FPQ23efx3Arg
	li       r3, 1
	b        lbl_803EC730

lbl_803EC72C:
	li       r3, 0

lbl_803EC730:
	psq_l    f31, 136(r1), 0, qr0
	lfd      f31, 0x80(r1)
	psq_l    f30, 120(r1), 0, qr0
	lfd      f30, 0x70(r1)
	psq_l    f29, 104(r1), 0, qr0
	lfd      f29, 0x60(r1)
	lwz      r31, 0x5c(r1)
	lwz      r30, 0x58(r1)
	lwz      r0, 0x94(r1)
	lwz      r29, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x90
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EC764
 * Size:	000174
 */
bool THdamaDeadHahen1::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgPosPos", arg->getName()) == 0;
	P2ASSERTLINE(484, nameCheck);

	efx::ArgPosPos* argd = static_cast<efx::ArgPosPos*>(arg);
	Vector3f pos1, pos2;
	pos1 = argd->mPos1;
	pos2 = argd->mPos2;

	if (TSimple1::create(arg)) {
		Matrixf mtx;
		makeMtxZAxisAlongPosPos(mtx.mMatrix.mtxView, pos1, pos2);
		f32 dist = _distanceBetween(pos1, pos2);
		dist /= 100.0f;
		JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[0]->_68, &mEmitters[0]->_A4);
		mEmitters[0]->_04 *= dist;
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	stw      r30, 0x58(r1)
	stw      r29, 0x54(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x2c
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EC7D4
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x1e4
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EC7D4:
	lfs      f0, 0x10(r30)
	mr       r3, r29
	mr       r4, r30
	stfs     f0, 0x14(r1)
	lfs      f0, 0x14(r30)
	stfs     f0, 0x18(r1)
	lfs      f0, 0x18(r30)
	stfs     f0, 0x1c(r1)
	lfs      f0, 0x1c(r30)
	stfs     f0, 8(r1)
	lfs      f0, 0x20(r30)
	stfs     f0, 0xc(r1)
	lfs      f0, 0x24(r30)
	stfs     f0, 0x10(r1)
	bl       create__Q23efx8TSimple1FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803EC8B0
	addi     r3, r1, 0x20
	addi     r4, r1, 0x14
	addi     r5, r1, 8
	bl       "makeMtxZAxisAlongPosPos__3efxFPA4_fR10Vector3<f>R10Vector3<f>"
	lfs      f1, 0xc(r1)
	lfs      f0, 0x18(r1)
	lfs      f3, 0x10(r1)
	fsubs    f4, f1, f0
	lfs      f2, 0x1c(r1)
	lfs      f1, 8(r1)
	lfs      f0, 0x14(r1)
	fsubs    f2, f3, f2
	fmuls    f3, f4, f4
	fsubs    f1, f1, f0
	lfs      f0, lbl_8051FE40@sda21(r2)
	fmuls    f2, f2, f2
	fmadds   f1, f1, f1, f3
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_803EC878
	ble      lbl_803EC87C
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_803EC87C

lbl_803EC878:
	fmr      f1, f0

lbl_803EC87C:
	lfs      f0, lbl_8051FE50@sda21(r2)
	addi     r3, r1, 0x20
	lwz      r5, 8(r29)
	fdivs    f31, f1, f0
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	lwz      r4, 8(r29)
	li       r3, 1
	lfs      f1, 4(r4)
	fmuls    f1, f1, f31
	stfs     f1, 4(r4)
	b        lbl_803EC8B4

lbl_803EC8B0:
	li       r3, 0

lbl_803EC8B4:
	psq_l    f31, 104(r1), 0, qr0
	lwz      r0, 0x74(r1)
	lfd      f31, 0x60(r1)
	lwz      r31, 0x5c(r1)
	lwz      r30, 0x58(r1)
	lwz      r29, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	803EC8D8
 * Size:	00018C
 */
bool THdamaDeadHahen2::create(efx::Arg* arg)
{
	bool nameCheck = strcmp("ArgPosPos", arg->getName()) == 0;
	P2ASSERTLINE(512, nameCheck);

	efx::ArgPosPos* argd = static_cast<efx::ArgPosPos*>(arg);
	Vector3f pos1, pos2;
	pos1 = argd->mPos1;
	pos2 = argd->mPos2;

	if (TSimple2::create(arg)) {
		Matrixf mtx;
		makeMtxZAxisAlongPosPos(mtx.mMatrix.mtxView, pos1, pos2);
		f32 dist = _distanceBetween(pos1, pos2);
		dist /= 100.0f;
		for (int i = 0; i < 2; i++) {
			JPASetRMtxTVecfromMtx(mtx.mMatrix.mtxView, mEmitters[i]->_68, &mEmitters[i]->_A4);
			mEmitters[i]->_04 *= dist;
		}
		return true;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	stw      r30, 0x58(r1)
	stw      r29, 0x54(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r3, r30
	lis      r4, lbl_80497910@ha
	lwz      r12, 0(r30)
	addi     r31, r4, lbl_80497910@l
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	addi     r3, r31, 0x2c
	bl       strcmp
	cntlzw   r0, r3
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	bne      lbl_803EC948
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x200
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_803EC948:
	lfs      f0, 0x10(r30)
	mr       r3, r29
	mr       r4, r30
	stfs     f0, 0x14(r1)
	lfs      f0, 0x14(r30)
	stfs     f0, 0x18(r1)
	lfs      f0, 0x18(r30)
	stfs     f0, 0x1c(r1)
	lfs      f0, 0x1c(r30)
	stfs     f0, 8(r1)
	lfs      f0, 0x20(r30)
	stfs     f0, 0xc(r1)
	lfs      f0, 0x24(r30)
	stfs     f0, 0x10(r1)
	bl       create__Q23efx8TSimple2FPQ23efx3Arg
	clrlwi.  r0, r3, 0x18
	beq      lbl_803ECA3C
	addi     r3, r1, 0x20
	addi     r4, r1, 0x14
	addi     r5, r1, 8
	bl       "makeMtxZAxisAlongPosPos__3efxFPA4_fR10Vector3<f>R10Vector3<f>"
	lfs      f1, 0xc(r1)
	lfs      f0, 0x18(r1)
	lfs      f3, 0x10(r1)
	fsubs    f4, f1, f0
	lfs      f2, 0x1c(r1)
	lfs      f1, 8(r1)
	lfs      f0, 0x14(r1)
	fsubs    f2, f3, f2
	fmuls    f3, f4, f4
	fsubs    f1, f1, f0
	lfs      f0, lbl_8051FE40@sda21(r2)
	fmuls    f2, f2, f2
	fmadds   f1, f1, f1, f3
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_803EC9EC
	ble      lbl_803EC9F0
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_803EC9F0

lbl_803EC9EC:
	fmr      f1, f0

lbl_803EC9F0:
	lfs      f0, lbl_8051FE50@sda21(r2)
	mr       r31, r29
	li       r30, 0
	fdivs    f31, f1, f0

lbl_803ECA00:
	lwz      r5, 8(r31)
	addi     r3, r1, 0x20
	addi     r4, r5, 0x68
	addi     r5, r5, 0xa4
	bl       "JPASetRMtxTVecfromMtx__FPA4_CfPA4_fPQ29JGeometry8TVec3<f>"
	lwz      r3, 8(r31)
	addi     r30, r30, 1
	cmpwi    r30, 2
	addi     r31, r31, 4
	lfs      f1, 4(r3)
	fmuls    f1, f1, f31
	stfs     f1, 4(r3)
	blt      lbl_803ECA00
	li       r3, 1
	b        lbl_803ECA40

lbl_803ECA3C:
	li       r3, 0

lbl_803ECA40:
	psq_l    f31, 104(r1), 0, qr0
	lwz      r0, 0x74(r1)
	lfd      f31, 0x60(r1)
	lwz      r31, 0x5c(r1)
	lwz      r30, 0x58(r1)
	lwz      r29, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	803ECA64
 * Size:	000018
 */
void TOdamaFur1::setGlobalScale(f32 scale)
{
	if (mEmitter) {
		mEmitter->setGlobalScale(scale);
	}
}

/*
 * --INFO--
 * Address:	803ECA7C
 * Size:	000018
 */
void TOdamaFur2::setGlobalScale(f32 scale)
{
	if (mEmitter) {
		mEmitter->setGlobalScale(scale);
	}
}

/*
 * --INFO--
 * Address:	803ECA94
 * Size:	00009C
 */
THdamaShell::~THdamaShell()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_803ECB14
	lis      r3, __vt__Q23efx11THdamaShell@ha
	addi     r3, r3, __vt__Q23efx11THdamaShell@l
	stw      r3, 0(r30)
	addi     r0, r3, 0x14
	stw      r0, 4(r30)
	beq      lbl_803ECB04
	lis      r3, __vt__Q23efx9TChasePos@ha
	addi     r3, r3, __vt__Q23efx9TChasePos@l
	stw      r3, 0(r30)
	addi     r0, r3, 0x14
	stw      r0, 4(r30)
	beq      lbl_803ECB04
	lis      r4, __vt__Q23efx5TSync@ha
	addi     r3, r30, 4
	addi     r5, r4, __vt__Q23efx5TSync@l
	li       r4, 0
	stw      r5, 0(r30)
	addi     r0, r5, 0x14
	stw      r0, 4(r30)
	bl       __dt__18JPAEmitterCallBackFv

lbl_803ECB04:
	extsh.   r0, r31
	ble      lbl_803ECB14
	mr       r3, r30
	bl       __dl__FPv

lbl_803ECB14:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	803ECB30
 * Size:	000008
 */
//@4 @efx::TKchYodareBaseChaseMtx::~TKchYodareBaseChaseMtx()
//{
/*
addi     r3, r3, -4
b        __dt__Q23efx22TKchYodareBaseChaseMtxFv
*/
//}

/*
 * --INFO--
 * Address:	803ECB38
 * Size:	000008
 */
//@4 @efx::THdamaShell::~THdamaShell()
//{
/*
addi     r3, r3, -4
b        __dt__Q23efx11THdamaShellFv
*/
//}
} // namespace efx
