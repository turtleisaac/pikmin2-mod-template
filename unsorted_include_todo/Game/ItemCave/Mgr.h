#ifndef _GAME_ITEMCAVE_MGR_H
#define _GAME_ITEMCAVE_MGR_H

/*
        __vt__Q34Game8ItemCave3Mgr:
        .4byte 0
        .4byte 0
        .4byte doAnimation__Q24Game12TNodeItemMgrFv
        .4byte doEntry__Q24Game12TNodeItemMgrFv
        .4byte doSetView__Q24Game12TNodeItemMgrFi
        .4byte doViewCalc__Q24Game12TNodeItemMgrFv
        .4byte doSimulation__Q24Game12TNodeItemMgrFf
        .4byte doDirectDraw__Q24Game12TNodeItemMgrFR8Graphics
        .4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
        .4byte loadResources__Q24Game11BaseItemMgrFv
        .4byte resetMgr__16GenericObjectMgrFv
        .4byte pausable__16GenericObjectMgrFv
        .4byte frozenable__16GenericObjectMgrFv
        .4byte getMatrixLoadType__16GenericObjectMgrFv
        .4byte initDependency__Q24Game12TNodeItemMgrFv
        .4byte killAll__Q24Game12TNodeItemMgrFv
        .4byte setup__Q34Game8ItemCave3MgrFPQ24Game8BaseItem
        .4byte setupSoundViewerAndBas__Q24Game11BaseItemMgrFv
        .4byte onLoadResources__Q34Game8ItemCave3MgrFv
        .4byte loadEverytime__Q24Game11BaseItemMgrFv
        .4byte updateUseList__Q24Game11BaseItemMgrFPQ24Game11GenItemParmi
        .4byte onUpdateUseList__Q24Game11BaseItemMgrFPQ24Game11GenItemParmi
        .4byte generatorGetID__Q34Game8ItemCave3MgrFv
        .4byte
   "generatorBirth__Q34Game8ItemCave3MgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm"
        .4byte
   generatorWrite__Q34Game8ItemCave3MgrFR6StreamPQ24Game11GenItemParm .4byte
   generatorRead__Q34Game8ItemCave3MgrFR6StreamPQ24Game11GenItemParmUl .4byte
   generatorLocalVersion__Q34Game8ItemCave3MgrFv .4byte
   generatorGetShape__Q24Game11BaseItemMgrFPQ24Game11GenItemParm .4byte
   generatorNewItemParm__Q34Game8ItemCave3MgrFv .4byte 0 .4byte 0 .4byte
   "@48@__dt__Q34Game8ItemCave3MgrFv" .4byte getChildCount__5CNodeFv .4byte
   "getObject__27Container<Q24Game8BaseItem>FPv" .4byte
   "@48@getNext__Q24Game12TNodeItemMgrFPv" .4byte
   "@48@getStart__Q24Game12TNodeItemMgrFv" .4byte
   "@48@getEnd__Q24Game12TNodeItemMgrFv" .4byte
   "@48@get__Q24Game12TNodeItemMgrFPv" .4byte
   "getAt__27Container<Q24Game8BaseItem>Fi" .4byte
   "getTo__27Container<Q24Game8BaseItem>Fv" .4byte doNew__Q34Game8ItemCave3MgrFv
        .4byte kill__Q24Game12TNodeItemMgrFPQ24Game8BaseItem
        .4byte get__Q24Game12TNodeItemMgrFPv
        .4byte getNext__Q24Game12TNodeItemMgrFPv
        .4byte getStart__Q24Game12TNodeItemMgrFv
        .4byte getEnd__Q24Game12TNodeItemMgrFv
        .4byte __dt__Q34Game8ItemCave3MgrFv
*/

