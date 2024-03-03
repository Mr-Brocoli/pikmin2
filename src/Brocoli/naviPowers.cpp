#include "Brocoli/NaviPowers.h"

NaviPowers::NaviPowers()
{
	powers.clear();
	NaviPowers::momentumSadTime = 0;
}


void NaviPowers::setPower(NaviPowerID power) { powers.set(1ULL << power); }

bool NaviPowers::isPower(NaviPowerID power) { return powers.isSet(1ULL << power); }


//It's not shown here but in the makeVelocity code if you're in water and don't 
//have water immunity you move slower
float NaviPowers::speedAdjust()
{ 
	if (isPower(LOBOTOMY_MOVEMENT))
		return 2.0f;
	if (isPower(TEAM_FAST) || isPower(CAPTAIN_FAST))
		return 1.25f;
	if (isPower(TEAM_SLOW) || isPower(CAPTAIN_SLOW))
		return 0.75f;
	if (isPower(MOMENTUM)) {
		if (isMomentumSad())
			return 0.75f;
		return 1.25f;
	}
	return 1.0f;
}

float NaviPowers::speedAdjustPikis()
{
	if (isPower(LOBOTOMY_MOVEMENT))
		return 2.0f;
	if (isPower(TEAM_FAST))
		return 1.25f;
	if (isPower(TEAM_SLOW))
		return 0.75f;
	if (isPower(MOMENTUM)) {
		if (isMomentumSad())
			return 0.75f;
		return 1.25f;
	}
	return 1.0f;
}

float NaviPowers::damageAdjust()
{ 
	if (isPower(HP_UP))
		return 0.5f;
	if (isPower(HP_DOWN))
		return 2.0f;
	//Anything that deals <1 damage should give mercy
	if (isPower(ONE_HIT_KO))
		return 50.0f;
	if (isPower(SANS_ONE_HIT_KO))
		return 0.0f;
	return 1.0f;
}

float NaviPowers::damageAdjustPikis()
{
	if (isPower(TEAM_STRONG))
		return 1.25f;
	if (isPower(TEAM_WEAK))
		return 0.75f;
	if (isPower(MOMENTUM))
		if (isMomentumSad())
			return 0.75f;
		return 1.25f;
	return 1.0f;
}

OSTime NaviPowers::momentumSadTime = 0;

bool NaviPowers::isMomentumSad() { return OSTicksToMilliseconds(NaviPowers::momentumSadTime - OSGetTime()) > 0; }

void NaviPowers::makeMomentumSad() { 
	NaviPowers::momentumSadTime += OSMillisecondsToTicks(5000);
	if (OSTicksToMilliseconds(NaviPowers::momentumSadTime - OSGetTime()) < 20000)
		NaviPowers::momentumSadTime = OSGetTime() + OSMillisecondsToTicks(20000);
}