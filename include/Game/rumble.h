#ifndef _GAME_RUMBLE_H
#define _GAME_RUMBLE_H

#include "BaseParm.h"
#include "CNode.h"
#include "Parameters.h"
#include "Vector3.h"
#include "types.h"
#include "stream.h"

struct Controller;

namespace Game {
struct RumbleData {
	RumbleData();

	inline void read(Stream& stream)
	{
		mCount = stream.readInt();
		if (mCount <= 0) {
			return;
		}

		_04 = new f32[mCount];
		_08 = new f32[mCount];

		for (int j = 0; j < mCount; j++) {
			_04[j] = stream.readFloat();
		}

		for (int j = 0; j < mCount; j++) {
			_08[j] = stream.readFloat();
		}
	}

	s32 mCount; // _00
	f32* _04;   // _04
	f32* _08;   // _08
};

struct RumbleDataMgr {
	RumbleDataMgr();

	RumbleData* getRumbleData(int);
	void read(Stream& stream);

	s32 mDataCnt;         // _00
	RumbleData* mDataArr; // _04
};

struct RumbleNode : public CNode {
	inline RumbleNode()
	    : CNode()
	    , _18(-1)
	    , _1C(0.0f)
	    , _20(0.0f)
	    , _24(0.0f)
	    , _28(0.0f)
	    , _2C(0)
	{
	}

	virtual ~RumbleNode(); // _08 (weak)

	// _00     = VTBL
	// _00-_18 = CNode
	int _18; // _18
	f32 _1C; // _1C
	f32 _20; // _20
	f32 _24; // _24
	f32 _28; // _28
	u32 _2C; // _2C
};

struct ContRumble {
	ContRumble(int, int);

	void init();
	void update();
	void setController(bool);
	void startRumble(int, f32);
	void rumbleStop();
	void rumbleStop(int);
	void getRumbleParameter(int, f32&, f32&);

	bool _00;                // _00
	int _04;                 // _04
	Vector3f _08;            // _08
	RumbleNode* _14;         // _14
	RumbleNode* _18;         // _18
	RumbleDataMgr* mDataMgr; // _1C
};

struct RumbleMgr : public CNode {
	struct Parms : public Parameters {
		Parm<f32> mMaxDistance; // _0C
		u32 mEnd;               // _34
	};

	RumbleMgr();

	virtual ~RumbleMgr(); // _08 (weak)

	void loadResource();
	void init();
	void update();
	void startRumble(int, Vector3f&, int);
	void startRumble(int, int);
	void stopRumble(int, int);
	void stopRumble(int);
	bool isRumbleUpdateOn();
	void setZukanRumble(Controller*, Vector3f*);
	bool isStartAndEnd(int*, int);
	void readRumbleParms(char*);
	void readRumbleData(char*);

	u8 _18; // _18

	// ptr to unknown array with 2 elements
	void* _1C; // _1C

	// ptr to array of two pointers to ContRumble
	ContRumble** mContRumble; // _20
	Parms* mParms;            // _24
	RumbleDataMgr* mDataMgr;  // _28
	Controller* mController;  // _2C
	Vector3f* _30;            // _30
};

extern RumbleMgr* rumbleMgr;
} // namespace Game

#endif
