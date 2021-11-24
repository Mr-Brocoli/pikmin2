#ifndef _SCREEN_ENUMS_H
#define _SCREEN_ENUMS_H

#include "types.h"

enum SceneType {
	SCENE_GROUND = 0x2710,
	SCENE_CAVE,
	SCENE_VS,
	SCENE_FLOOR,
	SCENE_2714,
	SCENE_2715,
	SCENE_2716,
	SCENE_2717,
	SCENE_2718,
	SCENE_UFO_MENU,
	SCENE_271A,
	SCENE_PAUSE_MENU_DOUKUTU,
	SCENE_PAUSE_MENU_ITEMS,
	SCENE_PAUSE_MENU_MAP,
	SCENE_COURSE_NAME,
	SCENE_CAVE_IN_MENU,
	SCENE_KANKETU_MENU,
	SCENE_CAVE_MORE_MENU,
	SCENE_KANTEI_DEMO,
	SCENE_SPECIAL_ITEM,
	SCENE_CHALLENGE_2P,
	SCENE_SAVE,
	SCENE_FINAL_MSG,
	SCENE_CHALLENGE_1P,
	SCENE_PAUSE_MENU_VS,
	SCENE_WORLD_MAP_INFO_WINDOW_0,
	SCENE_WORLD_MAP_INFO_WINDOW_1,
	SCENE_PAUSE_MENU_CONTROLS,
	SCENE_COUNT_DOWN,
	SCENE_HURRY_UP,
	SCENE_GAME_OVER_GENERAL,
	SCENE_ORIMA_DOWN,
	SCENE_LUJI_DOWN,
	SCENE_PRESIDENT_DOWN,
	SCENE_PIKMIN_DOWN,
	SCENE_ZUKAN_ENEMY,
	SCENE_ZUKAN_ITEM,
	SCENE_HIGH_SCORE,
	SCENE_CHALLENGE_SELECT,
	SCENE_CHALLENGE_RESULT,
	SCENE_VS_SELECT,
	SCENE_CAVE_RESULT = 0x4E20,
	SCENE_READY_GO,
	SCENE_FINAL_FLOOR,
	SCENE_DAY_END_RESULT_ITEM,
	SCENE_DAY_END_RESULT_INC_P,
	SCENE_DAY_END_RESULT_MAIL,
	SCENE_FINAL_RESULT,
	SCENE_PAY_DEPT,
	SCENE_WIN_LOSE,
	SCENE_WIN_LOSE_REASON,
	SCENE_DAY_END_RESULT_TITL,
	_SCENE_FORCE_UINT = 0xFFFFFFFF
};

// Responsible developer.
enum ScreenOwnerID { OWNER_KH = 'KH', OWNER_OGA = 'OGA', OWNER_MRMR = 'MRMR' };

// 8-byte screen ID
#pragma enumsalwaysint off
#pragma longlong_enums on
enum ScreenMemberID {
	// MEMBER_FLOOR = (ulonglong)0xFFFFFFFFFFFFFFFE,
	// MEMBER_DUMMY = 0xFFFFFFFFFFFFFFFF
	MEMBER_FLOOR            = 'FLOOR',
	MEMBER_DUMMY            = 'DUMMY',
	_MEMBER_FORCE_ULONGLONG = 0xFFFFFFFFFFFFFFF
};
#pragma longlong_enums reset
#pragma enumsalwaysint reset

#endif
