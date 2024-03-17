#include "Game/mapParts.h"
#include "types.h"
#include "Vector3.h"
#include "Game/Entities/Item.h"
#include "Game/EnemyBase.h"
#include "Game/CurrTriInfo.h"
#include "Game/gamePlayData.h"
#include "Game/generalEnemyMgr.h"
#include "Game/Cave/Node.h"
#include "Game/PelletBirthBuffer.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "Dolphin/rand.h"
#include "Sys/TriangleTable.h"
#include "VsOtakaraName.h"
#include "nans.h"

#include "Brocoli/Funny.h"
#include "Game/Navi.h"
float FUNNY::mapScaleX = 1.0f;
float FUNNY::mapScaleY = 1.0f;
float FUNNY::mapScaleZ = 1.0f;

namespace Game {

void RoomMapMgr::makeRoom(char* unitName, f32 centreX, f32 centreY, int direction, int index, RoomLink* link, ObjectLayoutInfo* layoutInfo)
{
	FUNNY::mapScaleX = 1.0f;
	FUNNY::mapScaleY = 1.0f;
	FUNNY::mapScaleZ = 1.0f;

	if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[0]].powers.isPower(BIGGER_IS_BETTER)) {
		FUNNY::mapScaleX -= 0.25f;
		FUNNY::mapScaleY -= 0.25f;
		FUNNY::mapScaleZ -= 0.25f;
		if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[1]].powers.isPower(IMITATER_POWER)) {
			FUNNY::mapScaleX -= 0.25f;
			FUNNY::mapScaleY -= 0.25f;
			FUNNY::mapScaleZ -= 0.25f;
		}
	}
	if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[1]].powers.isPower(BIGGER_IS_BETTER)) {
		FUNNY::mapScaleX -= 0.25f;
		FUNNY::mapScaleY -= 0.25f;
		FUNNY::mapScaleZ -= 0.25f;
		if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[0]].powers.isPower(IMITATER_POWER)) {
			FUNNY::mapScaleX -= 0.25f;
			FUNNY::mapScaleY -= 0.25f;
			FUNNY::mapScaleZ -= 0.25f;
		}
	}

	makeOneRoom(centreX,  centreY, -90.0f * (f32)direction, unitName, index, link, layoutInfo);
}

/**
 * @note Address: 0x801B9BA0
 * @note Size: 0x1F0
 */
Sys::TriIndexList* RoomMapMgr::traceMove(MoveInfo& moveInfo, f32 rate)
{
	int counter = 1;
	Sys::TriIndexList* list;
	f32 rad   = moveInfo.mMoveSphere->mRadius;
	f32 speed = moveInfo.mVelocity->length();

	do {
		if (rate * speed > rad) {
			counter *= 2;
			rate *= 0.5f;
			continue;
		}
		break;
	} while (counter <= 4);

	for (int i = 0; i < counter; i++) {
		list = traceMove_new(moveInfo, rate);
	}

	if (mFloorInfo->hasHiddenCollision() && !moveInfo.mBounceTriangle
	    && (moveInfo.mMoveSphere->mPosition.y - moveInfo.mMoveSphere->mRadius) < -0.0f) {
		moveInfo.mMoveSphere->mPosition.y = moveInfo.mMoveSphere->mRadius - 0.0f;
		if (moveInfo.mVelocity->y < 0.0f) {
			moveInfo.mVelocity->y = -moveInfo.mVelocity->y * (moveInfo.mTraceRadius - 1.0f);
		}

		Vector3f bottomSpherePos = moveInfo.mMoveSphere->mPosition;
		bottomSpherePos.y -= moveInfo.mMoveSphere->mRadius;

		moveInfo.mBounceTriangle = &mTriangle;
		moveInfo.mPosition       = Vector3f(0.0f, 1.0f, 0.0f);
		moveInfo.mUpDirection    = Vector3f(0.0f, 1.0f, 0.0f);

		moveInfo.mBaseSpherePos = bottomSpherePos;

		if (moveInfo.mIntersectCallback) {
			Vector3f up(0.0f, 1.0f, 0.0f);
			moveInfo.mIntersectCallback->invoke(bottomSpherePos, up);
		}
	}

	Sys::Sphere chungus(moveInfo.mMoveSphere->mPosition, 40.0f);
	chungus.mPosition.y -= 20.0f;

	WaterBox* bruh = mapMgr->findWater(chungus);
	if (bruh && bruh->isFrozen() && (moveInfo.mMoveSphere->mPosition.y - moveInfo.mMoveSphere->mRadius) < bruh->getSeaLevel())
		{
		moveInfo.mMoveSphere->mPosition.y = moveInfo.mMoveSphere->mRadius + bruh->getSeaLevel();
			if (moveInfo.mVelocity->y < 0.0f) {
				moveInfo.mVelocity->y = -moveInfo.mVelocity->y * (moveInfo.mTraceRadius - 1.0f);
			}

			Vector3f bottomSpherePos = moveInfo.mMoveSphere->mPosition;
			bottomSpherePos.y -= moveInfo.mMoveSphere->mRadius;

			moveInfo.mBounceTriangle = &mTriangle;
			moveInfo.mPosition       = Vector3f(0.0f, 1.0f, 0.0f);
			moveInfo.mUpDirection    = Vector3f(0.0f, 1.0f, 0.0f);

			moveInfo.mBaseSpherePos = bottomSpherePos;

			if (moveInfo.mIntersectCallback) {
				Vector3f up(0.0f, 1.0f, 0.0f);
				moveInfo.mIntersectCallback->invoke(bottomSpherePos, up);
			}
	}

	return list;

}

