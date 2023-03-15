#include "types.h"
#include "Dolphin/rand.h"
#include "Game/VsGame.h"
#include "efx2d/Arg.h"
#include "efx2d/T2DSprayset.h"
#include "Light.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "PSSystem/PSSystemIF.h"
#include "Game/Entities/ItemOnyon.h"
#include "Game/Stickers.h"
#include "Game/pelletMgr.h"
#include "Game/GameConfig.h"
#include "nans.h"
#include "Game/Modding/mod.h"

struct PlayCamera;

namespace Game {

void cameraHook(PlayCamera& player_camera)
{
	disasterGeneral();
}

} // namespace Game


