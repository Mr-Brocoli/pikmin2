#include "types.h"
#include "Game/VsGame.h"
#include "Game/SingleGame.h"
#include "Game/MoviePlayer.h"
#include "Game/gameChallenge2D.h"
#include "Game/gameStat.h"
#include "Game/Data.h"
#include "PSSystem/PSGame.h"
#include "PSSystem/PSScene.h"
#include "PSGame/SceneInfo.h"
#include "PSGame/PikScene.h"
#include "Screen/Game2DMgr.h"
#include "Morimura/challengeSelect2d.h"
#include "Morimura/VsSelect.h"
#include "Controller.h"
#include "TParticle2dMgr.h"
#include "Game/Navi.h"
#include "System.h"
#include "nans.h"

#include "JSystem/J3D/J3DModelLoader.h"

static const char vsGSTitleUnusedArray[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
static const char vsGSTitleName[]        = "vsGS_Title";

namespace {
char* cMaps[4] = { "caveinfo.txt", "caveinfo_metal.txt", "caveinfo_conc.txt", "caveinfo_tsuchi.txt" };
}

namespace Game {
namespace VsGame {
/**
 * @note Address: 0x80228328
 * @note Size: 0xF8
 */
TitleState::TitleState()
    : State(VGS_Title)
{
	mPlayer1Controller = new Controller(JUTGamePad::PORT_0);
	mDelegate          = new Delegate<Game::VsGame::TitleState>(this, &dvdload);
	mPlayer2Controller = new Controller(JUTGamePad::PORT_1);
}

/**
 * @note Address: 0x80228420
 * @note Size: 0x134
 */
void TitleState::init(VsGameSection* section, StateArg* arg)
{
	naviMgr->clearDeadCount();
	section->mGhostIconTimers[1] = 0.0f;
	section->mGhostIconTimers[0] = 0.0f;
	section->mPokoCount          = 0;
	section->mTimeLimit          = 0.0f;
	section->clearGetDopeCount();
	section->clearGetCherryCount();
	section->mCurrentFloor = 0;

	TitleArg* titleArg = static_cast<TitleArg*>(arg);
	if (titleArg && titleArg->_00) {
		section->clearHeap();
	}

	section->_205           = true;
	section->mDeadPikiCount = false;
	mHeap                   = nullptr;
	mExpHeap                = nullptr;

	mTitleStage = VSTITLE_PrepareInfo;
	_2C         = 0;

	mCaveInfoType = VSCAVEINFO_Default;
	strcpy(section->mCaveInfoFilename, cMaps[mCaveInfoType]);

	_20       = 0;
	mStageNum = section->mChallengeStageList->mStageData.getChildCount(); // Stage Num

	section->refreshHIO();
	section->initPlayData();
	Screen::gGame2DMgr->mScreenMgr->reset();

	section->mChallengeStageData = nullptr;
	section->mVsStageData        = nullptr;

	sys->heapStatusStart("J3DDrawBuffer", nullptr);

	mDrawBufferA          = new J3DDrawBuffer(0x400);
	j3dSys.mDrawBuffer[0] = mDrawBufferA;

	mDrawBufferB                     = new J3DDrawBuffer(0x400);
	j3dSys.mDrawBuffer[1]            = mDrawBufferB;
	j3dSys.mDrawBuffer[1]->mSortType = J3DDrawBuffer::J3DSORT_Z;
	mDrawBufferA->frameInit();
	mDrawBufferB->frameInit();

	sys->heapStatusEnd("J3DDrawBuffer");


	Graphics* gfx = sys->mGfx;
	gfx->allocateViewports(1);
	mViewport.mCamera = new LookAtCamera();
	mViewport.updateCameraAspect();

	u16 y = sys->getRenderModeObj()->efbHeight;
	u16 x = sys->getRenderModeObj()->fbWidth;
	Rectf rect(0.0f, 0.0f, x, y);
	mViewport.setRect(rect);
	gfx->addViewport(&mViewport);

}

static const char unusedVsTitleString[] = "コンクリート"; // 'concrete'

/**
 * @note Address: 0x80228554
 * @note Size: 0x3F4
 */

SysShape::Model** obama;

void TitleState::dvdload()
{
	NewCaptains* mNewCaptains = naviMgr->mNewCaptains;
	obama                     = new SysShape::Model*[50];
	int slot                  = -1;
	int j                 = 0;
	for (int i = 0; i != mNewCaptains->newCaptainNum; i++) {
		if (mNewCaptains->newCaptains[i].slot == slot) {
			slot = -1;
			continue;
		}
		char susbruh[100];
		char* toSprint = "/brocoli/captains/%s.bmd";
		bool imitater  = false;
		if (mNewCaptains->newCaptains[i].powers.isPower(IMITATER_POWER)) {
			imitater = true;	
			toSprint = "/brocoli/fake_captains/%s.bmd";
		}
		sprintf(susbruh, toSprint, mNewCaptains->newCaptains[i].name);

		void* file
		    = JKRDvdRipper::loadToMainRAM(susbruh, nullptr, Switch_0, 0, nullptr, JKRDvdRipper::ALLOC_DIR_BOTTOM, 0, nullptr, nullptr);
		if (!file) {
			file = JKRDvdRipper::loadToMainRAM("/brocoli/failsafe.bmd", nullptr, Switch_0, 0, nullptr, JKRDvdRipper::ALLOC_DIR_BOTTOM, 0,
			                                   nullptr, nullptr);
			// P2ASSERT(file, "No captain model or failsafe!");
		}

		J3DModelData* model = J3DModelLoaderDataBase::load(file, 0x20000030);
		for (u16 j = 0; j < model->getShapeNum(); j++) {
			J3DShape* shape = model->mShapeTable.mItems[j];
			shape->setTexMtxLoadType(0x2000);
			if (imitater) {
				char grayScale = 0x57;
				shape->getMaterial()->mTevBlock->setTevSwapModeTable(0, (J3DTevSwapModeTable*)&grayScale);
			}
		}

		obama[j] = new SysShape::Model(model, 0, 2);
		slot     = mNewCaptains->newCaptains[i].slot;
		j++;
	}

	PSGame::SceneInfo scene;
	if (gameSystem->isChallengeMode()) {
		scene.mSceneType = PSGame::SceneInfo::CHALLENGE_MENU;
	} else {
		scene.mSceneType = PSGame::SceneInfo::VERSUS_MENU;
	}
	scene.mCameras = 0;
	static_cast<PSGame::PikSceneMgr*>(PSSystem::getSceneMgr())->newAndSetCurrentScene(scene);

	PSSystem::SceneMgr* sceneMgr = PSSystem::getSceneMgr();
	sceneMgr->checkScene();
	sceneMgr->mScenes->mChild->scene1stLoadSync();

	sceneMgr = PSSystem::getSceneMgr();
	sceneMgr->checkScene();
	sceneMgr->mScenes->mChild->startMainSeq();

	mChallengeTitleInfo = new Challenge2D_TitleInfo(getChallengeStageNum());
	mVsTitleInfo        = new Vs2D_TitleInfo(getVsStageNum());

	for (int i = 0; i < 5; i++) {
		sys->getPlayCommonData()->challenge_get_CourseState(i);
	}

	for (int i = 0; i < getChallengeStageNum(); i++) {
		PlayChallengeGameData::CourseState* scores = sys->getPlayCommonData()->challenge_get_CourseState(i);
		Challenge2D_TitleInfo::Info* displayData   = (*mChallengeTitleInfo)(i);
		ChallengeGame::StageData* fileData         = mSection->mChallengeStageList->getStageData(i);

		if (fileData) {
			displayData->mFloorCount     = fileData->mFloorCounts;
			displayData->mTimeLimit      = (int)fileData->mTimeLimit;
			displayData->mSprayCounts[0] = fileData->mStartNumBitter;
			displayData->mSprayCounts[1] = fileData->mStartNumSpicy;
			displayData->mPikiContainer  = &fileData->mPikiContainer;
			displayData->mHighscore1     = &scores->mHighscores[0];
			displayData->mHighscore2     = &scores->mHighscores[1];
			displayData->mStageIndex     = fileData->mStageIndex;
			displayData->mDisplayFlag.clear();

			if (sys->getPlayCommonData()->challenge_checkOpen(i)) {
				displayData->setDisplayFlag(PlayChallengeGameData::CourseState::CSF_IsOpen);
			}
			if (sys->getPlayCommonData()->challenge_checkClear(i)) {
				displayData->setDisplayFlag(PlayChallengeGameData::CourseState::CSF_IsClear);
			}
			if (sys->getPlayCommonData()->challenge_checkJustOpen(i)) {
				displayData->setDisplayFlag(PlayChallengeGameData::CourseState::CSF_WasOpen);
			}
			if (sys->getPlayCommonData()->challenge_checkJustClear(i)) {
				displayData->setDisplayFlag(PlayChallengeGameData::CourseState::CSF_WasClear);
			}
			if (sys->getPlayCommonData()->challenge_checkJustKunsho(i)) {
				displayData->setDisplayFlag(PlayChallengeGameData::CourseState::CSF_WasKunsho);
			}
			if (sys->getPlayCommonData()->challenge_checkKunsho(i)) {
				displayData->setDisplayFlag(PlayChallengeGameData::CourseState::CSF_IsKunsho);
			}
		}
	}

	for (int i = 0; i < 5; i++) {
		sys->getPlayCommonData()->challenge_get_CourseState(i);
	}

	for (int i = 0; i < getVsStageNum(); i++) {
		Vs2D_TitleInfo::Info* displayData = (*mVsTitleInfo)(i);
		VsGame::StageData* fileData       = mSection->mVsStageList->getStageData(i);
		if (fileData) {
			displayData->mInfo = fileData->mIndex2D;
		}
	}
}

/**
 * @note Address: 0x80228948
 * @note Size: 0x38
 */
void TitleState::exec(VsGameSection* section)
{
	if (gameSystem->isVersusMode()) {
		execVs(section);
	} else {
		execChallenge(section);
	}
}

/**
 * @note Address: 0x80228980
 * @note Size: 0x2DC
 */
void TitleState::execChallenge(VsGameSection* section)
{
	switch (mTitleStage) {
	case VSTITLE_PrepareInfo:
		mHeap    = JKRGetCurrentHeap();
		mExpHeap = makeExpHeap(mHeap->getFreeSize(), mHeap, true);
		mExpHeap->becomeCurrentHeap();

		mTitleStage = VSTITLE_PrepareDisp;
		mSection    = section;

		sys->dvdLoadUseCallBack(&section->mDvdThreadCommand, mDelegate);
		return;

	case VSTITLE_PrepareDisp:
		if (section->mDvdThreadCommand.mMode == 2) {
			mTitleStage = VSTITLE_Display;

			Morimura::DispMemberChallengeSelect select;
			select.mTitleInfo          = mChallengeTitleInfo;
			select.mSelectedStageIndex = section->mChallengeStageNum;
			select.mDebugExpHeap       = mExpHeap;
			select.mPlayType           = (gameSystem->isMultiplayerMode() > 0); // sure.

			Screen::gGame2DMgr->setGamePad(mPlayer1Controller);
			Screen::gGame2DMgr->open_ChallengeSelect(select);
		}
		return;

	case VSTITLE_Display:
		int stageNumber;
		int playType;
		int check = Screen::gGame2DMgr->check_ChallengeSelect(stageNumber, playType);
		switch (check) {
		case 2:
			section->mIsMenuRunning = true;
			return;

		case 3:
			OSReport("from Morimun:STATE_GO:stageNo=%d:playType=%d\n", stageNumber, playType);

			if (section->mIsVersusMode) {
				gameSystem->mMode = GSM_VERSUS_MODE;
			} else if (!playType) {
				gameSystem->mMode = GSM_ONE_PLAYER_CHALLENGE;
			} else {
				gameSystem->mMode = GSM_TWO_PLAYER_CHALLENGE;
			}

			LoadArg load(0, 0, 0);
			ChallengeGame::StageData* data = section->mChallengeStageList->getStageData(stageNumber);

			P2ASSERTLINE(323, data);
			section->mChallengeStageData = data;
			section->mChallengeStageNum  = stageNumber;

			strcpy(section->mCaveInfoFilename, data->mCaveInfoFilename);

			load._04             = 0; // why...
			section->mContainer1 = data->mPikiContainer;

			playData->setDopeCount(0, data->mStartNumSpicy);
			playData->setDopeCount(1, data->mStartNumBitter);

			section->mTimeLimit = 0.0f;
			data->mPikiContainer.dump("PikiContainer");

			transit(section, VGS_Load, &load);
			break;
		}
		break;
	}

	section->BaseHIOSection::doUpdate();
	Screen::gGame2DMgr->update();
	if (particle2dMgr) {
		particle2dMgr->update();
	}
}

/**
 * @note Address: 0x80228C8C
 * @note Size: 0x430
 */
void TitleState::execVs(VsGameSection* section)
{
	switch (mTitleStage) {
	case VSTITLE_PrepareInfo:
		mHeap    = JKRGetCurrentHeap();
		mExpHeap = makeExpHeap(mHeap->getFreeSize(), mHeap, true);
		mExpHeap->becomeCurrentHeap();

		mTitleStage = VSTITLE_PrepareDisp;
		mSection    = section;
		sys->dvdLoadUseCallBack(&section->mDvdThreadCommand, mDelegate);
		return;

	case VSTITLE_PrepareDisp:
		if (section->mDvdThreadCommand.mMode == 2) {
			mTitleStage = VSTITLE_Display;

			Morimura::DispMemberVsSelect select;
			select.mTitleInfo      = mVsTitleInfo;
			select.mStageNumber    = section->mVsStageNum;
			select.mDebugExpHeap   = mExpHeap;
			select.mOlimarHandicap = section->mOlimarHandicap;
			select.mLouieHandicap  = section->mLouieHandicap;
			select.mRedWinCount    = section->mRedWinCount;
			select.mBlueWinCount   = section->mBlueWinCount;
			select.mVsWinner       = section->mVsWinner;
			select.mStageCount     = section->mVsStageList->mStageData.getChildCount();

			Screen::gGame2DMgr->setGamePad(mPlayer1Controller);
			Screen::gGame2DMgr->open_VsSelect(select);
		}
		return;

	case VSTITLE_Display:
		JUTGamePad::CStick* stick = &mPlayer1Controller->mSStick;
		f32 y                     = stick->mYPos;
		f32 x                     = stick->mXPos;
		Vector3f stickPos         = Vector3f(x, 0.0f, y);

		Vector3f directions[4];
		directions[0]    = Vector3f(0.0f, 0.0f, 1.0f);  // UP
		directions[1]    = Vector3f(1.0f, 0.0f, 0.0f);  // RIGHT
		directions[2]    = Vector3f(0.0f, 0.0f, -1.0f); // DOWN
		directions[3]    = Vector3f(-1.0f, 0.0f, 0.0f); // LEFT
		int vsEditArr[4] = { 0, 1, 2, -1 };

		// if c-stick is pointing a direction, adjust editNumber
		if (stickMagnitude(stickPos) > 0.5f) {
			f32 highest     = 0.0f;
			int vsEditIndex = 0;
			for (int i = 0; i < 4; i++) {
				f32 stickWeight = dot(directions[i], stickPos);
				if (stickWeight > highest) {
					highest     = stickWeight;
					vsEditIndex = i; // up = 0, right = 1, down = 2, left = 3
				}
			}
			section->mEditNumber = vsEditArr[vsEditIndex]; // up  = 0, right = 1, down = 2, left = -1

		} else {                       // no c-stick input
			section->mEditNumber = -2; // random?
		}

		int stageNumber;
		int check = Screen::gGame2DMgr->check_VsSelect(stageNumber, section->mOlimarHandicap, section->mLouieHandicap);
		switch (check) {
		case 2:
			section->mIsMenuRunning = true;
			return;
		case 3:
			gameSystem->mMode = GSM_VERSUS_MODE;

			LoadArg load(0, 0, 0);
			VsGame::StageData* data = section->mVsStageList->getStageData(stageNumber);

			P2ASSERTLINE(451, data);
			section->mVsStageData = data;
			section->mVsStageNum  = stageNumber;

			strcpy(section->mCaveInfoFilename, data->mCaveInfoFilename);
			strcpy(section->mEditFilename, data->mStageLayoutFilePath);

			load._04             = 0; // why...
			section->mContainer1 = data->mPikiContainer;

			playData->setDopeCount(0, data->mStartNumSpicy);
			playData->setDopeCount(1, data->mStartNumBitter);

			section->mTimeLimit = 0.999f + data->mTimeLimit;
			data->mPikiContainer.dump("PikiContainer");

			transit(section, VGS_Load, &load);
		}
		break;
	}

	section->BaseHIOSection::doUpdate();
	Screen::gGame2DMgr->update();
	if (particle2dMgr) {
		particle2dMgr->update();
	}
}

/**
 * @note Address: 0x802290BC
 * @note Size: 0x88
 */
void TitleState::draw(VsGameSection* section, Graphics& gfx)
{

	if (mTitleStage != VSTITLE_Display) {
		return;
	}

	gfx.mPerspGraph.setPort();
	particle2dMgr->draw(1, 0);
	Screen::gGame2DMgr->draw(gfx);

	gfx.mPerspGraph.setPort();
	particle2dMgr->draw(0, 0);

	const int numRows        = 5;
	const int numCols        = 8;
	const float screenWidth  = 640.0f;
	const float screenHeight = 480.0f;

	int cat = 0;
	if (mPlayer1Controller->getButton() & Controller::PRESS_Y)
		cat = 1;

	int dog = naviMgr->mNewCaptains->chosenCaptains[cat];

	int selectedRow = dog / numCols;
	int selectedCol = dog % numCols;
	switch (mPlayer1Controller->getButtonDown()) {
	//case Controller::PRESS_UP:
	case Controller::PRESS_DPAD_UP:
		selectedRow = (selectedRow - 1 + numRows) % numRows;
		break;
	//case Controller::PRESS_LEFT:
	case Controller::PRESS_DPAD_LEFT:
		selectedCol = (selectedCol - 1 + numCols) % numCols;
		break;
	//case Controller::PRESS_RIGHT:
	case Controller::PRESS_DPAD_RIGHT:
		selectedCol = (selectedCol + 1) % numCols;
		break;
	//case Controller::PRESS_DOWN:
	case Controller::PRESS_DPAD_DOWN:
		selectedRow = (selectedRow + 1) % numRows;
		break;
	default:
		// Handle other keys or ignore them
		break;
	}
	naviMgr->mNewCaptains->chosenCaptains[cat] = selectedRow * numCols + selectedCol;

	for (int row = 0; row < numRows; ++row) {
		for (int col = 0; col < numCols; ++col) {
			int index = row * numCols + col;

			if (index < 40) {
				Matrixf mtx;
				PSMTXIdentity(mtx.mMatrix.mtxView);
				PSMTXCopy(mtx.mMatrix.mtxView, j3dSys.mViewMtx);

				Vector3f scale(1, 1, 1);
				Vector3f rot(0, 0, 0);

				// Adjust spacing based on screen resolution
				float spacingX = screenWidth / numCols;
				float spacingY = screenHeight / numRows;

				Vector3f position(-(screenWidth / 2 + col * -spacingX), -row * spacingY + screenHeight/2, -590.0f);
				mtx.makeSRT(scale, rot, position);

				Vec one;
				one.x = 3;
				one.y = 3;
				one.z = 3;
				if (index == naviMgr->mNewCaptains->chosenCaptains[0] || index == naviMgr->mNewCaptains->chosenCaptains[1]) {
					one.x = 5;
					one.y = 5;
					one.z = 5;
				}
				obama[index]->mJ3dModel->setBaseScale(one);
				PSMTXCopy(mtx.mMatrix.mtxView, obama[index]->mJ3dModel->mPosMtx);
				obama[index]->show();
				obama[index]->mJ3dModel->calc();
				obama[index]->mJ3dModel->entry();
				obama[index]->mJ3dModel->viewCalc();
				// obama[index]->mJ3dModel->makeDL();
			}
		}
	}
	
	Viewport* vp = sys->mGfx->getViewport(0);
	vp->setViewport();
	vp->setProjection();
	//mCameraMgr.setProjection();
	//mLightMgr.setCameraMtx(mCameraMgr.mLookMatrix.mMatrix.mtxView);
	//mFogMgr.setGX(mCameraMgr);
	j3dSys.drawInit();
	j3dSys.mDrawMode = J3DSys::SYSDRAW_Unk3;
	mDrawBufferA->draw();
	j3dSys.mDrawMode = J3DSys::SYSDRAW_Unk4;
	mDrawBufferB->draw();
	j3dSys.reinitGX();
	mDrawBufferA->frameInit();
	mDrawBufferB->frameInit();

}

/**
 * @note Address: 0x80229144
 * @note Size: 0xB0
 */
void TitleState::cleanup(VsGameSection* section)
{
	PSSystem::SceneMgr* sceneMgr = PSSystem::getSceneMgr();
	PSSystem::checkSceneMgr(sceneMgr);
	sceneMgr->deleteCurrentScene();

	particle2dMgr->killAll();

	mExpHeap->freeAll();
	mExpHeap->destroy();
	mExpHeap = nullptr;
	mHeap->becomeCurrentHeap();
}
} // namespace VsGame
} // namespace Game
