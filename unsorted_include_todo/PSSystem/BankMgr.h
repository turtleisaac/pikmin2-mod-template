#ifndef _PSSYSTEM_BANKMGR_H
#define _PSSYSTEM_BANKMGR_H

/*
    __vt__Q28PSSystem7BankMgr:
    .4byte 0
    .4byte 0
    .4byte __dt__Q28PSSystem7BankMgrFv
*/

namespace PSSystem {
struct BankMgr {
	virtual ~BankMgr(); // _08 (inline)

	void createInstance();
	BankMgr();
	void preInit();
	void init();
	void secondLoadS();
	void firstLoadS();
	void initS();
	void setWsDataS(unsigned long*);
	void setBankDataS(unsigned long*);
};
} // namespace PSSystem

#endif
