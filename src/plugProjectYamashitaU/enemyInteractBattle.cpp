#include "Game/EnemyBase.h"
#include "Game/Interaction.h"
#include "Game/Navi.h"

#include "Game/Entities/Bomb.h"
#include "Dolphin/rand.h"

namespace Game {

/**
 * @note Address: 0x8010BA00
 * @note Size: 0x7C
 */
bool InteractHipdrop::actEnemy(EnemyBase* enemy)
{
	bool callback = enemy->pressCallBack(mCreature, mDamage, mCollPart);
	if (!callback) {
		callback = enemy->hipdropCallBack(mCreature, mDamage, mCollPart);
	}
	return callback;
}

/**
 * @note Address: 0x8010BA7C
 * @note Size: 0x74
 */
bool InteractEarthquake::actEnemy(EnemyBase* enemy)
{
	bool callback = false;
	if (!enemy->checkBirthTypeDropEarthquake()) {
		callback = enemy->earthquakeCallBack(mCreature, mBounceFactor);
	}
	return callback;
}

/**
 * @note Address: 0x8010BAF0
 * @note Size: 0x40
 */
bool InteractPress::actEnemy(EnemyBase* enemy) { return enemy->pressCallBack(mCreature, mDamage, mCollPart); }

/**
 * @note Address: 0x8010BB30
 * @note Size: 0x40
 */
bool InteractFlyCollision::actEnemy(EnemyBase* enemy) { return enemy->flyCollisionCallBack(mCreature, _08, mCollPart); }

/**
 * @note Address: 0x8010BB70
 * @note Size: 0x11C
 */
bool InteractAttack::actEnemy(EnemyBase* enemy)
{
	bool isSuccess = false;

	if (!enemy->isEvent(0, EB_Invulnerable)) {
		bool toDamage = false;
		if (mCreature->isNavi()) {
			if (static_cast<Navi*>(mCreature)->mNaviIndex == NAVIID_Olimar) {
				if (!enemy->isEvent(0, EB_AttackingNavi0)) {
					toDamage = true;
					enemy->enableEvent(0, EB_AttackingNavi0);
				}
			} else if (!enemy->isEvent(0, EB_AttackingNavi1)) {
				toDamage = true;
				enemy->enableEvent(0, EB_AttackingNavi1);
			}
		} else {
			toDamage = true;
		}

		if (toDamage) {
			if (enemy->isEvent(0, EB_Bittered)) {
				mDamage *= enemy->getDamageCoeStoneState();
			}

			if (mCreature->isPiki()) {
				Piki* p = (Piki*)mCreature;
				if (p->getKind() == Ice) {

					if (p->lastKnownNavi && p->lastKnownNavi->naviPowers->isPower(MEEO_SPECIAL)) {
						enemy->mBitterTimer += mDamage * 1.5f; // BROCOLI AMONGUS
						if (enemy->mBitterTimer >= enemy->mMaxHealth) {
							enemy->dopeCallBack(nullptr, 1);
						}
					} else {
						enemy->mBitterTimer += mDamage * 3.0f; 
						if (p->lastKnownNavi && p->lastKnownNavi->naviPowers->isPower(MEEO_SPECIAL)) 
							enemy->mBitterTimer += mDamage * 3.0f;
						if (enemy->mBitterTimer >= enemy->mMaxHealth) {
							J3DModelData* model = enemy->mModel->getJ3DModel()->getModelData();
							for (u16 j = 0; j < model->getShapeNum(); j++) {
								J3DShape* shape = model->mShapeTable.mItems[j];
								char grayScale  = 0xd7;
								//shape->setTexMtxLoadType(0x2000);
								shape->getMaterial()->mTevBlock->setTevSwapModeTable(0, (J3DTevSwapModeTable*)&grayScale);
							}
							model->makeSharedDL();
							enemy->resetAnimSpeed();
							enemy->setAnimSpeed(enemy->mAnimator->mSpeed / 2);
						}
					}

					mDamage *= 0.5f;
				}

				bool cond1 = p->getKind() == Carrot && p->getHappa() == Bud && !(rand() % 10);
				bool cond2 = p->getKind() == Carrot && p->getHappa() == Flower;

				if (cond1 || cond2) {
					Vector3f effectPos           = p->getPosition();
					EnemyTypeID::EEnemyTypeID id = enemy->getEnemyTypeID();
					efx::ArgEnemyType fxArg(effectPos, id, 1.0f);
					efx::TBombrock bombEffect;
					efx::TBombrockABCD* abcdPtr = &bombEffect.mEfxBombABCD;
					efx::TBombrockEFGH* efghPtr = &bombEffect.mEfxBombEFGH;

					if (abcdPtr->create(&fxArg)) {
						efghPtr->create(&fxArg);
					}

					p->mSoundObj->startSound(PSSE_PK_SE_BOMB, 0);

					mDamage += 100.0f;

					p->changeHappa(Leaf);
				}

			}

			isSuccess = enemy->damageCallBack(mCreature, mDamage, mCollPart);
		}
	}

	return isSuccess;
}

/**
 * @note Address: 0x8010BC8C
 * @note Size: 0x38
 */
bool InteractDrop::actEnemy(EnemyBase* enemy) { return enemy->dropCallBack(mCreature); }

/**
 * @note Address: 0x8010BCC4
 * @note Size: 0x78
 */
bool InteractBomb::actEnemy(EnemyBase* enemy)
{
	bool callback = false;
	if (!enemy->isBeforeAppearState()) {
		callback = enemy->bombCallBack(mCreature, mDirection, mDamage);
	}
	return callback;
}
} // namespace Game
