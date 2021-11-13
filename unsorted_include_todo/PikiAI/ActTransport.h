#ifndef _PIKIAI_ACTTRANSPORT_H
#define _PIKIAI_ACTTRANSPORT_H

namespace PikiAI {
struct Action {
    virtual void _00() = 0;                                        // _00
    virtual void _04() = 0;                                        // _04
    virtual void _08() = 0;                                        // _08
    virtual void _0C() = 0;                                        // _0C
    virtual void _10() = 0;                                        // _10
    virtual void applicable();                                     // _14
    virtual void getNextAIType();                                  // _18
    virtual void bounceCallback(Game::Piki*, Sys::Triangle*);      // _1C
    virtual void collisionCallback(Game::Piki*, Game::CollEvent&); // _20
    virtual void platCallback(Game::Piki*, Game::PlatEvent&);      // _24
    virtual void doDirectDraw(Graphics&);                          // _28
    virtual void wallCallback(Vector3<float>&);                    // _2C

    // _00 VTBL
};
} // namespace PikiAI

namespace PikiAI {
struct ActTransport : public Action {
    virtual void init(ActionArg*);                                 // _00
    virtual void exec();                                           // _04
    virtual void cleanup();                                        // _08
    virtual void emotion_success();                                // _0C
    virtual void emotion_fail();                                   // _10
    virtual void applicable();                                     // _14
    virtual void getNextAIType();                                  // _18
    virtual void bounceCallback(Game::Piki*, Sys::Triangle*);      // _1C
    virtual void collisionCallback(Game::Piki*, Game::CollEvent&); // _20
    virtual void platCallback(Game::Piki*, Game::PlatEvent&);      // _24
    virtual void doDirectDraw(Graphics&);                          // _28
    virtual void wallCallback(Vector3<float>&);                    // _2C
    virtual void getInfo(char*);                                   // _30
    virtual void onKeyEvent(const SysShape::KeyEvent&);            // _34
    virtual void _38() = 0;                                        // _38
    virtual void _3C() = 0;                                        // _3C
    virtual void @60 @4 @onKeyEvent(const SysShape::KeyEvent&);    // _40
    virtual void _44() = 0;                                        // _44

    // _00 VTBL
};
} // namespace PikiAI

#endif