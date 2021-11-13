#ifndef _JSYSTEM_JAI_JAIBASIC_H
#define _JSYSTEM_JAI_JAIBASIC_H

#include "types.h"
#include "JSystem/JAI/JAInter.h"

struct JKRHeap;
struct JAISound;

struct JAIBasic {
	virtual void makeSequence();               // _00
	virtual void makeSe();                     // _04
	virtual void makeStream();                 // _08
	virtual void getMapInfoFxline(ulong);      // _0C
	virtual void getMapInfoGround(ulong);      // _10
	virtual void getMapInfoFxParameter(ulong); // _14
	virtual void setSeExtParameter(JAISound*); // _18
	virtual void setRegisterTrackCallback();   // _1C

	// VT _00
	JAInter::Camera* m_cameras; // _04
	JKRHeap*  m_heap;           // _08
	uchar _0C;                  // _0C
	u8 m_paramSoundOutputMode;  // _0D
	u8 _0E;                     // _0E
	u32 _10;                    // _10
	u32 _14;                    // _14
	u32 _18;                    // _18
	u32 _1C;                    // _1C
};

#endif