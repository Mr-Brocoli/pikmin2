#include "Game/EnemyBase.h"
#include "types.h"
#include "PikiAI.h"
#include "Game/Piki.h"
#include "Game/PikiState.h"
#include "Dolphin/rand.h"
#include "utilityU.h"

#include "Game/PikiState.h"

#include "Game/Navi.h"

#define PIKIATTACK_JUMP_CHANCE (0.2f)

static const char aiAttackName[] = "actAttack";

namespace PikiAI {

/**
 * @note Address: 0x801A04CC
 * @note Size: 0x70
 */
void ActAttack::getInfo(char* dest)
{
	char* actions[] = { "SA", "AJ", "JA", "JP", "LT" };
	sprintf(dest, "attack %s", actions[mAttackID]);
}

/**
 * @note Address: 0x801A053C
 * @note Size: 0x44
 */
void ActAttack::emotion_success()
{
	Game::EmotionStateArg emotionArg(1);
	mParent->mFsm->transit(mParent, Game::PIKISTATE_Emotion, &emotionArg);
}

/**
 * @note Address: 0x801A0580
 * @note Size: 0xD4
 */
ActAttack::ActAttack(Game::Piki* piki)
    : Action(piki)
{
	mStickAttack = new ActStickAttack(piki);
	mApproachPos = new ActApproachPos(piki);
	mName        = "Attack";
}

/**
 * @note Address: 0x801A0654
 * @note Size: 0x11C
 */
void ActAttack::init(ActionArg* initarg)
{
	bool incorrectArg = false;
	if (initarg) {
		bool comp = (strcmp("ActAttackArg", initarg->getName()) == 0);
		if (comp) {
			incorrectArg = true;
		}
	}
	P2ASSERTLINE(144, incorrectArg);
	ActAttackArg* attackArg = static_cast<ActAttackArg*>(initarg);
	mCreature               = attackArg->mCreature;
	mCollPart               = attackArg->mCollPart;

	// if we're stuck to enemy, do stick attack
	if (mParent->isStickTo()) {
		if (mParent->getKind() == Game::RockP) {
			Game::InteractAttack attack(mParent, mParent->getAttackDamage() * 2, mParent->mStuckCollPart);
			// do attack
			if (!mCreature->stimulate(attack)) {
				mParent->startSound(mCreature, PSSE_PK_SE_KARABURI, true);
			}
			mParent->endStick();

			// Get direction from US -> Creature, then make it normalise it to a unit direction
			Vector3f direction = mParent->getPosition() - mCreature->getPosition();
			direction.y        = 0.0f;
			direction.normalise();

			// Then scale the direction based on fp14's value
			f32 scaling = 120.0f;
			direction.x *= scaling;
			direction.z *= scaling;

			direction.y = 60.0f;

			Game::BlowStateArg witherArg(direction, 0.0f, false, 2, mCreature);
			mParent->mFsm->transit(mParent, Game::PIKISTATE_Blow, &witherArg);
		} else {
			initStickAttack();
		}

		// 20% chance of jump adjust
	} else if (mParent->getKind() == Game::RockP || randFloat() > (1.0f - PIKIATTACK_JUMP_CHANCE)) {
		initJumpAdjust();

		// 80% chance of adjust
	} else {
		initAdjust();
	}

	mIsSearchAnimFinished = false;
}

/**
 * @note Address: 0x801A0770
 * @note Size: 0x84
 */
void ActAttack::initStickAttack()
{
	f32 damage = mParent->getAttackDamage();
	StickAttackActionArg stickArg(damage, mCreature, Game::IPikiAnims::ATTACK1, STICKATK_Default);
	mStickAttack->init(&stickArg);
	mAttackID = ATTACK_Stick;
}

/**
 * @note Address: 0x801A07F4
 * @note Size: 0xA8
 */
void ActAttack::initAdjust()
{
	calcAttackPos();
	// extra radius, no time limit
	f32 radius   = mAttackSphere.mRadius;
	f32 modifier = 10.0f;
	ApproachPosActionArg approachArg(mAttackSphere.mPosition, modifier + radius, -1.0f);
	approachArg.mIsElasticSpeed = true;
	approachArg.mIsCheck3D      = mParent->getKind() != Game::Wing;
	mAttackID                   = ATTACK_Adjust;
	mApproachPos->init(&approachArg);
	if (mParent->getKind() == Game::Wing) {
		mParent->mFsm->transit(mParent, Game::PIKISTATE_HipDrop, nullptr);
		mParent->mPosition.y += 2.0f;
		return;
	}
}

/**
 * @note Address: 0x801A089C
 * @note Size: 0xAC
 */
void ActAttack::initJumpAdjust()
{
	calcAttackPos();
	// extra radius, time out after 2s
	f32 radius   = mAttackSphere.mRadius;
	f32 modifier = 10.0f;
	ApproachPosActionArg approachArg(mAttackSphere.mPosition, modifier + radius, 2.0f);
	approachArg.mIsElasticSpeed = true;
	approachArg.mIsCheck3D      = mParent->getKind() != Game::Wing;
	mAttackID                   = ATTACK_JumpAdjust;
	mApproachPos->init(&approachArg);
	if (mParent->getKind() == Game::Wing) {
		mParent->mFsm->transit(mParent, Game::PIKISTATE_HipDrop, nullptr);
		mParent->mPosition.y += 2.0f;
		return;
	}
}

/**
 * @note Address: 0x801A0948
 * @note Size: 0x8C
 */
bool ActAttack::applicable()
{
	if (mParent->isStickTo()) {
		return true;
	}

	calcAttackPos();
	if (mParent->getKind() == Game::Wing)
		return true;
	Vector3f pos = mParent->getPosition();
	return !(FABS(mAttackSphere.mPosition.y - pos.y) > 20.0f);
}

/**
 * @note Address: N/A
 * @note Size: 0xD8
 */
void ActAttack::initJump()
{
	mAttackID    = ATTACK_Jump;
	Vector3f sep = mAttackSphere.mPosition - mParent->getPosition();
	sep.normalise();
	mParent->mSimVelocity = Vector3f(sep.x * 100.0f, 200.0f, sep.z * 100.0f);
}

/**
 * @note Address: 0x801A09D4
 * @note Size: 0x1C4
 */
void ActAttack::calcAttackPos()
{
	bool isLongLegs = false;
	if (mCreature->isTeki()) {
		Game::EnemyBase* enemy = static_cast<Game::EnemyBase*>(mCreature);
		if (enemy->getEnemyTypeID() == Game::EnemyTypeID::EnemyID_Damagumo || enemy->getEnemyTypeID() == Game::EnemyTypeID::EnemyID_BigFoot
		    || enemy->getEnemyTypeID() == Game::EnemyTypeID::EnemyID_Houdai) {
			isLongLegs = true;
		}
	}

	if (isLongLegs) {
		FindCollPartArg findArg;
		FindCondition condition;
		findArg.mCondition = &condition;
		mParent->getBoundingSphere(findArg.mPosition);
		CollPart* part = mCreature->mCollTree->findCollPart(findArg);
		if (part) {
			mAttackSphere.mPosition = part->mPosition;
			mAttackSphere.mRadius   = part->mRadius;
		} else {
			mAttackSphere.mPosition = mCreature->getPosition();
			mAttackSphere.mRadius   = mCreature->getBodyRadius();
		}
	} else {
		mAttackSphere.mPosition = mCreature->getPosition();
		mAttackSphere.mRadius   = mCreature->getBodyRadius();
	}
}

/**
 * @note Address: 0x801A0B98
 * @note Size: 0x94C
 */
int ActAttack::exec()
{
	if (!mCreature->isAlive()) {
		return ACTEXEC_Success;
	}

	if (mAttackID != ATTACK_Search && !mParent->isStickTo() && ((mParent->getKind() != Game::Wing &&  mCreature->isFlying()) || mCreature->isUnderground())) {

		mAttackID = ATTACK_Search;

		// 50% chance of SAGASU2 or SAGASU
		if (randFloat() > 0.5f) {
			mSearchAnimIdx = Game::IPikiAnims::SAGASU2;
		} else {
			mSearchAnimIdx = Game::IPikiAnims::SAGASU;
		}

		mParent->startMotion(mSearchAnimIdx, mSearchAnimIdx, this, nullptr);
		mIsSearchAnimFinished = false;
	}

	if (Game::gameSystem->isVersusMode() && mCreature && mCreature->isNavi()) {
		PSMGetPikiBattleD()->mVoteState++;
	}

	switch (mAttackID) {
	case ATTACK_Stick: {
		int stickResult = mStickAttack->exec();
		if (stickResult == ACTEXEC_Success) {
			return ACTEXEC_Success;
		}
		if (stickResult == ACTEXEC_Fail && !mParent->isStickTo()) {
			initJumpAdjust();
		}
	} break;

	case ATTACK_Adjust:
	case ATTACK_JumpAdjust: {
		calcAttackPos();
		mApproachPos->mGoalPosition = mAttackSphere.mPosition;
		int approachResult          = mApproachPos->exec();
		if (approachResult == ACTEXEC_Success) {
			if (mAttackID == ATTACK_Adjust) {
				initStickAttack();
			} else {
				initJump();
			}
		} else if (approachResult == ACTEXEC_Fail) {
			return ACTEXEC_Fail;
		}
	} break;

	case ATTACK_Jump:
		if (mParent->mBounceTriangle) {
			initAdjust();
		}
		break;

	case ATTACK_Search:
		if (!mParent->assertMotion(mSearchAnimIdx)) {
			mIsSearchAnimFinished = true;
		}
		mParent->mVelocity = 0.0f;
		if (mIsSearchAnimFinished) {
			return ACTEXEC_Fail;
		}
		break;
	}
	return ACTEXEC_Continue;
}

/**
 * @note Address: 0x801A14E4
 * @note Size: 0x54
 */
void ActAttack::cleanup()
{
	mParent->mVelocity = 0.0f;
	switch (mAttackID) {
	case ATTACK_Stick:
		mStickAttack->cleanup();
		break;

	default:
		break;
	}
}

/**
 * @note Address: 0x801A1538
 * @note Size: 0xE0
 */
void ActAttack::collisionCallback(Game::Piki* piki, Game::CollEvent& collEvent)
{
	if (collEvent.mCollidingCreature == mCreature && mAttackID == ATTACK_Jump) {

		if (mParent->getKind() == Game::RockP) {
			Game::InteractAttack attack(mParent, mParent->getAttackDamage(), mParent->mStuckCollPart);

			// do attack
			if (!mCreature->stimulate(attack)) {
				mParent->startSound(mCreature, PSSE_PK_SE_KARABURI, true);
			}
			mParent->endStick();

				// Get direction from US -> Creature, then make it normalise it to a unit direction
			Vector3f direction = piki->getPosition() - mCreature->getPosition();
			direction.y        = 0.0f;
			direction.normalise();

			// Then scale the direction based on fp14's value
			f32 scaling = 60.0f;
			direction.x *= scaling;
			direction.z *= scaling;

			direction.y = 30.0f;

			Game::BlowStateArg witherArg(direction, 0.0f, false, 2, mCreature);
			piki->mFsm->transit(piki, Game::PIKISTATE_Blow, &witherArg);

			return;
		} 

		if (collEvent.mCollisionObj && collEvent.mCollisionObj->isStickable()) {
			piki->startStick(collEvent.mCollidingCreature, collEvent.mCollisionObj);
			initStickAttack();
		}
	}
}

/**
 * @note Address: 0x801A1618
 * @note Size: 0x24C
 */
void ActAttack::bounceCallback(Game::Piki*, Sys::Triangle*)
{
	if (mAttackID == ATTACK_Jump) {
		initAdjust();
	}
}

/**
 * @note Address: 0x801A1864
 * @note Size: 0x24
 */
void ActAttack::onKeyEvent(SysShape::KeyEvent const& keyEvent)
{
	if (keyEvent.mType != KEYEVENT_END) {
		return;
	}
	if (mAttackID != ATTACK_Search) {
		return;
	}
	mIsSearchAnimFinished = true;
}

} // namespace PikiAI
