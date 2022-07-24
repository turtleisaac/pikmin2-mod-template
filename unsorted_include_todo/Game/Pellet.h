#ifndef _GAME_PELLET_H
#define _GAME_PELLET_H

/*
        __vt__Q24Game6Pellet:
        .4byte 0
        .4byte 0
        .4byte getPosition__Q24Game6PelletFv
        .4byte checkCollision__Q24Game8CreatureFPQ24Game10CellObject
        .4byte getBoundingSphere__Q24Game6PelletFRQ23Sys6Sphere
        .4byte collisionUpdatable__Q24Game8CreatureFv
        .4byte isPiki__Q24Game8CreatureFv
        .4byte isNavi__Q24Game8CreatureFv
        .4byte deferPikiCollision__Q24Game6PelletFv
        .4byte getTypeName__Q24Game8CreatureFv
        .4byte getObjType__Q24Game8CreatureFv
        .4byte constructor__Q24Game6PelletFv
        .4byte onInit__Q24Game6PelletFPQ24Game15CreatureInitArg
        .4byte onKill__Q24Game6PelletFPQ24Game15CreatureKillArg
        .4byte onInitPost__Q24Game8CreatureFPQ24Game15CreatureInitArg
        .4byte doAnimation__Q24Game6PelletFv
        .4byte doEntry__Q24Game6PelletFv
        .4byte doSetView__Q24Game6PelletFi
        .4byte doViewCalc__Q24Game6PelletFv
        .4byte doSimulation__Q24Game6PelletFf
        .4byte doDirectDraw__Q24Game6PelletFR8Graphics
        .4byte getBodyRadius__Q24Game8CreatureFv
        .4byte getCellRadius__Q24Game8CreatureFv
        .4byte "initPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte "onInitPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte getFaceDir__Q24Game6PelletFv
        .4byte "setVelocity__Q24Game6PelletFR10Vector3<f>"
        .4byte getVelocity__Q24Game6PelletFv
        .4byte "onSetPosition__Q24Game6PelletFR10Vector3<f>"
        .4byte "onSetPositionPost__Q24Game8CreatureFR10Vector3<f>"
        .4byte updateTrMatrix__Q24Game6PelletFv
        .4byte isTeki__Q24Game8CreatureFv
        .4byte isPellet__Q24Game8CreatureFv
        .4byte inWaterCallback__Q24Game8CreatureFPQ24Game8WaterBox
        .4byte outWaterCallback__Q24Game8CreatureFv
        .4byte inWater__Q24Game6PelletFv
        .4byte getFlockMgr__Q24Game8CreatureFv
        .4byte onStartCapture__Q24Game6PelletFv
        .4byte onUpdateCapture__Q24Game6PelletFR7Matrixf
        .4byte onEndCapture__Q24Game6PelletFv
        .4byte isAtari__Q24Game8CreatureFv
        .4byte setAtari__Q24Game8CreatureFb
        .4byte isAlive__Q24Game8CreatureFv
        .4byte setAlive__Q24Game8CreatureFb
        .4byte isCollisionFlick__Q24Game8CreatureFv
        .4byte setCollisionFlick__Q24Game8CreatureFb
        .4byte isMovieActor__Q24Game8CreatureFv
        .4byte isMovieExtra__Q24Game8CreatureFv
        .4byte isMovieMotion__Q24Game8CreatureFv
        .4byte setMovieMotion__Q24Game8CreatureFb
        .4byte isBuried__Q24Game8CreatureFv
        .4byte isFlying__Q24Game8CreatureFv
        .4byte isUnderground__Q24Game8CreatureFv
        .4byte isLivingThing__Q24Game8CreatureFv
        .4byte isDebugCollision__Q24Game8CreatureFv
        .4byte setDebugCollision__Q24Game8CreatureFb
        .4byte doSave__Q24Game6PelletFR6Stream
        .4byte doLoad__Q24Game6PelletFR6Stream
        .4byte bounceCallback__Q24Game6PelletFPQ23Sys8Triangle
        .4byte collisionCallback__Q24Game8CreatureFRQ24Game9CollEvent
        .4byte platCallback__Q24Game8CreatureFRQ24Game9PlatEvent
        .4byte getJAIObject__Q24Game6PelletFv
        .4byte getPSCreature__Q24Game6PelletFv
        .4byte getSound_AILOD__Q24Game8CreatureFv
        .4byte getSound_PosPtr__Q24Game6PelletFv
        .4byte sound_culling__Q24Game8CreatureFv
        .4byte getSound_CurrAnimFrame__Q24Game8CreatureFv
        .4byte getSound_CurrAnimSpeed__Q24Game8CreatureFv
        .4byte on_movie_begin__Q24Game8CreatureFb
        .4byte on_movie_end__Q24Game8CreatureFb
        .4byte movieStartAnimation__Q24Game8CreatureFUl
        .4byte movieStartDemoAnimation__Q24Game8CreatureFPQ28SysShape8AnimInfo
        .4byte movieSetAnimationLastFrame__Q24Game8CreatureFv
        .4byte "movieSetTranslation__Q24Game8CreatureFR10Vector3<f>f"
        .4byte movieSetFaceDir__Q24Game8CreatureFf
        .4byte "movieGotoPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte movieUserCommand__Q24Game8CreatureFUlPQ24Game11MoviePlayer
        .4byte getShadowParam__Q24Game6PelletFRQ24Game11ShadowParam
        .4byte needShadow__Q24Game6PelletFv
        .4byte getLifeGaugeParam__Q24Game8CreatureFRQ24Game14LifeGaugeParam
        .4byte getLODSphere__Q24Game6PelletFRQ23Sys6Sphere
        .4byte getLODCylinder__Q24Game8CreatureFRQ23Sys8Cylinder
        .4byte startPick__Q24Game6PelletFv
        .4byte endPick__Q24Game6PelletFb
        .4byte getMabiki__Q24Game8CreatureFv
        .4byte getFootmarks__Q24Game8CreatureFv
        .4byte onStickStart__Q24Game8CreatureFPQ24Game8Creature
        .4byte onStickEnd__Q24Game8CreatureFPQ24Game8Creature
        .4byte onStickStartSelf__Q24Game8CreatureFPQ24Game8Creature
        .4byte onStickEndSelf__Q24Game8CreatureFPQ24Game8Creature
        .4byte isSlotFree__Q24Game6PelletFs
        .4byte getFreeStickSlot__Q24Game6PelletFv
        .4byte "getNearFreeStickSlot__Q24Game6PelletFR10Vector3<f>"
        .4byte getRandomFreeStickSlot__Q24Game6PelletFv
        .4byte onSlotStickStart__Q24Game6PelletFPQ24Game8Creatures
        .4byte onSlotStickEnd__Q24Game6PelletFPQ24Game8Creatures
        .4byte "calcStickSlotGlobal__Q24Game6PelletFsR10Vector3<f>"
        .4byte "getVelocityAt__Q24Game11DynCreatureFR10Vector3<f>R10Vector3<f>"
        .4byte
   "getAngularEffect__Q24Game11DynCreatureFR10Vector3<f>R10Vector3<f>" .4byte
   "applyImpulse__Q24Game11DynCreatureFR10Vector3<f>R10Vector3<f>" .4byte
   ignoreAtari__Q24Game8CreatureFPQ24Game8Creature .4byte
   getSuckPos__Q24Game8CreatureFv .4byte getGoalPos__Q24Game8CreatureFv .4byte
   isSuckReady__Q24Game8CreatureFv .4byte isSuckArriveWait__Q24Game8CreatureFv
        .4byte stimulate__Q24Game6PelletFRQ24Game11Interaction
        .4byte getCreatureName__Q24Game6PelletFv
        .4byte getCreatureID__Q24Game6PelletFv
        .4byte onSetPosition__Q24Game6PelletFv
        .4byte 0
        .4byte 0
        .4byte "@788@onKeyEvent__Q24Game6PelletFRCQ28SysShape8KeyEvent"
        .4byte 0
        .4byte 0
        .4byte "@792@getCarryInfoParam__Q24Game6PelletFR14CarryInfoParam"
        .4byte do_onInit__Q24Game6PelletFPQ24Game15CreatureInitArg
        .4byte onCreateShape__Q24Game6PelletFv
        .4byte theEntry__Q24Game6PelletFv
        .4byte onBounce__Q24Game6PelletFv
        .4byte shadowOn__Q24Game6PelletFv
        .4byte shadowOff__Q24Game6PelletFv
        .4byte isPickable__Q24Game6PelletFv
        .4byte getBedamaColor__Q24Game6PelletFv
        .4byte do_update__Q24Game6PelletFv
        .4byte onKeyEvent__Q24Game6PelletFRCQ28SysShape8KeyEvent
        .4byte 0
        .4byte changeMaterial__Q24Game6PelletFv
        .4byte "createKiraEffect__Q24Game6PelletFR10Vector3<f>"
        .4byte getCarryInfoParam__Q24Game6PelletFR14CarryInfoParam
        .4byte isCarried__Q24Game6PelletFv
        .4byte isPicked__Q24Game6PelletFv
        .4byte sound_otakaraEventStart__Q24Game6PelletFv
        .4byte sound_otakaraEventRestart__Q24Game6PelletFv
        .4byte sound_otakaraEventStop__Q24Game6PelletFv
        .4byte sound_otakaraEventFinish__Q24Game6PelletFv
*/