namespace Game {
struct TNodeItemMgr {
    virtual void doAnimation();           // _08 (inline)
    virtual void doEntry();               // _0C (inline)
    virtual void doSetView(int);          // _10 (inline)
    virtual void doViewCalc();            // _14 (inline)
    virtual void doSimulation(float);     // _18 (inline)
    virtual void doDirectDraw(Graphics&); // _1C (inline)
    virtual void _20() = 0;               // _20
    virtual void _24() = 0;               // _24
    virtual void _28() = 0;               // _28
    virtual void _2C() = 0;               // _2C
    virtual void _30() = 0;               // _30
    virtual void _34() = 0;               // _34
    virtual void initDependency();        // _38
    virtual void killAll();               // _3C
    virtual void setup(BaseItem*);        // _40
    virtual void _44() = 0;               // _44
    virtual void onLoadResources();       // _48
    virtual void _4C() = 0;               // _4C
    virtual void _50() = 0;               // _50
    virtual void _54() = 0;               // _54
    virtual void generatorGetID();        // _58 (inline)
    virtual void generatorBirth(Vector3<float>&, Vector3<float>&,
                                GenItemParm*);                        // _5C
    virtual void generatorWrite(Stream&, GenItemParm*);               // _60
    virtual void generatorRead(Stream&, GenItemParm*, unsigned long); // _64
    virtual void generatorLocalVersion(); // _68 (inline)
    virtual void _6C() = 0;               // _6C
    virtual void generatorNewItemParm();  // _70
    virtual void _74() = 0;               // _74
    virtual void _78() = 0;               // _78
    virtual void @48 @__dt();             // _7C (inline)
    virtual void _80() = 0;               // _80
    virtual void _84() = 0;               // _84
    virtual void _88() = 0;               // _88
    virtual void _8C() = 0;               // _8C
    virtual void _90() = 0;               // _90
    virtual void _94() = 0;               // _94
    virtual void _98() = 0;               // _98
    virtual void _9C() = 0;               // _9C
    virtual void doNew();                 // _A0 (inline)
    virtual void kill(BaseItem*);         // _A4 (inline)
    virtual void get(void*);              // _A8 (inline)
    virtual void getNext(void*);          // _AC (inline)
    virtual void getStart();              // _B0 (inline)
    virtual void getEnd();                // _B4 (inline)
};
} // namespace Game

struct GenericObjectMgr {
    virtual void _08() = 0;               // _08
    virtual void _0C() = 0;               // _0C
    virtual void _10() = 0;               // _10
    virtual void _14() = 0;               // _14
    virtual void _18() = 0;               // _18
    virtual void _1C() = 0;               // _1C
    virtual void doSimpleDraw(Viewport*); // _20 (inline)
    virtual void _24() = 0;               // _24
    virtual void resetMgr();              // _28 (inline)
    virtual void pausable();              // _2C (inline)
    virtual void frozenable();            // _30 (inline)
    virtual void getMatrixLoadType();     // _34 (inline)
};

namespace Game {
struct BaseItemMgr {
    virtual void _08() = 0;                          // _08
    virtual void _0C() = 0;                          // _0C
    virtual void _10() = 0;                          // _10
    virtual void _14() = 0;                          // _14
    virtual void _18() = 0;                          // _18
    virtual void _1C() = 0;                          // _1C
    virtual void _20() = 0;                          // _20
    virtual void loadResources();                    // _24
    virtual void _28() = 0;                          // _28
    virtual void _2C() = 0;                          // _2C
    virtual void _30() = 0;                          // _30
    virtual void _34() = 0;                          // _34
    virtual void _38() = 0;                          // _38
    virtual void _3C() = 0;                          // _3C
    virtual void setup(BaseItem*);                   // _40
    virtual void setupSoundViewerAndBas();           // _44
    virtual void onLoadResources();                  // _48
    virtual void loadEverytime();                    // _4C (inline)
    virtual void updateUseList(GenItemParm*, int);   // _50
    virtual void onUpdateUseList(GenItemParm*, int); // _54 (inline)
    virtual void generatorGetID();                   // _58 (inline)
    virtual void generatorBirth(Vector3<float>&, Vector3<float>&,
                                GenItemParm*);                        // _5C
    virtual void generatorWrite(Stream&, GenItemParm*);               // _60
    virtual void generatorRead(Stream&, GenItemParm*, unsigned long); // _64
    virtual void generatorLocalVersion();         // _68 (inline)
    virtual void generatorGetShape(GenItemParm*); // _6C
};
} // namespace Game

