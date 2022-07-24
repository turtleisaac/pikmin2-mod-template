#ifndef _EBI_FS_FSMSTATE07_DOYOUOVERWRITE_H
#define _EBI_FS_FSMSTATE07_DOYOUOVERWRITE_H

/*
    __vt__Q33ebi2FS25FSMState07_DoYouOverwrite:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi2FS8FSMStateFPQ33ebi2FS4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi2FS8FSMStateFPQ33ebi2FS4TMgr
    .4byte "cleanup__Q24Game24FSMState<Q33ebi2FS4TMgr>FPQ33ebi2FS4TMgr"
    .4byte "resume__Q24Game24FSMState<Q33ebi2FS4TMgr>FPQ33ebi2FS4TMgr"
    .4byte "restart__Q24Game24FSMState<Q33ebi2FS4TMgr>FPQ33ebi2FS4TMgr"
    .4byte "transit__Q24Game24FSMState<Q33ebi2FS4TMgr>FPQ33ebi2FS4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi2FS20FSMState_SelectYesNoFPQ33ebi2FS4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi2FS20FSMState_SelectYesNoFPQ33ebi2FS4TMgr
    .4byte do_set__Q33ebi2FS25FSMState07_DoYouOverwriteFPQ33ebi2FS4TMgrPQ24Game8StateArg
    .4byte do_decide__Q33ebi2FS25FSMState07_DoYouOverwriteFPQ33ebi2FS4TMgr
*/

namespace ebi {
namespace FS {
struct FSMState {
	virtual void init(TMgr*, Game::StateArg*); // _08 (inline)
	virtual void exec(TMgr*);                  // _0C (inline)
};
} // namespace FS
} // namespace ebi

namespace Game {
namespace FSMState < ebi
{
	namespace FS {
	struct TMgr >
	{
		virtual void _08() = 0;                           // _08
		virtual void _0C() = 0;                           // _0C
		virtual void cleanup(ebi::TMgr*);                 // _10 (inline)
		virtual void resume(ebi::TMgr*);                  // _14 (inline)
		virtual void restart(ebi::TMgr*);                 // _18 (inline)
		virtual void transit(ebi::TMgr*, int, StateArg*); // _1C (inline)
	};
	} // namespace FS
} // namespace ebi
} // namespace Game

namespace ebi {
namespace FS {
struct FSMState_SelectYesNo {
	virtual void _08() = 0;                       // _08
	virtual void _0C() = 0;                       // _0C
	virtual void _10() = 0;                       // _10
	virtual void _14() = 0;                       // _14
	virtual void _18() = 0;                       // _18
	virtual void _1C() = 0;                       // _1C
	virtual void do_init(TMgr*, Game::StateArg*); // _20
	virtual void do_exec(TMgr*);                  // _24
};
} // namespace FS
} // namespace ebi

namespace ebi {
namespace FS {
struct FSMState07_DoYouOverwrite : public FSMState, public TMgr >, public FSMState_SelectYesNo {
	virtual void do_set(TMgr*, Game::StateArg*); // _28
	virtual void do_decide(TMgr*);               // _2C
};
} // namespace FS
} // namespace ebi

#endif
