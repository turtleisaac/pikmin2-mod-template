#ifndef _EBI_SCREEN_FILESELECT_TMAINSCREEN_H
#define _EBI_SCREEN_FILESELECT_TMAINSCREEN_H

#include "ebi/Screen/TScreenBase.h"

namespace ebi {
namespace Screen {
namespace FileSelect {
struct TMainScreen : public TScreenBase {
	virtual void doSetArchive(JKRArchive*); // _1C
	virtual void doOpenScreen(ArgOpen*);    // _20
	virtual void doCloseScreen(ArgClose*);  // _24
	virtual void doKillScreen();            // _28
	virtual void doInitWaitState();         // _2C
	virtual bool doUpdateStateOpen();       // _30
	virtual bool doUpdateStateWait();       // _34
	virtual bool doUpdateStateClose();      // _38
	virtual void doDraw();                  // _3C
	virtual char* getName();                // _40

	// _00 VTBL
};
} // namespace FileSelect
} // namespace Screen
} // namespace ebi

#endif
