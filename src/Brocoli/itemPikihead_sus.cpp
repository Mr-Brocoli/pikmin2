#include "Dolphin/rand.h"
#include "Game/AIConstants.h"
#include "Game/Entities/ItemPikihead.h"
#include "Game/gameStat.h"
#include "Game/Piki.h"
#include "Game/PikiMgr.h"
#include "Game/PikiState.h"
#include "Game/Navi.h"
#include "Game/MoviePlayer.h"
#include "efx/TEnemyDive.h"
#include "nans.h"
#include "Radar.h"
#include "SoundID.h"

namespace Game {
namespace ItemPikihead {

/**
 * @note Address: 0x801DA4BC
 * @note Size: 0x1AC
 */
bool Item::interactFue(InteractFue& whistle)
{
	if (canPullout() && isAlive()) {
		Navi* navi = static_cast<Navi*>(whistle.mCreature);

		WaterBox* wata = this->checkWater(nullptr, this->mBoundingSphere);
		if (wata && mColor == Ice) {
			if (navi->mWhistle->mActiveTime < 0.4f)
				return false;
			else {
				((AABBWaterBox*)(wata))->icePickleNum = 0;
			}
		} else {
			if (!navi->getOlimarData()->hasItem(OlimarData::ODII_ProfessionalNoisemaker)) {
				return false;
			}
		}

		if (gameSystem->isVersusMode()) {
			if (mColor == navi->mNaviIndex) {
				return false;
			}
		}

		PikiMgr::mBirthMode = 1;
		Piki* piki          = pikiMgr->birth();
		PikiMgr::mBirthMode = 0;

		if (piki) {
			P2ASSERTLINE(701, whistle.mCreature->isNavi());
			piki->init(nullptr);
			piki->changeShape(mColor);
			piki->changeHappa(mHeadType);
			piki->mNavi = navi;
			piki->setPosition(mPosition, false);
			piki->mFsm->transit(piki, PIKISTATE_AutoNuki, nullptr);
			kill(nullptr);
			setAlive(false);
			return true;
		}
	}

	return false;
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r3
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	mr       r28, r4
	bl
"getStateID__Q24Game89FSMItem<Q34Game12ItemPikihead4Item,Q34Game12ItemPikihead3FSM,Q34Game12ItemPikihead5State>Fv"
	subfic   r0, r3, 2
	cntlzw   r0, r0
	rlwinm.  r0, r0, 0x1b, 0x18, 0x1f
	beq      lbl_801DA644
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_801DA644
	lwz      r30, 4(r28)
	mr       r3, r30
	bl       getOlimarData__Q24Game4NaviFv
	li       r4, 3
	bl       hasItem__Q24Game10OlimarDataFi
	clrlwi.  r0, r3, 0x18
	bne      lbl_801DA534
	li       r3, 0
	b        lbl_801DA648

lbl_801DA534:
	lwz      r3, gameSystem__4Game@sda21(r13)
	lwz      r0, 0x44(r3)
	cmpwi    r0, 1
	bne      lbl_801DA55C
	lhz      r3, 0x1f4(r31)
	lhz      r0, 0x2dc(r30)
	cmplw    r3, r0
	bne      lbl_801DA55C
	li       r3, 0
	b        lbl_801DA648

lbl_801DA55C:
	li       r0, 1
	lwz      r3, pikiMgr__4Game@sda21(r13)
	stw      r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
	lwz      r12, 0(r3)
	lwz      r12, 0x7c(r12)
	mtctr    r12
	bctrl
	li       r0, 0
	or.      r29, r3, r3
	stw      r0, mBirthMode__Q24Game7PikiMgr@sda21(r13)
	beq      lbl_801DA644
	lwz      r3, 4(r28)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_801DA5C0
	lis      r3, lbl_80480828@ha
	lis      r5, lbl_8048084C@ha
	addi     r3, r3, lbl_80480828@l
	li       r4, 0x2bd
	addi     r5, r5, lbl_8048084C@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801DA5C0:
	mr       r3, r29
	li       r4, 0
	bl       init__Q24Game8CreatureFPQ24Game15CreatureInitArg
	lhz      r4, 0x1f4(r31)
	mr       r3, r29
	bl       changeShape__Q24Game4PikiFi
	lhz      r4, 0x1f6(r31)
	mr       r3, r29
	bl       changeHappa__Q24Game4PikiFi
	stw      r30, 0x2c4(r29)
	mr       r3, r29
	addi     r4, r31, 0x19c
	li       r5, 0
	bl       "setPosition__Q24Game8CreatureFR10Vector3<f>b"
	lwz      r3, 0x28c(r29)
	mr       r4, r29
	li       r5, 0x11
	li       r6, 0
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	mr       r3, r31
	li       r4, 0
	bl       kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
	mr       r3, r31
	li       r4, 0
	lwz      r12, 0(r31)
	lwz      r12, 0xac(r12)
	mtctr    r12
	bctrl
	li       r3, 1
	b        lbl_801DA648

lbl_801DA644:
	li       r3, 0

lbl_801DA648:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x801DA0FC
 * @note Size: 0x140
 */
void Item::doAI()
{
	mFsm->exec(this);
	if (_1E4 > 0.0f) {
		_1E4 -= sys->mDeltaTime;
		if (_1E4 <= 0.0f) {
			PikiMgr::mBirthMode = 1;
			Piki* piki          = pikiMgr->birth();
			PikiMgr::mBirthMode = 0;
			if (piki) {
				piki->init(nullptr);
				piki->changeShape(mColor);
				piki->changeHappa(mHeadType);
				piki->mNavi = nullptr;
				piki->setPosition(mPosition, false);
				piki->mFsm->transit(piki, PIKISTATE_AutoNuki, nullptr);

				kill(nullptr);
				setAlive(false);
			} else {
				JUT_PANICLINE(603, "exit failed !!\n");
			}
		}
	}

		if (canPullout() && isAlive() && mColor == Ice) {
		Navi* navi = naviMgr->getActiveNavi();

		AABBWaterBox* wata = (AABBWaterBox*)(checkWater(nullptr, mBoundingSphere));
		if (!wata || (wata->icePickleNum >= wata->icePickleMax)) {
			return;
		}
		wata->icePickleNum = 0;

		PikiMgr::mBirthMode = 1;
		Piki* piki          = pikiMgr->birth();
		PikiMgr::mBirthMode = 0;

		if (piki) {
			piki->init(nullptr);
			piki->changeShape(mColor);
			piki->changeHappa(mHeadType);
			piki->mNavi = navi;
			piki->setPosition(mPosition, false);
			piki->mFsm->transit(piki, PIKISTATE_AutoNuki, nullptr);
			kill(nullptr);
			setAlive(false);
		}
	}
}



} // namespace ItemPikihead
} // namespace Game
