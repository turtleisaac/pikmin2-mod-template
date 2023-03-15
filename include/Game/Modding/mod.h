#ifndef PIKMIN2_DISASTER_MODE_MOD_H
#define PIKMIN2_DISASTER_MODE_MOD_H

#include "types.h"

namespace Game {
	void disasterGeneral();

    EnemyMgrBase *  createDisasterEnemyMgr(u8 type, int enemyID, int limit)
    EnemyBase* disasterEnemyBirth(int enemyID, EnemyBirthArg& birthArg);
}


#endif // PIKMIN2_DISASTER_MODE_MOD_H
