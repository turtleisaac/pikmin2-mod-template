#ifndef _EFX_TKOUHAIFUKU_H
#define _EFX_TKOUHAIFUKU_H

/*
    __vt__Q23efx11TKouhaiFuku:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx8TSimple2FPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple2Fv
    .4byte fade__Q23efx8TSimple2Fv
*/

namespace efx {
struct TSimple2 {
	virtual void create(Arg*); // _08
	virtual void forceKill();  // _0C (inline)
	virtual void fade();       // _10 (inline)
};
} // namespace efx

namespace efx {
struct TKouhaiFuku : public TSimple2 {
};
} // namespace efx

#endif
