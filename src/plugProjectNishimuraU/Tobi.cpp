#include "Game/Entities/Tobi.h"
#include "Game/Entities/ItemBridge.h"
#include "Dolphin/rand.h"

/*
    Generated from dpostproc

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_80485E80
    lbl_80485E80:
        .4byte 0x746F6269
        .4byte 0x6E6E6B6F
        .4byte 0x00000000
        .4byte 0x00000000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__Q34Game4Tobi3Obj
    __vt__Q34Game4Tobi3Obj:
        .4byte 0
        .4byte 0
        .4byte getPosition__Q24Game9EnemyBaseFv
        .4byte checkCollision__Q24Game8CreatureFPQ24Game10CellObject
        .4byte getBoundingSphere__Q24Game9EnemyBaseFRQ23Sys6Sphere
        .4byte collisionUpdatable__Q24Game8CreatureFv
        .4byte isPiki__Q24Game8CreatureFv
        .4byte isNavi__Q24Game8CreatureFv
        .4byte deferPikiCollision__Q24Game10CellObjectFv
        .4byte getTypeName__Q24Game8CreatureFv
        .4byte getObjType__Q24Game8CreatureFv
        .4byte constructor__Q24Game9EnemyBaseFv
        .4byte onInit__Q34Game4Tobi3ObjFPQ24Game15CreatureInitArg
        .4byte onKill__Q24Game9EnemyBaseFPQ24Game15CreatureKillArg
        .4byte onInitPost__Q24Game9EnemyBaseFPQ24Game15CreatureInitArg
        .4byte doAnimation__Q24Game9EnemyBaseFv
        .4byte doEntry__Q24Game9EnemyBaseFv
        .4byte doSetView__Q24Game9EnemyBaseFi
        .4byte doViewCalc__Q24Game9EnemyBaseFv
        .4byte doSimulation__Q24Game9EnemyBaseFf
        .4byte doDirectDraw__Q34Game4Tobi3ObjFR8Graphics
        .4byte getBodyRadius__Q24Game9EnemyBaseFv
        .4byte getCellRadius__Q24Game9EnemyBaseFv
        .4byte "initPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte "onInitPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte getFaceDir__Q24Game9EnemyBaseFv
        .4byte "setVelocity__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte getVelocity__Q24Game9EnemyBaseFv
        .4byte "onSetPosition__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte "onSetPositionPost__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte updateTrMatrix__Q24Game9EnemyBaseFv
        .4byte isTeki__Q24Game9EnemyBaseFv
        .4byte isPellet__Q24Game8CreatureFv
        .4byte inWaterCallback__Q24Game9EnemyBaseFPQ24Game8WaterBox
        .4byte outWaterCallback__Q24Game9EnemyBaseFv
        .4byte inWater__Q24Game9EnemyBaseFv
        .4byte getFlockMgr__Q24Game8CreatureFv
        .4byte onStartCapture__Q24Game8CreatureFv
        .4byte onUpdateCapture__Q24Game8CreatureFR7Matrixf
        .4byte onEndCapture__Q24Game8CreatureFv
        .4byte isAtari__Q24Game8CreatureFv
        .4byte setAtari__Q24Game8CreatureFb
        .4byte isAlive__Q24Game8CreatureFv
        .4byte setAlive__Q24Game8CreatureFb
        .4byte isCollisionFlick__Q24Game8CreatureFv
        .4byte setCollisionFlick__Q24Game8CreatureFb
        .4byte isMovieActor__Q24Game8CreatureFv
        .4byte isMovieExtra__Q24Game8CreatureFv
        .4byte isMovieMotion__Q24Game8CreatureFv
        .4byte setMovieMotion__Q24Game8CreatureFb
        .4byte isBuried__Q24Game8CreatureFv
        .4byte isFlying__Q24Game9EnemyBaseFv
        .4byte isUnderground__Q34Game4Tobi3ObjFv
        .4byte isLivingThing__Q24Game8CreatureFv
        .4byte isDebugCollision__Q24Game8CreatureFv
        .4byte setDebugCollision__Q24Game8CreatureFb
        .4byte doSave__Q24Game8CreatureFR6Stream
        .4byte doLoad__Q24Game8CreatureFR6Stream
        .4byte bounceCallback__Q24Game8CreatureFPQ23Sys8Triangle
        .4byte collisionCallback__Q24Game9EnemyBaseFRQ24Game9CollEvent
        .4byte platCallback__Q24Game8CreatureFRQ24Game9PlatEvent
        .4byte getJAIObject__Q24Game9EnemyBaseFv
        .4byte getPSCreature__Q24Game9EnemyBaseFv
        .4byte getSound_AILOD__Q24Game8CreatureFv
        .4byte getSound_PosPtr__Q24Game9EnemyBaseFv
        .4byte sound_culling__Q24Game9EnemyBaseFv
        .4byte getSound_CurrAnimFrame__Q24Game9EnemyBaseFv
        .4byte getSound_CurrAnimSpeed__Q24Game9EnemyBaseFv
        .4byte on_movie_begin__Q24Game8CreatureFb
        .4byte on_movie_end__Q24Game8CreatureFb
        .4byte movieStartAnimation__Q24Game8CreatureFUl
        .4byte movieStartDemoAnimation__Q24Game8CreatureFPQ28SysShape8AnimInfo
        .4byte movieSetAnimationLastFrame__Q24Game8CreatureFv
        .4byte "movieSetTranslation__Q24Game8CreatureFR10Vector3<f>f"
        .4byte movieSetFaceDir__Q24Game8CreatureFf
        .4byte "movieGotoPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte movieUserCommand__Q24Game8CreatureFUlPQ24Game11MoviePlayer
        .4byte getShadowParam__Q34Game4Tobi3ObjFRQ24Game11ShadowParam
        .4byte needShadow__Q24Game9EnemyBaseFv
        .4byte getLifeGaugeParam__Q24Game9EnemyBaseFRQ24Game14LifeGaugeParam
        .4byte getLODSphere__Q24Game9EnemyBaseFRQ23Sys6Sphere
        .4byte getLODCylinder__Q24Game8CreatureFRQ23Sys8Cylinder
        .4byte startPick__Q24Game8CreatureFv
        .4byte endPick__Q24Game8CreatureFb
        .4byte getMabiki__Q24Game8CreatureFv
        .4byte getFootmarks__Q24Game8CreatureFv
        .4byte onStickStart__Q24Game9EnemyBaseFPQ24Game8Creature
        .4byte onStickEnd__Q24Game9EnemyBaseFPQ24Game8Creature
        .4byte onStickStartSelf__Q24Game8CreatureFPQ24Game8Creature
        .4byte onStickEndSelf__Q24Game8CreatureFPQ24Game8Creature
        .4byte isSlotFree__Q24Game8CreatureFs
        .4byte getFreeStickSlot__Q24Game8CreatureFv
        .4byte "getNearFreeStickSlot__Q24Game8CreatureFR10Vector3<f>"
        .4byte getRandomFreeStickSlot__Q24Game8CreatureFv
        .4byte onSlotStickStart__Q24Game8CreatureFPQ24Game8Creatures
        .4byte onSlotStickEnd__Q24Game8CreatureFPQ24Game8Creatures
        .4byte "calcStickSlotGlobal__Q24Game8CreatureFsR10Vector3<f>"
        .4byte "getVelocityAt__Q24Game9EnemyBaseFR10Vector3<f>R10Vector3<f>"
        .4byte "getAngularEffect__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
        .4byte "applyImpulse__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
        .4byte ignoreAtari__Q24Game8CreatureFPQ24Game8Creature
        .4byte getSuckPos__Q24Game8CreatureFv
        .4byte getGoalPos__Q24Game8CreatureFv
        .4byte isSuckReady__Q24Game8CreatureFv
        .4byte isSuckArriveWait__Q24Game8CreatureFv
        .4byte stimulate__Q24Game9EnemyBaseFRQ24Game11Interaction
        .4byte getCreatureName__Q24Game9EnemyBaseFv
        .4byte getCreatureID__Q24Game9EnemyBaseFv
        .4byte 0
        .4byte 0
        .4byte "@376@onKeyEvent__Q24Game9EnemyBaseFRCQ28SysShape8KeyEvent"
        .4byte __dt__Q34Game4Tobi3ObjFv
        .4byte "birth__Q24Game9EnemyBaseFR10Vector3<f>f"
        .4byte
   setInitialSetting__Q34Game4Tobi3ObjFPQ24Game21EnemyInitialParamBase .4byte
   update__Q24Game9EnemyBaseFv .4byte doUpdate__Q34Game4Tobi3ObjFv .4byte
   doUpdateCommon__Q24Game9EnemyBaseFv .4byte
   doUpdateCarcass__Q24Game9EnemyBaseFv .4byte
   doAnimationUpdateAnimator__Q24Game9EnemyBaseFv .4byte
   doAnimationCullingOff__Q24Game9EnemyBaseFv .4byte
   doAnimationCullingOn__Q24Game9EnemyBaseFv .4byte
   doAnimationStick__Q24Game9EnemyBaseFv .4byte
   doSimulationCarcass__Q24Game9EnemyBaseFf .4byte
   doDebugDraw__Q34Game4Tobi3ObjFR8Graphics .4byte
   doSimpleDraw__Q24Game9EnemyBaseFP8Viewport .4byte
   doSimulationGround__Q24Game9EnemyBaseFf .4byte
   doSimulationFlying__Q24Game9EnemyBaseFf .4byte
   doSimulationStick__Q24Game9EnemyBaseFf .4byte
   changeMaterial__Q24Game9EnemyBaseFv .4byte
   "getCommonEffectPos__Q24Game9EnemyBaseFR10Vector3<f>" .4byte
   getFitEffectPos__Q24Game9EnemyBaseFv .4byte viewGetShape__Q24Game9EnemyBaseFv
        .4byte view_start_carrymotion__Q24Game9EnemyBaseFv
        .4byte view_finish_carrymotion__Q24Game9EnemyBaseFv
        .4byte viewStartPreCarryMotion__Q24Game9EnemyBaseFv
        .4byte viewStartCarryMotion__Q24Game9EnemyBaseFv
        .4byte viewOnPelletKilled__Q24Game9EnemyBaseFv
        .4byte getOffsetForMapCollision__Q24Game9EnemyBaseFv
        .4byte setParameters__Q24Game9EnemyBaseFv
        .4byte initMouthSlots__Q34Game4Tobi3ObjFv
        .4byte initWalkSmokeEffect__Q24Game9EnemyBaseFv
        .4byte getWalkSmokeEffectMgr__Q24Game9EnemyBaseFv
        .4byte onKeyEvent__Q24Game9EnemyBaseFRCQ28SysShape8KeyEvent
        .4byte injure__Q24Game9EnemyBaseFv
        .4byte setCollEvent__Q24Game9EnemyBaseFRQ24Game9CollEvent
        .4byte "getEfxHamonPos__Q24Game9EnemyBaseFP10Vector3<f>"
        .4byte createInstanceEfxHamon__Q24Game9EnemyBaseFv
        .4byte updateEfxHamon__Q24Game9EnemyBaseFv
        .4byte createEfxHamon__Q24Game9EnemyBaseFv
        .4byte fadeEfxHamon__Q24Game9EnemyBaseFv
        .4byte getEnemyTypeID__Q34Game4Tobi3ObjFv
        .4byte getMouthSlots__Q34Game4Tobi3ObjFv
        .4byte doGetLifeGaugeParam__Q24Game9EnemyBaseFRQ24Game14LifeGaugeParam
        .4byte throwupItem__Q24Game9EnemyBaseFv
        .4byte "getThrowupItemPosition__Q24Game9EnemyBaseFP10Vector3<f>"
        .4byte "getThrowupItemVelocity__Q24Game9EnemyBaseFP10Vector3<f>"
        .4byte throwupItemInDeathProcedure__Q24Game9EnemyBaseFv
        .4byte setLODSphere__Q24Game9EnemyBaseFRQ23Sys6Sphere
        .4byte damageCallBack__Q24Game9EnemyBaseFPQ24Game8CreaturefP8CollPart
        .4byte pressCallBack__Q34Game4Tobi3ObjFPQ24Game8CreaturefP8CollPart
        .4byte
   flyCollisionCallBack__Q34Game4Tobi3ObjFPQ24Game8CreaturefP8CollPart .4byte
   hipdropCallBack__Q34Game4Tobi3ObjFPQ24Game8CreaturefP8CollPart .4byte
   dropCallBack__Q24Game9EnemyBaseFPQ24Game8Creature .4byte
   earthquakeCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturef .4byte
   farmCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturef .4byte
   "bombCallBack__Q24Game9EnemyBaseFPQ24Game8CreatureR10Vector3<f>f" .4byte
   eatWhitePikminCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturef .4byte
   dopeCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturei .4byte
   doDopeCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturei .4byte
   doStartStoneState__Q34Game4Tobi3ObjFv .4byte
   doFinishStoneState__Q34Game4Tobi3ObjFv .4byte
   getDamageCoeStoneState__Q24Game9EnemyBaseFv .4byte
   doStartEarthquakeState__Q24Game9EnemyBaseFf .4byte
   doFinishEarthquakeState__Q24Game9EnemyBaseFv .4byte
   doStartEarthquakeFitState__Q34Game4Tobi3ObjFv .4byte
   doFinishEarthquakeFitState__Q34Game4Tobi3ObjFv .4byte
   lifeRecover__Q34Game4Tobi3ObjFv .4byte startCarcassMotion__Q34Game4Tobi3ObjFv
        .4byte setCarcassArg__Q24Game9EnemyBaseFRQ24Game13PelletViewArg
        .4byte getCarcassArgHeight__Q24Game9EnemyBaseFv
        .4byte doBecomeCarcass__Q24Game9EnemyBaseFv
        .4byte startWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte finishWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte isFinishableWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte doStartWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte doFinishWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte wallCallback__Q24Game9EnemyBaseFRCQ24Game8MoveInfo
        .4byte getDownSmokeScale__Q34Game4Tobi3ObjFv
        .4byte doStartMovie__Q24Game9EnemyBaseFv
        .4byte doEndMovie__Q24Game9EnemyBaseFv
        .4byte setFSM__Q34Game4Tobi3ObjFPQ34Game4Tobi3FSM
        .4byte 0
        .4byte 0
        .4byte viewGetBaseScale__Q24Game10PelletViewFv
        .4byte "@744@12@viewGetShape__Q24Game9EnemyBaseFv"
        .4byte viewGetCollTreeJointIndex__Q24Game10PelletViewFv
        .4byte viewGetCollTreeOffset__Q24Game10PelletViewFv
        .4byte "@744@12@view_start_carrymotion__Q24Game9EnemyBaseFv"
        .4byte "@744@12@view_finish_carrymotion__Q24Game9EnemyBaseFv"
        .4byte "@744@12@viewStartPreCarryMotion__Q24Game9EnemyBaseFv"
        .4byte "@744@12@viewStartCarryMotion__Q24Game9EnemyBaseFv"
        .4byte "@744@12@viewOnPelletKilled__Q24Game9EnemyBaseFv"
        .4byte "viewEntryShape__Q24Game10PelletViewFR7MatrixfR10Vector3<f>"
        .4byte 0

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_8051AF68
    lbl_8051AF68:
        .4byte 0x6B6F7369
        .4byte 0x6A6E7400
    .global lbl_8051AF70
    lbl_8051AF70:
        .4byte 0x00000000
    .global lbl_8051AF74
    lbl_8051AF74:
        .float 1.0
    .global lbl_8051AF78
    lbl_8051AF78:
        .4byte 0x41100000
    .global lbl_8051AF7C
    lbl_8051AF7C:
        .4byte 0x42480000
    .global lbl_8051AF80
    lbl_8051AF80:
        .4byte 0x40200000
    .global lbl_8051AF84
    lbl_8051AF84:
        .4byte 0x41F00000
    .global lbl_8051AF88
    lbl_8051AF88:
        .4byte 0x6B616D75
        .4byte 0x6A6E7400
    .global lbl_8051AF90
    lbl_8051AF90:
        .4byte 0x41700000
    .global lbl_8051AF94
    lbl_8051AF94:
        .4byte 0x3A83126F
    .global lbl_8051AF98
    lbl_8051AF98:
        .float 0.5
    .global lbl_8051AF9C
    lbl_8051AF9C:
        .4byte 0x40C90FDB
    .global lbl_8051AFA0
    lbl_8051AFA0:
        .4byte 0x47000000
    .global lbl_8051AFA4
    lbl_8051AFA4:
        .4byte 0x43A2F983
    .global lbl_8051AFA8
    lbl_8051AFA8:
        .4byte 0xC3A2F983
    .global lbl_8051AFAC
    lbl_8051AFAC:
        .4byte 0x40000000
    .global lbl_8051AFB0
    lbl_8051AFB0:
        .4byte 0x43300000
        .4byte 0x80000000
    .global lbl_8051AFB8
    lbl_8051AFB8:
        .4byte 0x41A00000
    .global lbl_8051AFBC
    lbl_8051AFBC:
        .4byte 0x40A00000
    .global lbl_8051AFC0
    lbl_8051AFC0:
        .4byte 0xC1A00000
    .global lbl_8051AFC4
    lbl_8051AFC4:
        .4byte 0x437A0000
    .global lbl_8051AFC8
    lbl_8051AFC8:
        .4byte 0x3F400000
    .global lbl_8051AFCC
    lbl_8051AFCC:
        .4byte 0x40490FDB
    .global lbl_8051AFD0
    lbl_8051AFD0:
        .4byte 0x3BB60B61
    .global lbl_8051AFD4
    lbl_8051AFD4:
        .float 0.7
    .global lbl_8051AFD8
    lbl_8051AFD8:
        .4byte 0x3EB33333
        .4byte 0x00000000
*/

