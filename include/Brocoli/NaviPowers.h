#ifndef _NAVI_POWERS_H
#define _NAVI_POWERS_H

#define OHIOMACRO piki->getStateID() == PIKISTATE_Walk && piki->isThrowable()

#define BRUHMACRO piki->getStateID() == PIKISTATE_Walk && piki->isThrowable()

#include "BitFlag.h"
#include "Brocoli/enumFactory.h"


#define NAVI_POWER_ID(XX)          \
	XX(F, )                    \
	XX(E, )                    \
	XX(W, )                    \
	XX(P, )                    \
	XX(I, )                    \
	XX(B, )                    \
	XX(HEAVY, )                \
	XX(ROCKET_FIST, )          \
	XX(STELLAR_ORB, )          \
	XX(PLUCKAPHONE, )          \
	XX(MEGA_TWEETER, )          \
	XX(HP_UP, )                \
	XX(HP_DOWN, )              \
	XX(ONE_HIT_KO, )           \
	XX(NO_DEATHS_REQUIRED, )   \
	XX(TREASURE_GAUGE, )       \
	XX(KEY_GAUGE, )            \
	XX(CAPTAIN_GAUGE, )        \
	XX(SPICY_UP, )             \
	XX(MINTY_UP, )             \
	XX(TEAM_STRONG, )          \
	XX(TEAM_WEAK, )            \
	XX(TEAM_FAST, )            \
	XX(TEAM_SLOW, )            \
	XX(CAPTAIN_FAST, )         \
	XX(CAPTAIN_SLOW, )         \
	XX(OTHER_TEAM_SUPPORT, )   \
	XX(ENEMY_PRIORITY, )       \
	XX(ENEMY_INVISIBLE, )      \
	XX(ENEMY_POISON, )         \
	XX(LUCKY, )                \
	XX(GIANT_BREADBUG, )       \
	XX(WATER_WRAITH, )         \
	XX(KING_OF_BUGS, )         \
	XX(BOMB_CARRY, )           \
	XX(BONUS_PURPLES, )        \
	XX(BONUS_BULBMIN, )        \
	XX(UPSIDE_DOWN, )          \
	XX(SOLO_HYPERSPEED, )      \
	XX(MOMENTUM, )             \
	XX(YELLOW_SUPREMACY, )     \
	XX(YELLOW_HATRED, )        \
	XX(SPRAY_EXCHANGE, )       \
	XX(IMITATER_POWER, )       \
	XX(CARRY_EVERYTHING, )     \
	XX(THANOS_SNAP, )          \
	XX(SANS_ONE_HIT_KO, )      \
	XX(SANS_TELEPORT, )        \
	XX(TEAM_FEARLESS, )        \
	XX(TEAM_INVINCIBLE, )      \
	XX(TEAM_CARRY_EQUALITY, )  \
	XX(FLOWER_WHISTLE, )       \
	XX(BUD_WHISTLE, )          \
	XX(WHITHER_WHISTLE, )      \
	XX(HAZARD_HELP, )          \
	XX(COLIN_SPECIAL, )        \
	XX(GLOBAL_SPRAYS, )        \
	XX(BROCOLI_SPECIAL, )      \
	XX(RICKSLACKER_SPECIAL, )  \
	XX(BOMB_SPRAYS, )          \
	XX(IMPOSTER_PUNCH, )       \
	XX(PUNCH_PARRY, )          \
	XX(COMBAT_HAPPA, )			\
	XX(LOBOTOMY_MOVEMENT, )

DECLARE_ENUM(NaviPowerID, NAVI_POWER_ID);
DEFINE_ENUM(NaviPowerID, NAVI_POWER_ID);

struct NaviPowers {
	NaviPowers();

	void setPower(NaviPowerID power);
	bool isPower(NaviPowerID power);

	
	float speedAdjust();
	float damageAdjust();

	float speedAdjustPikis();
	float damageAdjustPikis();


	BitFlag<long long> powers;

	static OSTime momentumSadTime;
	static void makeMomentumSad();
	static bool isMomentumSad();


};



#endif