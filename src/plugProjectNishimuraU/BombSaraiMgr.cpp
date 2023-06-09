#include "Game/Entities/BombSarai.h"

namespace Game {
namespace BombSarai {

static const char bombSaraiMgrName[] = "246-BombSaraiMgr";

/*
 * --INFO--
 * Address:	802B21A4
 * Size:	000050
 */
Mgr::Mgr(int objLimit, u8 modelType)
    : EnemyMgrBase(objLimit, modelType)
{
	mName = "バクダンサライマネージャ"; // bakudan sarai manager
}

/*
 * --INFO--
 * Address:	802B21F4
 * Size:	000048
 */
void Mgr::doAlloc() { init(new Parms); }

/*
 * --INFO--
 * Address:	802B24FC
 * Size:	000060
 */
void Mgr::createObj(int count) { mObj = new Obj[count]; }

/*
 * --INFO--
 * Address:	802B2618
 * Size:	000010
 */
EnemyBase* Mgr::getEnemy(int index) { return &mObj[index]; }

/*
 * --INFO--
 * Address:	802B2628
 * Size:	000068
 */
void Mgr::loadModelData()
{
	EnemyMgrBase::loadModelData();
	J3DShape* shape;
	for (u16 j = 0; j < mModelData->getShapeNum(); j++) {
		shape         = mModelData->mShapeTable.mItems[j];
		shape->mFlags = (shape->mFlags & (~0xF000)) | 0x2000;
	}
}

} // namespace BombSarai
} // namespace Game