struct CNode {
    virtual void _08() = 0;         // _08
    virtual void _0C() = 0;         // _0C
    virtual void _10() = 0;         // _10
    virtual void _14() = 0;         // _14
    virtual void _18() = 0;         // _18
    virtual void _1C() = 0;         // _1C
    virtual void _20() = 0;         // _20
    virtual void _24() = 0;         // _24
    virtual void _28() = 0;         // _28
    virtual void _2C() = 0;         // _2C
    virtual void _30() = 0;         // _30
    virtual void _34() = 0;         // _34
    virtual void _38() = 0;         // _38
    virtual void _3C() = 0;         // _3C
    virtual void setup(BaseItem*);  // _40
    virtual void _44() = 0;         // _44
    virtual void onLoadResources(); // _48
    virtual void _4C() = 0;         // _4C
    virtual void _50() = 0;         // _50
    virtual void _54() = 0;         // _54
    virtual void generatorGetID();  // _58 (inline)
    virtual void generatorBirth(Vector3<float>&, Vector3<float>&,
                                GenItemParm*);                        // _5C
    virtual void generatorWrite(Stream&, GenItemParm*);               // _60
    virtual void generatorRead(Stream&, GenItemParm*, unsigned long); // _64
    virtual void generatorLocalVersion(); // _68 (inline)
    virtual void _6C() = 0;               // _6C
    virtual void generatorNewItemParm();  // _70
    virtual void _74() = 0;               // _74
    virtual void _78() = 0;               // _78
    virtual void @48 @__dt();             // _7C (inline)
    virtual void getChildCount();         // _80
};

namespace Container < Game
{
    struct BaseItem >
    {
        virtual void _08() = 0;         // _08
        virtual void _0C() = 0;         // _0C
        virtual void _10() = 0;         // _10
        virtual void _14() = 0;         // _14
        virtual void _18() = 0;         // _18
        virtual void _1C() = 0;         // _1C
        virtual void _20() = 0;         // _20
        virtual void _24() = 0;         // _24
        virtual void _28() = 0;         // _28
        virtual void _2C() = 0;         // _2C
        virtual void _30() = 0;         // _30
        virtual void _34() = 0;         // _34
        virtual void _38() = 0;         // _38
        virtual void _3C() = 0;         // _3C
        virtual void setup(BaseItem*);  // _40
        virtual void _44() = 0;         // _44
        virtual void onLoadResources(); // _48
        virtual void _4C() = 0;         // _4C
        virtual void _50() = 0;         // _50
        virtual void _54() = 0;         // _54
        virtual void generatorGetID();  // _58 (inline)
        virtual void generatorBirth(Vector3<float>&, Vector3<float>&,
                                    GenItemParm*);                        // _5C
        virtual void generatorWrite(Stream&, GenItemParm*);               // _60
        virtual void generatorRead(Stream&, GenItemParm*, unsigned long); // _64
        virtual void generatorLocalVersion(); // _68 (inline)
        virtual void _6C() = 0;               // _6C
        virtual void generatorNewItemParm();  // _70
        virtual void _74() = 0;               // _74
        virtual void _78() = 0;               // _78
        virtual void @48 @__dt();             // _7C (inline)
        virtual void _80() = 0;               // _80
        virtual void getObject(void*);        // _84 (inline)
        virtual void _88() = 0;               // _88
        virtual void _8C() = 0;               // _8C
        virtual void _90() = 0;               // _90
        virtual void _94() = 0;               // _94
        virtual void getAt(int);              // _98 (inline)
        virtual void getTo();                 // _9C (inline)
    };
} // namespace Container<Game

namespace Game {
namespace ItemCave {
    struct Mgr : public TNodeItemMgr,
                 public GenericObjectMgr,
                 public BaseItemMgr,
                 public CNode,
                 public BaseItem > {
        virtual void setup(BaseItem*);  // _40
        virtual void onLoadResources(); // _48
        virtual void generatorGetID();  // _58 (inline)
        virtual void generatorBirth(Vector3<float>&, Vector3<float>&,
                                    GenItemParm*);                        // _5C
        virtual void generatorWrite(Stream&, GenItemParm*);               // _60
        virtual void generatorRead(Stream&, GenItemParm*, unsigned long); // _64
        virtual void generatorLocalVersion(); // _68 (inline)
        virtual void generatorNewItemParm();  // _70
        virtual void _74() = 0;               // _74
        virtual void _78() = 0;               // _78
        virtual void @48 @__dt();             // _7C (inline)
        virtual void doNew();                 // _A0 (inline)
        virtual ~Mgr();                       // _B8 (inline)

        Mgr();
    };
} // namespace ItemCave
} // namespace Game

#endif
