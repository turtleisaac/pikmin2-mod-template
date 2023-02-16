#include "PSM/Demo.h"
#include "SoundID.h"
#include "utilityU.h"
#include "PSM/Scene.h"
#include "PSSystem/PSGame.h"
#include "PSM/ObjCalc.h"

static inline bool streq(const char* a, const char* b)
{
	if (a == nullptr || b == nullptr)
		return 0;
	if (strcmp(a, b) == 0)
		return 1;
	else
		return 0;
}

namespace PSM {

/*
 * --INFO--
 * Address:	........
 * Size:	000078
 */
void DemoInitiator::equalSet(const char*, const char*, u8)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000074
 */
void DemoInitiator::equalSetStream(const char* buffer, u32 AST_ID, u8 byte)
{
	mSongChosen = false;
	bool check  = false;
	if (mByte && mName) {
		check = true;
	}
	P2ASSERTLINE(41, check);

	*mAST_ID = AST_ID;
	strcpy((char*)buffer, "");
	*mByte = byte;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000080
 */
void DemoInitiator::equalSetEx(const char*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00007C
 */
void DemoInitiator::equalSetExStream(const char*, bool, u32, u8)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000058
 */
void DemoInitiator::is(const char*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00007C
 */
void DemoInitiator::numberSet(const char*, const char*, u8)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00004C
 */
void DemoInitiator::setDefault(const char* comp, u8 byte, u32 id)
{
	if (!mSongChosen) {
		if (strcmp(mName, comp) == 0) {
			mSongChosen = true;
			*mAST_ID    = id;
			*mByte      = byte;
		}
	}
}

/*
 * --INFO--
 * Address:	80463FE8
 * Size:	00005C
 */
Demo::Demo()
{
	_18               = 0;
	mDoStartWithAudio = 1;
	mSoundID          = (SoundID)-1;
	mSystemSE         = (SoundID)-1;
	mFuncptr          = nullptr;
};

/*
 * --INFO--
 * Address:	80464044
 * Size:	00020C
 */
void Demo::init(Vec*, Vec*, Mtx, PSM::DemoArg)
{
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	lis      r8, lbl_8049D080@ha
	stw      r0, 0x44(r1)
	stmw     r25, 0x24(r1)
	mr       r30, r3
	mr       r25, r4
	mr       r27, r5
	mr       r26, r6
	mr       r31, r7
	addi     r29, r8, lbl_8049D080@l
	li       r3, 0x38
	bl       __nw__FUl
	or.      r28, r3, r3
	beq      lbl_80464088
	bl       __ct__Q26PSGame9SceneInfoFv
	mr       r28, r3

lbl_80464088:
	mr       r3, r28
	li       r4, 1
	li       r5, 2
	bl
setStageFlag__Q26PSGame9SceneInfoFQ36PSGame9SceneInfo7FlagDefQ36PSGame9SceneInfo12FlagBitShift
	li       r0, 1
	li       r8, 0xff
	stb      r0, 7(r28)
	mr       r3, r30
	addi     r4, r1, 0xc
	addi     r5, r1, 8
	stw      r25, 8(r28)
	stw      r27, 0x10(r28)
	stw      r26, 0x18(r28)
	stb      r8, 6(r28)
	lwz      r7, 0(r31)
	lwz      r6, 4(r31)
	lwz      r0, 8(r31)
	stb      r8, 8(r1)
	stw      r7, 0xc(r1)
	stw      r6, 0x10(r1)
	stw      r0, 0x14(r1)
	lwz      r12, 0(r30)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	mr       r0, r3
	lwz      r3, 4(r31)
	mr       r26, r0
	bl       strlen
	addi     r3, r3, 1
	bl       __nwa__FUl
	stw      r3, 0x28(r30)
	lwz      r3, 0x28(r30)
	lwz      r4, 4(r31)
	bl       strcpy
	li       r3, 0x2c
	bl       __nw__FUl
	or.      r27, r3, r3
	beq      lbl_80464134
	lbz      r4, 8(r1)
	mr       r5, r28
	bl       __ct__Q23PSM10Scene_DemoFUcPQ26PSGame9SceneInfo
	mr       r27, r3

lbl_80464134:
	cmplwi   r27, 0
	bne      lbl_80464150
	addi     r3, r29, 0
	addi     r5, r29, 0x14
	li       r4, 0xc7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80464150:
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80464170
	addi     r3, r29, 0x20
	addi     r5, r29, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80464170:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80464190
	addi     r3, r29, 0x20
	addi     r5, r29, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80464190:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_804641B0
	addi     r3, r29, 0x2c
	addi     r5, r29, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804641B0:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_804641D4
	addi     r3, r29, 0x2c
	addi     r5, r29, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804641D4:
	mr       r3, r28
	mr       r4, r27
	bl       adaptChildScene__Q28PSSystem5SceneFPQ28PSSystem5Scene
	cmplwi   r27, 0
	bne      lbl_804641FC
	addi     r3, r29, 0
	addi     r5, r29, 0x14
	li       r4, 0xcb
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804641FC:
	cmplwi   r26, 0
	beq      lbl_80464210
	mr       r3, r27
	mr       r4, r26
	bl       appendSeq__Q28PSSystem5SceneFPQ28PSSystem7SeqBase

lbl_80464210:
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	mr       r5, r27
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	li       r0, 1
	mr       r3, r30
	stb      r0, 0x18(r30)
	bl       demo1stLoadSync__Q23PSM4DemoFv
	lmw      r25, 0x24(r1)
	lwz      r0, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/*
 * --INFO--
 * Address:	80464250
 * Size:	0000EC
 */
void Demo::demo1stLoadSync()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lis      r3, lbl_8049D080@ha
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	addi     r31, r3, lbl_8049D080@l
	stw      r30, 8(r1)
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_8046428C
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046428C:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_804642AC
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804642AC:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_804642CC
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804642CC:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_804642F0
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804642F0:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80464310
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80464310:
	lwz      r3, 4(r30)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8046433C
 * Size:	000048
 */
void Demo::initDemoScene(PSM::DemoArg&, PSM::Scene_Demo*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lis      r6, lbl_8049D0DC@ha
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r5
	lwz      r3, 4(r4)
	addi     r4, r6, lbl_8049D0DC@l
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80464370
	li       r0, 1
	stb      r0, 0x28(r31)

lbl_80464370:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

const char* filler3 = "PSGame.h";
const char* filler4 = "PSScene.h";
const char* filler5 = "get sound scene at\ninvalid timming\n";
const char* filler6 = "s21_dayend_takeoff";

/*
 * --INFO--
 * Address:	80464384
 * Size:	001DA4
 */
PSSystem::BgmSeq* Demo::initiate(DemoArg demoArg, u8* unk)
{
	DemoInitiator init            = DemoInitiator(unk, demoArg.mName);
	JAInter::SoundInfo audio_info = { 0x00000000, 0x7F030000, 0x3F800000, 0x3C000000 };

	char buffer[0x20];
	buffer[0]  = '\0';
	u32 AST_ID = -1;

	PSSystem::BgmSeq* seq = nullptr;
	P2ASSERTLINE(256, init.mName);

	// TODO
	init.mAST_ID = &AST_ID;
	init.equalSetStream(buffer, -1, -1);

	init.setDefault("s02_dayend_result", -1, 0xc0011012);
	init.setDefault("s01_dayend", -1, demoArg.mBgmID);
	init.setDefault("s03_orimadown", -1, 0xc0011005);
	init.setDefault("s05_pikminzero", -1, 0xc0011006);
	init.setDefault("s11_dope_first_b", -1, 0xc0011001);
	init.setDefault("s11_dope_first_r", -1, 0xc0011001);
	init.setDefault("s11_dopebin_first_b", -1, 0xc0011008);
	init.setDefault("s11_dopebin_first_r", -1, 0xc0011008);

	if (!streq("s01_dayend", init.mName)) {
		bool is_key     = (demoArg.mPelletName != nullptr) && streq(demoArg.mPelletName, "key");
		bool not_is_key = !is_key;

		u32 demo_arg = demoArg.mBgmID;
		if (not_is_key) {
			init.SetSongIfNotSet(demo_arg, "s17_suck_equipment");
		}
		if (is_key) {
			init.SetSongIfNotSet(0xc0011007, "s17_suck_equipment");
		}

		demo_arg = demoArg.mBgmID;
		if (not_is_key) {
			init.SetSongIfNotSet(demo_arg, "s22_cv_suck_equipment");
		}
		if (is_key) {
			init.SetSongIfNotSet(0xc0011007, "s22_cv_suck_equipment");
		}

		if (not_is_key) {
			init.SetSongIfNotSet(0xc0011001, "s10_suck_treasure");
		}
		if (is_key) {
			init.SetSongIfNotSet(0xc0011007, "s10_suck_treasure");
		}

		if (is_key) {
			init.SetSongIfNotSet(0xc0011007, "s22_cv_suck_treasure");
		}
		if (not_is_key) {
			init.SetSongIfNotSet(0xc0011001, "s22_cv_suck_treasure");
		}
	}

	init.SetSongIfNotSet(0xc001101d, "s04_dayend_orimadown");
	init.SetSongIfNotSet(0xc001101d, "s06_dayend_pikminzero");

	init.SetSongIfNotSet(0xc0011009, "g1A_red_doping");
	init.SetSongIfNotSet(0xc0011009, "g1A_red_doping");
	init.SetSongIfNotSet(0xc0011047, "g1B_black_doping");
	init.SetSongIfNotSet(0xc001100c, "g02_boot_onyonR");
	init.SetSongIfNotSet(0xc001100c, "g1E_boot_onyonY");
	init.SetSongIfNotSet(0xc001100c, "g20_boot_onyonB");
	init.SetSongIfNotSet(0xc001100d, "g03_meet_redpikmin");
	init.SetSongIfNotSet(0xc001100d, "g1F_meet_yellowpikmin");
	init.SetSongIfNotSet(0xc001100d, "g21_meet_bluepikmin");
	init.SetSongIfNotSet(0xc001100d, "g24_meet_blackpikmin");
	init.SetSongIfNotSet(0xc001100d, "g27_meet_whitepikmin");
	init.SetSongIfNotSet(0xc0011024, "g33_camera_demo");

	if (PSMGetGameSceneA()->isCave()) {
		init.SetSongIfNotSet(0xc0011046, "s09_holein");
	} else {
		init.SetSongIfNotSet(0xc0011026, "s09_holein");
	}

	init.SetSongIfNotSet(0xc0011027, "s16_find_item_00");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_01");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_02");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_03");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_04");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_05");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_06");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_07");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_08");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_09");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_10");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_11");
	init.SetSongIfNotSet(0xc0011027, "s16_find_item_12");

	init.SetSongIfNotSet(0xc0011028, "s0C_cv_escape");

	init.SetSongIfNotSet(0xc0011029, "g01_pick_me");

	init.SetSongIfNotSet(0xc0011027, "g04_find_treasure");

	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_f_01");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_f_02");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_f_03");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_f_04");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_l_01");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_l_02");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_l_03");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_t_01");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_t_02");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_t_03");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_y_01");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_y_02");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_y_03");
	init.SetSongIfNotSet(0xc0011029, "g05_find_cave_y_04");

	init.SetSongIfNotSet(0xc0011029, "g0A_cv_find_hole");
	init.SetSongIfNotSet(0xc0011029, "g0B_cv_find_fountain");

	init.SetSongIfNotSet(0xc001102a, "g18_find_gate");
	init.SetSongIfNotSet(0xc0011029, "g19_find_rock");
	init.SetSongIfNotSet(0xc0011027, "g2D_red_extract");
	init.SetSongIfNotSet(0xc0011027, "g2E_black_extract");
	init.SetSongIfNotSet(0xc001102b, "g34_yellow_extract");
	init.SetSongIfNotSet(0xc0011027, "g37_get_louie");
	init.SetSongIfNotSet(0xc0011029, "g38_find_whitepom");
	init.SetSongIfNotSet(0xc0011029, "g39_find_blackpom");

	init.SetSongIfNotSet(0xc001102c, "x01_gamestart");
	init.SetSongIfNotSet(0xc001102d, "x02_watch_red_pikmin");
	init.SetSongIfNotSet(0xc001102e, "x06_join");
	init.SetSongIfNotSet(0xc001102a, "x12_drain_water");
	init.SetSongIfNotSet(0xc001102f, "x10_find_yellow_onyon");
	init.SetSongIfNotSet(0xc0011030, "x11_find_blue_onyon");
	init.SetSongIfNotSet(0xc0011031, "x16_hiba");
	init.SetSongIfNotSet(0xc001102a, "x13_exp_leafchappy");
	init.SetSongIfNotSet(0xc0011032, "x20_blackman");

	init.SetSongIfNotSet(0xc0011033, "s13_pikmin_supply");
	init.SetSongIfNotSet(0xc0011036, "s0B_cv_coursein");
	init.SetSongIfNotSet(0xc0011037, "s0E_return_cave");

	init.SetSongIfNotSet(0xc0011039, "e00_E3_cavestart");

	init.SetSongIfNotSet(0xc001103a, "g07_cv_gamestart");
	init.SetSongIfNotSet(0xc001103b, "g08_first_return");
	init.SetSongIfNotSet(0xc0011033, "g09_first_sunset");
	init.SetSongIfNotSet(0xc0011033, "g16_100_pikmin");
	init.SetSongIfNotSet(0xc0011033, "g16_95_pikmin");
	init.SetSongIfNotSet(0xc001104a, "g26_inout_black");
	init.SetSongIfNotSet(0xc0011048, "g29_inout_white");
	init.SetSongIfNotSet(0xc0011031, "g2B_white_poison");
	init.SetSongIfNotSet(0xc0011033, "g2C_inout_red");
	init.SetSongIfNotSet(0xc0011031, "g36_find_louie");

	init.SetSongIfNotSet(0xc0011034, "x01_coursein_forest");
	init.SetSongIfNotSet(0xc0011034, "x01_coursein_yakushima");
	init.SetSongIfNotSet(0xc0011034, "x01_coursein_last");
	init.SetSongIfNotSet(0xc0011049, "x04_exp_y");
	init.SetSongIfNotSet(0xc0011035, "x05_louiestart");
	init.SetSongIfNotSet(0xc0011049, "x07_first_recovery");
	init.SetSongIfNotSet(0xc0011033, "x08_cv_suck_carcass");
	init.SetSongIfNotSet(0xc0011033, "x09_exp_detector");
	init.SetSongIfNotSet(0xc0011033, "x14_white_dig");

	init.SetSongIfNotSet(0xc0011048, "g32_get_map");
	init.SetSongIfNotSet(0xc0011033, "g35_president_gamestart");

	init.SetSongIfNotSet(0xc0011033, "x15_exp_x");
	init.SetSongIfNotSet(0xc0011033, "x17_join_guide");
	init.SetSongIfNotSet(0xc0011033, "x18_exp_pellet");

	init.SetSongIfNotSet(0xc001103c, "x03_find_red_onyon");

	init.mSongChosen = streq("s02_dayend_result", init.mName);
	if (init.mSongChosen) {
		audio_info.volume.v2 -= 0xf;
		// third use of volume is unsigned char
		// OSReport("volume thing is value: %f\n", stack0xffffffa8);
	}

	if (streq("s10_suck_treasure", init.mName) || streq("s11_dope_first_b", init.mName) || streq("s11_dope_first_r", init.mName)
	    || streq("s11_dopebin_first_b", init.mName) || streq("s11_dopebin_first_r", init.mName) || streq("s17_suck_equipment", init.mName)
	    || streq("s22_cv_suck_equipment", init.mName) || streq("s22_cv_suck_treasure", init.mName) || streq("x19_vs_bedama", init.mName)) {
		mDoStartWithAudio = false;
		mSoundID          = PSSE_EV_HOME_PELLET_BACUUM;
	} else if (streq("g2F_appear_hole", init.mName)) {
		mSoundID = PSSE_SY_WORK_FINISH;
		mFuncptr = PSChangeBgm_ChallengeGame;
	} else if (streq("g30_appear_fountain", init.mName)) {
		mFuncptr = PSChangeBgm_ChallengeGame;
	} else if (streq("x20_blackman", init.mName) || streq("x03_find_red_onyon", init.mName)) {
		mDoStartWithAudio = false;
	} else if (streq("s01_dayend", init.mName)) {
		switch ((u32)demoArg.mPelletName) {
		case 1:
			mSoundID = PSSE_PL_DAYEND_KAISAN_LUI;
			break;
		case 2:
			mSoundID = PSSE_PL_DAYEND_KAISAN_SHA;
			break;
		default:
		case 0:
			mSoundID = PSSE_PL_DAYEND_KAISAN_ORI;
			break;
		}
	}

	if (streq("x20_blackman", init.mName)) {
		mSoundID = PSSE_EN_TIRE_FALL;
	}

	if (AST_ID != -1) {
		// OSReport("AST_ID is value: %x\n", AST_ID);
		PSGame::PikSceneMgr* scene_mgr = (PSGame::PikSceneMgr*)PSSystem::getSceneMgr();
		PSSystem::checkSceneMgr(scene_mgr);

		seq  = scene_mgr->newStreamBgm(AST_ID, audio_info);
		*unk = -1;
	} else if (buffer[0] != 0) {
		PSGame::PikSceneMgr* scene_mgr = (PSGame::PikSceneMgr*)PSSystem::getSceneMgr();
		PSSystem::checkSceneMgr(scene_mgr);

		seq = scene_mgr->newBgmSeq(buffer, audio_info);
		P2ASSERTLINE(632, seq);
	}
	// OSReport("volume thing is value: %f\n", stack0xffffffa8);
	// OSReport("real volume thing is value: %d\n", audio_info.volume);
	return seq;

	// 	char* pellet_name;
	// 	bool is_key;
	// 	struct SceneBase* hole_in;
	// 	bool is_cave;
	// 	int comp;
	// 	struct BgmSeq* seq;
	// 	char* demo_name;
	// 	unsigned long demo_arg; // DemoArg
	// 	volatile unsigned long AST_ID;
	// 	struct JAInter::SoundInfo audio_info;
	// 	char local_54[44];
	// 	bool isSongChosen;
	// 	struct SceneMgr* scene_mgr;
	// 	bool day_end;

	// 	demo_name            = param_1->name;
	// 	seq                  = nullptr;
	// 	audio_info.unk1      = audio_info_data[0];
	// 	audio_info.count     = audio_info_data[1];
	// 	audio_info.pitch     = audio_info_data[2];
	// 	audio_info.volume.v1 = audio_info_data[3];
	// 	local_54[0]          = 0xff;
	// #line 256 "PSMainSide_Demo.cpp"
	// 	P2ASSERT(demo_name != nullptr);
	// 	isSongChosen = false;
	// 	if ((unk != nullptr) && (demo_name != nullptr)) {
	// 		isSongChosen = true;
	// 	}
	// #line 41 "PSMainSide_Demo.cpp"
	// 	P2ASSERT(isSongChosen);
	// 	AST_ID = 0xffffffff;
	// 	strcpy(local_54, ""); // \0\0\0\0
	// 	*unk = 0xff;

	// 	// isSongChosen = 0;
	// 	if (strcmp(demo_name, "s02_dayend_result") == 0) {
	// 		isSongChosen = true;
	// 		*unk         = 0xff;
	// 		AST_ID       = 0xc0011012;
	// 	}
	// 	demo_arg = param_1->bgmID;
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s01_dayend") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = demo_arg;
	// 		// OSReport("demo_arg is value: %lu\n", demo_arg);
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s03_orimadown") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011005;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s05_pikminzero") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011006;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s11_dope_first_b") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011001;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s11_dope_first_r") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011001;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s11_dopebin_first_b") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011008;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s11_dopebin_first_r") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011008;
	// 	}
	// 	if (demo_name == nullptr) { // asm{nop};
	// 		day_end = false;
	// 	}
	// 	if (!streq("s01_dayend", demo_name)) {

	// 		pellet_name = param_1->pelletname;
	// 		is_key      = (pellet_name != nullptr) && streq(pellet_name, "key"); // r29
	// 		bool r31    = !is_key;                                               // r31
	// 		// OSReport("Appraising pellet: %s\n", pellet_name);
	// 		demo_arg = param_1->bgmID;

	// 		if (((r31) && (!isSongChosen)) && (strcmp(demo_name, "s17_suck_equipment") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = demo_arg; // upgrade appraisal
	// 			                         // OSReport("demo_arg is value: %lu\n", demo_arg);
	// 		}
	// 		if (((is_key) && (!isSongChosen)) && (strcmp(demo_name, "s17_suck_equipment") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011007; // key appraisal
	// 			                           // OSReport("AST_ID is value: %x\n", AST_ID);
	// 		}
	// 		demo_arg = param_1->bgmID;
	// 		if (((r31) && (!isSongChosen)) && (strcmp(demo_name, "s22_cv_suck_equipment") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = demo_arg; // upgrade appraisal
	// 			                         // OSReport("demo_arg is value: %lu\n", demo_arg);
	// 		}
	// 		if (((is_key) && (!isSongChosen)) && (strcmp(demo_name, "s22_cv_suck_equipment") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011007; // key appraisal
	// 			                           // OSReport("AST_ID is value: %x\n", AST_ID);
	// 		}
	// 		if (((r31) && (!isSongChosen)) && (strcmp(demo_name, "s10_suck_treasure") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011001; // treasure appraisal
	// 			                           // OSReport("AST_ID is value: %x\n", AST_ID);
	// 		}
	// 		if (((is_key) && (!isSongChosen)) && (strcmp(demo_name, "s10_suck_treasure") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011007; // key appraisal
	// 			                           // OSReport("AST_ID is value: %x\n", AST_ID);
	// 		}
	// 		if (((is_key) && (!isSongChosen)) && (strcmp(demo_name, "s22_cv_suck_treasure") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011007; // key appraisal
	// 			                           // OSReport("AST_ID is value: %x\n", AST_ID);
	// 		}
	// 		if (((r31) && (!isSongChosen)) && (strcmp(demo_name, "s22_cv_suck_treasure") == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011001; // treasure appraisal
	// 			                           // OSReport("AST_ID is value: %x\n", AST_ID);
	// 		}
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s04_dayend_orimadown") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001101d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "s06_dayend_pikminzero") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001101d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g1A_red_doping") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011009;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g1A_red_doping") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011009;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g1B_black_doping") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011047;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g02_boot_onyonR") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100c;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g1E_boot_onyonY") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100c;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g20_boot_onyonB") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100c;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g03_meet_redpikmin") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g1F_meet_yellowpikmin") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g21_meet_bluepikmin") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g24_meet_blackpikmin") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g27_meet_whitepikmin") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001100d;
	// 	}
	// 	if ((!isSongChosen) && (strcmp(demo_name, "g33_camera_demo") == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011024;
	// 	}
	// 	hole_in = PSMGetGameSceneA();
	// 	// cVar7 = (**(code **)(*piVar6 + 0x58))(); // ????
	// 	is_cave = (hole_in->isCave());
	// 	/* int** p_hole_in = hole_in;
	// 	is_cave = ((int(*)())p_hole_in[0][22])();  */
	// 	// vt_base(_this, _offset, _type, _vtoffset) m(m(_this, _vtoffset,
	// 	// void*), _offset, _type*)
	// 	// is_cave = hole_in->SceneInfo->caveIndex1;
	// 	// OSReport("caveIndex1 is value: 0x%x\n", is_cave);
	// 	if (is_cave) {
	// 		if ((!isSongChosen) && (comp = strcmp(demo_name, "s09_holein"), comp == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011026;
	// 		}
	// 	} else {
	// 		/*
	// 		is_cave = hole_in->SceneInfo->SceneMode;
	// 		OSReport("SceneMode is value: 0x%x\n", is_cave);
	// 		is_cave = hole_in->SceneInfo->caveIndex1;
	// 		OSReport("caveIndex1 is value: 0x%x\n", is_cave);
	// 		is_cave = hole_in->SceneInfo->CaveID_Full;
	// 		OSReport("CaveID_Full is value: 0x%x\n", is_cave);
	// 		is_cave = hole_in->SceneInfo->CaveID_lastDigit;
	// 		OSReport("CaveID_lastDigit is value: 0x%x\n", is_cave);
	// 		*/
	// 		if ((!isSongChosen) && (comp = strcmp(demo_name, "s09_holein"), comp == 0)) {
	// 			*unk         = 0xff;
	// 			isSongChosen = true;
	// 			AST_ID       = 0xc0011046;
	// 		}
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_00"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_01"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_02"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_03"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_04"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_05"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_06"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_07"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_08"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_09"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_10"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_11"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s16_find_item_12"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s0C_cv_escape"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011028;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g01_pick_me"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g04_find_treasure"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_f_01"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_f_02"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_f_03"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_f_04"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_l_01"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_l_02"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_l_03"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_t_01"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_t_02"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_t_03"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_y_01"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_y_02"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_y_03"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g05_find_cave_y_04"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g0A_cv_find_hole"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g0B_cv_find_fountain"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g18_find_gate"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102a;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g19_find_rock"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g2D_red_extract"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g2E_black_extract"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g34_yellow_extract"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102b;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g37_get_louie"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011027;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g38_find_whitepom"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g39_find_blackpom"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011029;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x01_gamestart"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102c;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x02_watch_red_pikmin"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102d;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x06_join"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102e;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x12_drain_water"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102a;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x10_find_yellow_onyon"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102f;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x11_find_blue_onyon"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011030;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x16_hiba"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011031;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x13_exp_leafchappy"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001102a;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x20_blackman"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011032;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s13_pikmin_supply"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s0B_cv_coursein"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011036;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "s0E_return_cave"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011037;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "e00_E3_cavestart"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011039;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g07_cv_gamestart"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001103a;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g08_first_return"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001103b;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g09_first_sunset"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g16_100_pikmin"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g16_95_pikmin"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g26_inout_black"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc001104a;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g29_inout_white"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011048;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g2B_white_poison"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011031;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g2C_inout_red"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g36_find_louie"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011031;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x01_coursein_forest"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011034;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x01_coursein_yakushima"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011034;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x01_coursein_last"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011034;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x04_exp_y"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011049;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x05_louiestart"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011035;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x07_first_recovery"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011049;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x08_cv_suck_carcass"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x09_exp_detector"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x14_white_dig"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g32_get_map"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011048;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "g35_president_gamestart"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x15_exp_x"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x17_join_guide"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x18_exp_pellet"), comp == 0)) {
	// 		*unk         = 0xff;
	// 		isSongChosen = true;
	// 		AST_ID       = 0xc0011033;
	// 	}
	// 	if ((!isSongChosen) && (comp = strcmp(demo_name, "x03_find_red_onyon"), comp == 0)) {
	// 		*unk = 0xff;
	// 		// no isSongChosen????
	// 		AST_ID = 0xc001103c;
	// 	}
	// 	if (!(volatile int)"s02_dayend_result" || demo_name == nullptr) {
	// 		isSongChosen = false;
	// 	} else {
	// 		comp = strcmp("s02_dayend_result", demo_name);
	// 		if (comp == 0) {
	// 			isSongChosen = true;
	// 		} else {
	// 			isSongChosen = false;
	// 		}
	// 	}
	// 	if (isSongChosen) {
	// 		audio_info.volume.v2 = (audio_info.volume.v2 - 0xf);
	// 		// third use of volume is unsigned char
	// 		// OSReport("volume thing is value: %f\n", stack0xffffffa8);
	// 	}
	// 	/*
	// 	if (demo_name == nullptr) {
	// 	    isSongChosen = false;
	// 	} else {
	// 	    comp = strcmp("s10_suck_treasure", demo_name);
	// 	    if (comp == 0) {
	// 	        isSongChosen = true;
	// 	    } else {
	// 	        isSongChosen = false;
	// 	    }
	// 	}
	// 	*/
	// 	// asm{nop};
	// 	if (streq("s10_suck_treasure", demo_name) || streq("s11_dope_first_b", demo_name) || streq("s11_dope_first_r", demo_name)
	// 	    || streq("s11_dopebin_first_b", demo_name) || streq("s11_dopebin_first_r", demo_name) || streq("s17_suck_equipment", demo_name)
	// 	    || streq("s22_cv_suck_equipment", demo_name) || streq("s22_cv_suck_treasure", demo_name) || streq("x19_vs_bedama", demo_name)) {
	// 		doStartWithAudio = false;
	// 		soundID          = PSSE_EV_HOME_PELLET_BACUUM;
	// 	} else if (streq("g2F_appear_hole", demo_name)) {

	// 		soundID = PSSE_SY_WORK_FINISH;
	// 		funcptr = PSChangeBgm_ChallengeGame;
	// 	} else if (streq("g30_appear_fountain", demo_name))
	// 		funcptr = PSChangeBgm_ChallengeGame;
	// 	else if (streq("x20_blackman", demo_name) || streq("x03_find_red_onyon", demo_name)) {
	// 		doStartWithAudio = 0;
	// 	} else if (streq("s01_dayend", demo_name)) {
	// 		switch ((u32)param_1->pelletname) {
	// 		case 1:
	// 			soundID = PSSE_PL_DAYEND_KAISAN_LUI;
	// 			break;
	// 		case 2:
	// 			soundID = PSSE_PL_DAYEND_KAISAN_SHA;
	// 			break;
	// 		default:
	// 		case 0:
	// 			soundID = PSSE_PL_DAYEND_KAISAN_ORI;
	// 			break;
	// 		}
	// 	}
	// 	if (streq("x20_blackman", demo_name))
	// 		soundID = PSSE_EN_TIRE_FALL;
	// 	if (!(AST_ID == 0xffffffff)) {
	// // OSReport("AST_ID is value: %x\n", AST_ID);
	// #line 467 "PSGame.h"
	// 		P2ASSERT(PSSystem::spSceneMgr != nullptr);
	// 		// scene_mgr = SCENEMGR;
	// 		struct PSGame::PikSceneMgr* scene_mgr = (PSGame::PikSceneMgr*)PSSystem::spSceneMgr;
	// #line 476 "PSGame.h"
	// 		P2ASSERT(scene_mgr != nullptr);
	// 		// seq = (struct BgmSeq*)newStreamBgm(AST_ID, audio_info);

	// 		seq    = scene_mgr->newStreamBgm(AST_ID, audio_info);
	// 		unk[0] = 0xFF;

	// 	} else if (local_54[0] != '\0') {
	// #line 467 "PSGame.h"
	// 		P2ASSERT(PSSystem::spSceneMgr != nullptr);
	// 		// scene_mgr = SCENEMGR;
	// 		struct PSGame::PikSceneMgr* scene_mgr = (PSGame::PikSceneMgr*)PSSystem::spSceneMgr;
	// #line 476 "PSGame.h"
	// 		P2ASSERT(scene_mgr != nullptr);

	// 		seq = scene_mgr->newBgmSeq(local_54, audio_info);
	// #line 632 "PSMainSide_Demo.cpp"
	// 		P2ASSERT(seq != nullptr);
	// 	}
	// 	// OSReport("volume thing is value: %f\n", stack0xffffffa8);
	// 	// OSReport("real volume thing is value: %d\n", audio_info.volume);
	// 	return seq;
}
/*
.loc_0x0:
  stwu      r1, -0x70(r1)
  mflr      r0
  stw       r0, 0x74(r1)
  li        r0, -0x1
  stmw      r22, 0x48(r1)
  mr        r24, r4
  lis       r4, 0x804A
  lwz       r28, 0x4(r24)
  subi      r30, r4, 0x2F80
  stw       r0, 0x8(r1)
  li        r4, 0
  cmplwi    r28, 0
  mr        r23, r3
  mr        r25, r5
  li        r26, 0
  lwz       r9, 0x70(r30)
  lwz       r8, 0x74(r30)
  lwz       r7, 0x78(r30)
  lwz       r6, 0x7C(r30)
  stw       r9, 0xC(r1)
  stw       r8, 0x10(r1)
  stw       r7, 0x14(r1)
  stw       r6, 0x18(r1)
  stb       r4, 0x1C(r1)
  bne-      .loc_0x78
  addi      r3, r30, 0
  addi      r5, r30, 0x14
  li        r4, 0x100
  crclr     6, 0x6
  bl        -0x439DB8

.loc_0x78:
  cmplwi    r25, 0
  li        r27, 0
  addi      r22, r1, 0x1C
  mr        r0, r27
  beq-      .loc_0x98
  cmplwi    r28, 0
  beq-      .loc_0x98
  li        r0, 0x1

.loc_0x98:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0xB4
  addi      r3, r30, 0
  addi      r5, r30, 0x14
  li        r4, 0x29
  crclr     6, 0x6
  bl        -0x439DF4

.loc_0xB4:
  li        r0, -0x1
  mr        r3, r22
  stw       r0, 0x8(r1)
  addi      r4, r2, 0x2930
  bl        -0x399BF0
  li        r0, 0xFF
  mr        r3, r28
  stb       r0, 0x0(r25)
  addi      r4, r30, 0x80
  bl        -0x399D9C
  cmpwi     r3, 0
  bne-      .loc_0xFC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1012
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xFC:
  rlwinm.   r0,r27,0,24,31
  lwz       r29, 0x8(r24)
  bne-      .loc_0x12C
  mr        r3, r28
  addi      r4, r30, 0x94
  bl        -0x399DD4
  cmpwi     r3, 0
  bne-      .loc_0x12C
  li        r0, 0xFF
  stw       r29, 0x8(r1)
  li        r27, 0x1
  stb       r0, 0x0(r25)

.loc_0x12C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x160
  mr        r3, r28
  addi      r4, r30, 0xA0
  bl        -0x399E00
  cmpwi     r3, 0
  bne-      .loc_0x160
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1005
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x160:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x194
  mr        r3, r28
  addi      r4, r30, 0xB0
  bl        -0x399E34
  cmpwi     r3, 0
  bne-      .loc_0x194
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1006
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x194:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1C8
  mr        r3, r28
  addi      r4, r30, 0xC0
  bl        -0x399E68
  cmpwi     r3, 0
  bne-      .loc_0x1C8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1001
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1C8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1FC
  mr        r3, r28
  addi      r4, r30, 0xD4
  bl        -0x399E9C
  cmpwi     r3, 0
  bne-      .loc_0x1FC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1001
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1FC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x230
  mr        r3, r28
  addi      r4, r30, 0xE8
  bl        -0x399ED0
  cmpwi     r3, 0
  bne-      .loc_0x230
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1008
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x230:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x264
  mr        r3, r28
  addi      r4, r30, 0xFC
  bl        -0x399F04
  cmpwi     r3, 0
  bne-      .loc_0x264
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1008
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x264:
  addic.    r0, r30, 0x94
  beq-      .loc_0x274
  cmplwi    r28, 0
  bne-      .loc_0x27C

.loc_0x274:
  li        r0, 0
  b         .loc_0x29C

.loc_0x27C:
  mr        r4, r28
  addi      r3, r30, 0x94
  bl        -0x399F48
  cmpwi     r3, 0
  bne-      .loc_0x298
  li        r0, 0x1
  b         .loc_0x29C

.loc_0x298:
  li        r0, 0

.loc_0x29C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x4D4
  lwz       r3, 0x0(r24)
  neg       r0, r3
  or        r0, r0, r3
  rlwinm.   r29,r0,1,31,31
  beq-      .loc_0x2F0
  cmplwi    r3, 0
  beq-      .loc_0x2CC
  addi      r0, r2, 0x2934
  cmplwi    r0, 0
  bne-      .loc_0x2D4

.loc_0x2CC:
  li        r29, 0
  b         .loc_0x2F0

.loc_0x2D4:
  addi      r4, r2, 0x2934
  bl        -0x399F9C
  cmpwi     r3, 0
  bne-      .loc_0x2EC
  li        r29, 0x1
  b         .loc_0x2F0

.loc_0x2EC:
  li        r29, 0

.loc_0x2F0:
  rlwinm    r0,r29,0,24,31
  lwz       r22, 0x8(r24)
  cntlzw    r3, r0
  rlwinm.   r0,r3,27,24,31
  rlwinm    r31,r3,27,5,31
  beq-      .loc_0x334
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x334
  mr        r3, r28
  addi      r4, r30, 0x110
  bl        -0x399FDC
  cmpwi     r3, 0
  bne-      .loc_0x334
  li        r0, 0xFF
  stw       r22, 0x8(r1)
  li        r27, 0x1
  stb       r0, 0x0(r25)

.loc_0x334:
  rlwinm.   r0,r29,0,24,31
  beq-      .loc_0x370
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x370
  mr        r3, r28
  addi      r4, r30, 0x110
  bl        -0x39A010
  cmpwi     r3, 0
  bne-      .loc_0x370
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1007
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x370:
  rlwinm.   r0,r31,0,24,31
  lwz       r22, 0x8(r24)
  beq-      .loc_0x3A8
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x3A8
  mr        r3, r28
  addi      r4, r30, 0x124
  bl        -0x39A050
  cmpwi     r3, 0
  bne-      .loc_0x3A8
  li        r0, 0xFF
  stw       r22, 0x8(r1)
  li        r27, 0x1
  stb       r0, 0x0(r25)

.loc_0x3A8:
  rlwinm.   r0,r29,0,24,31
  beq-      .loc_0x3E4
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x3E4
  mr        r3, r28
  addi      r4, r30, 0x124
  bl        -0x39A084
  cmpwi     r3, 0
  bne-      .loc_0x3E4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1007
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x3E4:
  rlwinm.   r0,r31,0,24,31
  beq-      .loc_0x420
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x420
  mr        r3, r28
  addi      r4, r30, 0x13C
  bl        -0x39A0C0
  cmpwi     r3, 0
  bne-      .loc_0x420
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1001
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x420:
  rlwinm.   r0,r29,0,24,31
  beq-      .loc_0x45C
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x45C
  mr        r3, r28
  addi      r4, r30, 0x13C
  bl        -0x39A0FC
  cmpwi     r3, 0
  bne-      .loc_0x45C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1007
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x45C:
  rlwinm.   r0,r29,0,24,31
  beq-      .loc_0x498
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x498
  mr        r3, r28
  addi      r4, r30, 0x150
  bl        -0x39A138
  cmpwi     r3, 0
  bne-      .loc_0x498
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1007
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x498:
  rlwinm.   r0,r31,0,24,31
  beq-      .loc_0x4D4
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x4D4
  mr        r3, r28
  addi      r4, r30, 0x150
  bl        -0x39A174
  cmpwi     r3, 0
  bne-      .loc_0x4D4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1001
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x4D4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x508
  mr        r3, r28
  addi      r4, r30, 0x168
  bl        -0x39A1A8
  cmpwi     r3, 0
  bne-      .loc_0x508
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x101D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x508:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x53C
  mr        r3, r28
  addi      r4, r30, 0x180
  bl        -0x39A1DC
  cmpwi     r3, 0
  bne-      .loc_0x53C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x101D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x53C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x570
  mr        r3, r28
  addi      r4, r30, 0x198
  bl        -0x39A210
  cmpwi     r3, 0
  bne-      .loc_0x570
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1009
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x570:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x5A4
  mr        r3, r28
  addi      r4, r30, 0x198
  bl        -0x39A244
  cmpwi     r3, 0
  bne-      .loc_0x5A4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1009
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x5A4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x5D8
  mr        r3, r28
  addi      r4, r30, 0x1A8
  bl        -0x39A278
  cmpwi     r3, 0
  bne-      .loc_0x5D8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1047
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x5D8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x60C
  mr        r3, r28
  addi      r4, r30, 0x1BC
  bl        -0x39A2AC
  cmpwi     r3, 0
  bne-      .loc_0x60C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100C
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x60C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x640
  mr        r3, r28
  addi      r4, r30, 0x1CC
  bl        -0x39A2E0
  cmpwi     r3, 0
  bne-      .loc_0x640
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100C
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x640:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x674
  mr        r3, r28
  addi      r4, r30, 0x1DC
  bl        -0x39A314
  cmpwi     r3, 0
  bne-      .loc_0x674
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100C
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x674:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x6A8
  mr        r3, r28
  addi      r4, r30, 0x1EC
  bl        -0x39A348
  cmpwi     r3, 0
  bne-      .loc_0x6A8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x6A8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x6DC
  mr        r3, r28
  addi      r4, r30, 0x200
  bl        -0x39A37C
  cmpwi     r3, 0
  bne-      .loc_0x6DC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x6DC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x710
  mr        r3, r28
  addi      r4, r30, 0x218
  bl        -0x39A3B0
  cmpwi     r3, 0
  bne-      .loc_0x710
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x710:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x744
  mr        r3, r28
  addi      r4, r30, 0x22C
  bl        -0x39A3E4
  cmpwi     r3, 0
  bne-      .loc_0x744
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x744:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x778
  mr        r3, r28
  addi      r4, r30, 0x244
  bl        -0x39A418
  cmpwi     r3, 0
  bne-      .loc_0x778
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x100D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x778:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x7AC
  mr        r3, r28
  addi      r4, r30, 0x25C
  bl        -0x39A44C
  cmpwi     r3, 0
  bne-      .loc_0x7AC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1024
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x7AC:
  bl        0x29EC
  lwz       r12, 0x0(r3)
  lwz       r12, 0x58(r12)
  mtctr     r12
  bctrl
  rlwinm.   r0,r3,0,24,31
  beq-      .loc_0x800
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x834
  mr        r3, r28
  addi      r4, r30, 0x26C
  bl        -0x39A49C
  cmpwi     r3, 0
  bne-      .loc_0x834
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1046
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)
  b         .loc_0x834

.loc_0x800:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x834
  mr        r3, r28
  addi      r4, r30, 0x26C
  bl        -0x39A4D4
  cmpwi     r3, 0
  bne-      .loc_0x834
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1026
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x834:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x868
  mr        r3, r28
  addi      r4, r30, 0x278
  bl        -0x39A508
  cmpwi     r3, 0
  bne-      .loc_0x868
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x868:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x89C
  mr        r3, r28
  addi      r4, r30, 0x28C
  bl        -0x39A53C
  cmpwi     r3, 0
  bne-      .loc_0x89C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x89C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x8D0
  mr        r3, r28
  addi      r4, r30, 0x2A0
  bl        -0x39A570
  cmpwi     r3, 0
  bne-      .loc_0x8D0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x8D0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x904
  mr        r3, r28
  addi      r4, r30, 0x2B4
  bl        -0x39A5A4
  cmpwi     r3, 0
  bne-      .loc_0x904
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x904:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x938
  mr        r3, r28
  addi      r4, r30, 0x2C8
  bl        -0x39A5D8
  cmpwi     r3, 0
  bne-      .loc_0x938
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x938:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x96C
  mr        r3, r28
  addi      r4, r30, 0x2DC
  bl        -0x39A60C
  cmpwi     r3, 0
  bne-      .loc_0x96C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x96C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x9A0
  mr        r3, r28
  addi      r4, r30, 0x2F0
  bl        -0x39A640
  cmpwi     r3, 0
  bne-      .loc_0x9A0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x9A0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x9D4
  mr        r3, r28
  addi      r4, r30, 0x304
  bl        -0x39A674
  cmpwi     r3, 0
  bne-      .loc_0x9D4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x9D4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xA08
  mr        r3, r28
  addi      r4, r30, 0x318
  bl        -0x39A6A8
  cmpwi     r3, 0
  bne-      .loc_0xA08
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xA08:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xA3C
  mr        r3, r28
  addi      r4, r30, 0x32C
  bl        -0x39A6DC
  cmpwi     r3, 0
  bne-      .loc_0xA3C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xA3C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xA70
  mr        r3, r28
  addi      r4, r30, 0x340
  bl        -0x39A710
  cmpwi     r3, 0
  bne-      .loc_0xA70
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xA70:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xAA4
  mr        r3, r28
  addi      r4, r30, 0x354
  bl        -0x39A744
  cmpwi     r3, 0
  bne-      .loc_0xAA4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xAA4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xAD8
  mr        r3, r28
  addi      r4, r30, 0x368
  bl        -0x39A778
  cmpwi     r3, 0
  bne-      .loc_0xAD8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xAD8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xB0C
  mr        r3, r28
  addi      r4, r30, 0x37C
  bl        -0x39A7AC
  cmpwi     r3, 0
  bne-      .loc_0xB0C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1028
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xB0C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xB40
  mr        r3, r28
  addi      r4, r30, 0x38C
  bl        -0x39A7E0
  cmpwi     r3, 0
  bne-      .loc_0xB40
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xB40:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xB74
  mr        r3, r28
  addi      r4, r30, 0x398
  bl        -0x39A814
  cmpwi     r3, 0
  bne-      .loc_0xB74
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xB74:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xBA8
  mr        r3, r28
  addi      r4, r30, 0x3AC
  bl        -0x39A848
  cmpwi     r3, 0
  bne-      .loc_0xBA8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xBA8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xBDC
  mr        r3, r28
  addi      r4, r30, 0x3C0
  bl        -0x39A87C
  cmpwi     r3, 0
  bne-      .loc_0xBDC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xBDC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xC10
  mr        r3, r28
  addi      r4, r30, 0x3D4
  bl        -0x39A8B0
  cmpwi     r3, 0
  bne-      .loc_0xC10
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xC10:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xC44
  mr        r3, r28
  addi      r4, r30, 0x3E8
  bl        -0x39A8E4
  cmpwi     r3, 0
  bne-      .loc_0xC44
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xC44:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xC78
  mr        r3, r28
  addi      r4, r30, 0x3FC
  bl        -0x39A918
  cmpwi     r3, 0
  bne-      .loc_0xC78
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xC78:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xCAC
  mr        r3, r28
  addi      r4, r30, 0x410
  bl        -0x39A94C
  cmpwi     r3, 0
  bne-      .loc_0xCAC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xCAC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xCE0
  mr        r3, r28
  addi      r4, r30, 0x424
  bl        -0x39A980
  cmpwi     r3, 0
  bne-      .loc_0xCE0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xCE0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xD14
  mr        r3, r28
  addi      r4, r30, 0x438
  bl        -0x39A9B4
  cmpwi     r3, 0
  bne-      .loc_0xD14
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xD14:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xD48
  mr        r3, r28
  addi      r4, r30, 0x44C
  bl        -0x39A9E8
  cmpwi     r3, 0
  bne-      .loc_0xD48
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xD48:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xD7C
  mr        r3, r28
  addi      r4, r30, 0x460
  bl        -0x39AA1C
  cmpwi     r3, 0
  bne-      .loc_0xD7C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xD7C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xDB0
  mr        r3, r28
  addi      r4, r30, 0x474
  bl        -0x39AA50
  cmpwi     r3, 0
  bne-      .loc_0xDB0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xDB0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xDE4
  mr        r3, r28
  addi      r4, r30, 0x488
  bl        -0x39AA84
  cmpwi     r3, 0
  bne-      .loc_0xDE4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xDE4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xE18
  mr        r3, r28
  addi      r4, r30, 0x49C
  bl        -0x39AAB8
  cmpwi     r3, 0
  bne-      .loc_0xE18
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xE18:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xE4C
  mr        r3, r28
  addi      r4, r30, 0x4B0
  bl        -0x39AAEC
  cmpwi     r3, 0
  bne-      .loc_0xE4C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xE4C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xE80
  mr        r3, r28
  addi      r4, r30, 0x4C4
  bl        -0x39AB20
  cmpwi     r3, 0
  bne-      .loc_0xE80
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xE80:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xEB4
  mr        r3, r28
  addi      r4, r30, 0x4D8
  bl        -0x39AB54
  cmpwi     r3, 0
  bne-      .loc_0xEB4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xEB4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xEE8
  mr        r3, r28
  addi      r4, r30, 0x4F0
  bl        -0x39AB88
  cmpwi     r3, 0
  bne-      .loc_0xEE8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102A
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xEE8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xF1C
  mr        r3, r28
  addi      r4, r30, 0x500
  bl        -0x39ABBC
  cmpwi     r3, 0
  bne-      .loc_0xF1C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xF1C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xF50
  mr        r3, r28
  addi      r4, r30, 0x510
  bl        -0x39ABF0
  cmpwi     r3, 0
  bne-      .loc_0xF50
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xF50:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xF84
  mr        r3, r28
  addi      r4, r30, 0x520
  bl        -0x39AC24
  cmpwi     r3, 0
  bne-      .loc_0xF84
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xF84:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xFB8
  mr        r3, r28
  addi      r4, r30, 0x534
  bl        -0x39AC58
  cmpwi     r3, 0
  bne-      .loc_0xFB8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102B
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xFB8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0xFEC
  mr        r3, r28
  addi      r4, r30, 0x548
  bl        -0x39AC8C
  cmpwi     r3, 0
  bne-      .loc_0xFEC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1027
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0xFEC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1020
  mr        r3, r28
  addi      r4, r30, 0x558
  bl        -0x39ACC0
  cmpwi     r3, 0
  bne-      .loc_0x1020
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1020:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1054
  mr        r3, r28
  addi      r4, r30, 0x56C
  bl        -0x39ACF4
  cmpwi     r3, 0
  bne-      .loc_0x1054
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1029
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1054:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1088
  mr        r3, r28
  addi      r4, r30, 0x580
  bl        -0x39AD28
  cmpwi     r3, 0
  bne-      .loc_0x1088
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102C
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1088:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x10BC
  mr        r3, r28
  addi      r4, r30, 0x590
  bl        -0x39AD5C
  cmpwi     r3, 0
  bne-      .loc_0x10BC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102D
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x10BC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x10F0
  mr        r3, r28
  addi      r4, r30, 0x5A8
  bl        -0x39AD90
  cmpwi     r3, 0
  bne-      .loc_0x10F0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102E
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x10F0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1124
  mr        r3, r28
  addi      r4, r30, 0x5B4
  bl        -0x39ADC4
  cmpwi     r3, 0
  bne-      .loc_0x1124
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102A
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1124:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1158
  mr        r3, r28
  addi      r4, r30, 0x5C4
  bl        -0x39ADF8
  cmpwi     r3, 0
  bne-      .loc_0x1158
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102F
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1158:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x118C
  mr        r3, r28
  addi      r4, r30, 0x5DC
  bl        -0x39AE2C
  cmpwi     r3, 0
  bne-      .loc_0x118C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1030
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x118C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x11C0
  mr        r3, r28
  addi      r4, r30, 0x5F0
  bl        -0x39AE60
  cmpwi     r3, 0
  bne-      .loc_0x11C0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1031
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x11C0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x11F4
  mr        r3, r28
  addi      r4, r30, 0x5FC
  bl        -0x39AE94
  cmpwi     r3, 0
  bne-      .loc_0x11F4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x102A
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x11F4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1228
  mr        r3, r28
  addi      r4, r30, 0x610
  bl        -0x39AEC8
  cmpwi     r3, 0
  bne-      .loc_0x1228
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1032
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1228:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x125C
  mr        r3, r28
  addi      r4, r30, 0x620
  bl        -0x39AEFC
  cmpwi     r3, 0
  bne-      .loc_0x125C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x125C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1290
  mr        r3, r28
  addi      r4, r30, 0x634
  bl        -0x39AF30
  cmpwi     r3, 0
  bne-      .loc_0x1290
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1036
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1290:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x12C4
  mr        r3, r28
  addi      r4, r30, 0x644
  bl        -0x39AF64
  cmpwi     r3, 0
  bne-      .loc_0x12C4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1037
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x12C4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x12F8
  mr        r3, r28
  addi      r4, r30, 0x654
  bl        -0x39AF98
  cmpwi     r3, 0
  bne-      .loc_0x12F8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1039
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x12F8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x132C
  mr        r3, r28
  addi      r4, r30, 0x668
  bl        -0x39AFCC
  cmpwi     r3, 0
  bne-      .loc_0x132C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x103A
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x132C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1360
  mr        r3, r28
  addi      r4, r30, 0x67C
  bl        -0x39B000
  cmpwi     r3, 0
  bne-      .loc_0x1360
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x103B
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1360:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1394
  mr        r3, r28
  addi      r4, r30, 0x690
  bl        -0x39B034
  cmpwi     r3, 0
  bne-      .loc_0x1394
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1394:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x13C8
  mr        r3, r28
  addi      r4, r30, 0x6A4
  bl        -0x39B068
  cmpwi     r3, 0
  bne-      .loc_0x13C8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x13C8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x13FC
  mr        r3, r28
  addi      r4, r30, 0x6B4
  bl        -0x39B09C
  cmpwi     r3, 0
  bne-      .loc_0x13FC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x13FC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1430
  mr        r3, r28
  addi      r4, r30, 0x6C4
  bl        -0x39B0D0
  cmpwi     r3, 0
  bne-      .loc_0x1430
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x104A
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1430:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1464
  mr        r3, r28
  addi      r4, r30, 0x6D4
  bl        -0x39B104
  cmpwi     r3, 0
  bne-      .loc_0x1464
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1048
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1464:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1498
  mr        r3, r28
  addi      r4, r30, 0x6E4
  bl        -0x39B138
  cmpwi     r3, 0
  bne-      .loc_0x1498
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1031
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1498:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x14CC
  mr        r3, r28
  addi      r4, r30, 0x6F8
  bl        -0x39B16C
  cmpwi     r3, 0
  bne-      .loc_0x14CC
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x14CC:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1500
  mr        r3, r28
  addi      r4, r30, 0x708
  bl        -0x39B1A0
  cmpwi     r3, 0
  bne-      .loc_0x1500
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1031
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1500:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1534
  mr        r3, r28
  addi      r4, r30, 0x718
  bl        -0x39B1D4
  cmpwi     r3, 0
  bne-      .loc_0x1534
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1034
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1534:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1568
  mr        r3, r28
  addi      r4, r30, 0x72C
  bl        -0x39B208
  cmpwi     r3, 0
  bne-      .loc_0x1568
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1034
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1568:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x159C
  mr        r3, r28
  addi      r4, r30, 0x744
  bl        -0x39B23C
  cmpwi     r3, 0
  bne-      .loc_0x159C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1034
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x159C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x15D0
  mr        r3, r28
  addi      r4, r30, 0x758
  bl        -0x39B270
  cmpwi     r3, 0
  bne-      .loc_0x15D0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1049
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x15D0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1604
  mr        r3, r28
  addi      r4, r30, 0x764
  bl        -0x39B2A4
  cmpwi     r3, 0
  bne-      .loc_0x1604
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1035
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1604:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1638
  mr        r3, r28
  addi      r4, r30, 0x774
  bl        -0x39B2D8
  cmpwi     r3, 0
  bne-      .loc_0x1638
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1049
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1638:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x166C
  mr        r3, r28
  addi      r4, r30, 0x788
  bl        -0x39B30C
  cmpwi     r3, 0
  bne-      .loc_0x166C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x166C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x16A0
  mr        r3, r28
  addi      r4, r30, 0x79C
  bl        -0x39B340
  cmpwi     r3, 0
  bne-      .loc_0x16A0
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x16A0:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x16D4
  mr        r3, r28
  addi      r4, r30, 0x7B0
  bl        -0x39B374
  cmpwi     r3, 0
  bne-      .loc_0x16D4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x16D4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1708
  mr        r3, r28
  addi      r4, r30, 0x7C0
  bl        -0x39B3A8
  cmpwi     r3, 0
  bne-      .loc_0x1708
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1048
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1708:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x173C
  mr        r3, r28
  addi      r4, r30, 0x7CC
  bl        -0x39B3DC
  cmpwi     r3, 0
  bne-      .loc_0x173C
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x173C:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1770
  mr        r3, r28
  addi      r4, r30, 0x7E4
  bl        -0x39B410
  cmpwi     r3, 0
  bne-      .loc_0x1770
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x1770:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x17A4
  mr        r3, r28
  addi      r4, r30, 0x7F0
  bl        -0x39B444
  cmpwi     r3, 0
  bne-      .loc_0x17A4
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x17A4:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x17D8
  mr        r3, r28
  addi      r4, r30, 0x800
  bl        -0x39B478
  cmpwi     r3, 0
  bne-      .loc_0x17D8
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x1033
  stb       r0, 0x0(r25)
  li        r27, 0x1
  stw       r3, 0x8(r1)

.loc_0x17D8:
  rlwinm.   r0,r27,0,24,31
  bne-      .loc_0x1808
  mr        r3, r28
  addi      r4, r30, 0x810
  bl        -0x39B4AC
  cmpwi     r3, 0
  bne-      .loc_0x1808
  lis       r3, 0xC001
  li        r0, 0xFF
  addi      r3, r3, 0x103C
  stb       r0, 0x0(r25)
  stw       r3, 0x8(r1)

.loc_0x1808:
  addic.    r0, r30, 0x80
  beq-      .loc_0x1818
  cmplwi    r28, 0
  bne-      .loc_0x1820

.loc_0x1818:
  li        r0, 0
  b         .loc_0x1840

.loc_0x1820:
  mr        r4, r28
  addi      r3, r30, 0x80
  bl        -0x39B4EC
  cmpwi     r3, 0
  bne-      .loc_0x183C
  li        r0, 0x1
  b         .loc_0x1840

.loc_0x183C:
  li        r0, 0

.loc_0x1840:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1854
  lbz       r3, 0x18(r1)
  subi      r0, r3, 0xF
  stb       r0, 0x18(r1)

.loc_0x1854:
  addic.    r0, r30, 0x13C
  beq-      .loc_0x1864
  cmplwi    r28, 0
  bne-      .loc_0x186C

.loc_0x1864:
  li        r0, 0
  b         .loc_0x188C

.loc_0x186C:
  mr        r4, r28
  addi      r3, r30, 0x13C
  bl        -0x39B538
  cmpwi     r3, 0
  bne-      .loc_0x1888
  li        r0, 0x1
  b         .loc_0x188C

.loc_0x1888:
  li        r0, 0

.loc_0x188C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0xC0
  beq-      .loc_0x18A4
  cmplwi    r28, 0
  bne-      .loc_0x18AC

.loc_0x18A4:
  li        r0, 0
  b         .loc_0x18CC

.loc_0x18AC:
  mr        r4, r28
  addi      r3, r30, 0xC0
  bl        -0x39B578
  cmpwi     r3, 0
  bne-      .loc_0x18C8
  li        r0, 0x1
  b         .loc_0x18CC

.loc_0x18C8:
  li        r0, 0

.loc_0x18CC:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0xD4
  beq-      .loc_0x18E4
  cmplwi    r28, 0
  bne-      .loc_0x18EC

.loc_0x18E4:
  li        r0, 0
  b         .loc_0x190C

.loc_0x18EC:
  mr        r4, r28
  addi      r3, r30, 0xD4
  bl        -0x39B5B8
  cmpwi     r3, 0
  bne-      .loc_0x1908
  li        r0, 0x1
  b         .loc_0x190C

.loc_0x1908:
  li        r0, 0

.loc_0x190C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0xE8
  beq-      .loc_0x1924
  cmplwi    r28, 0
  bne-      .loc_0x192C

.loc_0x1924:
  li        r0, 0
  b         .loc_0x194C

.loc_0x192C:
  mr        r4, r28
  addi      r3, r30, 0xE8
  bl        -0x39B5F8
  cmpwi     r3, 0
  bne-      .loc_0x1948
  li        r0, 0x1
  b         .loc_0x194C

.loc_0x1948:
  li        r0, 0

.loc_0x194C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0xFC
  beq-      .loc_0x1964
  cmplwi    r28, 0
  bne-      .loc_0x196C

.loc_0x1964:
  li        r0, 0
  b         .loc_0x198C

.loc_0x196C:
  mr        r4, r28
  addi      r3, r30, 0xFC
  bl        -0x39B638
  cmpwi     r3, 0
  bne-      .loc_0x1988
  li        r0, 0x1
  b         .loc_0x198C

.loc_0x1988:
  li        r0, 0

.loc_0x198C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0x110
  beq-      .loc_0x19A4
  cmplwi    r28, 0
  bne-      .loc_0x19AC

.loc_0x19A4:
  li        r0, 0
  b         .loc_0x19CC

.loc_0x19AC:
  mr        r4, r28
  addi      r3, r30, 0x110
  bl        -0x39B678
  cmpwi     r3, 0
  bne-      .loc_0x19C8
  li        r0, 0x1
  b         .loc_0x19CC

.loc_0x19C8:
  li        r0, 0

.loc_0x19CC:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0x124
  beq-      .loc_0x19E4
  cmplwi    r28, 0
  bne-      .loc_0x19EC

.loc_0x19E4:
  li        r0, 0
  b         .loc_0x1A0C

.loc_0x19EC:
  mr        r4, r28
  addi      r3, r30, 0x124
  bl        -0x39B6B8
  cmpwi     r3, 0
  bne-      .loc_0x1A08
  li        r0, 0x1
  b         .loc_0x1A0C

.loc_0x1A08:
  li        r0, 0

.loc_0x1A0C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0x150
  beq-      .loc_0x1A24
  cmplwi    r28, 0
  bne-      .loc_0x1A2C

.loc_0x1A24:
  li        r0, 0
  b         .loc_0x1A4C

.loc_0x1A2C:
  mr        r4, r28
  addi      r3, r30, 0x150
  bl        -0x39B6F8
  cmpwi     r3, 0
  bne-      .loc_0x1A48
  li        r0, 0x1
  b         .loc_0x1A4C

.loc_0x1A48:
  li        r0, 0

.loc_0x1A4C:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1A94
  addic.    r0, r30, 0x824
  beq-      .loc_0x1A64
  cmplwi    r28, 0
  bne-      .loc_0x1A6C

.loc_0x1A64:
  li        r0, 0
  b         .loc_0x1A8C

.loc_0x1A6C:
  mr        r4, r28
  addi      r3, r30, 0x824
  bl        -0x39B738
  cmpwi     r3, 0
  bne-      .loc_0x1A88
  li        r0, 0x1
  b         .loc_0x1A8C

.loc_0x1A88:
  li        r0, 0

.loc_0x1A8C:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1AA8

.loc_0x1A94:
  li        r3, 0
  li        r0, 0x3804
  stb       r3, 0x19(r23)
  stw       r0, 0x1C(r23)
  b         .loc_0x1C5C

.loc_0x1AA8:
  addic.    r0, r30, 0x834
  beq-      .loc_0x1AB8
  cmplwi    r28, 0
  bne-      .loc_0x1AC0

.loc_0x1AB8:
  li        r0, 0
  b         .loc_0x1AE0

.loc_0x1AC0:
  mr        r4, r28
  addi      r3, r30, 0x834
  bl        -0x39B78C
  cmpwi     r3, 0
  bne-      .loc_0x1ADC
  li        r0, 0x1
  b         .loc_0x1AE0

.loc_0x1ADC:
  li        r0, 0

.loc_0x1AE0:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1B00
  li        r0, 0x181C
  lis       r3, 0x8047
  stw       r0, 0x1C(r23)
  subi      r0, r3, 0x4A48
  stw       r0, 0x24(r23)
  b         .loc_0x1C5C

.loc_0x1B00:
  addic.    r0, r30, 0x844
  beq-      .loc_0x1B10
  cmplwi    r28, 0
  bne-      .loc_0x1B18

.loc_0x1B10:
  li        r0, 0
  b         .loc_0x1B38

.loc_0x1B18:
  mr        r4, r28
  addi      r3, r30, 0x844
  bl        -0x39B7E4
  cmpwi     r3, 0
  bne-      .loc_0x1B34
  li        r0, 0x1
  b         .loc_0x1B38

.loc_0x1B34:
  li        r0, 0

.loc_0x1B38:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1B50
  lis       r3, 0x8047
  subi      r0, r3, 0x4A48
  stw       r0, 0x24(r23)
  b         .loc_0x1C5C

.loc_0x1B50:
  addic.    r0, r30, 0x610
  beq-      .loc_0x1B60
  cmplwi    r28, 0
  bne-      .loc_0x1B68

.loc_0x1B60:
  li        r0, 0
  b         .loc_0x1B88

.loc_0x1B68:
  mr        r4, r28
  addi      r3, r30, 0x610
  bl        -0x39B834
  cmpwi     r3, 0
  bne-      .loc_0x1B84
  li        r0, 0x1
  b         .loc_0x1B88

.loc_0x1B84:
  li        r0, 0

.loc_0x1B88:
  rlwinm.   r0,r0,0,24,31
  bne-      .loc_0x1BD0
  addic.    r0, r30, 0x810
  beq-      .loc_0x1BA0
  cmplwi    r28, 0
  bne-      .loc_0x1BA8

.loc_0x1BA0:
  li        r0, 0
  b         .loc_0x1BC8

.loc_0x1BA8:
  mr        r4, r28
  addi      r3, r30, 0x810
  bl        -0x39B874
  cmpwi     r3, 0
  bne-      .loc_0x1BC4
  li        r0, 0x1
  b         .loc_0x1BC8

.loc_0x1BC4:
  li        r0, 0

.loc_0x1BC8:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1BDC

.loc_0x1BD0:
  li        r0, 0
  stb       r0, 0x19(r23)
  b         .loc_0x1C5C

.loc_0x1BDC:
  addic.    r0, r30, 0x94
  beq-      .loc_0x1BEC
  cmplwi    r28, 0
  bne-      .loc_0x1BF4

.loc_0x1BEC:
  li        r0, 0
  b         .loc_0x1C14

.loc_0x1BF4:
  mr        r4, r28
  addi      r3, r30, 0x94
  bl        -0x39B8C0
  cmpwi     r3, 0
  bne-      .loc_0x1C10
  li        r0, 0x1
  b         .loc_0x1C14

.loc_0x1C10:
  li        r0, 0

.loc_0x1C14:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1C5C
  lwz       r0, 0x0(r24)
  cmpwi     r0, 0x1
  beq-      .loc_0x1C3C
  bge-      .loc_0x1C30
  b         .loc_0x1C54

.loc_0x1C30:
  cmpwi     r0, 0x3
  bge-      .loc_0x1C54
  b         .loc_0x1C48

.loc_0x1C3C:
  li        r0, 0x8A4
  stw       r0, 0x1C(r23)
  b         .loc_0x1C5C

.loc_0x1C48:
  li        r0, 0x8A5
  stw       r0, 0x1C(r23)
  b         .loc_0x1C5C

.loc_0x1C54:
  li        r0, 0x8A3
  stw       r0, 0x1C(r23)

.loc_0x1C5C:
  addic.    r0, r30, 0x610
  beq-      .loc_0x1C6C
  cmplwi    r28, 0
  bne-      .loc_0x1C74

.loc_0x1C6C:
  li        r0, 0
  b         .loc_0x1C94

.loc_0x1C74:
  mr        r4, r28
  addi      r3, r30, 0x610
  bl        -0x39B940
  cmpwi     r3, 0
  bne-      .loc_0x1C90
  li        r0, 0x1
  b         .loc_0x1C94

.loc_0x1C90:
  li        r0, 0

.loc_0x1C94:
  rlwinm.   r0,r0,0,24,31
  beq-      .loc_0x1CA4
  li        r0, 0x597B
  stw       r0, 0x1C(r23)

.loc_0x1CA4:
  lwz       r3, 0x8(r1)
  addis     r0, r3, 0x1
  cmplwi    r0, 0xFFFF
  beq-      .loc_0x1D14
  lwz       r0, -0x6780(r13)
  cmplwi    r0, 0
  bne-      .loc_0x1CD4
  addi      r3, r30, 0x20
  addi      r5, r30, 0x14
  li        r4, 0x1D3
  crclr     6, 0x6
  bl        -0x43BA14

.loc_0x1CD4:
  lwz       r22, -0x6780(r13)
  cmplwi    r22, 0
  bne-      .loc_0x1CF4
  addi      r3, r30, 0x20
  addi      r5, r30, 0x14
  li        r4, 0x1DC
  crclr     6, 0x6
  bl        -0x43BA34

.loc_0x1CF4:
  lwz       r4, 0x8(r1)
  mr        r3, r22
  addi      r5, r1, 0xC
  bl        -0x1300A0
  li        r0, 0xFF
  mr        r26, r3
  stb       r0, 0x0(r25)
  b         .loc_0x1D8C

.loc_0x1D14:
  lbz       r0, 0x1C(r1)
  extsb.    r0, r0
  beq-      .loc_0x1D8C
  lwz       r0, -0x6780(r13)
  cmplwi    r0, 0
  bne-      .loc_0x1D40
  addi      r3, r30, 0x20
  addi      r5, r30, 0x14
  li        r4, 0x1D3
  crclr     6, 0x6
  bl        -0x43BA80

.loc_0x1D40:
  lwz       r22, -0x6780(r13)
  cmplwi    r22, 0
  bne-      .loc_0x1D60
  addi      r3, r30, 0x20
  addi      r5, r30, 0x14
  li        r4, 0x1DC
  crclr     6, 0x6
  bl        -0x43BAA0

.loc_0x1D60:
  mr        r3, r22
  addi      r4, r1, 0x1C
  addi      r5, r1, 0xC
  bl        -0x1301A4
  mr.       r26, r3
  bne-      .loc_0x1D8C
  addi      r3, r30, 0
  addi      r5, r30, 0x14
  li        r4, 0x278
  crclr     6, 0x6
  bl        -0x43BACC

.loc_0x1D8C:
  mr        r3, r26
  lmw       r22, 0x48(r1)
  lwz       r0, 0x74(r1)
  mtlr      r0
  addi      r1, r1, 0x70
  blr
*/

