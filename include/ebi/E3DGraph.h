#ifndef _EBI_E3DGRAPH_H
#define _EBI_E3DGRAPH_H

#include "types.h"
#include "JSystem/J3D/J3DAnmTransform.h"
#include "JSystem/J3D/J3DAnmLoader.h"
#include "JSystem/J3D/J3DModel.h"
#include "JSystem/J3D/J3DMtxCalc.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JUtility/JUTException.h"
#include "System.h"

namespace ebi {
struct E3DAnimRes {
	E3DAnimRes() { }

	void load(J3DModelData*, JKRArchive*, char*);

	J3DAnmTransform* pAnmTransform_0x0; // _00
	J3DMtxCalcAnmBase* pMtxCalcAnm_0x4; // _04
	f32 float_0x8;                      // _08
	f32 float_0xC;                      // _0C
	f32 mLoopStart;                     // _10
	f32 mLoopEnd;                       // _14
	f32 float_0x18;                     // _18
	int mMode;                          // _1C
};

struct E3DAnimFolderBase {
	virtual E3DAnimRes* getAnimRes(long) = 0; // _08
};

struct E3DAnimCtrl {

	void setAnimFolder(ebi::E3DAnimFolderBase*);
	void init(long, f32);
	void setStartFrame(); // UNUSED
	void play();
	void playStopEnd();
	void stop(); // UNUSED

	f32 _00;                             // _00
	f32 _04;                             // _04
	int _08;                             // _08
	E3DAnimRes* _0C;                     // _0C
	E3DAnimFolderBase* pAnimFolder_0x10; // _10
};

} // namespace ebi

#endif