void MapRoom::placeObjects(Cave::FloorInfo* floorInfo, bool isFinalFloor)
{
	if (!mObjectLayoutInfo) {
		return;
	}
	float amongusSCALEAMONGUS = 1.0f;
	if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[0]].powers.isPower(BIGGER_IS_BETTER)) {
		amongusSCALEAMONGUS -= 0.25f;
		if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[1]].powers.isPower(IMITATER_POWER)) {
			amongusSCALEAMONGUS -= 0.25f;
		}
	}
	if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[1]].powers.isPower(BIGGER_IS_BETTER)) {
		amongusSCALEAMONGUS -= 0.25f;
		if (naviMgr->mNewCaptains->newCaptains[naviMgr->mNewCaptains->chosenCaptains[0]].powers.isPower(IMITATER_POWER)) {
			amongusSCALEAMONGUS -= 0.25f;
		}
	}

	for (int nodeType = 0; nodeType < OBJLAYOUT_TypeCount; nodeType++) {
		for (int nodeIdx = 0; nodeIdx < mObjectLayoutInfo->getCount(nodeType); nodeIdx++) {
			ObjectLayoutNode* node = static_cast<ObjectLayoutNode*>(mObjectLayoutInfo->getNode(nodeType, nodeIdx));
			for (int subIdx = 0; subIdx < node->getBirthCount(); subIdx++) {
				switch (nodeType) {
				case OBJLAYOUT_Hole: {
					ItemHole::Item* hole = static_cast<ItemHole::Item*>(ItemHole::mgr->birth());
					Vector3f birthPos;
					node->getBirthPosition(birthPos.x, birthPos.z);
					birthPos.y = 0.0f;
					birthPos *= amongusSCALEAMONGUS;
					CurrTriInfo triInfo;
					triInfo.mPosition = birthPos;
					f32 minY          = 0.0f;
					if (mapMgr) {
						triInfo.mUpdateOnNewMaxY = 0;
						mapMgr->getCurrTri(triInfo);
						minY = triInfo.mMinY;
					}
					birthPos.y = minY;
					if (gameSystem->isChallengeMode()) {
						ItemHole::InitArg holeArg;
						holeArg.mInitialState = ItemHole::Hole_Close;
						hole->init(&holeArg);
					} else {
						hole->init(nullptr);
					}
					hole->mFaceDir = node->getDirection();
					hole->setPosition(birthPos, false);
					if (floorInfo->useKaidanBarrel()) {
						ItemBarrel::Item* barrel = static_cast<ItemBarrel::Item*>(ItemBarrel::mgr->birth());
						barrel->init(nullptr);
						barrel->setPosition(birthPos, false);
					}
					break;
				}
				case OBJLAYOUT_Pod: {
					if (gameSystem->isVersusMode()) {
						break;
					}
					Onyon* pod = ItemOnyon::mgr->birth(ONYON_OBJECT_POD, 0);
					Vector3f birthPos;
					node->getBirthPosition(birthPos.x, birthPos.z);
					birthPos.y = 0.0f;
					pod->init(nullptr);
					pod->mFaceDir = node->getDirection();
					birthPos *= amongusSCALEAMONGUS;
					pod->setPosition(birthPos, false);
					break;
				}
				case OBJLAYOUT_VsBlueOnyon: {
					Onyon* pod = ItemOnyon::mgr->birth(ONYON_OBJECT_ONYON, ONYON_TYPE_BLUE);
					Vector3f birthPos;
					node->getBirthPosition(birthPos.x, birthPos.z);
					birthPos.y = 0.0f;
					pod->init(nullptr);
					pod->mFaceDir = node->getDirection();
					birthPos *= amongusSCALEAMONGUS;
					pod->setPosition(birthPos, false);
					break;
				}
				case OBJLAYOUT_VsRedOnyon: {
					Onyon* pod = ItemOnyon::mgr->birth(ONYON_OBJECT_ONYON, ONYON_TYPE_RED);
					Vector3f birthPos;
					node->getBirthPosition(birthPos.x, birthPos.z);
					birthPos.y = 0.0f;
					pod->init(nullptr);
					pod->mFaceDir = node->getDirection();
					birthPos *= amongusSCALEAMONGUS;
					pod->setPosition(birthPos, false);
					break;
				}
				case OBJLAYOUT_Fountain: {
					ItemBigFountain::Item* fountain = static_cast<ItemBigFountain::Item*>(ItemBigFountain::mgr->birth());
					Vector3f birthPos;
					node->getBirthPosition(birthPos.x, birthPos.z);
					birthPos.y = 0.0f;
					birthPos *= amongusSCALEAMONGUS;
					if (gameSystem->isChallengeMode()) {
						ItemBigFountain::InitArg fountainArg;
						fountainArg.mInitState = 3; // Close state (lack of an enum)
						fountain->init(&fountainArg);
					} else {
						fountain->init(nullptr);
					}
					fountain->mFaceDir = node->getDirection();
					fountain->setPosition(birthPos, false);
					break;
				}
				case OBJLAYOUT_Enemy: {
					Vector3f birthPos;
					birthPos.y = 0.0f;
					node->getBirthPosition(birthPos.x, birthPos.z);
					birthPos.y = mapMgr->getMinY(birthPos);
					birthPos *= amongusSCALEAMONGUS;
					EnemyBirthArg birthArg;
					birthArg.mFaceDir  = node->getDirection();
					birthArg.mPosition = birthPos;

					birthArg.mOtakaraItemCode = node->getExtraCode();
					birthArg.mTekiBirthType   = (EnemyTypeID::EEnemyTypeID)node->getObjectType();
					node->isFixedBattery();

					bool canSpawnTeki                   = true;
					bool isWaterwraith                  = false;
					EnemyTypeID::EEnemyTypeID enemyType = (EnemyTypeID::EEnemyTypeID)node->getObjectId();
					if (enemyType == EnemyTypeID::EnemyID_BlackMan) {
						if (playData->mCaveSaveData.mIsWaterwraithAlive) {
							isWaterwraith = true;
						} else {
							canSpawnTeki = false;
						}
					}

					if (canSpawnTeki) {
						EnemyBase* enemy = generalEnemyMgr->birth(node->getObjectId(), birthArg);
						if (enemy) {
							enemy->init(nullptr);
						}
						if (isWaterwraith) {
							BlackMan::Obj* waterwraith = static_cast<BlackMan::Obj*>(enemy);
							waterwraith->setTimer(floorInfo->mParms.mWaterwraithTimer);
							static_cast<RoomMapMgr*>(mapMgr)->mWraith = waterwraith;
						}
					}
					break;
				}
				case OBJLAYOUT_Item: {
					PelletIndexInitArg pelletIndex(node->getObjectId());
					Pellet* pellet = pelletMgr->birth(&pelletIndex);
					if (!pellet) {
						break;
					}
					Vector3f birthPos;
					node->getBirthPosition(birthPos.x, birthPos.z);
					if (mapMgr) {
						birthPos.y = mapMgr->getMinY(birthPos);
						birthPos.y += 0.5f * pellet->getCylinderHeight();
					} else {
						birthPos.y = 0.0f;
					}
					birthPos *= amongusSCALEAMONGUS;
					pellet->setPosition(birthPos, false);
					Vector3f rotation;
					rotation.y = node->getDirection();
					rotation.x = 0.0f;
					rotation.z = 0.0f;
					Matrixf pelletRot;
					pelletRot.makeTR(Vector3f::zero, rotation);
					node->getDirection();
					pellet->setOrientation(pelletRot);
					pellet->allocateTexCaster();
					break;
				}
				case OBJLAYOUT_Gate: {
					int doorIdx = node->getBirthDoorIndex();
					if (doorIdx == -1) {
						break;
					}
					RoomDoorInfo* doorinfo = &mDoorInfos[doorIdx];
					Vector3f birthPos      = Vector3f(doorinfo->mWaypoint->mPosition);
					f32 dir                = JMath::atanTable_.atan2_(doorinfo->mLookAtPos.x, doorinfo->mLookAtPos.z);
					ItemGateInitArg gateArg;
					gateArg.mFaceDir = dir;

					ItemGate* gate = static_cast<ItemGate*>(itemGateMgr->birth());
					gate->init(&gateArg);
					f32 health                  = static_cast<Cave::GateNode*>(node)->mUnit->mInfo->mLife;
					gate->mMaxSegmentHealth     = health;
					gate->mCurrentSegmentHealth = health;
					birthPos *= amongusSCALEAMONGUS;
					gate->setPosition(birthPos, false);
					break;
				}
				}
			}
		}
	}
}


} // namespace Game
