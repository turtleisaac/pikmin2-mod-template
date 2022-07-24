#ifndef _EFX_TKCHDEADHANA_H
#define _EFX_TKCHDEADHANA_H

/*
    __vt__Q23efx12TKchDeadHana:
    .4byte 0
    .4byte 0
    .4byte "create__Q23efx29TSyncGroup2<Q23efx9TChaseMtx>FPQ23efx3Arg"
    .4byte "forceKill__Q23efx29TSyncGroup2<Q23efx9TChaseMtx>Fv"
    .4byte "fade__Q23efx29TSyncGroup2<Q23efx9TChaseMtx>Fv"
    .4byte "startDemoDrawOff__Q23efx29TSyncGroup2<Q23efx9TChaseMtx>Fv"
    .4byte "endDemoDrawOn__Q23efx29TSyncGroup2<Q23efx9TChaseMtx>Fv"
*/

namespace efx {
namespace TSyncGroup2 < efx
{
	struct TChaseMtx >
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
struct TKchDeadHana : public TChaseMtx > {

	void setGlobalScale(float);
};
} // namespace efx

#endif