/*
 * --INFO--
 * Address:	80466128
 * Size:	000184
 */
Demo::~Demo()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r5, lbl_8049D080@ha
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	or.      r27, r3, r3
	mr       r28, r4
	addi     r31, r5, lbl_8049D080@l
	beq      lbl_80466294
	lis      r4, __vt__Q23PSM4Demo@ha
	addi     r0, r4, __vt__Q23PSM4Demo@l
	stw      r0, 0(r27)
	bl       becomeSceneCamera__Q23PSM4DemoFv
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_8046617C
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046617C:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_8046619C
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046619C:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_804661BC
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804661BC:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_804661E0
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804661E0:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80466200
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5a
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466200:
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	lwz      r30, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80466224
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466224:
	lwz      r29, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r29, 0
	bne      lbl_80466244
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466244:
	mr       r3, r29
	mr       r4, r30
	bl       deleteScene__Q28PSSystem8SceneMgrFPQ28PSSystem5Scene
	lwz      r3, 0x28(r27)
	bl       __dl__FPv
	cmplwi   r30, 0
	beq      lbl_80466278
	mr       r3, r30
	li       r4, 1
	lwz      r12, 0(r30)
	lwz      r12, 0xc(r12)
	mtctr    r12
	bctrl

lbl_80466278:
	mr       r3, r27
	li       r4, 0
	bl       __dt__11JKRDisposerFv
	extsh.   r0, r28
	ble      lbl_80466294
	mr       r3, r27
	bl       __dl__FPv

