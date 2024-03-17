#ifndef _NEW_CAPTAINS_H
#define _NEW_CAPTAINS_H

#include "BitFlag.h"
#include "Brocoli/NaviPowers.h"

struct NewCaptains {
	NewCaptains();

	struct NewCaptainInfo {
		char name[32];
		int slot;
		float size;
		NaviPowers powers;
		long long xorablePowers;
	};

	NewCaptainInfo* newCaptains;
	int newCaptainNum;
	char chosenCaptains[4];
	void updog(char*);
	void read(Stream&);
};

#endif