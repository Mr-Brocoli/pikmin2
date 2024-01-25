#include "JSystem/JAudio/JAI/JAIAnimeSound.h"
#include "JSystem/JAudio/JAI/JAIBasic.h"

/**
 * @note Address: 0x800AB0EC
 * @note Size: 0x3C
 */
void JAIAnimeSound::handleStop(u8 handleNo, u32 p2)
{
	_40[handleNo]         = 0;
	mBasEntries[handleNo] = nullptr;
	ObjectBase::handleStop(handleNo, p2);
}

/**
 * @note Address: 0x800AB128
 * @note Size: 0x188
 */
JAIAnimeSound::JAIAnimeSound(Vec* p1, JKRHeap* heap, u8 p3)
    : Object(p1, heap, p3)
    , _48(0)
    , _4C(0)
    , _50(0)
    , _54(0)
{
	if (!_4C) {
		_58 = true;
	} else {
		_58 = false;
	}

	mAnimID     = 0;
	mCounter    = 0;
	mSoundData  = nullptr;
	_40         = new (heap, 0) u8[p3];
	mBasEntries = new (heap, 0) JAIAnimeFrameSoundData*[p3];

	for (u8 i = 0; i < p3; i++) {
		mBasEntries[i] = nullptr;
	}
}

/**
 * @note Address: N/A
 * @note Size: 0x4C
 */