namespace Game {
struct Creature {
    virtual void getPosition();                                 // _08 (inline)
    virtual void checkCollision(CellObject*);                   // _0C
    virtual void getBoundingSphere(Sys::Sphere&);               // _10
    virtual void collisionUpdatable();                          // _14 (inline)
    virtual void isPiki();                                      // _18
    virtual void isNavi();                                      // _1C
    virtual void deferPikiCollision();                          // _20 (inline)
    virtual void getTypeName();                                 // _24
    virtual void getObjType();                                  // _28 (inline)
    virtual void constructor();                                 // _2C
    virtual void onInit(CreatureInitArg*);                      // _30 (inline)
    virtual void onKill(CreatureKillArg*);                      // _34
    virtual void onInitPost(CreatureInitArg*);                  // _38 (inline)
    virtual void doAnimation();                                 // _3C
    virtual void doEntry();                                     // _40
    virtual void doSetView(int);                                // _44
    virtual void doViewCalc();                                  // _48
    virtual void doSimulation(float);                           // _4C
    virtual void doDirectDraw(Graphics&);                       // _50
    virtual void getBodyRadius();                               // _54
    virtual void getCellRadius();                               // _58
    virtual void initPosition(Vector3<float>&);                 // _5C
    virtual void onInitPosition(Vector3<float>&);               // _60 (inline)
    virtual void getFaceDir();                                  // _64 (inline)
    virtual void setVelocity(Vector3<float>&);                  // _68
    virtual void getVelocity();                                 // _6C
    virtual void onSetPosition(Vector3<float>&);                // _70 (inline)
    virtual void onSetPositionPost(Vector3<float>&);            // _74 (inline)
    virtual void updateTrMatrix();                              // _78
    virtual void isTeki();                                      // _7C
    virtual void isPellet();                                    // _80
    virtual void inWaterCallback(WaterBox*);                    // _84 (inline)
    virtual void outWaterCallback();                            // _88 (inline)
    virtual void inWater();                                     // _8C (inline)
    virtual void getFlockMgr();                                 // _90 (inline)
    virtual void onStartCapture();                              // _94
    virtual void onUpdateCapture(Matrixf&);                     // _98
    virtual void onEndCapture();                                // _9C
    virtual void isAtari();                                     // _A0 (inline)
    virtual void setAtari(bool);                                // _A4 (inline)
    virtual void isAlive();                                     // _A8 (inline)
    virtual void setAlive(bool);                                // _AC (inline)
    virtual void isCollisionFlick();                            // _B0 (inline)
    virtual void setCollisionFlick(bool);                       // _B4 (inline)
    virtual void isMovieActor();                                // _B8 (inline)
    virtual void isMovieExtra();                                // _BC (inline)
    virtual void isMovieMotion();                               // _C0 (inline)
    virtual void setMovieMotion(bool);                          // _C4 (inline)
    virtual void isBuried();                                    // _C8 (inline)
    virtual void isFlying();                                    // _CC (inline)
    virtual void isUnderground();                               // _D0 (inline)
    virtual void isLivingThing();                               // _D4 (inline)
    virtual void isDebugCollision();                            // _D8 (inline)
    virtual void setDebugCollision(bool);                       // _DC (inline)
    virtual void doSave(Stream&);                               // _E0
    virtual void doLoad(Stream&);                               // _E4
    virtual void bounceCallback(Sys::Triangle*);                // _E8
    virtual void collisionCallback(CollEvent&);                 // _EC (inline)
    virtual void platCallback(PlatEvent&);                      // _F0 (inline)
    virtual void getJAIObject();                                // _F4
    virtual void getPSCreature();                               // _F8
    virtual void getSound_AILOD();                              // _FC (inline)
    virtual void getSound_PosPtr();                             // _100 (inline)
    virtual void sound_culling();                               // _104
    virtual void getSound_CurrAnimFrame();                      // _108 (inline)
    virtual void getSound_CurrAnimSpeed();                      // _10C (inline)
    virtual void on_movie_begin(bool);                          // _110 (inline)
    virtual void on_movie_end(bool);                            // _114 (inline)
    virtual void movieStartAnimation(unsigned long);            // _118 (inline)
    virtual void movieStartDemoAnimation(SysShape::AnimInfo*);  // _11C (inline)
    virtual void movieSetAnimationLastFrame();                  // _120 (inline)
    virtual void movieSetTranslation(Vector3<float>&, float);   // _124 (inline)
    virtual void movieSetFaceDir(float);                        // _128 (inline)
    virtual void movieGotoPosition(Vector3<float>&);            // _12C (inline)
    virtual void movieUserCommand(unsigned long, MoviePlayer*); // _130 (inline)
    virtual void getShadowParam(ShadowParam&);                  // _134
    virtual void needShadow();                                  // _138
    virtual void getLifeGaugeParam(LifeGaugeParam&);            // _13C
    virtual void getLODSphere(Sys::Sphere&);                    // _140
    virtual void getLODCylinder(Sys::Cylinder&);                // _144 (inline)
    virtual void startPick();                                   // _148
    virtual void endPick(bool);                                 // _14C
    virtual void getMabiki();                                   // _150 (inline)
    virtual void getFootmarks();                                // _154 (inline)
    virtual void onStickStart(Creature*);                       // _158 (inline)
    virtual void onStickEnd(Creature*);                         // _15C (inline)
    virtual void onStickStartSelf(Creature*);                   // _160 (inline)
    virtual void onStickEndSelf(Creature*);                     // _164 (inline)
    virtual void isSlotFree(short);                             // _168
    virtual void getFreeStickSlot();                            // _16C
    virtual void getNearFreeStickSlot(Vector3<float>&);         // _170
    virtual void getRandomFreeStickSlot();                      // _174
    virtual void onSlotStickStart(Creature*, short);            // _178
    virtual void onSlotStickEnd(Creature*, short);              // _17C
    virtual void calcStickSlotGlobal(short, Vector3<float>&);   // _180
    virtual void _184() = 0;                                    // _184
    virtual void _188() = 0;                                    // _188
    virtual void _18C() = 0;                                    // _18C
    virtual void ignoreAtari(Creature*);                        // _190 (inline)
    virtual void getSuckPos();                                  // _194 (inline)
    virtual void getGoalPos();                                  // _198 (inline)
    virtual void isSuckReady();                                 // _19C (inline)
    virtual void isSuckArriveWait();                            // _1A0 (inline)
};
} // namespace Game

