#ifndef _EFX_TKCHATTACKYODARE_H
#define _EFX_TKCHATTACKYODARE_H

/*
        __vt__Q23efx16TKchAttackYodare:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx22TKchYodareBaseChaseMtxFPQ23efx3Arg
        .4byte forceKill__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte fade__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q23efx16TKchAttackYodareFv"
        .4byte "@4@execute__Q23efx5TSyncFP14JPABaseEmitter"
        .4byte "@4@executeAfter__Q23efx5TSyncFP14JPABaseEmitter"
        .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte execute__Q23efx5TSyncFP14JPABaseEmitter
        .4byte executeAfter__Q23efx5TSyncFP14JPABaseEmitter
        .4byte doExecuteEmitterOperation__Q23efx9TChaseMtxFP14JPABaseEmitter
        .4byte doExecuteAfter__Q23efx5TSyncFP14JPABaseEmitter
        .4byte startDemoDrawOff__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte endDemoDrawOn__Q23efx22TKchYodareBaseChaseMtxFv
        .4byte __dt__Q23efx16TKchAttackYodareFv
*/

namespace efx {
struct TKchYodareBaseChaseMtx {
    virtual void create(Arg*);       // _08
    virtual void forceKill();        // _0C (inline)
    virtual void fade();             // _10 (inline)
    virtual void _14() = 0;          // _14
    virtual void _18() = 0;          // _18
    virtual void @4 @__dt();         // _1C (inline)
    virtual void _20() = 0;          // _20
    virtual void _24() = 0;          // _24
    virtual void _28() = 0;          // _28
    virtual void _2C() = 0;          // _2C
    virtual void _30() = 0;          // _30
    virtual void _34() = 0;          // _34
    virtual void _38() = 0;          // _38
    virtual void _3C() = 0;          // _3C
    virtual void startDemoDrawOff(); // _40 (inline)
    virtual void endDemoDrawOn();    // _44 (inline)
};
} // namespace efx

struct JPAEmitterCallBack {
    virtual void _08() = 0;                  // _08
    virtual void _0C() = 0;                  // _0C
    virtual void _10() = 0;                  // _10
    virtual void _14() = 0;                  // _14
    virtual void _18() = 0;                  // _18
    virtual void @4 @__dt();                 // _1C (inline)
    virtual void _20() = 0;                  // _20
    virtual void _24() = 0;                  // _24
    virtual void draw(JPABaseEmitter*);      // _28 (inline)
    virtual void drawAfter(JPABaseEmitter*); // _2C (inline)
};

namespace efx {
struct TSync {
    virtual void _08() = 0;                       // _08
    virtual void _0C() = 0;                       // _0C
    virtual void _10() = 0;                       // _10
    virtual void _14() = 0;                       // _14
    virtual void _18() = 0;                       // _18
    virtual void @4 @__dt();                      // _1C (inline)
    virtual void _20() = 0;                       // _20
    virtual void _24() = 0;                       // _24
    virtual void _28() = 0;                       // _28
    virtual void _2C() = 0;                       // _2C
    virtual void execute(JPABaseEmitter*);        // _30 (inline)
    virtual void executeAfter(JPABaseEmitter*);   // _34 (inline)
    virtual void _38() = 0;                       // _38
    virtual void doExecuteAfter(JPABaseEmitter*); // _3C (inline)
};
} // namespace efx

namespace efx {
struct TChaseMtx {
    virtual void _08() = 0;                                  // _08
    virtual void _0C() = 0;                                  // _0C
    virtual void _10() = 0;                                  // _10
    virtual void _14() = 0;                                  // _14
    virtual void _18() = 0;                                  // _18
    virtual void @4 @__dt();                                 // _1C (inline)
    virtual void _20() = 0;                                  // _20
    virtual void _24() = 0;                                  // _24
    virtual void _28() = 0;                                  // _28
    virtual void _2C() = 0;                                  // _2C
    virtual void _30() = 0;                                  // _30
    virtual void _34() = 0;                                  // _34
    virtual void doExecuteEmitterOperation(JPABaseEmitter*); // _38
};
} // namespace efx

namespace efx {
struct TKchAttackYodare : public TKchYodareBaseChaseMtx,
                          public JPAEmitterCallBack,
                          public TSync,
                          public TChaseMtx {
    virtual void _14() = 0;      // _14
    virtual void _18() = 0;      // _18
    virtual void @4 @__dt();     // _1C (inline)
    virtual ~TKchAttackYodare(); // _48 (inline)

    TKchAttackYodare();
};
} // namespace efx

#endif
