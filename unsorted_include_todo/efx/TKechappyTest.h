#ifndef _EFX_TKECHAPPYTEST_H
#define _EFX_TKECHAPPYTEST_H

/*
    __vt__Q23efx13TKechappyTest:
    .4byte 0
    .4byte 0
    .4byte "create__Q23efx29TSyncGroup3<Q23efx9TChaseMtx>FPQ23efx3Arg"
    .4byte "forceKill__Q23efx29TSyncGroup3<Q23efx9TChaseMtx>Fv"
    .4byte "fade__Q23efx29TSyncGroup3<Q23efx9TChaseMtx>Fv"
    .4byte "startDemoDrawOff__Q23efx29TSyncGroup3<Q23efx9TChaseMtx>Fv"
    .4byte "endDemoDrawOn__Q23efx29TSyncGroup3<Q23efx9TChaseMtx>Fv"
*/

namespace efx {
namespace TSyncGroup3 < efx
{
	struct TChaseMtx >
	{
		virtual void TSyncGroup3 < create(Arg*);       // _08 (inline)
		virtual void TSyncGroup3 < forceKill();        // _0C (inline)
		virtual void TSyncGroup3 < fade();             // _10 (inline)
		virtual void TSyncGroup3 < startDemoDrawOff(); // _14 (inline)
		virtual void TSyncGroup3 < endDemoDrawOn();    // _18 (inline)
	};
} // namespace efx
} // namespace efx

namespace efx {
struct TKechappyTest : public TChaseMtx > {

	void setGlobalAlpha(unsigned char);
	void setGlobalParticleScale(float);
	void setAwayFromCenterSpeed(float);
	void setSpread(float);
	void setGlobalDynamicsScale(Vector3<float>&);
};
} // namespace efx

#endif