namespace Game {
struct DynCreature {
    virtual void getPosition();                               // _08 (inline)
    virtual void _0C() = 0;                                   // _0C
    virtual void getBoundingSphere(Sys::Sphere&);             // _10
    virtual void _14() = 0;                                   // _14
    virtual void _18() = 0;                                   // _18
    virtual void _1C() = 0;                                   // _1C
    virtual void deferPikiCollision();                        // _20 (inline)
    virtual void _24() = 0;                                   // _24
    virtual void _28() = 0;                                   // _28
    virtual void constructor();                               // _2C
    virtual void onInit(CreatureInitArg*);                    // _30 (inline)
    virtual void onKill(CreatureKillArg*);                    // _34
    virtual void _38() = 0;                                   // _38
    virtual void doAnimation();                               // _3C
    virtual void doEntry();                                   // _40
    virtual void doSetView(int);                              // _44
    virtual void doViewCalc();                                // _48
    virtual void doSimulation(float);                         // _4C
    virtual void doDirectDraw(Graphics&);                     // _50
    virtual void _54() = 0;                                   // _54
    virtual void _58() = 0;                                   // _58
    virtual void _5C() = 0;                                   // _5C
    virtual void _60() = 0;                                   // _60
    virtual void getFaceDir();                                // _64 (inline)
    virtual void setVelocity(Vector3<float>&);                // _68
    virtual void getVelocity();                               // _6C
    virtual void onSetPosition(Vector3<float>&);              // _70 (inline)
    virtual void _74() = 0;                                   // _74
    virtual void updateTrMatrix();                            // _78
    virtual void _7C() = 0;                                   // _7C
    virtual void _80() = 0;                                   // _80
    virtual void _84() = 0;                                   // _84
    virtual void _88() = 0;                                   // _88
    virtual void inWater();                                   // _8C (inline)
    virtual void _90() = 0;                                   // _90
    virtual void onStartCapture();                            // _94
    virtual void onUpdateCapture(Matrixf&);                   // _98
    virtual void onEndCapture();                              // _9C
    virtual void _A0() = 0;                                   // _A0
    virtual void _A4() = 0;                                   // _A4
    virtual void _A8() = 0;                                   // _A8
    virtual void _AC() = 0;                                   // _AC
    virtual void _B0() = 0;                                   // _B0
    virtual void _B4() = 0;                                   // _B4
    virtual void _B8() = 0;                                   // _B8
    virtual void _BC() = 0;                                   // _BC
    virtual void _C0() = 0;                                   // _C0
    virtual void _C4() = 0;                                   // _C4
    virtual void _C8() = 0;                                   // _C8
    virtual void _CC() = 0;                                   // _CC
    virtual void _D0() = 0;                                   // _D0
    virtual void _D4() = 0;                                   // _D4
    virtual void _D8() = 0;                                   // _D8
    virtual void _DC() = 0;                                   // _DC
    virtual void doSave(Stream&);                             // _E0
    virtual void doLoad(Stream&);                             // _E4
    virtual void bounceCallback(Sys::Triangle*);              // _E8
    virtual void _EC() = 0;                                   // _EC
    virtual void _F0() = 0;                                   // _F0
    virtual void getJAIObject();                              // _F4
    virtual void getPSCreature();                             // _F8
    virtual void _FC() = 0;                                   // _FC
    virtual void getSound_PosPtr();                           // _100 (inline)
    virtual void _104() = 0;                                  // _104
    virtual void _108() = 0;                                  // _108
    virtual void _10C() = 0;                                  // _10C
    virtual void _110() = 0;                                  // _110
    virtual void _114() = 0;                                  // _114
    virtual void _118() = 0;                                  // _118
    virtual void _11C() = 0;                                  // _11C
    virtual void _120() = 0;                                  // _120
    virtual void _124() = 0;                                  // _124
    virtual void _128() = 0;                                  // _128
    virtual void _12C() = 0;                                  // _12C
    virtual void _130() = 0;                                  // _130
    virtual void getShadowParam(ShadowParam&);                // _134
    virtual void needShadow();                                // _138
    virtual void _13C() = 0;                                  // _13C
    virtual void getLODSphere(Sys::Sphere&);                  // _140
    virtual void _144() = 0;                                  // _144
    virtual void startPick();                                 // _148
    virtual void endPick(bool);                               // _14C
    virtual void _150() = 0;                                  // _150
    virtual void _154() = 0;                                  // _154
    virtual void _158() = 0;                                  // _158
    virtual void _15C() = 0;                                  // _15C
    virtual void _160() = 0;                                  // _160
    virtual void _164() = 0;                                  // _164
    virtual void isSlotFree(short);                           // _168
    virtual void getFreeStickSlot();                          // _16C
    virtual void getNearFreeStickSlot(Vector3<float>&);       // _170
    virtual void getRandomFreeStickSlot();                    // _174
    virtual void onSlotStickStart(Creature*, short);          // _178
    virtual void onSlotStickEnd(Creature*, short);            // _17C
    virtual void calcStickSlotGlobal(short, Vector3<float>&); // _180
    virtual void getVelocityAt(Vector3<float>&, Vector3<float>&);    // _184
    virtual void getAngularEffect(Vector3<float>&, Vector3<float>&); // _188
    virtual void applyImpulse(Vector3<float>&, Vector3<float>&);     // _18C
};
} // namespace Game

