#ifndef _MORIMURA_DAYENDCOUNT_H
#define _MORIMURA_DAYENDCOUNT_H

#include "JSystem/J2D/J2DPane.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JUtility/TColor.h"
#include "Morimura/Bases.h"
#include "Screen/Enums.h"
#include "og/Screen/ogScreen.h"
#include "Screen/screenObj.h"
#include "types.h"

struct Graphics;
struct JKRArchive;
struct J2DPane;

namespace P2DScreen {
struct Mgr_tuning;
}

namespace Morimura {
struct TChallengeEndCount2p;

/**
 * @size{0xD4}
 */
struct TDayEndCount : public TTestBase {
	TDayEndCount();

	virtual ~TDayEndCount() { }                              // _08 (weak)
	virtual bool doStart(const ::Screen::StartSceneArg*);    // _44 (weak)
	virtual void doCreate(JKRArchive*);                      // _4C
	virtual bool doUpdate();                                 // _58
	virtual void doDraw(Graphics& gfx);                      // _68
	virtual og::Screen::DispMemberBase* getDispMemberBase(); // _78 (weak)

	void reset();

	// _00     = VTBL1
	// _18     = VTBL2
	// _00-_78 = TTestBase
	JKRArchive* mArchive;                           // _78
	og::Screen::DispMemberDayEndCount* mDispMember; // _7C
	P2DScreen::Mgr_tuning* _80;                     // _80
	J2DPicture* _84;                                // _84
	J2DPane** _88;                                  // _88
	J2DPicture* _8C;                                // _8C
	int _90;                                        // _90
	u8 _94;                                         // _94
	JGeometry::TVec2<s16> _96[4];                   // _96
	JGeometry::TVec2<s16> _A6[4];                   // _A6
	f32 _B8;                                        // _B8
	f32 _BC;                                        // _BC
	f32 _C0;                                        // _C0
	f32 _C4;                                        // _C4
	u8 _C8;                                         // _C8
	u8 _C9;                                         // _C9
	u8 _CA;                                         // _CA
	f32 mScale;                                     // _CC
	f32 mOffsetY;                                   // _D0
};

struct TCountDownScene : public THIOScene {
	TCountDownScene() { mChallengeEndCount2p = nullptr; }

	virtual SceneType getSceneType() { return SCENE_COUNT_DOWN; }         // _08 (weak)
	virtual ScreenOwnerID getOwnerID() { return OWNER_MRMR; }             // _0C (weak)
	virtual ScreenMemberID getMemberID() { return MEMBER_DAY_END_COUNT; } // _10 (weak)
	virtual const char* getResName() const { return "res_ground.szs"; }   // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                                // _20 (weak)
	virtual bool doStart(Screen::StartSceneArg*);                         // _3C

	// _00      = VTBL
	// _00-_220 = Morimura::THIOScene
	TChallengeEndCount2p* mChallengeEndCount2p; // _224
};

} // namespace Morimura

#endif
