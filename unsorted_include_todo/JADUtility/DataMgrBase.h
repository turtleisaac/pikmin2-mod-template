#ifndef _JADUTILITY_DATAMGRBASE_H
#define _JADUTILITY_DATAMGRBASE_H

/*
    __vt__Q210JADUtility11DataMgrBase:
    .4byte 0
    .4byte 0
    .4byte __dt__Q210JADUtility11DataMgrBaseFv
    .4byte init__Q210JADUtility11DataMgrBaseFv
*/

namespace JADUtility {
struct DataMgrBase {
	virtual ~DataMgrBase(); // _08
	virtual void init();    // _0C (inline)

	DataMgrBase();
};
} // namespace JADUtility

#endif