lbl_80466294:
	mr       r3, r27
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	804662AC
 * Size:	0006C0
 */
void Demo::onDemoTop()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r4, lbl_8049D080@ha
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r29, r3
	addi     r31, r4, lbl_8049D080@l
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_804662E8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804662E8:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466308
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466308:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466328
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466328:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_8046634C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046634C:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_8046636C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046636C:
	lwz      r3, 4(r28)
	lwz      r12, 0(r3)
	lwz      r12, 0x3c(r12)
	mtctr    r12
	bctrl
	lwz      r0,
"sInstance__Q28PSSystem34SingletonBase<Q23PSM11ObjCalcBase>"@sda21(r13) cmplwi
r0, 0 bne      lbl_804663A0 addi     r3, r31, 0x86c addi     r5, r31, 0x14 li
r4, 0x89 crclr    6 bl       panic_f__12JUTExceptionFPCciPCce

lbl_804663A0:
	lwz      r3,
"sInstance__Q28PSSystem34SingletonBase<Q23PSM11ObjCalcBase>"@sda21(r13) li r4, 1
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_804663D8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804663D8:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_804663F8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804663F8:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466418
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466418:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_8046643C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046643C:
	mr       r3, r28
	lwz      r12, 0(r28)
	lwz      r12, 0x4c(r12)
	mtctr    r12
	bctrl
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466470
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466470:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466490
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466490:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_804664B0
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804664B0:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_804664D4
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804664D4:
	mr       r3, r28
	lwz      r12, 0(r28)
	lwz      r12, 0x2c(r12)
	mtctr    r12
	bctrl
	or.      r27, r3, r3
	beq      lbl_804664F8
	li       r0, 0
	sth      r0, 0x10(r27)

