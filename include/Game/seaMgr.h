#ifndef _GAME_SEAMGR_H
#define _GAME_SEAMGR_H

#include "Game/AABBWaterBox.h"
#include "ObjectMgr.h"
#include "types.h"

namespace Game {
struct SeaMgr : public NodeObjectMgr<WaterBox> {
	SeaMgr();

	virtual ~SeaMgr(); // _00 of vtable 1

	void addSeaMgr(SeaMgr*, Matrixf&);
	WaterBox* findWater(Sys::Sphere&);
	WaterBox* findWater2d(Sys::Sphere&);
	void read(Stream&);
	void update();

	int _3C;                            // _3C
	J3DModelData** m_modelData;         // _40
	Sys::MatTexAnimation* m_animations; // _44
};
} // namespace Game

#endif
