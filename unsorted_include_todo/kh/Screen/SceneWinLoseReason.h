#ifndef _KH_SCREEN_SCENEWINLOSEREASON_H
#define _KH_SCREEN_SCENEWINLOSEREASON_H

namespace Screen {
struct SceneBase {
	virtual void _00() = 0;                                 // _00
	virtual void _04() = 0;                                 // _04
	virtual void _08() = 0;                                 // _08
	virtual void isUseBackupSceneInfo();                    // _0C
	virtual void isDrawInDemo() const;                      // _10
	virtual void _14() = 0;                                 // _14
	virtual void _18() = 0;                                 // _18
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _1C
	virtual void setPort(Graphics&);                        // _20
	virtual void _24() = 0;                                 // _24
	virtual void doConfirmSetScene(SetSceneArg&);           // _28
	virtual void doConfirmStartScene(StartSceneArg*);       // _2C
	virtual void doConfirmEndScene(EndSceneArg*&);          // _30
	virtual void doStart(StartSceneArg*);                   // _34
	virtual void _38() = 0;                                 // _38
	virtual void setDefaultDispMember();                    // _3C
	virtual void doSetBackupScene(SetSceneArg&);            // _40
	virtual void doGetFinishState();                        // _44

	// _00 VTBL
};
} // namespace Screen

namespace kh {
namespace Screen {
	struct SceneWinLoseReason : public SceneBase {
		virtual void getSceneType();                            // _00
		virtual void getOwnerID();                              // _04
		virtual void getMemberID();                             // _08
		virtual void isUseBackupSceneInfo();                    // _0C
		virtual void isDrawInDemo() const;                      // _10
		virtual void getResName() const;                        // _14
		virtual void doCreateObj(JKRArchive*);                  // _18
		virtual void doUserCallBackFunc(Resource::MgrCommand*); // _1C
		virtual void setPort(Graphics&);                        // _20
		virtual void doUpdateActive();                          // _24
		virtual void doConfirmSetScene(SetSceneArg&);           // _28
		virtual void doConfirmStartScene(StartSceneArg*);       // _2C
		virtual void doConfirmEndScene(EndSceneArg*&);          // _30
		virtual void doStart(StartSceneArg*);                   // _34
		virtual void doEnd(EndSceneArg*);                       // _38
		virtual void setDefaultDispMember();                    // _3C
		virtual void doSetBackupScene(SetSceneArg&);            // _40
		virtual void doGetFinishState();                        // _44

		// _00 VTBL
	};
} // namespace Screen
} // namespace kh

#endif