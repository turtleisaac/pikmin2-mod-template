#ifndef _GAME_ENEMYBASEFSM_BIRTHTYPEDROPSTATE_H
#define _GAME_ENEMYBASEFSM_BIRTHTYPEDROPSTATE_H

/*
    __vt__Q34Game12EnemyBaseFSM18BirthTypeDropState:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBasePQ24Game8StateArg
    .4byte exec__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte cleanup__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBase
    .4byte resume__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte restart__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte transit__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseiPQ24Game8StateArg
    .4byte doDirectDraw__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseR8Graphics
    .4byte update__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBase
    .4byte entry__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBase
    .4byte simulation__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBasef
    .4byte bounceProcedure__Q34Game12EnemyBaseFSM5StateFPQ24Game9EnemyBasePQ23Sys8Triangle
    .4byte animation__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBase
    .4byte isFinishableWaitingBirthTypeDrop__Q34Game12EnemyBaseFSM18BirthTypeDropStateFPQ24Game9EnemyBase
*/

namespace Game {
struct EnemyFSMState {
	virtual void init(EnemyBase*, StateArg*);         // _08
	virtual void exec(EnemyBase*);                    // _0C (inline)
	virtual void cleanup(EnemyBase*);                 // _10
	virtual void resume(EnemyBase*);                  // _14 (inline)
	virtual void restart(EnemyBase*);                 // _18 (inline)
	virtual void transit(EnemyBase*, int, StateArg*); // _1C
	virtual void doDirectDraw(EnemyBase*, Graphics&); // _20 (inline)
};
} // namespace Game

namespace Game {
namespace EnemyBaseFSM {
struct State {
	virtual void init(EnemyBase*, StateArg*);                 // _08
	virtual void _0C() = 0;                                   // _0C
	virtual void cleanup(EnemyBase*);                         // _10
	virtual void _14() = 0;                                   // _14
	virtual void _18() = 0;                                   // _18
	virtual void _1C() = 0;                                   // _1C
	virtual void _20() = 0;                                   // _20
	virtual void update(EnemyBase*);                          // _24
	virtual void entry(EnemyBase*);                           // _28 (inline)
	virtual void simulation(EnemyBase*, float);               // _2C (inline)
	virtual void bounceProcedure(EnemyBase*, Sys::Triangle*); // _30 (inline)
};
} // namespace EnemyBaseFSM
} // namespace Game

namespace Game {
namespace EnemyBaseFSM {
struct BirthTypeDropState : public EnemyFSMState, public State {
	virtual void init(EnemyBase*, StateArg*);                  // _08
	virtual void cleanup(EnemyBase*);                          // _10
	virtual void update(EnemyBase*);                           // _24
	virtual void entry(EnemyBase*);                            // _28 (inline)
	virtual void simulation(EnemyBase*, float);                // _2C (inline)
	virtual void animation(EnemyBase*);                        // _34 (inline)
	virtual void isFinishableWaitingBirthTypeDrop(EnemyBase*); // _38
};
} // namespace EnemyBaseFSM
} // namespace Game

#endif
