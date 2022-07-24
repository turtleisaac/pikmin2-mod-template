#ifndef _P2JME_ANALYZER_H
#define _P2JME_ANALYZER_H

/*
    __vt__Q25P2JME8Analyzer:
    .4byte 0
    .4byte 0
    .4byte __dt__Q25P2JME8AnalyzerFv
    .4byte do_reset__Q28JMessage10TProcessorFv
    .4byte do_character__Q25P2JME8AnalyzerFi
    .4byte do_tag__Q25P2JME23TRenderingProcessorBaseFUlPCvUl
    .4byte do_systemTagCode__Q28JMessage10TProcessorFUsPCvUl
    .4byte do_select_begin__Q28JMessage10TProcessorFUl
    .4byte do_select_end__Q28JMessage10TProcessorFv
    .4byte do_select_separate__Q28JMessage10TProcessorFv
    .4byte do_reset___Q28JMessage19TRenderingProcessorFPCc
    .4byte do_setBegin_isReady___Q28JMessage10TProcessorCFv
    .4byte do_begin___Q28JMessage19TRenderingProcessorFPCvPCc
    .4byte do_end___Q28JMessage19TRenderingProcessorFv
    .4byte do_tag___Q28JMessage19TRenderingProcessorFUlPCvUl
    .4byte do_systemTagCode___Q28JMessage19TRenderingProcessorFUsPCvUl
    .4byte do_begin__Q28JMessage19TRenderingProcessorFPCvPCc
    .4byte do_end__Q28JMessage19TRenderingProcessorFv
    .4byte tagColor__Q25P2JME8AnalyzerFPCvUl
    .4byte tagSize__Q25P2JME8AnalyzerFPCvUl
    .4byte tagRuby__Q25P2JME8AnalyzerFPCvUl
    .4byte tagFont__Q25P2JME8AnalyzerFPCvUl
    .4byte tagImage__Q25P2JME8AnalyzerFUsPCvUl
    .4byte tagColorEX__Q25P2JME8AnalyzerFUsPCvUl
    .4byte tagControl__Q25P2JME8AnalyzerFUsPCvUl
    .4byte tagPosition__Q25P2JME8AnalyzerFUsPCvUl
*/

namespace JMessage {
struct TProcessor {
	virtual ~TProcessor();                                                     // _08 (inline)
	virtual void do_reset();                                                   // _0C
	virtual void do_character(int);                                            // _10
	virtual void _14() = 0;                                                    // _14
	virtual void do_systemTagCode(unsigned short, const void*, unsigned long); // _18
	virtual void do_select_begin(unsigned long);                               // _1C
	virtual void do_select_end();                                              // _20
	virtual void do_select_separate();                                         // _24
	virtual void _28() = 0;                                                    // _28
	virtual void do_setBegin_isReady_() const;                                 // _2C
};
} // namespace JMessage

namespace P2JME {
struct TRenderingProcessorBase {
	virtual ~TRenderingProcessorBase();                             // _08 (inline)
	virtual void _0C() = 0;                                         // _0C
	virtual void do_character(int);                                 // _10
	virtual void do_tag(unsigned long, const void*, unsigned long); // _14
};
} // namespace P2JME

namespace JMessage {
struct TRenderingProcessor {
	virtual ~TRenderingProcessor();                                             // _08 (inline)
	virtual void _0C() = 0;                                                     // _0C
	virtual void do_character(int);                                             // _10
	virtual void _14() = 0;                                                     // _14
	virtual void _18() = 0;                                                     // _18
	virtual void _1C() = 0;                                                     // _1C
	virtual void _20() = 0;                                                     // _20
	virtual void _24() = 0;                                                     // _24
	virtual void do_reset_(const char*);                                        // _28
	virtual void _2C() = 0;                                                     // _2C
	virtual void do_begin_(const void*, const char*);                           // _30
	virtual void do_end_();                                                     // _34
	virtual void do_tag_(unsigned long, const void*, unsigned long);            // _38
	virtual void do_systemTagCode_(unsigned short, const void*, unsigned long); // _3C
	virtual void do_begin(const void*, const char*);                            // _40
	virtual void do_end();                                                      // _44
};
} // namespace JMessage

namespace P2JME {
struct Analyzer : public TProcessor, public TRenderingProcessorBase, public TRenderingProcessor {
	virtual ~Analyzer();                                                  // _08 (inline)
	virtual void do_character(int);                                       // _10
	virtual void tagColor(const void*, unsigned long);                    // _48 (inline)
	virtual void tagSize(const void*, unsigned long);                     // _4C (inline)
	virtual void tagRuby(const void*, unsigned long);                     // _50 (inline)
	virtual void tagFont(const void*, unsigned long);                     // _54 (inline)
	virtual void tagImage(unsigned short, const void*, unsigned long);    // _58 (inline)
	virtual void tagColorEX(unsigned short, const void*, unsigned long);  // _5C (inline)
	virtual void tagControl(unsigned short, const void*, unsigned long);  // _60 (inline)
	virtual void tagPosition(unsigned short, const void*, unsigned long); // _64 (inline)

	Analyzer();
	void exec(char*);
};
} // namespace P2JME

#endif