namespace Game {
struct Pellet : public Creature, public DynCreature {
    virtual void getPosition();                               // _08 (inline)
    virtual void getBoundingSphere(Sys::Sphere&);             // _10
    virtual void deferPikiCollision();                        // _20 (inline)
    virtual void constructor();                               // _2C
    virtual void onInit(CreatureInitArg*);                    // _30 (inline)
    virtual void onKill(CreatureKillArg*);                    // _34
    virtual void doAnimation();                               // _3C
    virtual void doEntry();                                   // _40
    virtual void doSetView(int);                              // _44
    virtual void doViewCalc();                                // _48
    virtual void doSimulation(float);                         // _4C
    virtual void doDirectDraw(Graphics&);                     // _50
    virtual void getFaceDir();                                // _64 (inline)
    virtual void setVelocity(Vector3<float>&);                // _68
    virtual void getVelocity();                               // _6C
    virtual void onSetPosition(Vector3<float>&);              // _70 (inline)
    virtual void updateTrMatrix();                            // _78
    virtual void inWater();                                   // _8C (inline)
    virtual void onStartCapture();                            // _94
    virtual void onUpdateCapture(Matrixf&);                   // _98
    virtual void onEndCapture();                              // _9C
    virtual void doSave(Stream&);                             // _E0
    virtual void doLoad(Stream&);                             // _E4
    virtual void bounceCallback(Sys::Triangle*);              // _E8
    virtual void getJAIObject();                              // _F4
    virtual void getPSCreature();                             // _F8
    virtual void getSound_PosPtr();                           // _100 (inline)
    virtual void getShadowParam(ShadowParam&);                // _134
    virtual void needShadow();                                // _138
    virtual void getLODSphere(Sys::Sphere&);                  // _140
    virtual void startPick();                                 // _148
    virtual void endPick(bool);                               // _14C
    virtual void isSlotFree(short);                           // _168
    virtual void getFreeStickSlot();                          // _16C
    virtual void getNearFreeStickSlot(Vector3<float>&);       // _170
    virtual void getRandomFreeStickSlot();                    // _174
    virtual void onSlotStickStart(Creature*, short);          // _178
    virtual void onSlotStickEnd(Creature*, short);            // _17C
    virtual void calcStickSlotGlobal(short, Vector3<float>&); // _180
    virtual void stimulate(Interaction&);                     // _1A4
    virtual void getCreatureName();                           // _1A8
    virtual void getCreatureID();                             // _1AC
    virtual void onSetPosition();                             // _1B0
    virtual void _1B4() = 0;                                  // _1B4
    virtual void _1B8() = 0;                                  // _1B8
    virtual void @788 @onKeyEvent(const SysShape::KeyEvent&); // _1BC (inline)
    virtual void _1C0() = 0;                                  // _1C0
    virtual void _1C4() = 0;                                  // _1C4
    virtual void @792 @getCarryInfoParam(CarryInfoParam&);    // _1C8 (inline)
    virtual void do_onInit(CreatureInitArg*);                 // _1CC (inline)
    virtual void onCreateShape();                             // _1D0 (inline)
    virtual void theEntry();                                  // _1D4
    virtual void onBounce();                                  // _1D8 (inline)
    virtual void shadowOn();                                  // _1DC
    virtual void shadowOff();                                 // _1E0
    virtual void isPickable();                                // _1E4
    virtual void getBedamaColor();                            // _1E8 (inline)
    virtual void do_update();                                 // _1EC (inline)
    virtual void onKeyEvent(const SysShape::KeyEvent&);       // _1F0 (inline)
    virtual void _1F4() = 0;                                  // _1F4
    virtual void changeMaterial();                            // _1F8 (inline)
    virtual void createKiraEffect(Vector3<float>&);           // _1FC (inline)
    virtual void getCarryInfoParam(CarryInfoParam&);          // _200 (inline)
    virtual void isCarried();                                 // _204
    virtual void isPicked();                                  // _208 (inline)
    virtual void sound_otakaraEventStart();                   // _20C (inline)
    virtual void sound_otakaraEventRestart();                 // _210 (inline)
    virtual void sound_otakaraEventStop();                    // _214 (inline)
    virtual void sound_otakaraEventFinish();                  // _218 (inline)

