#include "Game/Entities/Frog.h"

namespace Game {
namespace Frog {

static const char frogMgrName[] = "246-FrogMgr";

/*
 * --INFO--
 * Address:	80258120
 * Size:	000050
 */
Mgr::Mgr(int objLimit, u8 modelType)
    : EnemyMgrBase(objLimit, modelType)
{
	mName = "イモガエルマネージャ"; // tree frog manager
}

/*
 * --INFO--
 * Address:	80258170
 * Size:	000048
 */
void Mgr::doAlloc() { init(new Parms); }

/*
 * --INFO--
 * Address:	8025830C
 * Size:	000060
 */
void Mgr::createObj(int count) { mObj = new Obj[count]; }

/*
 * --INFO--
 * Address:	80258428
 * Size:	000010
 */
EnemyBase* Mgr::getEnemy(int index) { return &mObj[index]; }

} // namespace Frog
} // namespace Game
