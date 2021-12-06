#ifndef _GAME_GENERATORCACHE_H
#define _GAME_GENERATORCACHE_H

#include "types.h"
#include "Game/gameGenerator.h"

namespace Game {
/// @size{0x3C}
struct CourseCache : public CNode {
	CourseCache(int);

	virtual ~CourseCache(); // _00

	void beginSave(int);
	void getColorMePikmins(uchar*, int);
	void read(Stream&);
	void write(Stream&);

	int m_courseIndex;    // _18
	u32 m_offset;         // _1C
	u32 m_size;           // _20
	u32 m_generatorCount; // _24
	u32 m_generatorSize;  // _28
	u32 m_creatureCount;  // _2C
	u32 m_creatureSize;   // _30
	u32 m_pikiheadCount;  // _34
	u32 m_pikiheadSize;   // _38
};

/// @size{0x140}
struct GeneratorCache {
	GeneratorCache();
	~GeneratorCache();

	void addGenerator(Generator*);
	void beginSave(int);
	void checkOverflow();
	void clearCache();
	void clearGeneratorList();
	void createHeap();
	void createNumberGenerators();
	void destroyHeap();
	void endSave();
	void findCache(CourseCache&, int);
	void findRamGenerator(int);
	void getColorMePikmins(int);
	void getFirstGenerator();
	void getTotalMePikmins();
	void loadCreatures(int);
	void loadGenerators(int);
	void loadPikiheads();
	void read(Stream&);
	void saveGenerator(Generator*);
	void saveCreature(Generator*);
	void savePikiheads();
	void slideCache();
	void updateUseList();
	void write(Stream&);

	CourseCache _00;       // _00
	CourseCache _3C;       // _3C
	CourseCache* _78;      // _78
	uchar* m_heapBuffer;   // _7C
	int m_heapSize;        // _80
	uint m_freeOffset;     // _84
	int m_freeSize;        // _88
	Generator m_generator; // _8C
};

extern GeneratorCache* generatorCache;
} // namespace Game

#endif
