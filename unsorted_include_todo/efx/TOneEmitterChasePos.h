#ifndef _EFX_TONEEMITTERCHASEPOS_H
#define _EFX_TONEEMITTERCHASEPOS_H

/*
        __vt__Q23efx19TOneEmitterChasePos:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx19TOneEmitterChasePosFPQ23efx3Arg
        .4byte forceKill__Q23efx19TOneEmitterChasePosFv
        .4byte fade__Q23efx19TOneEmitterChasePosFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q23efx19TOneEmitterChasePosFv"
        .4byte execute__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte "@4@executeAfter__Q23efx19TOneEmitterChasePosFP14JPABaseEmitter"
        .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte executeAfter__Q23efx19TOneEmitterChasePosFP14JPABaseEmitter
        .4byte startDemoDrawOff__Q23efx19TOneEmitterChasePosFv
        .4byte endDemoDrawOn__Q23efx19TOneEmitterChasePosFv
        .4byte __dt__Q23efx19TOneEmitterChasePosFv
*/

struct JPAEmitterCallBack {
    virtual void create(Arg*);                      // _08
    virtual void forceKill();                       // _0C
    virtual void fade();                            // _10
    virtual void _14() = 0;                         // _14
    virtual void _18() = 0;                         // _18
    virtual void @4 @__dt();                        // _1C (inline)
    virtual void execute(JPABaseEmitter*);          // _20 (inline)
    virtual void @4 @executeAfter(JPABaseEmitter*); // _24 (inline)
    virtual void draw(JPABaseEmitter*);             // _28 (inline)
    virtual void drawAfter(JPABaseEmitter*);        // _2C (inline)
};

namespace efx {
struct TOneEmitterChasePos : public JPAEmitterCallBack {
    virtual void create(Arg*);                      // _08
    virtual void forceKill();                       // _0C
    virtual void fade();                            // _10
    virtual void _14() = 0;                         // _14
    virtual void _18() = 0;                         // _18
    virtual void @4 @__dt();                        // _1C (inline)
    virtual void @4 @executeAfter(JPABaseEmitter*); // _24 (inline)
    virtual void executeAfter(JPABaseEmitter*);     // _30 (inline)
    virtual void startDemoDrawOff();                // _34 (inline)
    virtual void endDemoDrawOn();                   // _38 (inline)
    virtual ~TOneEmitterChasePos();                 // _3C (inline)

    void add(efx::ContextChasePos*);
    void del(efx::ContextChasePos*);
};
} // namespace efx

#endif