lbl_804664F8:
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466518
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466518:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466538
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466538:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466558
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466558:
	lwz      r3, 4(r28)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_8046657C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046657C:
	lwz      r12, 0(r30)
	mr       r3, r30
	lwz      r12, 0x40(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_804665AC
	addi     r3, r31, 0x858
	addi     r5, r31, 0x14
	li       r4, 0x177
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804665AC:
	lwz      r28, 0x28(r29)
	addi     r4, r31, 0x94
	mr       r3, r28
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x80
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x168
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0xb0
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x180
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x26c
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x37c
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x878
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466664
	mr       r3, r28
	addi     r4, r31, 0x5c
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_804666FC

lbl_80466664:
	addi     r3, r30, 0x10
	li       r4, 0xf
	bl       stopAllSound__Q28PSSystem6SeqMgrFUl
	cmplwi   r27, 0
	beq      lbl_8046671C
	mr       r3, r27
	bl       off__Q28PSSystem8EnvSeMgrFv
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x58(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_804666D8
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x6c(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_804666D8
	mr       r3, r27
	li       r4, 0x3079
	li       r5, 1
	bl       on__Q28PSSystem8EnvSeMgrFUlb
	mr       r3, r27
	li       r4, 0x307a
	li       r5, 1
	bl       on__Q28PSSystem8EnvSeMgrFUlb

lbl_804666D8:
	mr       r3, r27
	li       r4, 0x4014
	li       r5, 1
	bl       off__Q28PSSystem8EnvSeMgrFUlb
	mr       r3, r27
	li       r4, 0x4015
	li       r5, 1
	bl       off__Q28PSSystem8EnvSeMgrFUlb
	b        lbl_8046671C

lbl_804666FC:
	addi     r3, r30, 0x10
	li       r4, 1
	bl       pauseOnAllSeq__Q28PSSystem6SeqMgrFQ38PSSystem7SeqBase9PauseMode
	cmplwi   r27, 0
	beq      lbl_8046671C
	mr       r3, r27
	li       r4, 2
	bl       setAllPauseFlag__Q28PSSystem8EnvSeMgrFUc

lbl_8046671C:
	mr       r3, r28
	addi     r4, r31, 0x824
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80466740
	addi     r3, r30, 0x10
	li       r4, 0xf
	bl       stopAllSound__Q28PSSystem6SeqMgrFUl
	b        lbl_804668C8

lbl_80466740:
	mr       r3, r28
	addi     r4, r31, 0x5a8
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80466838
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466774
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466774:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466794
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466794:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_804667B4
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xc7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804667B4:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_804667D8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1e5
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804667D8:
	addi     r3, r28, 0x10
	li       r4, 1
	bl       getSeq__Q28PSSystem6SeqMgrFUl
	or.      r28, r3, r3
	bne      lbl_80466800
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1e7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466800:
	cmplwi   r28, 0
	bne      lbl_8046681C
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x2db
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046681C:
	mr       r3, r28
	li       r4, 5
	lwz      r12, 0x10(r28)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	b        lbl_804668C8

lbl_80466838:
	mr       r3, r28
	addi     r4, r31, 0x580
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_804668C8
	lwz      r0,
"sInstance__Q28PSSystem49SingletonBase<Q36PSGame10SoundTable11CategoryMgr>"@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_8046686C
	addi     r3, r31, 0x86c
	addi     r5, r31, 0x14
	li       r4, 0x89
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046686C:
	lwz      r28,
"sInstance__Q28PSSystem49SingletonBase<Q36PSGame10SoundTable11CategoryMgr>"@sda21(r13)
	lwz      r0, 0x18(r28)
	cmplwi   r0, 0
	bne      lbl_80466890
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x5d
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466890:
	lwz      r3, 0x18(r28)
	li       r0, 1
	stb      r0, 0x15(r3)
	lwz      r0, 0xc(r28)
	cmplwi   r0, 0
	bne      lbl_804668BC
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x5d
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804668BC:
	lwz      r3, 0xc(r28)
	li       r0, 1
	stb      r0, 0x15(r3)

lbl_804668C8:
	lwz      r4, 0x1c(r29)
	addis    r0, r4, 1
	cmplwi   r0, 0xffff
	beq      lbl_804668E4
	lwz      r3, spSysIF__8PSSystem@sda21(r13)
	li       r5, 0
	bl       playSystemSe__Q28PSSystem5SysIFFUlUl

lbl_804668E4:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80466904
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466904:
	lwz      r3, 4(r30)
	addi     r3, r3, 0x10
	bl       getFirstSeq__Q28PSSystem6SeqMgrFv
	cmplwi   r3, 0
	beq      lbl_80466958
	lbz      r0, 0x19(r29)
	cmplwi   r0, 0
	beq      lbl_80466958
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80466944
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466944:
	lwz      r3, 4(r30)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl

lbl_80466958:
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8046696C
 * Size:	000104
 */
void Demo::becomeSceneCamera()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lis      r3, lbl_8049D080@ha
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	addi     r31, r3, lbl_8049D080@l
	stw      r30, 8(r1)
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_804669A8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804669A8:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_804669C8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804669C8:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_804669E8
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804669E8:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_80466A0C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466A0C:
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x3c(r12)
	mtctr    r12
	bctrl
	lwz      r0,
"sInstance__Q28PSSystem34SingletonBase<Q23PSM11ObjCalcBase>"@sda21(r13) cmplwi
r0, 0 bne      lbl_80466A40 addi     r3, r31, 0x86c addi     r5, r31, 0x14 li
r4, 0x89 crclr    6 bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466A40:
	lwz      r3,
"sInstance__Q28PSSystem34SingletonBase<Q23PSM11ObjCalcBase>"@sda21(r13) li r4, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80466A70
 * Size:	0000FC
 */
void Demo::onDemoFadeoutStart(unsigned long)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r3, lbl_8049D080@ha
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	addi     r31, r3, lbl_8049D080@l
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r4
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466AB4
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466AB4:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_80466AD4
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466AD4:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80466AF4
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466AF4:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_80466B18
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466B18:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80466B38
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466B38:
	lwz      r3, 4(r30)
	addi     r4, r29, -2
	lwz      r12, 0(r3)
	lwz      r12, 0x24(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	80466B6C
 * Size:	000664
 */
void Demo::onDemoEnd()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r4, lbl_8049D080@ha
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r29, r3
	addi     r31, r4, lbl_8049D080@l
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466BA8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466BA8:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466BC8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466BC8:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466BE8
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466BE8:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_80466C0C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466C0C:
	mr       r3, r28
	lwz      r12, 0(r28)
	lwz      r12, 0x3c(r12)
	mtctr    r12
	bctrl
	lwz      r0,
"sInstance__Q28PSSystem34SingletonBase<Q23PSM11ObjCalcBase>"@sda21(r13) cmplwi
r0, 0 bne      lbl_80466C40 addi     r3, r31, 0x86c addi     r5, r31, 0x14 li
r4, 0x89 crclr    6 bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466C40:
	lwz      r3,
"sInstance__Q28PSSystem34SingletonBase<Q23PSM11ObjCalcBase>"@sda21(r13) li r4, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466C78
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466C78:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466C98
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466C98:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466CB8
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466CB8:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_80466CDC
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466CDC:
	mr       r3, r28
	lwz      r12, 0(r28)
	lwz      r12, 0x50(r12)
	mtctr    r12
	bctrl
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466D10
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466D10:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466D30
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466D30:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466D50
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466D50:
	lwz      r3, 4(r28)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_80466D74
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466D74:
	lwz      r12, 0(r30)
	mr       r3, r30
	lwz      r12, 0x40(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_80466DA4
	addi     r3, r31, 0x858
	addi     r5, r31, 0x14
	li       r4, 0x177
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466DA4:
	lwz      r12, 0(r30)
	mr       r3, r30
	lwz      r28, 0x28(r29)
	lwz      r12, 0x2c(r12)
	mtctr    r12
	bctrl
	or.      r27, r3, r3
	beq      lbl_80466EF0
	mr       r3, r28
	addi     r4, r31, 0x94
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x80
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x168
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0xb0
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x180
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x26c
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x37c
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x878
	bl       strcmp
	cmpwi    r3, 0
	beq      lbl_80466E78
	mr       r3, r28
	addi     r4, r31, 0x5c
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80466EE8

lbl_80466E78:
	mr       r3, r27
	bl       off__Q28PSSystem8EnvSeMgrFv
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x58(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_80466ED8
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x6c(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_80466ED8
	mr       r3, r27
	li       r4, 0x3079
	li       r5, 1
	bl       on__Q28PSSystem8EnvSeMgrFUlb
	mr       r3, r27
	li       r4, 0x307a
	li       r5, 1
	bl       on__Q28PSSystem8EnvSeMgrFUlb

lbl_80466ED8:
	mr       r3, r27
	li       r4, 0
	bl       setAllPauseFlag__Q28PSSystem8EnvSeMgrFUc
	b        lbl_80466EF0

lbl_80466EE8:
	mr       r3, r27
	bl       reservePauseOff__Q28PSSystem8EnvSeMgrFv

lbl_80466EF0:
	mr       r3, r28
	addi     r4, r31, 0x5a8
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80466FA0
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466F24
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466F24:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466F44
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466F44:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80466F64
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466F64:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_80466F88
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466F88:
	mr       r3, r28
	lwz      r12, 0(r28)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_80467184

lbl_80466FA0:
	mr       r3, r28
	addi     r4, r31, 0x1ec
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80467094
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80466FD4
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466FD4:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_80466FF4
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80466FF4:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80467014
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xc7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467014:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_80467038
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1e5
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467038:
	addi     r3, r28, 0x10
	li       r4, 1
	bl       getSeq__Q28PSSystem6SeqMgrFUl
	or.      r28, r3, r3
	bne      lbl_80467060
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1e7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467060:
	cmplwi   r28, 0
	bne      lbl_8046707C
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x342
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046707C:
	mr       r3, r28
	lwz      r12, 0x10(r28)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	b        lbl_80467184

lbl_80467094:
	mr       r3, r28
	addi     r4, r31, 0x610
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80467184
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_804670C8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804670C8:
	lwz      r28, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r28, 0
	bne      lbl_804670E8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804670E8:
	lwz      r0, 4(r28)
	cmplwi   r0, 0
	bne      lbl_80467108
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xc7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467108:
	lwz      r3, 4(r28)
	lwz      r28, 4(r3)
	cmplwi   r28, 0
	bne      lbl_8046712C
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1e5
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046712C:
	addi     r3, r28, 0x10
	li       r4, 1
	bl       getSeq__Q28PSSystem6SeqMgrFUl
	or.      r28, r3, r3
	bne      lbl_80467154
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1e7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467154:
	cmplwi   r28, 0
	bne      lbl_80467170
	addi     r3, r31, 0
	addi     r5, r31, 0x14
	li       r4, 0x346
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467170:
	mr       r3, r28
	lwz      r12, 0x10(r28)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl

lbl_80467184:
	addi     r3, r30, 0x10
	bl       reservePauseOffAllSeq__Q28PSSystem6SeqMgrFv
	lwz      r12, 0x24(r29)
	cmplwi   r12, 0
	beq      lbl_804671A0
	mtctr    r12
	bctrl

lbl_804671A0:
	lwz      r4, 0x20(r29)
	addis    r0, r4, 1
	cmplwi   r0, 0xffff
	beq      lbl_804671BC
	lwz      r3, spSysIF__8PSSystem@sda21(r13)
	li       r5, 0
	bl       playSystemSe__Q28PSSystem5SysIFFUlUl

lbl_804671BC:
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	804671D0
 * Size:	000268
 */
void Demo::onMessageEnd(int)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r4
	lwz      r30, 0x28(r3)
	lis      r3, lbl_8049D080@ha
	addi     r31, r3, lbl_8049D080@l
	mr       r3, r30
	addi     r4, r31, 0x580
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_80467348
	lwz      r0,
"sInstance__Q28PSSystem49SingletonBase<Q36PSGame10SoundTable11CategoryMgr>"@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_8046722C
	addi     r3, r31, 0x86c
	addi     r5, r31, 0x14
	li       r4, 0x89
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046722C:
	lwz      r30,
"sInstance__Q28PSSystem49SingletonBase<Q36PSGame10SoundTable11CategoryMgr>"@sda21(r13)
	lwz      r0, 0x18(r30)
	cmplwi   r0, 0
	bne      lbl_80467250
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x5d
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467250:
	lwz      r3, 0x18(r30)
	li       r0, 0
	stb      r0, 0x15(r3)
	lwz      r0, 0xc(r30)
	cmplwi   r0, 0
	bne      lbl_8046727C
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x5d
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046727C:
	lwz      r3, 0xc(r30)
	li       r0, 0
	stb      r0, 0x15(r3)
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_804672A8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804672A8:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_804672C8
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804672C8:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_804672E8
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804672E8:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_8046730C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046730C:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_8046732C
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5a
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8046732C:
	lwz      r3, 4(r30)
	li       r4, 5
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	b        lbl_8046741C

lbl_80467348:
	mr       r3, r30
	addi     r4, r31, 0x810
	bl       strcmp
	cmpwi    r3, 0
	bne      lbl_8046741C
	cmpwi    r29, 0
	bne      lbl_8046741C
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80467384
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467384:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_804673A4
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804673A4:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_804673C4
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804673C4:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_804673E8
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804673E8:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80467408
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0x5a
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467408:
	lwz      r3, 4(r30)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl

lbl_8046741C:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

} // namespace PSM

/*
 * --INFO--
 * Address:	80467438
 * Size:	0000E4
 */
void PSMCancelToPauseOffMainBgm()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lis      r3, lbl_8049D080@ha
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	addi     r31, r3, lbl_8049D080@l
	stw      r30, 8(r1)
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80467474
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467474:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_80467494
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467494:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_804674B4
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804674B4:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_804674D8
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804674D8:
	addi     r3, r30, 0x10
	bl       cancelPauseOffAllSeq__Q28PSSystem6SeqMgrFv
	mr       r3, r30
	lwz      r12, 0(r30)
	lwz      r12, 0x2c(r12)
	mtctr    r12
	bctrl
	cmplwi   r3, 0
	beq      lbl_80467504
	li       r0, 0
	sth      r0, 0x10(r3)

lbl_80467504:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8046751C
 * Size:	0000EC
 */
PSM::Scene_Game* PSMGetGameSceneA()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lis      r3, lbl_8049D080@ha
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	addi     r31, r3, lbl_8049D080@l
	stw      r30, 8(r1)
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_80467558
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467558:
	lwz      r30, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r30, 0
	bne      lbl_80467578
	addi     r3, r31, 0x20
	addi     r5, r31, 0x14
	li       r4, 0x1dc
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467578:
	lwz      r0, 4(r30)
	cmplwi   r0, 0
	bne      lbl_80467598
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x14
	li       r4, 0xcf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80467598:
	lwz      r3, 4(r30)
	lwz      r30, 4(r3)
	cmplwi   r30, 0
	bne      lbl_804675BC
	addi     r3, r31, 0x2c
	addi     r5, r31, 0x38
	li       r4, 0xd1
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804675BC:
	lwz      r12, 0(r30)
	mr       r3, r30
	lwz      r12, 0x40(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_804675EC
	addi     r3, r31, 0x858
	addi     r5, r31, 0x14
	li       r4, 0x177
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_804675EC:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80467608
 * Size:	000018
 */
bool PSM::Scene_Cave::isPollutUp()
{
	return (mPollutUpTimer != -1);
	/*
	lwz      r4, 0x64(r3)
	subfic   r3, r4, -1
	addi     r0, r4, 1
	or       r0, r3, r0
	srwi     r3, r0, 0x1f
	blr
	*/
}

/*
 * --INFO--
 * Address:	80467620
 * Size:	000008
 */
PSSystem::EnvSeBase* PSM::SceneBase::getEnvSe() { return nullptr; }

/*
 * --INFO--
 * Address:	80467628
 * Size:	000008
 */
void PSM::ObjCalcBase::setMode(PSM::ObjCalcBase::Mode mode) { mMode = mode; }
