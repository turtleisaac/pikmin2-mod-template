#ifndef _OG_NEWSCREEN_UFOMENU_H
#define _OG_NEWSCREEN_UFOMENU_H

/*
    __vt__Q32og9newScreen7UfoMenu:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q32og9newScreen7UfoMenuFv
    .4byte getOwnerID__Q32og9newScreen7UfoMenuFv
    .4byte getMemberID__Q32og9newScreen7UfoMenuFv
    .4byte isUseBackupSceneInfo__Q32og9newScreen7UfoMenuFv
    .4byte isDrawInDemo__Q26Screen9SceneBaseCFv
    .4byte getResName__Q32og9newScreen7UfoMenuCFv
    .4byte doCreateObj__Q32og9newScreen7UfoMenuFP10JKRArchive
    .4byte doUserCallBackFunc__Q32og9newScreen7UfoMenuFPQ28Resource10MgrCommand
    .4byte setPort__Q26Screen9SceneBaseFR8Graphics
    .4byte doUpdateActive__Q26Screen9SceneBaseFv
    .4byte doConfirmSetScene__Q32og9newScreen7UfoMenuFRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen9SceneBaseFRPQ26Screen11EndSceneArg
    .4byte doStart__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doEnd__Q26Screen9SceneBaseFPQ26Screen11EndSceneArg
    .4byte setDefaultDispMember__Q26Screen9SceneBaseFv
    .4byte doSetBackupScene__Q32og9newScreen7UfoMenuFRQ26Screen11SetSceneArg
    .4byte doGetFinishState__Q26Screen9SceneBaseFv
*/

namespace Screen {
struct SceneBase {
	virtual void getSceneType();                            // _08 (inline)
	virtual void getOwnerID();                              // _0C (inline)
	virtual void getMemberID();                             // _10 (inline)
	virtual void isUseBackupSceneInfo();                    // _14 (inline)
	virtual void isDrawInDemo() const;                      // _18 (inline)
	virtual void getResName() const;                        // _1C (inline)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void setPort(Graphics&);                        // _28 (inline)
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(Screen::SetSceneArg&);   // _30
	virtual void doConfirmStartScene(StartSceneArg*);       // _34 (inline)
	virtual void doConfirmEndScene(EndSceneArg*&);          // _38 (inline)
	virtual void doStart(StartSceneArg*);                   // _3C
	virtual void doEnd(EndSceneArg*);                       // _40
	virtual void setDefaultDispMember();                    // _44 (inline)
	virtual void doSetBackupScene(Screen::SetSceneArg&);    // _48
	virtual void doGetFinishState();                        // _4C (inline)
};
} // namespace Screen

namespace og {
namespace newScreen {
struct UfoMenu : public SceneBase {
	virtual void getSceneType();                            // _08 (inline)
	virtual void getOwnerID();                              // _0C (inline)
	virtual void getMemberID();                             // _10 (inline)
	virtual void isUseBackupSceneInfo();                    // _14 (inline)
	virtual void getResName() const;                        // _1C (inline)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void doConfirmSetScene(Screen::SetSceneArg&);   // _30
	virtual void doSetBackupScene(Screen::SetSceneArg&);    // _48

	UfoMenu();
};
} // namespace newScreen
} // namespace og

#endif
