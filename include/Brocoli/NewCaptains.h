#ifndef _NEW_CAPTAINS_H
#define _NEW_CAPTAINS_H

#include "BitFlag.h"

struct NewCaptains {
	NewCaptains();

	struct NewCaptainInfo {
		char name[32];
		int slot;
		float size;
		long long powers;
		long long xorablePowers;
	};

	NewCaptainInfo* newCaptains;
	int newCaptainNum;
	char chosenCaptains[4];
	void updog(char*);
	void read(Stream&);

	long long slotToPowers(int slot) { 
		for (int i = 0; i != newCaptainNum; i++) {
			if (this->newCaptains[i].slot == slot)
				return newCaptains[i].powers;
		}
		return 0;
	}

	int slotIsPower(int slot, int power)
	{
		long long powers = slotToPowers(slot);
		return (powers & (1ULL << power)) != 0;
	}

};

#endif