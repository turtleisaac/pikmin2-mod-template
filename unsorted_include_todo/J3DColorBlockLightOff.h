#ifndef _J3DCOLORBLOCKLIGHTOFF_H
#define _J3DCOLORBLOCKLIGHTOFF_H

/*
    __vt__21J3DColorBlockLightOff:
    .4byte 0
    .4byte 0
    .4byte load__21J3DColorBlockLightOffFv
    .4byte reset__21J3DColorBlockLightOffFP13J3DColorBlock
    .4byte patch__21J3DColorBlockLightOffFv
    .4byte patchMatColor__21J3DColorBlockLightOffFv
    .4byte patchLight__21J3DColorBlockLightOffFv
    .4byte diff__21J3DColorBlockLightOffFUl
    .4byte diffMatColor__21J3DColorBlockLightOffFv
    .4byte diffLight__21J3DColorBlockLightOffFv
    .4byte countDLSize__21J3DColorBlockLightOffFv
    .4byte getType__21J3DColorBlockLightOffFv
    .4byte setMatColor__21J3DColorBlockLightOffFUlPC10J3DGXColor
    .4byte setMatColor__21J3DColorBlockLightOffFUl10J3DGXColor
    .4byte getMatColor__21J3DColorBlockLightOffFUl
    .4byte setAmbColor__13J3DColorBlockFUlPC10J3DGXColor
    .4byte setAmbColor__13J3DColorBlockFUl10J3DGXColor
    .4byte getAmbColor__13J3DColorBlockFUl
    .4byte setColorChanNum__21J3DColorBlockLightOffFUc
    .4byte setColorChanNum__21J3DColorBlockLightOffFPCUc
    .4byte getColorChanNum__21J3DColorBlockLightOffCFv
    .4byte setColorChan__21J3DColorBlockLightOffFUlRC12J3DColorChan
    .4byte setColorChan__21J3DColorBlockLightOffFUlPC12J3DColorChan
    .4byte getColorChan__21J3DColorBlockLightOffFUl
    .4byte setLight__13J3DColorBlockFUlP11J3DLightObj
    .4byte getLight__13J3DColorBlockFUl
    .4byte setCullMode__21J3DColorBlockLightOffFPCUc
    .4byte setCullMode__21J3DColorBlockLightOffFUc
    .4byte getCullMode__21J3DColorBlockLightOffCFv
    .4byte getMatColorOffset__21J3DColorBlockLightOffCFv
    .4byte getColorChanOffset__21J3DColorBlockLightOffCFv
    .4byte setMatColorOffset__21J3DColorBlockLightOffFUl
    .4byte setColorChanOffset__21J3DColorBlockLightOffFUl
    .4byte __dt__21J3DColorBlockLightOffFv
    .4byte 0
*/

struct J3DColorBlock {
	virtual void load();                                           // _08
	virtual void reset(J3DColorBlock*);                            // _0C
	virtual void patch();                                          // _10
	virtual void patchMatColor();                                  // _14
	virtual void patchLight();                                     // _18
	virtual void diff(unsigned long);                              // _1C
	virtual void diffMatColor();                                   // _20
	virtual void diffLight();                                      // _24
	virtual void countDLSize();                                    // _28
	virtual void getType();                                        // _2C (inline)
	virtual void setMatColor(unsigned long, const J3DGXColor*);    // _30 (inline)
	virtual void setMatColor(unsigned long, J3DGXColor);           // _34 (inline)
	virtual void getMatColor(unsigned long);                       // _38 (inline)
	virtual void setAmbColor(unsigned long, const J3DGXColor*);    // _3C (inline)
	virtual void setAmbColor(unsigned long, J3DGXColor);           // _40 (inline)
	virtual void getAmbColor(unsigned long);                       // _44 (inline)
	virtual void setColorChanNum(unsigned char);                   // _48 (inline)
	virtual void setColorChanNum(const unsigned char*);            // _4C (inline)
	virtual void getColorChanNum() const;                          // _50 (inline)
	virtual void setColorChan(unsigned long, const J3DColorChan&); // _54 (inline)
	virtual void setColorChan(unsigned long, const J3DColorChan*); // _58 (inline)
	virtual void getColorChan(unsigned long);                      // _5C (inline)
	virtual void setLight(unsigned long, J3DLightObj*);            // _60 (inline)
	virtual void getLight(unsigned long);                          // _64 (inline)
};

struct J3DColorBlockLightOff : public J3DColorBlock {
	virtual void load();                                           // _08
	virtual void reset(J3DColorBlock*);                            // _0C
	virtual void patch();                                          // _10
	virtual void patchMatColor();                                  // _14
	virtual void patchLight();                                     // _18
	virtual void diff(unsigned long);                              // _1C
	virtual void diffMatColor();                                   // _20
	virtual void diffLight();                                      // _24
	virtual void countDLSize();                                    // _28
	virtual void getType();                                        // _2C (inline)
	virtual void setMatColor(unsigned long, const J3DGXColor*);    // _30 (inline)
	virtual void setMatColor(unsigned long, J3DGXColor);           // _34 (inline)
	virtual void getMatColor(unsigned long);                       // _38 (inline)
	virtual void setColorChanNum(unsigned char);                   // _48 (inline)
	virtual void setColorChanNum(const unsigned char*);            // _4C (inline)
	virtual void getColorChanNum() const;                          // _50 (inline)
	virtual void setColorChan(unsigned long, const J3DColorChan&); // _54 (inline)
	virtual void setColorChan(unsigned long, const J3DColorChan*); // _58 (inline)
	virtual void getColorChan(unsigned long);                      // _5C (inline)
	virtual void setCullMode(const unsigned char*);                // _68 (inline)
	virtual void setCullMode(unsigned char);                       // _6C (inline)
	virtual void getCullMode() const;                              // _70 (inline)
	virtual void getMatColorOffset() const;                        // _74 (inline)
	virtual void getColorChanOffset() const;                       // _78 (inline)
	virtual void setMatColorOffset(unsigned long);                 // _7C (inline)
	virtual void setColorChanOffset(unsigned long);                // _80 (inline)
	virtual ~J3DColorBlockLightOff();                              // _84 (inline)
	virtual void _88() = 0;                                        // _88
};

#endif