    void getWallTimer();
    void clearClaim();
    void sendClaim();
    void updateClaim();
    void getBuryDepthMax();
    void getBuryDepth();
    void getBuryRadius(float);
    Pellet();
    void getBottomRadius();
    void getPickRadius();
    void getCylinderHeight();
    void getConfigIndex();
    void getConfigName();
    void getPelletConfigMin();
    void getPelletConfigMax();
    void setupParticles();
    void setupParticles_simple();
    void setupParticles_tall();
    void panmodokiCarryable();
    void finishDisplayCarryInfo();
    void setCarryColor(int);
    void clearCarryColor();
    void allocateTexCaster();
    void setPanModokiRotation(float);
    void setOrientation(Matrixf&);
    void getStateID();
    void update();
    void getPikiBirthCount(int&, int&);
    void entryShape();
    void init_pmotions();
    void update_pmotions();
    void start_pmotions();
    void stop_carrymotion();
    void finish_carrymotion();
    void getSpeicalSlot();
    void getPelletGoal();
    void getTotalPikmins();
    void getTotalCarryPikmins();
    void getPikmins(int);
    void getFace();
    void clearDiscoverDisable();
    void startDiscoverDisable(unsigned char);
    void updateDiscoverDisable();
    void discoverDisabled();
};
} // namespace Game

#endif
