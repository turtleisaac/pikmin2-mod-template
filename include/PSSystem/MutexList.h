#ifndef _PSSYSTEM_MUTEXLIST_H
#define _PSSYSTEM_MUTEXLIST_H

#include "Dolphin/os.h"
#include "JSystem/JSU/JSUList.h"

namespace PSSystem {
template <typename T> struct MutexList : JSUList<T> {
	bool append_Lock(JSULink<T>* link)
	{
		OSLockMutex(&m_mutex);
		bool result = append(link);
		OSUnlockMutex(&m_mutex);
		return result;
	}
	bool remove_Lock(JSULink<T>* link)
	{
		OSLockMutex(&m_mutex);
		bool result = remove(link);
		OSUnlockMutex(&m_mutex);
		return result;
	}

	OSMutexObject m_mutex; // _0C
};
} // namespace PSSystem

#endif