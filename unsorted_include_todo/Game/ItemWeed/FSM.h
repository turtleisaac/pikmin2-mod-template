#ifndef _GAME_ITEMWEED_FSM_H
#define _GAME_ITEMWEED_FSM_H

/*
    __vt__Q34Game8ItemWeed3FSM:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game8ItemWeed3FSMFPQ34Game8ItemWeed4Item
    .4byte "start__Q24Game35StateMachine<Q34Game8ItemWeed4Item>FPQ34Game8ItemWeed4ItemiPQ24Game8StateArg"
    .4byte "exec__Q24Game35StateMachine<Q34Game8ItemWeed4Item>FPQ34Game8ItemWeed4Item"
    .4byte "transit__Q24Game35StateMachine<Q34Game8ItemWeed4Item>FPQ34Game8ItemWeed4ItemiPQ24Game8StateArg"
*/

namespace Game {
namespace StateMachine < Game
{
	namespace ItemWeed {
	struct Item >
	{
		virtual void init(Item*);                                   // _08
		virtual void StateMachine < start(Item*, int, StateArg*);   // _0C (inline)
		virtual void StateMachine < exec(Item*);                    // _10 (inline)
		virtual void StateMachine < transit(Item*, int, StateArg*); // _14 (inline)
	};
	} // namespace ItemWeed
} // namespace Game
} // namespace Game

namespace Game {
namespace ItemWeed {
struct FSM : public Item > {
	virtual void init(Item*); // _08
};
} // namespace ItemWeed
} // namespace Game

#endif
