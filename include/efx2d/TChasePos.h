#ifndef _EFX2D_TCHASEPOS_H
#define _EFX2D_TCHASEPOS_H

#include "Vector2.h"
#include "efx2d/TForever.h"

namespace efx2d {
struct TChasePos : public TForever {
	TChasePos(u16 id)
	    : TForever(id)
	{
	}

	inline TChasePos(u16 id, Vector2f* pos)
	    : _14(pos)
	    , TForever(id)
	{
	}

	// vtable 1
	virtual bool create(Arg*); // _08
	// vtable 2
	virtual ~TChasePos() { }               // _34 (weak)
	virtual void execute(JPABaseEmitter*); // _38

	// _00		= VTBL
	// _00-_14	= TForever
	Vector2f* _14; // _14
};

struct TChasePosDir : public TForever {
	TChasePosDir(u16 id, Vector2f& pos, Vector2f& pos2)
	    : TForever(id)
	{
		_14 = &pos;
		_18 = &pos2;
	}
	// vtable 1
	virtual bool create(Arg*); // _08
	// vtable 2
	virtual ~TChasePosDir() { }            // _34 (weak)
	virtual void execute(JPABaseEmitter*); // _38

	// _00		= VTBL
	// _00-_14	= TForever
	Vector2f* _14; // _14
	Vector2f* _18; // _18
};
} // namespace efx2d

#endif
