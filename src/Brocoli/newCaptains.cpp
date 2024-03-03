#include "Brocoli/NewCaptains.h"
#include "Brocoli/NaviPowers.h"
#include "JSystem/JKernel/JKRDvdRipper.h"

NewCaptains::NewCaptains() { 

	for (int i = 0; i != 4; i++)
		chosenCaptains[i] = i;

	void* f = JKRDvdRipper::loadToMainRAM("brocoli/newCaptainInfo.txt", nullptr, Switch_0, 0, nullptr, JKRDvdRipper::ALLOC_DIR_BOTTOM, 0,
	                                        nullptr, nullptr);
	if (f) {
		RamStream stream(f, -1);
		stream.resetPosition(true, 1);

		this->read(stream);

		delete[] f;
	}
}

void NewCaptains::updog(char* c)
{
	for (int i = 0; i != 64; i++) {
		if (c[i] >= 'a' && c[i] <= 'z') {
			c[i] ^= 0x20;
		}
	}
}

void NewCaptains::read(Stream& s) { 
	int num = s.readInt();
	newCaptains = new NewCaptainInfo[num];
	newCaptainNum = num;

	int slot = 0;
	int i            = 0;
	bool xorableTime = false;
	char sus[64];
	while (!s.eof()) {

		s.readString(sus, 64);
		updog(sus);
		if (strcmp(sus, "END") == 0)
			break;

		strcpy(newCaptains[i].name, sus);
		newCaptains[i].size = s.readFloat();
		newCaptains[i].slot = slot;
		xorableTime         = false;

		while (true) {
			s.readString(sus, 64);
			updog(sus);
			if (sus[0] == '?') {
				xorableTime = true;
				continue;
			} else if (strcmp(sus, "SLOTREPEAT") == 0) {
				slot--;
				continue;
			} else if (strcmp(sus, "NEXT") == 0) {
				break;
			}

			long long x = (1ULL << GetNaviPowerIDValue(sus));
			if (xorableTime) {
				newCaptains[i].xorablePowers |= x;
			} else {
				newCaptains[i].powers |= x;
			}

		}

		if (newCaptains[i].xorablePowers == 0)
			newCaptains[i].xorablePowers = (1ULL << TEAM_FAST);
		i++;
		slot++;
		
	}
}