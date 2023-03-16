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

void allocateDisasterEnemies()
{
	generalEnemyMgr->addEnemyNum(EnemyTypeID::EnemyID_Kochappy, 8, nullptr);
	generalEnemyMgr->addEnemyNum(EnemyTypeID::EnemyID_ShijimiChou, 8, nullptr);
}

EnemyBase* birth(int idx, Vector3f& position, bool check)
{
	EnemyBirthArg birthArg;
	birthArg.mFaceDir  = TAU * randFloat();
	birthArg.mPosition = position;
	if (check) {
		birthArg.mExistenceLength = 50.0f;
	}
	OSReport("attempting spawn\n");
	EnemyBase* teki = generalEnemyMgr->birth(idx, birthArg);
	if (teki) {
		OSReport("\tspawn possible success?\n");
		teki->init(nullptr);
	}
	return teki;
}

Vector3f calculateAtPlayerSpawn(EnemyTypeID::EEnemyTypeID type)
{
	Vector3f spawnPos;
	float radiusVariance = 90.0f;
	float enemyHeight    = 0.0f;

	if (type != EnemyTypeID::EnemyID_Rock) {
		radiusVariance = 0.0f;
		enemyHeight    = 1.0f;
	}

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
	return spawnPos;
}

Vector3f calculateAtOnionSpawn()
{
	Vector3f spawnPos;
	int onionId = ONYON_TYPE_RED;
	Onyon* onyon = ItemOnyon::mgr->getOnyon(onionId);
	if (onyon) {
		spawnPos = onyon->getPosition();

		float faceDir = onyon->getFaceDir();

		float radius = randFloat() * 150.0f + 50.0f;
		float angle  = randFloat() * TAU;
		float height = 0.0f;

		Vector3f spawnOffset = Vector3f(radius * pikmin2_sinf(angle), height, radius * pikmin2_cosf(angle));

		spawnPos += spawnOffset;
	}
	return spawnPos;
}

Vector3f determineSpawnLocation(EnemyTypeID::EEnemyTypeID type)
{
	Vector3f spawnPos;
	// 1/4 chance of spawn at base, except for rocks
	if (rand() % 4 && type != EnemyTypeID::EnemyID_Rock) //if spawn at base
	{
		spawnPos = calculateAtOnionSpawn();
	}
	else //if spawn at user
	{
		spawnPos = calculateAtPlayerSpawn(type);
	}

	return spawnPos;
}

void spawnEntity(EnemyTypeID::EEnemyTypeID type)
{
	//see enemyInfo.h
	Vector3f spawnLocation = determineSpawnLocation(type);
	if (birth(type, spawnLocation, false))
	{
		PSSystem::spSysIF->playSystemSe(PSSE_SY_2PSLOT_GO, 0);
	}
}


#define DISASTER_SPAWN_INTERVAL 200
long counter = 0;

EnemyTypeID::EEnemyTypeID spawnable[63] = {
	EnemyTypeID::EnemyID_Kochappy,
	EnemyTypeID::EnemyID_Chappy,
	EnemyTypeID::EnemyID_Kogane,
	EnemyTypeID::EnemyID_Wealthy,
	EnemyTypeID::EnemyID_Fart,
	EnemyTypeID::EnemyID_UjiA,
	EnemyTypeID::EnemyID_UjiB,
	EnemyTypeID::EnemyID_Tobi,
	EnemyTypeID::EnemyID_Armor,
	EnemyTypeID::EnemyID_Qurione,
	EnemyTypeID::EnemyID_Frog,
	EnemyTypeID::EnemyID_MaroFrog,
	EnemyTypeID::EnemyID_Rock,
	EnemyTypeID::EnemyID_Sarai,
	EnemyTypeID::EnemyID_Tank,
	EnemyTypeID::EnemyID_Wtank,
	EnemyTypeID::EnemyID_Catfish,
	EnemyTypeID::EnemyID_Tadpole,
	EnemyTypeID::EnemyID_ElecBug,
	EnemyTypeID::EnemyID_Mar,
	EnemyTypeID::EnemyID_Queen,
	EnemyTypeID::EnemyID_Demon,
	EnemyTypeID::EnemyID_FireChappy,
	EnemyTypeID::EnemyID_SnakeCrow,
	EnemyTypeID::EnemyID_KumaChappy,
	EnemyTypeID::EnemyID_Bomb,
	EnemyTypeID::EnemyID_Egg,
	EnemyTypeID::EnemyID_PanModoki,
	EnemyTypeID::EnemyID_OoPanModoki,
	EnemyTypeID::EnemyID_Fuefuki,
	EnemyTypeID::EnemyID_BlueChappy,
	EnemyTypeID::EnemyID_YellowChappy,
	EnemyTypeID::EnemyID_BlueKochappy,
	EnemyTypeID::EnemyID_YellowKochappy,
	EnemyTypeID::EnemyID_KingChappy,
	EnemyTypeID::EnemyID_Miulin,
	EnemyTypeID::EnemyID_Hanachirashi,
	EnemyTypeID::EnemyID_Damagumo,
	EnemyTypeID::EnemyID_Kurage,
	EnemyTypeID::EnemyID_BombSarai,
	EnemyTypeID::EnemyID_FireOtakara,
	EnemyTypeID::EnemyID_WaterOtakara,
	EnemyTypeID::EnemyID_GasOtakara,
	EnemyTypeID::EnemyID_ElecOtakara,
	EnemyTypeID::EnemyID_Jigumo,
	EnemyTypeID::EnemyID_Imomushi,
	EnemyTypeID::EnemyID_Houdai,
	EnemyTypeID::EnemyID_BigFoot,
	EnemyTypeID::EnemyID_TamagoMushi,
	EnemyTypeID::EnemyID_SnakeWhole,
	EnemyTypeID::EnemyID_UmiMushi,
	EnemyTypeID::EnemyID_OniKurage,
	EnemyTypeID::EnemyID_BigTreasure,
	EnemyTypeID::EnemyID_Kabuto,
	EnemyTypeID::EnemyID_KumaKochappy,
	EnemyTypeID::EnemyID_ShijimiChou,
	EnemyTypeID::EnemyID_MiniHoudai,
	EnemyTypeID::EnemyID_Sokkuri,
	EnemyTypeID::EnemyID_BombOtakara,
	EnemyTypeID::EnemyID_DangoMushi,
	EnemyTypeID::EnemyID_Rkabuto,
	EnemyTypeID::EnemyID_BlackMan,
	EnemyTypeID::EnemyID_UmiMushiBlind
};

void disasterGeneral() {
	if (counter >= DISASTER_SPAWN_INTERVAL) {
		OSReport("we are TRYING to fire the damn gun\n");
		int num;
		EnemyTypeID::EEnemyTypeID enemyType = spawnable[rand() % 63];
		switch (enemyType) {
			case EnemyTypeID::EnemyID_Rock:
				num = 8;
				break;
			case EnemyTypeID::EnemyID_Bomb:
				num = 2;
				break;
			case EnemyTypeID::EnemyID_TamagoMushi:
				num = 4;
				break;
			default:
				num = 1;
		}
		int i;
		for (i = 0; i < num; i++)
		{
			spawnEntity(enemyType);
		}

		counter = 0;
	}
	else {
		counter++;
	}
}

} // namespace Game


