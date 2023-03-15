#include "types.h"
#include "Dolphin/rand.h"
#include "Game/VsGame.h"
#include "efx2d/Arg.h"
#include "efx2d/T2DSprayset.h"
#include "Light.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "PSSystem/PSSystemIF.h"
#include "Game/Entities/ItemOnyon.h"
#include "Game/enemyInfo.h"
#include "Game/Stickers.h"
#include "Game/pelletMgr.h"
#include "Game/GameConfig.h"
#include "nans.h"
#include "trig.h"
#include "Game/Modding/mod.h"
#include "Game/EnemyMgrBase.h"
#include "Game/generalEnemyMgr.h"

namespace Game {

EnemyBase* birth(int idx, Vector3f& position, bool check)
{
	EnemyBirthArg birthArg;
	birthArg.mFaceDir  = TAU * randFloat();
	birthArg.mPosition = position;
	if (check) {
		birthArg.mExistenceLength = 50.0f;
	}
	EnemyBase* teki = generalEnemyMgr->birth(idx, birthArg);
	if (teki) {
		teki->init(nullptr);
	}
	return teki;
}

Vector3f determineSpawnLocation(int type)
{
	Vector3f spawnPos;
//	if (rand() % 2) //if spawn at user
//	{
		float radiusVariance = 90.0f;
		float enemyHeight    = 0.0f;

		radiusVariance = 0.0f;
		enemyHeight    = 1.0f;

		Navi* olimar = naviMgr->getAt(0);
		if (olimar) {
			spawnPos = olimar->getPosition();

			float faceDir = olimar->getFaceDir();
			float radius  = randFloat() * 150.0f * radiusVariance;

			float angle  = randFloat() * TAU;
			float height = enemyHeight;

			Vector3f spawnOffset = Vector3f(radius * pikmin2_sinf(angle), height, radius * pikmin2_cosf(angle));

			spawnPos += spawnOffset;
		}
//	}
//	else //if spawn at base
//	{
//		//		int onionId = Dolphin::rand() % ONYON_TYPE_MAX;
//		int onionId = ONYON_TYPE_RED;
//		Onyon* onyon = ItemOnyon::mgr->getOnyon(onionId);
//		if (onyon) {
//			spawnPos = onyon->getPosition();
//
//			float faceDir = onyon->getFaceDir();
//
//			float radius = randFloat() * 150.0f + 50.0f;
//			float angle  = randFloat() * TAU;
//			float height = 0.0f;
//
//			Vector3f spawnOffset = Vector3f(radius * pikmin2_sinf(angle), height, radius * pikmin2_cosf(angle));
//
//			spawnPos += spawnOffset;
//		}
//	}

	return spawnPos;
}

void spawnEntity(int type)
{
	//see enemyInfo.h
	Vector3f spawnLocation = determineSpawnLocation(type);
	if (birth(type, spawnLocation, false))
	{
		PSSystem::spSysIF->playSystemSe(PSSE_SY_2PSLOT_GO, 0);
	}
}


#define DISASTER_SPAWN_INTERVAL 300
long counter = 0;

int type = EnemyTypeID::EnemyID_Kochappy;

void disasterGeneral() {
	if (counter >= DISASTER_SPAWN_INTERVAL) {
		OSReport("we are TRYING to fire the damn gun\n");

		spawnEntity(type++);
		counter = 0;
	}
	else {
		counter++;
	}
}

} // namespace Game


