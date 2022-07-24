#ifndef _JADUTILITY_PRMBASE_H
#define _JADUTILITY_PRMBASE_H

/*
    __vt__Q210JADUtility7PrmBase:
    .4byte 0
    .4byte 0
    .4byte __dt__Q210JADUtility7PrmBaseFv
    .4byte save__Q210JADUtility7PrmBaseFR21JSUMemoryOutputStream
    .4byte load__Q210JADUtility7PrmBaseFR20JSUMemoryInputStream
*/

namespace JADUtility {
struct PrmBase {
	virtual ~PrmBase();                        // _08 (inline)
	virtual void save(JSUMemoryOutputStream&); // _0C (inline)
	virtual void load(JSUMemoryInputStream&);  // _10 (inline)
};
} // namespace JADUtility

#endif
