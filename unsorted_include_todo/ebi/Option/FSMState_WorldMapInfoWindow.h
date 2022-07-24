#ifndef _EBI_OPTION_FSMSTATE_WORLDMAPINFOWINDOW_H
#define _EBI_OPTION_FSMSTATE_WORLDMAPINFOWINDOW_H

/*
    __vt__Q33ebi6Option27FSMState_WorldMapInfoWindow:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi6Option8FSMStateFPQ33ebi6Option4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi6Option8FSMStateFPQ33ebi6Option4TMgr
    .4byte "cleanup__Q24Game28FSMState<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgr"
    .4byte "resume__Q24Game28FSMState<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgr"
    .4byte "restart__Q24Game28FSMState<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgr"
    .4byte "transit__Q24Game28FSMState<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi6Option27FSMState_WorldMapInfoWindowFPQ33ebi6Option4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi6Option27FSMState_WorldMapInfoWindowFPQ33ebi6Option4TMgr
*/

namespace ebi {
namespace Option {
struct FSMState {
	virtual void init(TMgr*, Game::StateArg*); // _08 (inline)
	virtual void exec(TMgr*);                  // _0C (inline)
};
} // namespace Option
} // namespace ebi

namespace Game {
namespace FSMState < ebi
{
	namespace Option {
	struct TMgr >
	{
		virtual void _08() = 0;                           // _08
		virtual void _0C() = 0;                           // _0C
		virtual void cleanup(ebi::TMgr*);                 // _10 (inline)
		virtual void resume(ebi::TMgr*);                  // _14 (inline)
		virtual void restart(ebi::TMgr*);                 // _18 (inline)
		virtual void transit(ebi::TMgr*, int, StateArg*); // _1C (inline)
	};
	} // namespace Option
} // namespace ebi
} // namespace Game

namespace ebi {
namespace Option {
struct FSMState_WorldMapInfoWindow : public FSMState, public TMgr > {
	virtual void do_init(TMgr*, Game::StateArg*); // _20
	virtual void do_exec(TMgr*);                  // _24
};
} // namespace Option
} // namespace ebi

#endif