void JAIAnimeSound::initActorAnimSound(JAIAnimeSoundData*, JAInter::Actor, u32, f32, f32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800AB2B0
 * @note Size: 0x194
 */
void JAIAnimeSound::initActorAnimSound(JAIAnimeSoundData* sndData, u32 flag, f32 loopStart, f32 loopEnd)
{
	mSoundData = sndData;
	if (mSoundData) {
		mAnimID      = 0;
		_5C          = flag;
		int entries  = mSoundData->mEntryNum;
		mLoopStartID = checkLoopStartCount(loopStart);
		mLoopEndID   = checkLoopEndCount(loopEnd);

		if (flag == 1) {
			mAnimID  = 0;
			mTimer   = 0.0f;
			mCounter = 0;
		} else {
			mAnimID  = entries - 1;
			mTimer   = -1.0f;
			mCounter = -1;
		}
	}

	for (u8 i = 0; i < mHandleCount; i++) {
		JAIAnimeFrameSoundData* entry = mBasEntries[i];
		if (!mSounds[i]) {
			_40[i]         = 0;
			mBasEntries[i] = nullptr;
		} else if (entry && entry->_10 & 4) {
			handleStop(i, 0);
		} else if (!(mSounds[i]->mSoundID & 0xc00) && _40[i]) {
			handleStop(i, 0);
		} else {
			_40[i] = 2;
		}
	}
	/*
	.loc_0x0:
	  stwu      r1, -0x30(r1)
	  mflr      r0
	  stw       r0, 0x34(r1)
	  stfd      f31, 0x20(r1)
	  psq_st    f31,0x28(r1),0,0
	  stw       r31, 0x1C(r1)
	  stw       r30, 0x18(r1)
	  stw       r29, 0x14(r1)
	  mr        r30, r3
	  fmr       f31, f2
	  stw       r4, 0x78(r3)
	  mr        r29, r5
	  lwz       r0, 0x78(r3)
	  cmplwi    r0, 0
	  beq-      .loc_0xA0
	  li        r0, 0
	  stw       r0, 0x68(r30)
	  stw       r29, 0x5C(r30)
	  lwz       r4, 0x78(r30)
	  lhz       r31, 0x0(r4)
	  bl        .loc_0x194
	  fmr       f1, f31
	  stw       r3, 0x60(r30)
	  mr        r3, r30
	  bl        0x174
	  cmplwi    r29, 0x1
	  stw       r3, 0x64(r30)
	  bne-      .loc_0x88
	  li        r0, 0
	  lfs       f0, -0x7488(r2)
	  stw       r0, 0x68(r30)
	  stfs      f0, 0x70(r30)
	  stw       r0, 0x6C(r30)
	  b         .loc_0xA0

	.loc_0x88:
	  subi      r0, r31, 0x1
	  lfs       f0, -0x7484(r2)
	  stw       r0, 0x68(r30)
	  li        r0, -0x1
	  stfs      f0, 0x70(r30)
	  stw       r0, 0x6C(r30)

	.loc_0xA0:
	  li        r31, 0
	  b         .loc_0x160

	.loc_0xA8:
	  lwz       r4, 0x1C(r30)
	  rlwinm    r5,r31,2,22,29
	  lwz       r3, 0x44(r30)
	  rlwinm    r6,r31,0,24,31
	  lwzx      r4, r4, r5
	  lwzx      r3, r3, r5
	  cmplwi    r4, 0
	  bne-      .loc_0xE0
	  lwz       r3, 0x40(r30)
	  li        r0, 0
	  stbx      r0, r3, r6
	  lwz       r3, 0x44(r30)
	  stwx      r0, r3, r5
	  b         .loc_0x15C

	.loc_0xE0:
	  cmplwi    r3, 0
	  beq-      .loc_0x114
	  lwz       r0, 0x10(r3)
	  rlwinm.   r0,r0,0,29,29
	  beq-      .loc_0x114
	  mr        r3, r30
	  mr        r4, r31
	  lwz       r12, 0x0(r30)
	  li        r5, 0
	  lwz       r12, 0x34(r12)
	  mtctr     r12
	  bctrl
	  b         .loc_0x15C

	.loc_0x114:
	  lwz       r0, 0x20(r4)
	  rlwinm.   r0,r0,0,20,21
	  bne-      .loc_0x150
	  lwz       r3, 0x40(r30)
	  lbzx      r0, r3, r6
	  cmplwi    r0, 0
	  beq-      .loc_0x150
	  mr        r3, r30
	  mr        r4, r31
	  lwz       r12, 0x0(r30)
	  li        r5, 0
	  lwz       r12, 0x34(r12)
	  mtctr     r12
	  bctrl
	  b         .loc_0x15C

	.loc_0x150:
	  lwz       r3, 0x40(r30)
	  li        r0, 0x2
	  stbx      r0, r3, r6

	.loc_0x15C:
	  addi      r31, r31, 0x1

	.loc_0x160:
	  lbz       r0, 0x19(r30)
	  rlwinm    r3,r31,0,24,31
	  cmplw     r3, r0
	  blt+      .loc_0xA8
	  psq_l     f31,0x28(r1),0,0
	  lwz       r0, 0x34(r1)
	  lfd       f31, 0x20(r1)
	  lwz       r31, 0x1C(r1)
	  lwz       r30, 0x18(r1)
	  lwz       r29, 0x14(r1)
	  mtlr      r0
	  addi      r1, r1, 0x30
	  blr

	.loc_0x194:
	*/
}

/**
 * @note Address: 0x800AB444
 * @note Size: 0x40
 */
int JAIAnimeSound::checkLoopStartCount(f32 startFrame)
{
	u32 i = 0;
	for (; i < mSoundData->mEntryNum; i++) {
		if (mSoundData->mSndEntries[i].mTime >= startFrame) {
			break;
		}
	}
	return i;
	/*
	lwz      r5, 0x78(r3)
	li       r3, 0
	li       r4, 0
	lhz      r0, 0(r5)
	mtctr    r0
	cmplwi   r0, 0
	blelr

lbl_800AB460:
	addi     r0, r4, 0xc
	lfsx     f0, r5, r0
	fcmpo    cr0, f0, f1
	cror     2, 1, 2
	beqlr
	addi     r4, r4, 0x20
	addi     r3, r3, 1
	bdnz     lbl_800AB460
	blr
	*/
}

/**
 * @note Address: 0x800AB484
 * @note Size: 0x48
 */
int JAIAnimeSound::checkLoopEndCount(f32 endFrame)
{
	u32 i = 0;
	for (; i < mSoundData->mEntryNum; i++) {
		if (mSoundData->mSndEntries[i].mTime > endFrame) {
			break;
		}
	}

	if (i != 0) {
		return mSoundData->mEntryNum;
	}
	return i;
	/*
	lwz      r5, 0x78(r3)
	li       r3, 0
	li       r4, 0
	lhz      r6, 0(r5)
	mtctr    r6
	cmplwi   r6, 0
	ble      lbl_800AB4BC

lbl_800AB4A0:
	addi     r0, r4, 0xc
	lfsx     f0, r5, r0
	fcmpo    cr0, f0, f1
	bgt      lbl_800AB4BC
	addi     r4, r4, 0x20
	addi     r3, r3, 1
	bdnz     lbl_800AB4A0

lbl_800AB4BC:
	cmplwi   r3, 0
	bnelr
	mr       r3, r6
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x4C
 */
void JAIAnimeSound::setLoopStartFrame(f32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x54
 */
void JAIAnimeSound::setLoopEndFrame(f32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x94
 */
void JAIAnimeSound::setLoopFrame(f32, f32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x28
 */
void JAIAnimeSound::setAnimSound(f32, f32, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x24
 */
void JAIAnimeSound::setAnimSound(JAIBasic*, f32, f32, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x78
 */
void JAIAnimeSound::setAnimObjectSound(f32, f32, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x74
 */
void JAIAnimeSound::setAnimSoundVec(Vec*, f32, f32, u32, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x74
 */
void JAIAnimeSound::setAnimSoundVec(JAIBasic*, Vec*, f32, f32, u32, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800AB4CC
 * @note Size: 0x504
 */
void JAIAnimeSound::setAnimSoundActor(JAInter::Actor* actor, f32 time, f32 time2, u8 players)
{
	if (!mSoundData) {
		return;
	}

	if (mTimer < 0.0f) {
		mTimer = time;
	}

	_74         = time2;
	int entries = mSoundData->mEntryNum;

	if (_5C == 1) {
		if (mTimer > time) {
			while (mAnimID < mLoopEndID) {
				playActorAnimSound(actor, time2, players);
			}
			mAnimID = mLoopStartID;
			mTimer  = time;
			if (mCounter < 256) {
				mCounter++;
			}

			// this loop here is probably an unused function from above
			for (u8 i = 0; i < mHandleCount; i++) {
				JAISound** se = &mSounds[i];
				if (_40[i] == 1) {
					JAIAnimeFrameSoundData* entry = mBasEntries[i];
					if (!(entry->mSoundID & 0xc00)) {
						if (time2 != 0.0f && entry->_10 & 0x20) {
							if (entry->mStartTime == entry->_08
							    || (entry->mStartTime > entry->_08 && entry->mStartTime < time && entry->_08 >= time)
							    || (entry->mStartTime < entry->_08 && !(entry->mStartTime < time) && entry->_08 > time)) {
								startAnimSound(entry->mSoundID, &mSounds[i], actor, players);
							} else {
								handleStop(i, 0);
							}
						}
					} else if (!*se) {
						_40[i]         = 0;
						mBasEntries[i] = nullptr;
					}

					if (*se) {
						setSpeedModifySound(*se, entry, time);
						if (entry->_10 & 4 && entry->_08 >= time) {
							handleStop(i, 0);
						}
					}
				}
			}

			while (mAnimID < entries && (mSoundData->mSndEntries[mAnimID].mTime) >= time) {
				playActorAnimSound(actor, time, players);
			}
		}
	} else {
		if (mTimer > time) {
			while (mAnimID < mLoopStartID || mAnimID == -1 || mSoundData->mSndEntries[mAnimID].mTime != mTimer) {
				playActorAnimSound(actor, time, players);
			}
			mAnimID = mLoopEndID - 1;
			mTimer  = time;
			if (mCounter == -1 || mCounter < 256) {
				mCounter++;
			}

			for (u8 i = 0; i < mHandleCount; i++) {
				JAISound** se = &mSounds[i];
				if (_40[i] == 1) {
					JAIAnimeFrameSoundData* entry = mBasEntries[i];
					if (!(entry->mSoundID & 0xc00)) {
						if (time2 != 0.0f && entry->_10 & 0x20) {
							if (entry->mStartTime == entry->_08
							    || (entry->mStartTime > entry->_08 && entry->mStartTime < time && entry->_08 >= time)
							    || (entry->mStartTime < entry->_08 && !(entry->mStartTime < time) && entry->_08 > time)) {
								startAnimSound(entry->mSoundID, &mSounds[i], actor, players);
							} else {
								handleStop(i, 0);
							}
						}
					} else if (!*se) {
						_40[i]         = 0;
						mBasEntries[i] = nullptr;
					}

					if (*se) {
						setSpeedModifySound(*se, entry, time);
						if (entry->_10 & 4 && entry->_08 >= time) {
							handleStop(i, 0);
						}
					}
				}
			}

			while (mAnimID < entries && (mSoundData->mSndEntries[mAnimID].mTime) >= time) {
				playActorAnimSound(actor, time, players);
			}
		}
	}
	mTimer = time;
	/*
	.loc_0x0:
	  stwu      r1, -0x50(r1)
	  mflr      r0
	  stw       r0, 0x54(r1)
	  stfd      f31, 0x40(r1)
	  psq_st    f31,0x48(r1),0,0
	  stfd      f30, 0x30(r1)
	  psq_st    f30,0x38(r1),0,0
	  stmw      r25, 0x14(r1)
	  mr        r25, r3
	  fmr       f30, f1
	  lwz       r0, 0x78(r3)
	  fmr       f31, f2
	  mr        r26, r4
	  mr        r27, r5
	  cmplwi    r0, 0
	  beq-      .loc_0x4E0
	  lfs       f1, 0x70(r25)
	  lfs       f0, -0x7488(r2)
	  fcmpo     cr0, f1, f0
	  bge-      .loc_0x54
	  stfs      f30, 0x70(r25)

	.loc_0x54:
	  stfs      f31, 0x74(r25)
	  lwz       r0, 0x5C(r25)
	  lwz       r3, 0x78(r25)
	  cmplwi    r0, 0x1
	  lhz       r31, 0x0(r3)
	  bne-      .loc_0x288
	  lfs       f0, 0x70(r25)
	  fcmpo     cr0, f0, f30
	  ble-      .loc_0xCC
	  b         .loc_0x9C

	.loc_0x7C:
	  mr        r3, r25
	  fmr       f1, f31
	  lwz       r12, 0x0(r25)
	  mr        r4, r26
	  mr        r5, r27
	  lwz       r12, 0x3C(r12)
	  mtctr     r12
	  bctrl

	.loc_0x9C:
	  lwz       r3, 0x68(r25)
	  lwz       r0, 0x64(r25)
	  cmplw     r3, r0
	  blt+      .loc_0x7C
	  lwz       r0, 0x60(r25)
	  stw       r0, 0x68(r25)
	  stfs      f30, 0x70(r25)
	  lwz       r3, 0x6C(r25)
	  cmplwi    r3, 0x100
	  bge-      .loc_0xCC
	  addi      r0, r3, 0x1
	  stw       r0, 0x6C(r25)

	.loc_0xCC:
	  li        r30, 0
	  b         .loc_0x228

	.loc_0xD4:
	  lwz       r5, 0x40(r25)
	  rlwinm    r6,r30,0,24,31
	  lwz       r3, 0x1C(r25)
	  rlwinm    r7,r30,2,22,29
	  lbzx      r0, r5, r6
	  add       r29, r3, r7
	  cmplwi    r0, 0x1
	  bne-      .loc_0x224
	  lwz       r3, 0x44(r25)
	  lwzx      r28, r3, r7
	  lwz       r4, 0x0(r28)
	  rlwinm.   r0,r4,0,20,21
	  bne-      .loc_0x1A8
	  lfs       f0, -0x7488(r2)
	  fcmpu     cr0, f0, f31
	  bne-      .loc_0x120
	  lwz       r0, 0x10(r28)
	  rlwinm.   r0,r0,0,26,26
	  bne-      .loc_0x1C4

	.loc_0x120:
	  lfs       f1, 0x4(r28)
	  lfs       f0, 0x8(r28)
	  fcmpu     cr0, f1, f0
	  beq-      .loc_0x164
	  fcmpo     cr0, f1, f0
	  bge-      .loc_0x14C
	  fcmpo     cr0, f0, f30
	  ble-      .loc_0x14C
	  fcmpo     cr0, f1, f30
	  cror      2, 0, 0x2
	  beq-      .loc_0x164

	.loc_0x14C:
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x188
	  fcmpo     cr0, f0, f30
	  bgt-      .loc_0x164
	  fcmpo     cr0, f1, f30
	  bge-      .loc_0x188

	.loc_0x164:
	  lwz       r12, 0x0(r25)
	  mr        r3, r25
	  mr        r5, r29
	  mr        r6, r26
	  lwz       r12, 0x40(r12)
	  mr        r7, r27
	  mtctr     r12
	  bctrl
	  b         .loc_0x1C4

	.loc_0x188:
	  mr        r3, r25
	  mr        r4, r30
	  lwz       r12, 0x0(r25)
	  li        r5, 0
	  lwz       r12, 0x34(r12)
	  mtctr     r12
	  bctrl
	  b         .loc_0x1C4

	.loc_0x1A8:
	  lwz       r0, 0x0(r29)
	  cmplwi    r0, 0
	  bne-      .loc_0x1C4
	  li        r0, 0
	  stbx      r0, r5, r6
	  lwz       r3, 0x44(r25)
	  stwx      r0, r3, r7

	.loc_0x1C4:
	  lwz       r4, 0x0(r29)
	  cmplwi    r4, 0
	  beq-      .loc_0x224
	  lwz       r12, 0x0(r25)
	  fmr       f1, f31
	  mr        r3, r25
	  mr        r5, r28
	  lwz       r12, 0x44(r12)
	  mtctr     r12
	  bctrl
	  lwz       r0, 0x10(r28)
	  rlwinm.   r0,r0,0,27,27
	  beq-      .loc_0x224
	  lfs       f0, 0x8(r28)
	  fcmpo     cr0, f0, f30
	  cror      2, 0, 0x2
	  bne-      .loc_0x224
	  mr        r3, r25
	  mr        r4, r30
	  lwz       r12, 0x0(r25)
	  li        r5, 0
	  lwz       r12, 0x34(r12)
	  mtctr     r12
	  bctrl

	.loc_0x224:
	  addi      r30, r30, 0x1

	.loc_0x228:
	  lbz       r0, 0x19(r25)
	  rlwinm    r3,r30,0,24,31
	  cmplw     r3, r0
	  blt+      .loc_0xD4
	  b         .loc_0x25C

	.loc_0x23C:
	  mr        r3, r25
	  fmr       f1, f31
	  lwz       r12, 0x0(r25)
	  mr        r4, r26
	  mr        r5, r27
	  lwz       r12, 0x3C(r12)
	  mtctr     r12
	  bctrl

	.loc_0x25C:
	  lwz       r0, 0x68(r25)
	  cmplw     r0, r31
	  bge-      .loc_0x4DC
	  rlwinm    r3,r0,5,0,26
	  lwz       r4, 0x78(r25)
	  addi      r0, r3, 0xC
	  lfsx      f0, r4, r0
	  fcmpo     cr0, f0, f30
	  cror      2, 0, 0x2
	  beq+      .loc_0x23C
	  b         .loc_0x4DC

	.loc_0x288:
	  lfs       f0, 0x70(r25)
	  fcmpo     cr0, f0, f30
	  bge-      .loc_0x324
	  b         .loc_0x2B8

	.loc_0x298:
	  mr        r3, r25
	  fmr       f1, f31
	  lwz       r12, 0x0(r25)
	  mr        r4, r26
	  mr        r5, r27
	  lwz       r12, 0x3C(r12)
	  mtctr     r12
	  bctrl

	.loc_0x2B8:
	  lwz       r3, 0x68(r25)
	  lwz       r4, 0x60(r25)
	  cmplw     r3, r4
	  blt-      .loc_0x2F0
	  addis     r0, r3, 0x1
	  cmplwi    r0, 0xFFFF
	  beq-      .loc_0x2F0
	  rlwinm    r3,r4,5,0,26
	  lwz       r4, 0x78(r25)
	  addi      r0, r3, 0xC
	  lfs       f1, 0x70(r25)
	  lfsx      f0, r4, r0
	  fcmpu     cr0, f1, f0
	  bne+      .loc_0x298

	.loc_0x2F0:
	  lwz       r3, 0x64(r25)
	  subi      r0, r3, 0x1
	  stw       r0, 0x68(r25)
	  stfs      f30, 0x70(r25)
	  lwz       r3, 0x6C(r25)
	  addis     r0, r3, 0x1
	  cmplwi    r0, 0xFFFF
	  beq-      .loc_0x318
	  cmplwi    r3, 0x100
	  bge-      .loc_0x324

	.loc_0x318:
	  lwz       r3, 0x6C(r25)
	  addi      r0, r3, 0x1
	  stw       r0, 0x6C(r25)

	.loc_0x324:
	  li        r28, 0
	  b         .loc_0x480

	.loc_0x32C:
	  lwz       r5, 0x40(r25)
	  rlwinm    r6,r28,0,24,31
	  lwz       r3, 0x1C(r25)
	  rlwinm    r7,r28,2,22,29
	  lbzx      r0, r5, r6
	  add       r29, r3, r7
	  cmplwi    r0, 0x1
	  bne-      .loc_0x47C
	  lwz       r3, 0x44(r25)
	  lwzx      r30, r3, r7
	  lwz       r4, 0x0(r30)
	  rlwinm.   r0,r4,0,20,21
	  bne-      .loc_0x400
	  lfs       f0, -0x7488(r2)
	  fcmpu     cr0, f0, f31
	  bne-      .loc_0x378
	  lwz       r0, 0x10(r30)
	  rlwinm.   r0,r0,0,26,26
	  bne-      .loc_0x41C

	.loc_0x378:
	  lfs       f1, 0x4(r30)
	  lfs       f0, 0x8(r30)
	  fcmpu     cr0, f1, f0
	  beq-      .loc_0x3BC
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x3A4
	  fcmpo     cr0, f0, f30
	  bge-      .loc_0x3A4
	  fcmpo     cr0, f1, f30
	  cror      2, 0x1, 0x2
	  beq-      .loc_0x3BC

	.loc_0x3A4:
	  fcmpo     cr0, f1, f0
	  bge-      .loc_0x3E0
	  fcmpo     cr0, f0, f30
	  blt-      .loc_0x3BC
	  fcmpo     cr0, f1, f30
	  ble-      .loc_0x3E0

	.loc_0x3BC:
	  lwz       r12, 0x0(r25)
	  mr        r3, r25
	  mr        r5, r29
	  mr        r6, r26
	  lwz       r12, 0x40(r12)
	  mr        r7, r27
	  mtctr     r12
	  bctrl
	  b         .loc_0x41C

	.loc_0x3E0:
	  mr        r3, r25
	  mr        r4, r28
	  lwz       r12, 0x0(r25)
	  li        r5, 0
	  lwz       r12, 0x34(r12)
	  mtctr     r12
	  bctrl
	  b         .loc_0x41C

	.loc_0x400:
	  lwz       r0, 0x0(r29)
	  cmplwi    r0, 0
	  bne-      .loc_0x41C
	  li        r0, 0
	  stbx      r0, r5, r6
	  lwz       r3, 0x44(r25)
	  stwx      r0, r3, r7

	.loc_0x41C:
	  lwz       r4, 0x0(r29)
	  cmplwi    r4, 0
	  beq-      .loc_0x47C
	  lwz       r12, 0x0(r25)
	  fmr       f1, f31
	  mr        r3, r25
	  mr        r5, r30
	  lwz       r12, 0x44(r12)
	  mtctr     r12
	  bctrl
	  lwz       r0, 0x10(r30)
	  rlwinm.   r0,r0,0,27,27
	  beq-      .loc_0x47C
	  lfs       f0, 0x8(r30)
	  fcmpo     cr0, f0, f30
	  cror      2, 0x1, 0x2
	  bne-      .loc_0x47C
	  mr        r3, r25
	  mr        r4, r28
	  lwz       r12, 0x0(r25)
	  li        r5, 0
	  lwz       r12, 0x34(r12)
	  mtctr     r12
	  bctrl

	.loc_0x47C:
	  addi      r28, r28, 0x1

	.loc_0x480:
	  lbz       r0, 0x19(r25)
	  rlwinm    r3,r28,0,24,31
	  cmplw     r3, r0
	  blt+      .loc_0x32C
	  b         .loc_0x4B4

	.loc_0x494:
	  mr        r3, r25
	  fmr       f1, f31
	  lwz       r12, 0x0(r25)
	  mr        r4, r26
	  mr        r5, r27
	  lwz       r12, 0x3C(r12)
	  mtctr     r12
	  bctrl

	.loc_0x4B4:
	  lwz       r0, 0x68(r25)
	  cmplw     r0, r31
	  bge-      .loc_0x4DC
	  rlwinm    r3,r0,5,0,26
	  lwz       r4, 0x78(r25)
	  addi      r0, r3, 0xC
	  lfsx      f0, r4, r0
	  fcmpo     cr0, f0, f30
	  cror      2, 0x1, 0x2
	  beq+      .loc_0x494

	.loc_0x4DC:
	  stfs      f30, 0x70(r25)

	.loc_0x4E0:
	  psq_l     f31,0x48(r1),0,0
	  lfd       f31, 0x40(r1)
	  psq_l     f30,0x38(r1),0,0
	  lfd       f30, 0x30(r1)
	  lmw       r25, 0x14(r1)
	  lwz       r0, 0x54(r1)
	  mtlr      r0
	  addi      r1, r1, 0x50
	  blr
	*/
}

/**
 * @note Address: 0x800AB9D0
 * @note Size: 0x280
 */
void JAIAnimeSound::playActorAnimSound(JAInter::Actor* actor, f32 pitch, u8 a)
{
	JAIAnimeFrameSoundData* entry = (JAIAnimeFrameSoundData*)&mSoundData->mSndEntries[mAnimID]; // something dumb here

	u8 i = 0;
	for (; i < mHandleCount; i++) {
		if (_40[i] == 0) {
			// if (mUseHandleFlag & 1 << i) {
			//	continue;
			//}
		}
		if (mSounds[i]) {
			_40[i]         = 0;
			mBasEntries[i] = nullptr;
		}
		if (entry->mSoundID == mSounds[i]->mSoundID) {
			if (!(entry->mSoundID & 0xc00)) {
				return;
			}
		}
	}

	if ((entry->_10 & 8 && entry->_16 == mCounter) || (_54 == 1 && entry->_10 & 2) && (_54 == -1 && entry->_10 & 1)) {
		JAISound** se = &mSounds[i];
		startAnimSound(entry->mSoundID, se, actor, a);
		if (*se) {
			mBasEntries[i] = entry;
			_40[i]         = 1;
			(*se)->setVolume(entry->mPanning / 127.0f, 0, 5);
			(*se)->setPitch(entry->_15 * 0.03125f * (pitch - 1.0f) + entry->mPitch, 0, 5);
			(*se)->setPan(entry->mVelocity / 127.0f, 0, 5);
		}
	}

	mAnimID += _5C;

	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	stw      r0, 0x54(r1)
	stfd     f31, 0x40(r1)
	psq_st   f31, 72(r1), 0, qr0
	stmw     r27, 0x2c(r1)
	lwz      r0, 0x68(r3)
	mr       r29, r3
	lwz      r6, 0x78(r3)
	fmr      f31, f1
	slwi     r3, r0, 5
	lbz      r9, 0x19(r29)
	addi     r31, r3, 8
	mr       r7, r5
	add      r31, r6, r31
	li       r8, 0
	li       r3, 1
	b        lbl_800ABA9C

lbl_800ABA18:
	lwz      r6, 0x40(r29)
	clrlwi   r10, r8, 0x18
	lbzx     r0, r6, r10
	cmplwi   r0, 0
	beq      lbl_800ABA88
	lwz      r5, 0x1c(r29)
	slwi     r11, r10, 2
	lwzx     r12, r5, r11
	cmplwi   r12, 0
	beq      lbl_800ABA54
	li       r0, 0
	stbx     r0, r6, r10
	lwz      r3, 0x44(r29)
	stwx     r0, r3, r11
	b        lbl_800ABAA8

lbl_800ABA54:
	lwz      r5, 0(r31)
	lwz      r0, 0x20(r12)
	cmplw    r5, r0
	beq      lbl_800ABA6C
	addi     r8, r8, 1
	b        lbl_800ABA9C

lbl_800ABA6C:
	rlwinm.  r0, r5, 0, 0x14, 0x15
	bne      lbl_800ABAA8
	lwz      r3, 0x68(r29)
	lwz      r0, 0x5c(r29)
	add      r0, r3, r0
	stw      r0, 0x68(r29)
	b        lbl_800ABC34

lbl_800ABA88:
	lwz      r5, 0x20(r29)
	slw      r0, r3, r10
	and.     r0, r5, r0
	beq      lbl_800ABAA8
	addi     r8, r8, 1

lbl_800ABA9C:
	clrlwi   r0, r8, 0x18
	cmplw    r0, r9
	blt      lbl_800ABA18

lbl_800ABAA8:
	lbz      r0, 0x19(r29)
	clrlwi   r3, r8, 0x18
	cmplw    r3, r0
	beq      lbl_800ABC24
	lwz      r5, 0x10(r31)
	rlwinm.  r0, r5, 0, 0x1c, 0x1c
	beq      lbl_800ABAD4
	lwz      r3, 0x6c(r29)
	lbz      r0, 0x16(r31)
	cmplw    r3, r0
	bne      lbl_800ABC24

lbl_800ABAD4:
	lwz      r3, 0x5c(r29)
	cmplwi   r3, 1
	bne      lbl_800ABAE8
	rlwinm.  r0, r5, 0, 0x1e, 0x1e
	beq      lbl_800ABAFC

lbl_800ABAE8:
	addis    r0, r3, 1
	cmplwi   r0, 0xffff
	bne      lbl_800ABC24
	clrlwi.  r0, r5, 0x1f
	bne      lbl_800ABC24

lbl_800ABAFC:
	lwz      r12, 0(r29)
	mr       r6, r4
	lwz      r0, 0x1c(r29)
	rlwinm   r28, r8, 2, 0x16, 0x1d
	lwz      r12, 0x40(r12)
	mr       r3, r29
	add      r30, r0, r28
	clrlwi   r27, r8, 0x18
	mr       r5, r30
	lwz      r4, 0(r31)
	mtctr    r12
	bctrl
	lwz      r0, 0(r30)
	cmplwi   r0, 0
	beq      lbl_800ABC24
	lwz      r3, 0x44(r29)
	lis      r0, 0x4330
	li       r6, 1
	stw      r0, 8(r1)
	lfd      f2, lbl_80516EF0@sda21(r2)
	li       r4, 0
	stwx     r31, r3, r28
	li       r5, 5
	lfs      f0, lbl_80516EE0@sda21(r2)
	lwz      r3, 0x40(r29)
	stbx     r6, r3, r27
	lbz      r0, 0x14(r31)
	lwz      r3, 0(r30)
	stw      r0, 0xc(r1)
	lwz      r12, 0x10(r3)
	lfd      f1, 8(r1)
	lwz      r12, 0x1c(r12)
	fsubs    f1, f1, f2
	fdivs    f1, f1, f0
	mtctr    r12
	bctrl
	lbz      r3, 0x15(r31)
	lis      r0, 0x4330
	lfs      f0, lbl_80516EE4@sda21(r2)
	li       r4, 0
	extsb    r5, r3
	lwz      r3, 0(r30)
	xoris    r5, r5, 0x8000
	stw      r0, 0x10(r1)
	lwz      r12, 0x10(r3)
	fsubs    f2, f31, f0
	stw      r5, 0x14(r1)
	li       r5, 5
	lfd      f3, lbl_80516EF8@sda21(r2)
	lfd      f0, 0x10(r1)
	lfs      f1, lbl_80516EE8@sda21(r2)
	fsubs    f3, f0, f3
	lfs      f0, 0xc(r31)
	lwz      r12, 0x2c(r12)
	fmuls    f2, f3, f2
	fmadds   f1, f2, f1, f0
	mtctr    r12
	bctrl
	lbz      r5, 0x17(r31)
	lis      r0, 0x4330
	lwz      r3, 0(r30)
	li       r4, 0
	stw      r5, 0x1c(r1)
	li       r5, 5
	lwz      r12, 0x10(r3)
	stw      r0, 0x18(r1)
	lfd      f2, lbl_80516EF0@sda21(r2)
	lfd      f1, 0x18(r1)
	lfs      f0, lbl_80516EE0@sda21(r2)
	fsubs    f1, f1, f2
	lwz      r12, 0x24(r12)
	fdivs    f1, f1, f0
	mtctr    r12
	bctrl

lbl_800ABC24:
	lwz      r3, 0x68(r29)
	lwz      r0, 0x5c(r29)
	add      r0, r3, r0
	stw      r0, 0x68(r29)

lbl_800ABC34:
	psq_l    f31, 72(r1), 0, qr0
	lfd      f31, 0x40(r1)
	lmw      r27, 0x2c(r1)
	lwz      r0, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/**
 * @note Address: 0x800ABC50
 * @note Size: 0x4C
 */
void JAIAnimeSound::startAnimSound(u32 id, JAISound** handlePtr, JAInter::Actor* actor, u8 p4)
{
	JAIBasic::msBasic->startSoundActorT(id, handlePtr, actor, 0, p4);
	if (*handlePtr) {
		(*handlePtr)->_1A = 1;
	}
}

/**
 * @note Address: 0x800ABC9C
 * @note Size: 0x13C
 */
void JAIAnimeSound::setSpeedModifySound(JAISound* sound, JAIAnimeFrameSoundData* data, f32 speed)
{
	f32 pitch = data->mPitch;
	if (data->_15) {
		pitch += data->_15 * 0.03125f * (speed - 1.0f);
	}
	sound->setPitch(pitch, 0, 5);

	s16 pan = data->mPanning;
	if (data->_18) {
		s16 test = (f32)data->_18 * 2 * (speed - 1.0f);
		pan += test;
		if (pan > 127) {
			pan = 127;
		} else if (pan < 0) {
			pan = 0;
		}
	}
	sound->setVolumeU7(pan, 0, 5);
}
