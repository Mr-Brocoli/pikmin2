#include "ebi/title/TTitle.h"
#include "Dolphin/gx.h"
#include "System.h"
#include "nans.h"

namespace ebi {
namespace title {

/**
 * sets Fog graphics effect based on parameters.
 *
 * @note Address: 0x803EB1A4
 * @note Size: 0x118
 */
void TTitleFogMgr::setGX(Camera& camera)
{
	if (mParms.mIsFogActive.mValue) {
		Color4 color4_local(mParms.mColR.mValue, mParms.mColG.mValue, mParms.mColB.mValue, mParms.mColA.mValue);
		GXColor color_local = color4_local.toGXColor();

		float startDist = mParms.mStartDist.mValue;
		float endDist   = mParms.mEndDist.mValue;

		GXSetFog(GX_FOG_LINEAR, startDist, endDist, camera.getNear(), camera.getFar(), color_local);

		u16 width = System::getRenderModeObj()->fbWidth;
		GXFogAdjTable table;
		GXInitFogAdjTable(&table, width, camera.mProjectionMtx);
		GXSetFogRangeAdj(GX_TRUE, (u16)(System::getRenderModeObj()->fbWidth) / 2, &table);
	} else {
		GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, mColor.GXColorView);
	}
}

/**
 * Sets title-screen fog parameters from file.
 *
 * @note Address: 0x803EB2BC
 * @note Size: 0x7C
 */
void TTitleFogMgr::loadSettingFile(JKRArchive* archive, char* file)
{
	void* resource = archive->getResource(file);
	if (resource) {
		RamStream stream(resource, -1);
		stream.resetPosition(true, 1);
		mParms.read(stream);
	}
}

} // namespace title
} // namespace ebi
