#include "LifeGaugeMgr.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "Game/MoviePlayer.h"
#include "Viewport.h"
#include "nans.h"

/**
 * @note Address: 0x8011AE90
 * @note Size: 0x80
 */
void LifeGaugeMgr::draw(Graphics& gfx)
{
	if (!Game::moviePlayer || !Game::moviePlayer->isFlag(1)) {
		if (LifeGaugeList* list = mListA.mNext) {
			mTexture->load(GX_TEXMAP0);
			for (list; list; list = list->mNext) {
				float chungus = list->mParam.mCurHealthPercentage;
				list->mParam.mCurHealthPercentage = list->mParam.mRadius;
				u8 old                            = list->mSegmentCount;
				list->mSegmentCount               = (list->mParam.mRadius * 32);
				list->mParam.mRadius = 13.0f;
				if(chungus >= (0.2f)) GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_BLUE, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
				else
					GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_BLUE, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
				if(list->mParam.mCurHealthPercentage >= 0.01f) list->draw(gfx);
				list->mParam.mCurHealthPercentage = chungus;
				list->mSegmentCount               = old;
				list->mParam.mRadius              = 10.0f;
				GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
				list->draw(gfx);
			}
		}
	}
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r4
	lwz      r5, moviePlayer__4Game@sda21(r13)
	cmplwi   r5, 0
	beq      lbl_8011AEC0
	lwz      r0, 0x1f0(r5)
	clrlwi.  r0, r0, 0x1f
	bne      lbl_8011AEF8

lbl_8011AEC0:
	lwz      r0, 0x1c(r3)
	cmplwi   r0, 0
	beq      lbl_8011AEF8
	lwz      r3, 0x90(r3)
	mr       r31, r0
	li       r4, 0
	bl       load__10JUTTextureF11_GXTexMapID
	b        lbl_8011AEF0

lbl_8011AEE0:
	mr       r3, r31
	mr       r4, r30
	bl       draw__13LifeGaugeListFR8Graphics
	lwz      r31, 0x1c(r31)

lbl_8011AEF0:
	cmplwi   r31, 0
	bne      lbl_8011AEE0

lbl_8011AEF8:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}