namespace Game {
namespace Tobi {

/*
 * --INFO--
 * Address:	802698AC
 * Size:	000138
 */
Obj::Obj()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	extsh.   r0, r4
	stw      r31, 0xc(r1)
	mr       r31, r3
	stw      r30, 8(r1)
	beq      lbl_802698EC
	addi     r0, r31, 0x2e8
	lis      r3, __vt__Q24Game10PelletView@ha
	stw      r0, 0x17c(r31)
	addi     r3, r3, __vt__Q24Game10PelletView@l
	li       r0, 0
	stw      r3, 0x2e8(r31)
	stw      r0, 0x2ec(r31)
	stw      r0, 0x2f0(r31)

lbl_802698EC:
	mr       r3, r31
	li       r4, 0
	bl       __ct__Q24Game9EnemyBaseFv
	lis      r3, __vt__Q34Game4Tobi3Obj@ha
	addi     r0, r31, 0x2e8
	addi     r5, r3, __vt__Q34Game4Tobi3Obj@l
	addi     r3, r31, 0x2c8
	stw      r5, 0(r31)
	addi     r4, r5, 0x1b0
	addi     r5, r5, 0x2fc
	stw      r4, 0x178(r31)
	lwz      r4, 0x17c(r31)
	stw      r5, 0(r4)
	lwz      r4, 0x17c(r31)
	subf     r0, r4, r0
	stw      r0, 0xc(r4)
	bl       __ct__10MouthSlotsFv
	li       r3, 0x2c
	bl       __nw__FUl
	or.      r30, r3, r3
	beq      lbl_80269980
	bl       __ct__Q24Game17EnemyAnimatorBaseFv
	lis      r3, __vt__Q34Game4Tobi14ProperAnimator@ha
	lis      r4, __vt__Q28SysShape12BaseAnimator@ha
	addi     r0, r3, __vt__Q34Game4Tobi14ProperAnimator@l
	lis      r3, __vt__Q28SysShape8Animator@ha
	stw      r0, 0(r30)
	addi     r4, r4, __vt__Q28SysShape12BaseAnimator@l
	addi     r3, r3, __vt__Q28SysShape8Animator@l
	li       r0, 0
	stw      r4, 0x10(r30)
	stw      r3, 0x10(r30)
	stb      r0, 0x28(r30)
	stw      r0, 0x1c(r30)
	stw      r0, 0x14(r30)
	stb      r0, 0x28(r30)
	stw      r0, 0x20(r30)

lbl_80269980:
	stw      r30, 0x184(r31)
	li       r3, 0x1c
	bl       __nw__FUl
	or.      r4, r3, r3
	beq      lbl_802699B4
	lis      r5, __vt__Q24Game17EnemyStateMachine@ha
	lis      r3, __vt__Q34Game4Tobi3FSM@ha
	addi     r0, r5, __vt__Q24Game17EnemyStateMachine@l
	li       r5, -1
	stw      r0, 0(r4)
	addi     r0, r3, __vt__Q34Game4Tobi3FSM@l
	stw      r5, 0x18(r4)
	stw      r0, 0(r4)

lbl_802699B4:
	lwz      r12, 0(r31)
	mr       r3, r31
	lwz      r12, 0x2f8(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802699E4
 * Size:	000004
 */
void Obj::setInitialSetting(EnemyInitialParamBase*) { }

/*
 * --INFO--
 * Address:	802699E8
 * Size:	000098
 */
void Obj::onInit(CreatureInitArg*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	bl       onInit__Q24Game9EnemyBaseFPQ24Game15CreatureInitArg
	lwz      r0, 0x1e0(r31)
	mr       r3, r31
	rlwinm   r0, r0, 0, 0x15, 0x13
	stw      r0, 0x1e0(r31)
	lwz      r0, 0x1e0(r31)
	rlwinm   r0, r0, 0, 0x1a, 0x18
	stw      r0, 0x1e0(r31)
	bl       resetAppearCheck__Q34Game4Tobi3ObjFv
	li       r3, 0
	li       r0, -1
	stb      r3, 0x2c1(r31)
	mr       r3, r31
	stw      r0, 0x2c4(r31)
	bl       resetBridgeSearch__Q34Game4Tobi3ObjFv
	lwz      r3, 0x2bc(r31)
	mr       r4, r31
	li       r5, 2
	li       r6, 0
	lwz      r12, 0(r3)
	lwz      r12, 0xc(r12)
	mtctr    r12
	bctrl
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0x1dc(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269A80
 * Size:	000048
 */
void Obj::doUpdate()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	mr       r4, r31
	lwz      r3, 0x2bc(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	addi     r3, r31, 0x2c8
	bl       update__10MouthSlotsFv
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269AC8
 * Size:	000004
 */
void Obj::doDirectDraw(Graphics&) { }

/*
 * --INFO--
 * Address:	80269ACC
 * Size:	000020
 */
void Obj::doDebugDraw(Graphics&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	bl       doDebugDraw__Q24Game9EnemyBaseFR8Graphics
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269AEC
 * Size:	00004C
 */
void Obj::setFSM(FSM*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	stw      r4, 0x2bc(r3)
	mr       r4, r31
	lwz      r3, 0x2bc(r3)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	li       r0, 0
	stw      r0, 0x2b4(r31)
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269B38
 * Size:	0000E0
 */
void Obj::getShadowParam(ShadowParam&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	addi     r4, r2, lbl_8051AF68@sda21
	stw      r30, 8(r1)
	mr       r30, r3
	lwz      r3, 0x174(r3)
	bl       getJoint__Q28SysShape5ModelFPc
	bl       getWorldMatrix__Q28SysShape5JointFv
	lfs      f3, 0x2c(r3)
	lfs      f2, 0x1c(r3)
	lfs      f0, 0xc(r3)
	mr       r3, r30
	lfs      f1, lbl_8051AF70@sda21(r2)
	stfs     f0, 0(r31)
	lfs      f0, lbl_8051AF74@sda21(r2)
	stfs     f2, 4(r31)
	stfs     f3, 8(r31)
	stfs     f1, 0xc(r31)
	stfs     f0, 0x10(r31)
	stfs     f1, 0x14(r31)
	bl       getStateID__Q24Game9EnemyBaseFv
	cmpwi    r3, 0xa
	bne      lbl_80269BC8
	lfs      f2, 4(r31)
	lfs      f0, lbl_8051AF78@sda21(r2)
	lfs      f1, lbl_8051AF7C@sda21(r2)
	fsubs    f0, f2, f0
	stfs     f0, 4(r31)
	lwz      r3, 0xc0(r30)
	lfs      f0, 0x86c(r3)
	fadds    f0, f1, f0
	stfs     f0, 0x18(r31)
	b        lbl_80269BF8

lbl_80269BC8:
	lfs      f1, 4(r31)
	lfs      f0, lbl_8051AF80@sda21(r2)
	fsubs    f0, f1, f0
	stfs     f0, 4(r31)
	lwz      r0, 0x1e4(r30)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_80269BF0
	lfs      f0, lbl_8051AF7C@sda21(r2)
	stfs     f0, 0x18(r31)
	b        lbl_80269BF8

lbl_80269BF0:
	lfs      f0, lbl_8051AF84@sda21(r2)
	stfs     f0, 0x18(r31)

lbl_80269BF8:
	lfs      f0, lbl_8051AF78@sda21(r2)
	stfs     f0, 0x1c(r31)
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269C18
 * Size:	0000A4
 */
bool Obj::pressCallBack(Creature*, f32, CollPart*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	cmplwi   r4, 0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	beq      lbl_80269CA4
	mr       r3, r4
	lwz      r12, 0(r4)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_80269CA4
	lwz      r0, 0x1e0(r31)
	rlwinm.  r0, r0, 0, 0x16, 0x16
	bne      lbl_80269CA4
	mr       r3, r31
	bl       getStateID__Q24Game9EnemyBaseFv
	cmpwi    r3, 4
	ble      lbl_80269C74
	cmpwi    r3, 0xa
	blt      lbl_80269C7C

lbl_80269C74:
	cmpwi    r3, 0xa
	ble      lbl_80269CA4

lbl_80269C7C:
	lwz      r3, 0x2bc(r31)
	mr       r4, r31
	li       r5, 1
	li       r6, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	li       r3, 1
	b        lbl_80269CA8

lbl_80269CA4:
	li       r3, 0

lbl_80269CA8:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269CBC
 * Size:	00002C
 */
bool Obj::hipdropCallBack(Creature*, f32, CollPart*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x27c(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269CE8
 * Size:	000094
 */
bool Obj::flyCollisionCallBack(Creature*, f32, CollPart*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	cmplwi   r4, 0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	beq      lbl_80269D64
	mr       r3, r4
	lwz      r12, 0(r4)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_80269D64
	lwz      r0, 0x1e0(r31)
	rlwinm.  r0, r0, 0, 0x16, 0x16
	bne      lbl_80269D64
	mr       r3, r31
	bl       getStateID__Q24Game9EnemyBaseFv
	cmpwi    r3, 0xa
	bne      lbl_80269D64
	lwz      r3, 0x2bc(r31)
	mr       r4, r31
	li       r5, 0
	li       r6, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	li       r3, 1
	b        lbl_80269D68

lbl_80269D64:
	li       r3, 0

lbl_80269D68:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269D7C
 * Size:	000038
 */
void Obj::doStartStoneState()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	bl       doStartStoneState__Q24Game9EnemyBaseFv
	lwz      r0, 0x1e0(r31)
	rlwinm   r0, r0, 0, 0, 0x1e
	stw      r0, 0x1e0(r31)
	lwz      r31, 0xc(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269DB4
 * Size:	00005C
 */
void Obj::doFinishStoneState()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	bl       doFinishStoneState__Q24Game9EnemyBaseFv
	mr       r3, r31
	bl       getStateID__Q24Game9EnemyBaseFv
	cmpwi    r3, 0xa
	bne      lbl_80269DFC
	lwz      r3, 0x2bc(r31)
	mr       r4, r31
	li       r5, 5
	li       r6, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl

lbl_80269DFC:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269E10
 * Size:	000038
 */
void Obj::doStartEarthquakeFitState()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	bl       doStartEarthquakeFitState__Q24Game9EnemyBaseFv
	lwz      r0, 0x1e0(r31)
	rlwinm   r0, r0, 0, 0, 0x1e
	stw      r0, 0x1e0(r31)
	lwz      r31, 0xc(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269E48
 * Size:	00005C
 */
void Obj::doFinishEarthquakeFitState()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	bl       doFinishEarthquakeFitState__Q24Game9EnemyBaseFv
	mr       r3, r31
	bl       getStateID__Q24Game9EnemyBaseFv
	cmpwi    r3, 0xa
	bne      lbl_80269E90
	lwz      r3, 0x2bc(r31)
	mr       r4, r31
	li       r5, 5
	li       r6, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl

lbl_80269E90:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269EA4
 * Size:	000028
 */
void Obj::startCarcassMotion()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	li       r4, 9
	li       r5, 0
	stw      r0, 0x14(r1)
	bl       startMotion__Q24Game9EnemyBaseFiPQ28SysShape14MotionListener
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269ECC
 * Size:	00008C
 */
void Obj::initMouthSlots()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stfd     f31, 0x10(r1)
	psq_st   f31, 24(r1), 0, qr0
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r3
	li       r4, 1
	addi     r3, r30, 0x2c8
	bl       alloc__10MouthSlotsFi
	lwz      r5, 0x174(r30)
	addi     r3, r30, 0x2c8
	li       r4, 0
	addi     r6, r2, lbl_8051AF88@sda21
	bl       setup__10MouthSlotsFiPQ28SysShape5ModelPc
	lfs      f31, lbl_8051AF90@sda21(r2)
	li       r31, 0
	b        lbl_80269F2C

lbl_80269F18:
	mr       r4, r31
	addi     r3, r30, 0x2c8
	bl       getSlot__10MouthSlotsFi
	stfs     f31, 0x1c(r3)
	addi     r31, r31, 1

lbl_80269F2C:
	lwz      r0, 0x2c8(r30)
	cmpw     r31, r0
	blt      lbl_80269F18
	psq_l    f31, 24(r1), 0, qr0
	lwz      r0, 0x24(r1)
	lfd      f31, 0x10(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269F58
 * Size:	00007C
 */
void Obj::lifeRecover()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	lwz      r12, 0(r3)
	lwz      r12, 0xcc(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_80269FB8
	lwz      r3, 0xc0(r31)
	lfs      f2, lbl_8051AF94@sda21(r2)
	lfs      f1, 0x104(r3)
	lfs      f0, 0x200(r31)
	fmadds   f0, f2, f1, f0
	stfs     f0, 0x200(r31)
	lwz      r3, 0xc0(r31)
	lfs      f1, 0x200(r31)
	lfs      f0, 0x104(r3)
	fcmpo    cr0, f1, f0
	ble      lbl_80269FC0
	stfs     f0, 0x200(r31)
	b        lbl_80269FC0

lbl_80269FB8:
	mr       r3, r31
	bl       lifeRecover__Q24Game9EnemyBaseFv

lbl_80269FC0:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80269FD4
 * Size:	000030
 */
void Obj::lifeIncrement()
{
	/*
	lfs      f1, lbl_8051AF70@sda21(r2)
	stfs     f1, 0x208(r3)
	lwz      r0, 0x1e0(r3)
	rlwinm   r0, r0, 0, 0x1f, 0x1d
	stw      r0, 0x1e0(r3)
	lfs      f0, 0x200(r3)
	fcmpo    cr0, f0, f1
	cror     2, 0, 2
	bnelr
	lfs      f0, lbl_8051AF74@sda21(r2)
	stfs     f0, 0x200(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A004
 * Size:	000220
 */
void Obj::randomFlyingTarget()
{
	/*
	stwu     r1, -0x80(r1)
	mflr     r0
	stw      r0, 0x84(r1)
	stfd     f31, 0x70(r1)
	psq_st   f31, 120(r1), 0, qr0
	stfd     f30, 0x60(r1)
	psq_st   f30, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	mr       r31, r3
	addi     r3, r1, 0x14
	lwz      r12, 0(r31)
	mr       r4, r31
	lfs      f31, 0x2d0(r31)
	lwz      r12, 8(r12)
	lfs      f30, 0x2d8(r31)
	mtctr    r12
	bctrl
	lfs      f2, 0x14(r1)
	mr       r4, r31
	lfs      f1, 0x18(r1)
	addi     r3, r1, 8
	lfs      f0, 0x1c(r1)
	stfs     f2, 0x20(r1)
	stfs     f1, 0x24(r1)
	stfs     f0, 0x28(r1)
	lwz      r12, 0(r31)
	lwz      r12, 0x6c(r12)
	mtctr    r12
	bctrl
	lfs      f3, lbl_8051AF70@sda21(r2)
	lfs      f0, 0x10(r1)
	lfs      f1, 8(r1)
	fsubs    f4, f3, f0
	lfs      f0, 0x28(r1)
	lfs      f2, 0x20(r1)
	fsubs    f5, f3, f1
	fsubs    f3, f30, f0
	lfs      f0, lbl_8051AF98@sda21(r2)
	fmuls    f1, f4, f4
	fsubs    f4, f31, f2
	fmuls    f2, f3, f3
	fmadds   f1, f5, f5, f1
	fmadds   f2, f4, f4, f2
	fmuls    f0, f1, f0
	fcmpo    cr0, f2, f0
	bge      lbl_8026A1BC
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0x34(r1)
	lwz      r3, 0xc0(r31)
	stw      r0, 0x30(r1)
	lfd      f2, lbl_8051AFB0@sda21(r2)
	lfd      f0, 0x30(r1)
	lfs      f1, lbl_8051AF9C@sda21(r2)
	fsubs    f2, f0, f2
	lfs      f0, lbl_8051AFA0@sda21(r2)
	lfs      f30, 0x35c(r3)
	fmuls    f1, f1, f2
	fdivs    f31, f1, f0
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0x3c(r1)
	fmr      f3, f31
	lfs      f0, lbl_8051AF70@sda21(r2)
	stw      r0, 0x38(r1)
	lfd      f2, lbl_8051AFB0@sda21(r2)
	fcmpo    cr0, f31, f0
	lfd      f1, 0x38(r1)
	lfs      f0, lbl_8051AFA0@sda21(r2)
	fsubs    f1, f1, f2
	fmuls    f1, f30, f1
	fdivs    f4, f1, f0
	bge      lbl_8026A134
	fneg     f3, f31

lbl_8026A134:
	lfs      f2, lbl_8051AFA4@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	lfs      f0, lbl_8051AF70@sda21(r2)
	addi     r4, r3, sincosTable___5JMath@l
	fmuls    f1, f3, f2
	fcmpo    cr0, f31, f0
	fctiwz   f0, f1
	stfd     f0, 0x40(r1)
	lwz      r0, 0x44(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	add      r3, r4, r0
	lfs      f0, 4(r3)
	fmuls    f3, f4, f0
	bge      lbl_8026A190
	lfs      f0, lbl_8051AFA8@sda21(r2)
	fmuls    f0, f31, f0
	fctiwz   f0, f0
	stfd     f0, 0x48(r1)
	lwz      r0, 0x4c(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r4, r0
	fneg     f0, f0
	b        lbl_8026A1A8

lbl_8026A190:
	fmuls    f0, f31, f2
	fctiwz   f0, f0
	stfd     f0, 0x50(r1)
	lwz      r0, 0x54(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r4, r0

lbl_8026A1A8:
	fmuls    f31, f4, f0
	lfs      f1, 0x198(r31)
	lfs      f0, 0x1a0(r31)
	fadds    f31, f31, f1
	fadds    f30, f3, f0

lbl_8026A1BC:
	lwz      r3, mapMgr__4Game@sda21(r13)
	addi     r4, r1, 0x20
	lwz      r12, 4(r3)
	lwz      r12, 0x28(r12)
	mtctr    r12
	bctrl
	lwz      r3, 0xc0(r31)
	lfs      f2, lbl_8051AFAC@sda21(r2)
	lfs      f0, 0x86c(r3)
	fadds    f1, f1, f0
	stfs     f31, 0x2d0(r31)
	stfs     f1, 0x2d4(r31)
	stfs     f30, 0x2d8(r31)
	lfs      f0, 0x24(r1)
	fsubs    f1, f1, f0
	fmuls    f0, f2, f1
	stfs     f0, 0x1d8(r31)
	psq_l    f31, 120(r1), 0, qr0
	lfd      f31, 0x70(r1)
	psq_l    f30, 104(r1), 0, qr0
	lfd      f30, 0x60(r1)
	lwz      r0, 0x84(r1)
	lwz      r31, 0x5c(r1)
	mtlr     r0
	addi     r1, r1, 0x80
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A224
 * Size:	000024
 */
void Obj::isFlyingLife()
{
	/*
	lwz      r4, 0xc0(r3)
	lfs      f2, 0x200(r3)
	lfs      f1, 0x104(r4)
	lfs      f0, 0x81c(r4)
	fdivs    f1, f2, f1
	fcmpo    cr0, f1, f0
	mfcr     r0
	srwi     r3, r0, 0x1f
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A248
 * Size:	000034
 */
void Obj::setInWaterDamage()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r0, 0x280(r3)
	cmplwi   r0, 0
	beq      lbl_8026A26C
	lfs      f1, lbl_8051AF80@sda21(r2)
	lfs      f2, lbl_8051AF74@sda21(r2)
	bl       addDamage__Q24Game9EnemyBaseFff

lbl_8026A26C:
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A27C
 * Size:	0000B4
 */
void Obj::resetAppearCheck()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	mr       r30, r3
	lwz      r4, gameSystem__4Game@sda21(r13)
	cmplwi   r4, 0
	beq      lbl_8026A310
	lwz      r0, 0x44(r4)
	cmpwi    r0, 4
	bne      lbl_8026A310
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0xc(r1)
	mr       r3, r30
	lwz      r12, 0(r30)
	stw      r0, 8(r1)
	lfd      f2, lbl_8051AFB0@sda21(r2)
	lfd      f0, 8(r1)
	lfs      f1, lbl_8051AFA0@sda21(r2)
	fsubs    f2, f0, f2
	lfs      f0, lbl_8051AF84@sda21(r2)
	lwz      r12, 0x1ac(r12)
	fdivs    f1, f2, f1
	fmuls    f0, f0, f1
	fctiwz   f0, f0
	stfd     f0, 0x10(r1)
	lwz      r31, 0x14(r1)
	mtctr    r12
	bctrl
	mulli    r0, r3, 5
	add      r0, r31, r0
	rlwinm   r0, r0, 8, 0x10, 0x17
	sth      r0, 0x2c2(r30)
	b        lbl_8026A318

lbl_8026A310:
	li       r0, 0
	sth      r0, 0x2c2(r30)

lbl_8026A318:
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
 * Address:	8026A330
 * Size:	000048
 */
void Obj::isAppearCheck()
{
	/*
	lhz      r4, 0x2c2(r3)
	cmplwi   r4, 0
	beq      lbl_8026A370
	addi     r0, r4, 1
	sth      r0, 0x2c2(r3)
	lhz      r0, 0x2c2(r3)
	clrlwi   r4, r0, 0x18
	rlwinm   r0, r0, 0x18, 0x18, 0x1f
	cmpw     r4, r0
	ble      lbl_8026A368
	li       r0, 0
	sth      r0, 0x2c2(r3)
	li       r3, 1
	blr

lbl_8026A368:
	li       r3, 0
	blr

lbl_8026A370:
	li       r3, 1
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A378
 * Size:	000020
 */
void Obj::resetBridgeSearch()
{
	/*
	li       r4, 1
	li       r0, 0
	stb      r4, 0x2c0(r3)
	lfs      f0, lbl_8051AF70@sda21(r2)
	stw      r0, 0x2dc(r3)
	stfs     f0, 0x2e0(r3)
	stfs     f0, 0x2e4(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A398
 * Size:	000048
 */
void Obj::setBridgeSearch()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	lbz      r0, 0x2c0(r3)
	cmplwi   r0, 0
	beq      lbl_8026A3CC
	li       r0, 0
	stb      r0, 0x2c0(r31)
	bl       setNearestBridge__Q34Game4Tobi3ObjFv
	mr       r3, r31
	bl       setCullingCheck__Q34Game4Tobi3ObjFv

lbl_8026A3CC:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A3E0
 * Size:	0002C0
 */
void Obj::setNearestBridge()
{
	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	stw      r0, 0x54(r1)
	stfd     f31, 0x40(r1)
	psq_st   f31, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	mr       r31, r3
	li       r0, 0
	stw      r0, 0x2dc(r3)
	lfs      f0, lbl_8051AF70@sda21(r2)
	stfs     f0, 0x2e0(r3)
	stfs     f0, 0x2e4(r3)
	lwz      r3, mgr__Q24Game10ItemBridge@sda21(r13)
	cmplwi   r3, 0
	beq      lbl_8026A630
	lwz      r4, 0xc0(r31)
	lfs      f0, 0x35c(r4)
	fmuls    f31, f0, f0
	beq      lbl_8026A434
	addi     r3, r3, 0x30

lbl_8026A434:
	li       r0, 0
	lis      r4, "__vt__26Iterator<Q24Game8BaseItem>"@ha
	addi     r4, r4, "__vt__26Iterator<Q24Game8BaseItem>"@l
	stw      r0, 0x20(r1)
	cmplwi   r0, 0
	stw      r4, 0x14(r1)
	stw      r0, 0x18(r1)
	stw      r3, 0x1c(r1)
	bne      lbl_8026A470
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x18(r1)
	b        lbl_8026A610

lbl_8026A470:
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x18(r1)
	b        lbl_8026A4DC

lbl_8026A488:
	lwz      r3, 0x1c(r1)
	lwz      r4, 0x18(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x20(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8026A610
	lwz      r3, 0x1c(r1)
	lwz      r4, 0x18(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x18(r1)

lbl_8026A4DC:
	lwz      r12, 0x14(r1)
	addi     r3, r1, 0x14
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8026A488
	b        lbl_8026A610

lbl_8026A4FC:
	lwz      r3, 0x1c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r0, r3
	addi     r3, r1, 8
	mr       r30, r0
	mr       r4, r30
	bl       getStartPos__Q34Game10ItemBridge4ItemFv
	lfs      f1, 0x194(r31)
	lfs      f0, 0x10(r1)
	lfs      f2, 0x18c(r31)
	fsubs    f1, f1, f0
	lfs      f0, 8(r1)
	fsubs    f2, f2, f0
	fmuls    f0, f1, f1
	fmadds   f0, f2, f2, f0
	fcmpo    cr0, f0, f31
	bge      lbl_8026A554
	stw      r30, 0x2dc(r31)
	fmr      f31, f0

lbl_8026A554:
	lwz      r0, 0x20(r1)
	cmplwi   r0, 0
	bne      lbl_8026A580
	lwz      r3, 0x1c(r1)
	lwz      r4, 0x18(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x18(r1)
	b        lbl_8026A610

lbl_8026A580:
	lwz      r3, 0x1c(r1)
	lwz      r4, 0x18(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x18(r1)
	b        lbl_8026A5F4

lbl_8026A5A0:
	lwz      r3, 0x1c(r1)
	lwz      r4, 0x18(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x20(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8026A610
	lwz      r3, 0x1c(r1)
	lwz      r4, 0x18(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x18(r1)

lbl_8026A5F4:
	lwz      r12, 0x14(r1)
	addi     r3, r1, 0x14
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8026A5A0

lbl_8026A610:
	lwz      r3, 0x1c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	lwz      r4, 0x18(r1)
	cmplw    r4, r3
	bne      lbl_8026A4FC

lbl_8026A630:
	lwz      r3, 0x2dc(r31)
	cmplwi   r3, 0
	beq      lbl_8026A680
	bl       getStageWidth__Q34Game10ItemBridge4ItemFv
	lfs      f0, lbl_8051AFB8@sda21(r2)
	fsubs    f31, f1, f0
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0x2c(r1)
	lfd      f3, lbl_8051AFB0@sda21(r2)
	stw      r0, 0x28(r1)
	lfs      f1, lbl_8051AFA0@sda21(r2)
	lfd      f2, 0x28(r1)
	lfs      f0, lbl_8051AF98@sda21(r2)
	fsubs    f2, f2, f3
	fmuls    f2, f31, f2
	fdivs    f1, f2, f1
	fnmsubs  f0, f0, f31, f1
	stfs     f0, 0x2e0(r31)

lbl_8026A680:
	psq_l    f31, 72(r1), 0, qr0
	lwz      r0, 0x54(r1)
	lfd      f31, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A6A0
 * Size:	000004
 */
void Obj::setCullingCheck() { }

/*
 * --INFO--
 * Address:	8026A6A4
 * Size:	0001B4
 */
void Obj::checkBreakOrMove()
{
	/*
	stwu     r1, -0xa0(r1)
	mflr     r0
	stw      r0, 0xa4(r1)
	stfd     f31, 0x90(r1)
	psq_st   f31, 152(r1), 0, qr0
	stfd     f30, 0x80(r1)
	psq_st   f30, 136(r1), 0, qr0
	stfd     f29, 0x70(r1)
	psq_st   f29, 120(r1), 0, qr0
	stfd     f28, 0x60(r1)
	psq_st   f28, 104(r1), 0, qr0
	stfd     f27, 0x50(r1)
	psq_st   f27, 88(r1), 0, qr0
	stfd     f26, 0x40(r1)
	psq_st   f26, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	mr       r31, r3
	lwz      r4, 0x2dc(r3)
	cmplwi   r4, 0
	beq      lbl_8026A810
	addi     r3, r1, 0x20
	bl       getBridgeZVec__Q34Game10ItemBridge4ItemFv
	lfs      f28, 0x20(r1)
	addi     r3, r1, 0x14
	lfs      f29, 0x24(r1)
	lfs      f27, 0x28(r1)
	lwz      r4, 0x2dc(r31)
	bl       getStartPos__Q34Game10ItemBridge4ItemFv
	lfs      f2, 0x18(r1)
	lfs      f0, 0x190(r31)
	lfs      f1, 0x14(r1)
	fsubs    f30, f2, f0
	lfs      f0, 0x18c(r31)
	lfs      f2, 0x1c(r1)
	fsubs    f31, f1, f0
	lfs      f0, 0x194(r31)
	fmuls    f1, f29, f30
	fsubs    f29, f2, f0
	lfs      f0, lbl_8051AF70@sda21(r2)
	fmadds   f1, f28, f31, f1
	fmadds   f1, f27, f29, f1
	fcmpo    cr0, f1, f0
	ble      lbl_8026A758
	li       r3, 7
	b        lbl_8026A814

lbl_8026A758:
	lwz      r4, 0x2dc(r31)
	addi     r3, r1, 8
	bl       getBridgeXVec__Q34Game10ItemBridge4ItemFv
	lfs      f27, 8(r1)
	lfs      f28, 0xc(r1)
	lfs      f26, 0x10(r1)
	lwz      r3, 0x2dc(r31)
	bl       getStageWidth__Q34Game10ItemBridge4ItemFv
	fmuls    f3, f28, f30
	lfs      f0, lbl_8051AF98@sda21(r2)
	lfs      f2, lbl_8051AFB8@sda21(r2)
	fmuls    f4, f0, f1
	lfs      f0, lbl_8051AF70@sda21(r2)
	fmadds   f1, f27, f31, f3
	fadds    f2, f2, f4
	fmadds   f1, f26, f29, f1
	fcmpo    cr0, f1, f0
	bge      lbl_8026A7A8
	stfs     f2, 0x2e4(r31)
	b        lbl_8026A7B0

lbl_8026A7A8:
	fneg     f0, f2
	stfs     f0, 0x2e4(r31)

lbl_8026A7B0:
	lfs      f0, lbl_8051AF70@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_8026A7C0
	b        lbl_8026A7C4

lbl_8026A7C0:
	fneg     f1, f1

lbl_8026A7C4:
	fcmpo    cr0, f1, f4
	ble      lbl_8026A7D4
	li       r3, 6
	b        lbl_8026A814

lbl_8026A7D4:
	lwz      r3, mapMgr__4Game@sda21(r13)
	addi     r4, r31, 0x18c
	lwz      r12, 4(r3)
	lwz      r12, 0x28(r12)
	mtctr    r12
	bctrl
	lfs      f0, lbl_8051AFBC@sda21(r2)
	lfs      f2, 0x190(r31)
	fadds    f0, f0, f1
	fcmpo    cr0, f2, f0
	ble      lbl_8026A808
	li       r3, 8
	b        lbl_8026A814

lbl_8026A808:
	li       r3, 6
	b        lbl_8026A814

lbl_8026A810:
	li       r3, 7

lbl_8026A814:
	psq_l    f31, 152(r1), 0, qr0
	lfd      f31, 0x90(r1)
	psq_l    f30, 136(r1), 0, qr0
	lfd      f30, 0x80(r1)
	psq_l    f29, 120(r1), 0, qr0
	lfd      f29, 0x70(r1)
	psq_l    f28, 104(r1), 0, qr0
	lfd      f28, 0x60(r1)
	psq_l    f27, 88(r1), 0, qr0
	lfd      f27, 0x50(r1)
	psq_l    f26, 72(r1), 0, qr0
	lfd      f26, 0x40(r1)
	lwz      r0, 0xa4(r1)
	lwz      r31, 0x3c(r1)
	mtlr     r0
	addi     r1, r1, 0xa0
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A858
 * Size:	000028
 */
void Obj::isBreakBridge()
{
	/*
	lwz      r3, 0x2dc(r3)
	cmplwi   r3, 0
	beq      lbl_8026A878
	lwz      r0, 0x218(r3)
	cmpwi    r0, 0
	beq      lbl_8026A878
	li       r3, 1
	blr

lbl_8026A878:
	li       r3, 0
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026A880
 * Size:	0002A8
 */
void Obj::moveBridgeSide()
{
	/*
	stwu     r1, -0xa0(r1)
	mflr     r0
	stw      r0, 0xa4(r1)
	stfd     f31, 0x90(r1)
	psq_st   f31, 152(r1), 0, qr0
	stfd     f30, 0x80(r1)
	psq_st   f30, 136(r1), 0, qr0
	stfd     f29, 0x70(r1)
	psq_st   f29, 120(r1), 0, qr0
	stfd     f28, 0x60(r1)
	psq_st   f28, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	mr       r31, r3
	addi     r3, r1, 0x44
	lwz      r4, 0x2dc(r31)
	bl       getStartPos__Q34Game10ItemBridge4ItemFv
	lfs      f29, 0x44(r1)
	addi     r3, r1, 0x38
	lfs      f28, 0x4c(r1)
	lwz      r4, 0x2dc(r31)
	bl       getBridgeXVec__Q34Game10ItemBridge4ItemFv
	lfs      f30, 0x38(r1)
	addi     r3, r1, 0x2c
	lfs      f31, 0x40(r1)
	lwz      r4, 0x2dc(r31)
	bl       getBridgeZVec__Q34Game10ItemBridge4ItemFv
	lfs      f1, 0x2e4(r31)
	lfs      f4, 0x34(r1)
	fmuls    f31, f31, f1
	lfs      f0, lbl_8051AFC0@sda21(r2)
	fmuls    f30, f30, f1
	lfs      f3, 0x2c(r1)
	fmuls    f4, f4, f0
	lfs      f1, 0x194(r31)
	fadds    f28, f28, f31
	lfs      f2, 0x18c(r31)
	fmuls    f3, f3, f0
	lfs      f0, lbl_8051AFC4@sda21(r2)
	fadds    f29, f29, f30
	fadds    f28, f28, f4
	fadds    f29, f29, f3
	fsubs    f1, f1, f28
	fsubs    f2, f2, f29
	fmuls    f1, f1, f1
	fmadds   f1, f2, f2, f1
	fcmpo    cr0, f1, f0
	bge      lbl_8026A9B8
	mr       r3, r31
	lwz      r4, 0xc0(r31)
	lwz      r12, 0(r31)
	lfs      f1, lbl_8051AFC8@sda21(r2)
	lfs      f0, 0x2e4(r4)
	lwz      r12, 0x64(r12)
	fmuls    f30, f1, f0
	mtctr    r12
	bctrl
	bl       sin
	mr       r3, r31
	lfs      f2, 0x1d4(r31)
	lwz      r12, 0(r31)
	frsp     f29, f1
	lfs      f31, 0x1d8(r31)
	lfs      f0, 0x1dc(r31)
	lwz      r12, 0x64(r12)
	stfs     f2, 0x20(r1)
	stfs     f31, 0x24(r1)
	stfs     f0, 0x28(r1)
	mtctr    r12
	bctrl
	bl       cos
	fmuls    f0, f30, f29
	li       r3, 1
	frsp     f1, f1
	stfs     f0, 0x1d4(r31)
	fmuls    f0, f30, f1
	stfs     f31, 0x1d8(r31)
	stfs     f0, 0x1dc(r31)
	b        lbl_8026AAF4

lbl_8026A9B8:
	mr       r4, r31
	lwz      r5, 0xc0(r31)
	lwz      r12, 0(r31)
	addi     r3, r1, 8
	lfs      f31, 0x334(r5)
	lwz      r12, 8(r12)
	lfs      f30, 0x30c(r5)
	mtctr    r12
	bctrl
	lfs      f1, 8(r1)
	lis      r3, atanTable___5JMath@ha
	lfs      f0, 0x10(r1)
	addi     r3, r3, atanTable___5JMath@l
	fsubs    f1, f29, f1
	fsubs    f2, f28, f0
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	bl       roundAng__Ff
	lwz      r12, 0(r31)
	fmr      f29, f1
	mr       r3, r31
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fmr      f2, f1
	fmr      f1, f29
	bl       angDist__Fff
	fmuls    f30, f1, f30
	lfs      f0, lbl_8051AFD0@sda21(r2)
	lfs      f1, lbl_8051AFCC@sda21(r2)
	fmuls    f0, f0, f31
	fabs     f2, f30
	fmuls    f1, f1, f0
	frsp     f0, f2
	fcmpo    cr0, f0, f1
	ble      lbl_8026AA5C
	lfs      f0, lbl_8051AF70@sda21(r2)
	fcmpo    cr0, f30, f0
	ble      lbl_8026AA58
	fmr      f30, f1
	b        lbl_8026AA5C

lbl_8026AA58:
	fneg     f30, f1

lbl_8026AA5C:
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fadds    f1, f30, f1
	bl       roundAng__Ff
	stfs     f1, 0x1fc(r31)
	mr       r3, r31
	lfs      f0, 0x1fc(r31)
	stfs     f0, 0x1a8(r31)
	lwz      r12, 0(r31)
	lwz      r4, 0xc0(r31)
	lwz      r12, 0x64(r12)
	lfs      f30, 0x2e4(r4)
	mtctr    r12
	bctrl
	bl       sin
	mr       r3, r31
	lfs      f2, 0x1d4(r31)
	lwz      r12, 0(r31)
	frsp     f29, f1
	lfs      f31, 0x1d8(r31)
	lfs      f0, 0x1dc(r31)
	lwz      r12, 0x64(r12)
	stfs     f2, 0x14(r1)
	stfs     f31, 0x18(r1)
	stfs     f0, 0x1c(r1)
	mtctr    r12
	bctrl
	bl       cos
	fmuls    f0, f30, f29
	li       r3, 0
	frsp     f1, f1
	stfs     f0, 0x1d4(r31)
	fmuls    f0, f30, f1
	stfs     f31, 0x1d8(r31)
	stfs     f0, 0x1dc(r31)

lbl_8026AAF4:
	psq_l    f31, 152(r1), 0, qr0
	lfd      f31, 0x90(r1)
	psq_l    f30, 136(r1), 0, qr0
	lfd      f30, 0x80(r1)
	psq_l    f29, 120(r1), 0, qr0
	lfd      f29, 0x70(r1)
	psq_l    f28, 104(r1), 0, qr0
	lfd      f28, 0x60(r1)
	lwz      r0, 0xa4(r1)
	lwz      r31, 0x5c(r1)
	mtlr     r0
	addi     r1, r1, 0xa0
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026AB28
 * Size:	000288
 */
void Obj::moveBridgeCentre()
{
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
	mr       r31, r3
	addi     r3, r1, 0x38
	lwz      r4, 0x2dc(r31)
	bl       getStartPos__Q34Game10ItemBridge4ItemFv
	lfs      f29, 0x38(r1)
	addi     r3, r1, 0x2c
	lfs      f28, 0x40(r1)
	lwz      r4, 0x2dc(r31)
	bl       getBridgeXVec__Q34Game10ItemBridge4ItemFv
	lfs      f1, lbl_8051AFD4@sda21(r2)
	lfs      f0, 0x2e0(r31)
	lfs      f5, 0x34(r1)
	fmuls    f3, f1, f0
	lfs      f4, 0x2c(r1)
	lfs      f1, 0x194(r31)
	lfs      f2, 0x18c(r31)
	fmuls    f5, f5, f3
	lfs      f0, lbl_8051AFC4@sda21(r2)
	fmuls    f4, f4, f3
	fadds    f28, f28, f5
	fadds    f29, f29, f4
	fsubs    f1, f1, f28
	fsubs    f2, f2, f29
	fmuls    f1, f1, f1
	fmadds   f1, f2, f2, f1
	fcmpo    cr0, f1, f0
	bge      lbl_8026AC40
	mr       r3, r31
	lwz      r4, 0xc0(r31)
	lwz      r12, 0(r31)
	lfs      f1, lbl_8051AFC8@sda21(r2)
	lfs      f0, 0x2e4(r4)
	lwz      r12, 0x64(r12)
	fmuls    f30, f1, f0
	mtctr    r12
	bctrl
	bl       sin
	mr       r3, r31
	lfs      f2, 0x1d4(r31)
	lwz      r12, 0(r31)
	frsp     f29, f1
	lfs      f31, 0x1d8(r31)
	lfs      f0, 0x1dc(r31)
	lwz      r12, 0x64(r12)
	stfs     f2, 0x20(r1)
	stfs     f31, 0x24(r1)
	stfs     f0, 0x28(r1)
	mtctr    r12
	bctrl
	bl       cos
	fmuls    f0, f30, f29
	li       r3, 1
	frsp     f1, f1
	stfs     f0, 0x1d4(r31)
	fmuls    f0, f30, f1
	stfs     f31, 0x1d8(r31)
	stfs     f0, 0x1dc(r31)
	b        lbl_8026AD7C

lbl_8026AC40:
	mr       r4, r31
	lwz      r5, 0xc0(r31)
	lwz      r12, 0(r31)
	addi     r3, r1, 8
	lfs      f31, 0x334(r5)
	lwz      r12, 8(r12)
	lfs      f30, 0x30c(r5)
	mtctr    r12
	bctrl
	lfs      f1, 8(r1)
	lis      r3, atanTable___5JMath@ha
	lfs      f0, 0x10(r1)
	addi     r3, r3, atanTable___5JMath@l
	fsubs    f1, f29, f1
	fsubs    f2, f28, f0
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	bl       roundAng__Ff
	lwz      r12, 0(r31)
	fmr      f29, f1
	mr       r3, r31
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fmr      f2, f1
	fmr      f1, f29
	bl       angDist__Fff
	fmuls    f30, f1, f30
	lfs      f0, lbl_8051AFD0@sda21(r2)
	lfs      f1, lbl_8051AFCC@sda21(r2)
	fmuls    f0, f0, f31
	fabs     f2, f30
	fmuls    f1, f1, f0
	frsp     f0, f2
	fcmpo    cr0, f0, f1
	ble      lbl_8026ACE4
	lfs      f0, lbl_8051AF70@sda21(r2)
	fcmpo    cr0, f30, f0
	ble      lbl_8026ACE0
	fmr      f30, f1
	b        lbl_8026ACE4

lbl_8026ACE0:
	fneg     f30, f1

lbl_8026ACE4:
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fadds    f1, f30, f1
	bl       roundAng__Ff
	stfs     f1, 0x1fc(r31)
	mr       r3, r31
	lfs      f0, 0x1fc(r31)
	stfs     f0, 0x1a8(r31)
	lwz      r12, 0(r31)
	lwz      r4, 0xc0(r31)
	lwz      r12, 0x64(r12)
	lfs      f30, 0x2e4(r4)
	mtctr    r12
	bctrl
	bl       sin
	mr       r3, r31
	lfs      f2, 0x1d4(r31)
	lwz      r12, 0(r31)
	frsp     f29, f1
	lfs      f31, 0x1d8(r31)
	lfs      f0, 0x1dc(r31)
	lwz      r12, 0x64(r12)
	stfs     f2, 0x14(r1)
	stfs     f31, 0x18(r1)
	stfs     f0, 0x1c(r1)
	mtctr    r12
	bctrl
	bl       cos
	fmuls    f0, f30, f29
	li       r3, 0
	frsp     f1, f1
	stfs     f0, 0x1d4(r31)
	fmuls    f0, f30, f1
	stfs     f31, 0x1d8(r31)
	stfs     f0, 0x1dc(r31)

lbl_8026AD7C:
	psq_l    f31, 136(r1), 0, qr0
	lfd      f31, 0x80(r1)
	psq_l    f30, 120(r1), 0, qr0
	lfd      f30, 0x70(r1)
	psq_l    f29, 104(r1), 0, qr0
	lfd      f29, 0x60(r1)
	psq_l    f28, 88(r1), 0, qr0
	lfd      f28, 0x50(r1)
	lwz      r0, 0x94(r1)
	lwz      r31, 0x4c(r1)
	mtlr     r0
	addi     r1, r1, 0x90
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026ADB0
 * Size:	0002F0
 */
void Obj::moveBridgeTop()
{
	/*
	stwu     r1, -0xb0(r1)
	mflr     r0
	stw      r0, 0xb4(r1)
	stfd     f31, 0xa0(r1)
	psq_st   f31, 168(r1), 0, qr0
	stfd     f30, 0x90(r1)
	psq_st   f30, 152(r1), 0, qr0
	stfd     f29, 0x80(r1)
	psq_st   f29, 136(r1), 0, qr0
	stfd     f28, 0x70(r1)
	psq_st   f28, 120(r1), 0, qr0
	stfd     f27, 0x60(r1)
	psq_st   f27, 104(r1), 0, qr0
	stw      r31, 0x5c(r1)
	stw      r30, 0x58(r1)
	mr       r30, r3
	addi     r3, r1, 0x44
	lwz      r4, 0x2dc(r30)
	lwz      r5, 0x218(r4)
	addi     r31, r5, -1
	mr       r5, r31
	bl       getStagePos__Q34Game10ItemBridge4ItemFi
	lfs      f31, 0x44(r1)
	addi     r3, r1, 0x38
	lfs      f30, 0x4c(r1)
	lwz      r4, 0x2dc(r30)
	bl       getBridgeXVec__Q34Game10ItemBridge4ItemFv
	lfs      f1, 0x38(r1)
	cmpwi    r31, 0
	lfs      f0, 0x2e0(r30)
	lfs      f2, 0x40(r1)
	fmuls    f1, f1, f0
	fmuls    f2, f2, f0
	fadds    f31, f31, f1
	fadds    f30, f30, f2
	ble      lbl_8026AE68
	lwz      r4, 0x2dc(r30)
	addi     r3, r1, 0x2c
	bl       getBridgeZVec__Q34Game10ItemBridge4ItemFv
	lfs      f1, 0x2c(r1)
	lfs      f0, lbl_8051AFC0@sda21(r2)
	lfs      f2, 0x34(r1)
	fmuls    f1, f1, f0
	fmuls    f2, f2, f0
	fadds    f31, f31, f1
	fadds    f30, f30, f2

lbl_8026AE68:
	mr       r4, r30
	lwz      r5, 0xc0(r30)
	lwz      r12, 0(r30)
	addi     r3, r1, 8
	lfs      f28, 0x334(r5)
	lwz      r12, 8(r12)
	lfs      f29, 0x30c(r5)
	mtctr    r12
	bctrl
	lfs      f1, 8(r1)
	lis      r3, atanTable___5JMath@ha
	lfs      f0, 0x10(r1)
	addi     r3, r3, atanTable___5JMath@l
	fsubs    f1, f31, f1
	fsubs    f2, f30, f0
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	bl       roundAng__Ff
	lwz      r12, 0(r30)
	fmr      f27, f1
	mr       r3, r30
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fmr      f2, f1
	fmr      f1, f27
	bl       angDist__Fff
	fmuls    f29, f1, f29
	lfs      f0, lbl_8051AFD0@sda21(r2)
	lfs      f1, lbl_8051AFCC@sda21(r2)
	fmuls    f0, f0, f28
	fabs     f2, f29
	fmuls    f1, f1, f0
	frsp     f0, f2
	fcmpo    cr0, f0, f1
	ble      lbl_8026AF0C
	lfs      f0, lbl_8051AF70@sda21(r2)
	fcmpo    cr0, f29, f0
	ble      lbl_8026AF08
	fmr      f29, f1
	b        lbl_8026AF0C

lbl_8026AF08:
	fneg     f29, f1

lbl_8026AF0C:
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fadds    f1, f29, f1
	bl       roundAng__Ff
	stfs     f1, 0x1fc(r30)
	lfs      f0, lbl_8051AF7C@sda21(r2)
	lfs      f1, 0x1fc(r30)
	stfs     f1, 0x1a8(r30)
	lfs      f1, 0x194(r30)
	lfs      f2, 0x18c(r30)
	fsubs    f1, f1, f30
	fsubs    f2, f2, f31
	fmuls    f1, f1, f1
	fmadds   f1, f2, f2, f1
	fcmpo    cr0, f1, f0
	bge      lbl_8026AF70
	lfs      f0, lbl_8051AF70@sda21(r2)
	li       r3, 1
	stfs     f0, 0x1d4(r30)
	stfs     f0, 0x1d8(r30)
	stfs     f0, 0x1dc(r30)
	b        lbl_8026B060

lbl_8026AF70:
	lfs      f0, lbl_8051AFC4@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_8026AFF0
	mr       r3, r30
	lwz      r4, 0xc0(r30)
	lwz      r12, 0(r30)
	lfs      f28, 0x2e4(r4)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	bl       sin
	mr       r3, r30
	lfs      f2, 0x1d4(r30)
	lwz      r12, 0(r30)
	frsp     f27, f1
	lfs      f30, 0x1d8(r30)
	lfs      f0, 0x1dc(r30)
	lwz      r12, 0x64(r12)
	stfs     f2, 0x20(r1)
	stfs     f30, 0x24(r1)
	stfs     f0, 0x28(r1)
	mtctr    r12
	bctrl
	bl       cos
	fmuls    f0, f28, f27
	li       r3, 1
	frsp     f1, f1
	stfs     f0, 0x1d4(r30)
	fmuls    f0, f28, f1
	stfs     f30, 0x1d8(r30)
	stfs     f0, 0x1dc(r30)
	b        lbl_8026B060

lbl_8026AFF0:
	mr       r3, r30
	lwz      r4, 0xc0(r30)
	lwz      r12, 0(r30)
	lfs      f28, 0x2e4(r4)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	bl       sin
	mr       r3, r30
	lfs      f2, 0x1d4(r30)
	lwz      r12, 0(r30)
	frsp     f27, f1
	lfs      f30, 0x1d8(r30)
	lfs      f0, 0x1dc(r30)
	lwz      r12, 0x64(r12)
	stfs     f2, 0x14(r1)
	stfs     f30, 0x18(r1)
	stfs     f0, 0x1c(r1)
	mtctr    r12
	bctrl
	bl       cos
	fmuls    f0, f28, f27
	li       r3, 0
	frsp     f1, f1
	stfs     f0, 0x1d4(r30)
	fmuls    f0, f28, f1
	stfs     f30, 0x1d8(r30)
	stfs     f0, 0x1dc(r30)

lbl_8026B060:
	psq_l    f31, 168(r1), 0, qr0
	lfd      f31, 0xa0(r1)
	psq_l    f30, 152(r1), 0, qr0
	lfd      f30, 0x90(r1)
	psq_l    f29, 136(r1), 0, qr0
	lfd      f29, 0x80(r1)
	psq_l    f28, 120(r1), 0, qr0
	lfd      f28, 0x70(r1)
	psq_l    f27, 104(r1), 0, qr0
	lfd      f27, 0x60(r1)
	lwz      r31, 0x5c(r1)
	lwz      r0, 0xb4(r1)
	lwz      r30, 0x58(r1)
	mtlr     r0
	addi     r1, r1, 0xb0
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B0A0
 * Size:	00005C
 */
void Obj::breakTargetBridge()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r4, __vt__Q24Game11Interaction@ha
	lis      r5, __vt__Q24Game19InteractBreakBridge@ha
	stw      r0, 0x24(r1)
	addi     r6, r4, __vt__Q24Game11Interaction@l
	addi     r0, r5, __vt__Q24Game19InteractBreakBridge@l
	addi     r4, r1, 8
	lwz      r7, 0xc0(r3)
	lfs      f0, 0x8bc(r7)
	stw      r6, 8(r1)
	stw      r3, 0xc(r1)
	stw      r0, 8(r1)
	stfs     f0, 0x10(r1)
	lwz      r3, 0x2dc(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B0FC
 * Size:	00008C
 */
void Obj::createAppearEffect()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r4, lbl_80485E80@ha
	stw      r0, 0x24(r1)
	addi     r4, r4, lbl_80485E80@l
	lwz      r3, 0x174(r3)
	bl       getJoint__Q28SysShape5ModelFPc
	bl       getWorldMatrix__Q28SysShape5JointFv
	lis      r4, __vt__Q23efx5TBase@ha
	li       r6, 0
	addi     r0, r4, __vt__Q23efx5TBase@l
	lis      r4, __vt__Q23efx8TSimple2@ha
	stw      r0, 8(r1)
	addi     r0, r4, __vt__Q23efx8TSimple2@l
	lis      r5, __vt__Q23efx11TSimpleMtx2@ha
	lis      r4, __vt__Q23efx9TUjinkoAp@ha
	stw      r0, 8(r1)
	addi     r0, r5, __vt__Q23efx11TSimpleMtx2@l
	li       r7, 0x1ce
	li       r5, 0x1cf
	stw      r0, 8(r1)
	addi     r0, r4, __vt__Q23efx9TUjinkoAp@l
	li       r4, 0
	stw      r3, 0x18(r1)
	addi     r3, r1, 8
	sth      r7, 0xc(r1)
	sth      r5, 0xe(r1)
	stw      r6, 0x10(r1)
	stw      r6, 0x14(r1)
	stw      r0, 8(r1)
	bl       create__Q23efx11TSimpleMtx2FPQ23efx3Arg
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B188
 * Size:	00008C
 */
void Obj::createDisAppearEffect()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r4, lbl_80485E80@ha
	stw      r0, 0x24(r1)
	addi     r4, r4, lbl_80485E80@l
	lwz      r3, 0x174(r3)
	bl       getJoint__Q28SysShape5ModelFPc
	bl       getWorldMatrix__Q28SysShape5JointFv
	lis      r4, __vt__Q23efx5TBase@ha
	li       r6, 0
	addi     r0, r4, __vt__Q23efx5TBase@l
	lis      r4, __vt__Q23efx8TSimple2@ha
	stw      r0, 8(r1)
	addi     r0, r4, __vt__Q23efx8TSimple2@l
	lis      r5, __vt__Q23efx11TSimpleMtx2@ha
	lis      r4, __vt__Q23efx9TUjinkoHd@ha
	stw      r0, 8(r1)
	addi     r0, r5, __vt__Q23efx11TSimpleMtx2@l
	li       r7, 0x1d1
	li       r5, 0x1d2
	stw      r0, 8(r1)
	addi     r0, r4, __vt__Q23efx9TUjinkoHd@l
	li       r4, 0
	stw      r3, 0x18(r1)
	addi     r3, r1, 8
	sth      r7, 0xc(r1)
	sth      r5, 0xe(r1)
	stw      r6, 0x10(r1)
	stw      r6, 0x14(r1)
	stw      r0, 8(r1)
	bl       create__Q23efx11TSimpleMtx2FPQ23efx3Arg
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B214
 * Size:	000090
 */
void Obj::createBridgeEffect()
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	addi     r4, r2, lbl_8051AF88@sda21
	stw      r0, 0x34(r1)
	lwz      r3, 0x174(r3)
	bl       getJoint__Q28SysShape5ModelFPc
	bl       getWorldMatrix__Q28SysShape5JointFv
	lis      r4, __vt__Q23efx5TBase@ha
	lfs      f2, 0x2c(r3)
	lfs      f1, 0x1c(r3)
	addi     r4, r4, __vt__Q23efx5TBase@l
	lfs      f0, 0xc(r3)
	lis      r3, __vt__Q23efx8TSimple1@ha
	addi     r0, r3, __vt__Q23efx8TSimple1@l
	lis      r5, __vt__Q23efx3Arg@ha
	stw      r4, 8(r1)
	lis      r3, __vt__Q23efx10TUjinkoEat@ha
	addi     r4, r5, __vt__Q23efx3Arg@l
	li       r6, 0x1d0
	li       r5, 0
	stw      r0, 8(r1)
	addi     r0, r3, __vt__Q23efx10TUjinkoEat@l
	addi     r3, r1, 8
	stw      r4, 0x14(r1)
	addi     r4, r1, 0x14
	stfs     f0, 0x18(r1)
	stfs     f1, 0x1c(r1)
	stfs     f2, 0x20(r1)
	sth      r6, 0xc(r1)
	stw      r5, 0x10(r1)
	stw      r0, 8(r1)
	bl       create__Q23efx8TSimple1FPQ23efx3Arg
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B2A4
 * Size:	000090
 */
void Obj::createEatEffect()
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	addi     r4, r2, lbl_8051AF88@sda21
	stw      r0, 0x34(r1)
	lwz      r3, 0x174(r3)
	bl       getJoint__Q28SysShape5ModelFPc
	bl       getWorldMatrix__Q28SysShape5JointFv
	lis      r4, __vt__Q23efx5TBase@ha
	lfs      f2, 0x2c(r3)
	lfs      f1, 0x1c(r3)
	addi     r4, r4, __vt__Q23efx5TBase@l
	lfs      f0, 0xc(r3)
	lis      r3, __vt__Q23efx8TSimple1@ha
	addi     r0, r3, __vt__Q23efx8TSimple1@l
	lis      r5, __vt__Q23efx3Arg@ha
	stw      r4, 8(r1)
	lis      r3, __vt__Q23efx12TUjinkoPkate@ha
	addi     r4, r5, __vt__Q23efx3Arg@l
	li       r6, 0x25e
	li       r5, 0
	stw      r0, 8(r1)
	addi     r0, r3, __vt__Q23efx12TUjinkoPkate@l
	addi     r3, r1, 8
	stw      r4, 0x14(r1)
	addi     r4, r1, 0x14
	stfs     f0, 0x18(r1)
	stfs     f1, 0x1c(r1)
	stfs     f2, 0x20(r1)
	sth      r6, 0xc(r1)
	stw      r5, 0x10(r1)
	stw      r0, 8(r1)
	bl       create__Q23efx8TSimple1FPQ23efx3Arg
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B334
 * Size:	000008
 */
bool Obj::isUnderground()
{
	/*
	lbz      r3, 0x2c1(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B33C
 * Size:	000008
 */
MouthSlots* Obj::getMouthSlots()
{
	/*
	addi     r3, r3, 0x2c8
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B344
 * Size:	000008
 */
f32 Obj::getDownSmokeScale()
{
	/*
	lfs      f1, lbl_8051AFD8@sda21(r2)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8026B34C
 * Size:	000008
 */
EnemyTypeID::EEnemyTypeID Obj::getEnemyTypeID() { return EnemyTypeID::EnemyID_Tobi; }
} // namespace Tobi
} // namespace Game
