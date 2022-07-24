#ifndef _EFX_TDENKIPOLE_H
#define _EFX_TDENKIPOLE_H

/*
    __vt__Q23efx10TDenkiPole:
    .4byte 0
    .4byte 0
    .4byte "create__Q23efx28TSyncGroup2<Q23efx8TForever>FPQ23efx3Arg"
    .4byte "forceKill__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
    .4byte "fade__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
    .4byte "startDemoDrawOff__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
    .4byte "endDemoDrawOn__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
*/

namespace efx {
namespace TSyncGroup2 < efx
{
	struct TForever >
	{
		virtual void TSyncGroup2 < create(Arg*);       // _08 (inline)
		virtual void TSyncGroup2 < forceKill();        // _0C (inline)
		virtual void TSyncGroup2 < fade();             // _10 (inline)
		virtual void TSyncGroup2 < startDemoDrawOff(); // _14 (inline)
		virtual void TSyncGroup2 < endDemoDrawOn();    // _18 (inline)
	};
} // namespace efx
} // namespace efx

namespace efx {
struct TDenkiPole : public TForever > {

	~TDenkiPole();
	TDenkiPole();
};
} // namespace efx

#endif
