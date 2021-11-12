#include "types.h"

/*
    Generated from dpostproc

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__Q23efx8TOtaElec
    __vt__Q23efx8TOtaElec:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx8TSimple3FPQ23efx3Arg
        .4byte forceKill__Q23efx8TSimple3Fv
        .4byte fade__Q23efx8TSimple3Fv
    .global __vt__Q23efx14TOtaChargeelec
    __vt__Q23efx14TOtaChargeelec:
        .4byte 0
        .4byte 0
        .4byte "create__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>FPQ23efx3Arg"
        .4byte "forceKill__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
        .4byte "fade__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
        .4byte "startDemoDrawOff__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
        .4byte "endDemoDrawOn__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
    .global __vt__Q34Game11ElecOtakara3Obj
    __vt__Q34Game11ElecOtakara3Obj:
        .4byte 0
        .4byte 0
        .4byte getPosition__Q24Game9EnemyBaseFv
        .4byte checkCollision__Q24Game8CreatureFPQ24Game10CellObject
        .4byte getBoundingSphere__Q24Game9EnemyBaseFRQ23Sys6Sphere
        .4byte collisionUpdatable__Q24Game8CreatureFv
        .4byte isPiki__Q24Game8CreatureFv
        .4byte isNavi__Q24Game8CreatureFv
        .4byte deferPikiCollision__Q24Game10CellObjectFv
        .4byte getTypeName__Q24Game8CreatureFv
        .4byte getObjType__Q24Game8CreatureFv
        .4byte constructor__Q24Game9EnemyBaseFv
        .4byte onInit__Q34Game11OtakaraBase3ObjFPQ24Game15CreatureInitArg
        .4byte onKill__Q34Game11OtakaraBase3ObjFPQ24Game15CreatureKillArg
        .4byte onInitPost__Q24Game9EnemyBaseFPQ24Game15CreatureInitArg
        .4byte doAnimation__Q24Game9EnemyBaseFv
        .4byte doEntry__Q24Game9EnemyBaseFv
        .4byte doSetView__Q24Game9EnemyBaseFi
        .4byte doViewCalc__Q24Game9EnemyBaseFv
        .4byte doSimulation__Q24Game9EnemyBaseFf
        .4byte doDirectDraw__Q34Game11OtakaraBase3ObjFR8Graphics
        .4byte getBodyRadius__Q24Game9EnemyBaseFv
        .4byte getCellRadius__Q34Game11OtakaraBase3ObjFv
        .4byte "initPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte "onInitPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte getFaceDir__Q24Game9EnemyBaseFv
        .4byte "setVelocity__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte getVelocity__Q24Game9EnemyBaseFv
        .4byte "onSetPosition__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte "onSetPositionPost__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte updateTrMatrix__Q24Game9EnemyBaseFv
        .4byte isTeki__Q24Game9EnemyBaseFv
        .4byte isPellet__Q24Game8CreatureFv
        .4byte inWaterCallback__Q24Game9EnemyBaseFPQ24Game8WaterBox
        .4byte outWaterCallback__Q24Game9EnemyBaseFv
        .4byte inWater__Q24Game9EnemyBaseFv
        .4byte getFlockMgr__Q24Game8CreatureFv
        .4byte onStartCapture__Q24Game8CreatureFv
        .4byte onUpdateCapture__Q24Game8CreatureFR7Matrixf
        .4byte onEndCapture__Q24Game8CreatureFv
        .4byte isAtari__Q24Game8CreatureFv
        .4byte setAtari__Q24Game8CreatureFb
        .4byte isAlive__Q24Game8CreatureFv
        .4byte setAlive__Q24Game8CreatureFb
        .4byte isCollisionFlick__Q24Game8CreatureFv
        .4byte setCollisionFlick__Q24Game8CreatureFb
        .4byte isMovieActor__Q24Game8CreatureFv
        .4byte isMovieExtra__Q24Game8CreatureFv
        .4byte isMovieMotion__Q24Game8CreatureFv
        .4byte setMovieMotion__Q24Game8CreatureFb
        .4byte isBuried__Q24Game8CreatureFv
        .4byte isFlying__Q24Game9EnemyBaseFv
        .4byte isUnderground__Q24Game8CreatureFv
        .4byte isLivingThing__Q24Game8CreatureFv
        .4byte isDebugCollision__Q24Game8CreatureFv
        .4byte setDebugCollision__Q24Game8CreatureFb
        .4byte doSave__Q24Game8CreatureFR6Stream
        .4byte doLoad__Q24Game8CreatureFR6Stream
        .4byte bounceCallback__Q24Game8CreatureFPQ23Sys8Triangle
        .4byte collisionCallback__Q24Game9EnemyBaseFRQ24Game9CollEvent
        .4byte platCallback__Q24Game8CreatureFRQ24Game9PlatEvent
        .4byte getJAIObject__Q24Game9EnemyBaseFv
        .4byte getPSCreature__Q24Game9EnemyBaseFv
        .4byte getSound_AILOD__Q24Game8CreatureFv
        .4byte getSound_PosPtr__Q24Game9EnemyBaseFv
        .4byte sound_culling__Q24Game9EnemyBaseFv
        .4byte getSound_CurrAnimFrame__Q24Game9EnemyBaseFv
        .4byte getSound_CurrAnimSpeed__Q24Game9EnemyBaseFv
        .4byte on_movie_begin__Q24Game8CreatureFb
        .4byte on_movie_end__Q24Game8CreatureFb
        .4byte movieStartAnimation__Q24Game8CreatureFUl
        .4byte movieStartDemoAnimation__Q24Game8CreatureFPQ28SysShape8AnimInfo
        .4byte movieSetAnimationLastFrame__Q24Game8CreatureFv
        .4byte "movieSetTranslation__Q24Game8CreatureFR10Vector3<f>f"
        .4byte movieSetFaceDir__Q24Game8CreatureFf
        .4byte "movieGotoPosition__Q24Game8CreatureFR10Vector3<f>"
        .4byte movieUserCommand__Q24Game8CreatureFUlPQ24Game11MoviePlayer
        .4byte getShadowParam__Q34Game11OtakaraBase3ObjFRQ24Game11ShadowParam
        .4byte needShadow__Q24Game9EnemyBaseFv
        .4byte getLifeGaugeParam__Q24Game9EnemyBaseFRQ24Game14LifeGaugeParam
        .4byte getLODSphere__Q24Game9EnemyBaseFRQ23Sys6Sphere
        .4byte getLODCylinder__Q24Game8CreatureFRQ23Sys8Cylinder
        .4byte startPick__Q24Game8CreatureFv
        .4byte endPick__Q24Game8CreatureFb
        .4byte getMabiki__Q24Game8CreatureFv
        .4byte getFootmarks__Q24Game8CreatureFv
        .4byte onStickStart__Q24Game9EnemyBaseFPQ24Game8Creature
        .4byte onStickEnd__Q24Game9EnemyBaseFPQ24Game8Creature
        .4byte onStickStartSelf__Q24Game8CreatureFPQ24Game8Creature
        .4byte onStickEndSelf__Q24Game8CreatureFPQ24Game8Creature
        .4byte isSlotFree__Q24Game8CreatureFs
        .4byte getFreeStickSlot__Q24Game8CreatureFv
        .4byte "getNearFreeStickSlot__Q24Game8CreatureFR10Vector3<f>"
        .4byte getRandomFreeStickSlot__Q24Game8CreatureFv
        .4byte onSlotStickStart__Q24Game8CreatureFPQ24Game8Creatures
        .4byte onSlotStickEnd__Q24Game8CreatureFPQ24Game8Creatures
        .4byte "calcStickSlotGlobal__Q24Game8CreatureFsR10Vector3<f>"
        .4byte "getVelocityAt__Q24Game9EnemyBaseFR10Vector3<f>R10Vector3<f>"
        .4byte "getAngularEffect__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
        .4byte "applyImpulse__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
        .4byte ignoreAtari__Q24Game8CreatureFPQ24Game8Creature
        .4byte getSuckPos__Q24Game8CreatureFv
        .4byte getGoalPos__Q24Game8CreatureFv
        .4byte isSuckReady__Q24Game8CreatureFv
        .4byte isSuckArriveWait__Q24Game8CreatureFv
        .4byte stimulate__Q24Game9EnemyBaseFRQ24Game11Interaction
        .4byte getCreatureName__Q24Game9EnemyBaseFv
        .4byte getCreatureID__Q24Game9EnemyBaseFv
        .4byte 0
        .4byte 0
        .4byte "@376@onKeyEvent__Q24Game9EnemyBaseFRCQ28SysShape8KeyEvent"
        .4byte __dt__Q34Game11ElecOtakara3ObjFv
        .4byte "birth__Q24Game9EnemyBaseFR10Vector3<f>f"
        .4byte
   setInitialSetting__Q34Game11OtakaraBase3ObjFPQ24Game21EnemyInitialParamBase
        .4byte update__Q24Game9EnemyBaseFv
        .4byte doUpdate__Q34Game11OtakaraBase3ObjFv
        .4byte doUpdateCommon__Q34Game11OtakaraBase3ObjFv
        .4byte doUpdateCarcass__Q24Game9EnemyBaseFv
        .4byte doAnimationUpdateAnimator__Q24Game9EnemyBaseFv
        .4byte doAnimationCullingOff__Q34Game11OtakaraBase3ObjFv
        .4byte doAnimationCullingOn__Q24Game9EnemyBaseFv
        .4byte doAnimationStick__Q24Game9EnemyBaseFv
        .4byte doSimulationCarcass__Q24Game9EnemyBaseFf
        .4byte doDebugDraw__Q34Game11OtakaraBase3ObjFR8Graphics
        .4byte doSimpleDraw__Q24Game9EnemyBaseFP8Viewport
        .4byte doSimulationGround__Q24Game9EnemyBaseFf
        .4byte doSimulationFlying__Q24Game9EnemyBaseFf
        .4byte doSimulationStick__Q24Game9EnemyBaseFf
        .4byte changeMaterial__Q34Game11ElecOtakara3ObjFv
        .4byte "getCommonEffectPos__Q24Game9EnemyBaseFR10Vector3<f>"
        .4byte getFitEffectPos__Q24Game9EnemyBaseFv
        .4byte viewGetShape__Q24Game9EnemyBaseFv
        .4byte view_start_carrymotion__Q24Game9EnemyBaseFv
        .4byte view_finish_carrymotion__Q24Game9EnemyBaseFv
        .4byte viewStartPreCarryMotion__Q24Game9EnemyBaseFv
        .4byte viewStartCarryMotion__Q24Game9EnemyBaseFv
        .4byte viewOnPelletKilled__Q24Game9EnemyBaseFv
        .4byte getOffsetForMapCollision__Q24Game9EnemyBaseFv
        .4byte setParameters__Q24Game9EnemyBaseFv
        .4byte initMouthSlots__Q24Game9EnemyBaseFv
        .4byte initWalkSmokeEffect__Q24Game9EnemyBaseFv
        .4byte getWalkSmokeEffectMgr__Q24Game9EnemyBaseFv
        .4byte onKeyEvent__Q24Game9EnemyBaseFRCQ28SysShape8KeyEvent
        .4byte injure__Q24Game9EnemyBaseFv
        .4byte setCollEvent__Q24Game9EnemyBaseFRQ24Game9CollEvent
        .4byte "getEfxHamonPos__Q24Game9EnemyBaseFP10Vector3<f>"
        .4byte createInstanceEfxHamon__Q24Game9EnemyBaseFv
        .4byte updateEfxHamon__Q24Game9EnemyBaseFv
        .4byte createEfxHamon__Q24Game9EnemyBaseFv
        .4byte fadeEfxHamon__Q24Game9EnemyBaseFv
        .4byte getEnemyTypeID__Q34Game11ElecOtakara3ObjFv
        .4byte getMouthSlots__Q24Game9EnemyBaseFv
        .4byte doGetLifeGaugeParam__Q24Game9EnemyBaseFRQ24Game14LifeGaugeParam
        .4byte throwupItem__Q24Game9EnemyBaseFv
        .4byte "getThrowupItemPosition__Q24Game9EnemyBaseFP10Vector3<f>"
        .4byte "getThrowupItemVelocity__Q24Game9EnemyBaseFP10Vector3<f>"
        .4byte throwupItemInDeathProcedure__Q24Game9EnemyBaseFv
        .4byte setLODSphere__Q24Game9EnemyBaseFRQ23Sys6Sphere
        .4byte
   damageCallBack__Q34Game11OtakaraBase3ObjFPQ24Game8CreaturefP8CollPart .4byte
   pressCallBack__Q24Game9EnemyBaseFPQ24Game8CreaturefP8CollPart .4byte
   flyCollisionCallBack__Q24Game9EnemyBaseFPQ24Game8CreaturefP8CollPart .4byte
   hipdropCallBack__Q34Game11OtakaraBase3ObjFPQ24Game8CreaturefP8CollPart .4byte
   dropCallBack__Q24Game9EnemyBaseFPQ24Game8Creature .4byte
   earthquakeCallBack__Q34Game11OtakaraBase3ObjFPQ24Game8Creaturef .4byte
   farmCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturef .4byte
   "bombCallBack__Q34Game11OtakaraBase3ObjFPQ24Game8CreatureR10Vector3<f>f"
        .4byte eatWhitePikminCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturef
        .4byte dopeCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturei
        .4byte doDopeCallBack__Q24Game9EnemyBaseFPQ24Game8Creaturei
        .4byte doStartStoneState__Q34Game11OtakaraBase3ObjFv
        .4byte doFinishStoneState__Q34Game11OtakaraBase3ObjFv
        .4byte getDamageCoeStoneState__Q24Game9EnemyBaseFv
        .4byte doStartEarthquakeState__Q34Game11OtakaraBase3ObjFf
        .4byte doFinishEarthquakeState__Q34Game11OtakaraBase3ObjFv
        .4byte doStartEarthquakeFitState__Q34Game11OtakaraBase3ObjFv
        .4byte doFinishEarthquakeFitState__Q34Game11OtakaraBase3ObjFv
        .4byte lifeRecover__Q24Game9EnemyBaseFv
        .4byte startCarcassMotion__Q34Game11OtakaraBase3ObjFv
        .4byte setCarcassArg__Q24Game9EnemyBaseFRQ24Game13PelletViewArg
        .4byte getCarcassArgHeight__Q24Game9EnemyBaseFv
        .4byte doBecomeCarcass__Q24Game9EnemyBaseFv
        .4byte startWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte finishWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte isFinishableWaitingBirthTypeDrop__Q24Game9EnemyBaseFv
        .4byte doStartWaitingBirthTypeDrop__Q34Game11OtakaraBase3ObjFv
        .4byte doFinishWaitingBirthTypeDrop__Q34Game11OtakaraBase3ObjFv
        .4byte wallCallback__Q24Game9EnemyBaseFRCQ24Game8MoveInfo
        .4byte getDownSmokeScale__Q34Game11OtakaraBase3ObjFv
        .4byte doStartMovie__Q34Game11OtakaraBase3ObjFv
        .4byte doEndMovie__Q34Game11OtakaraBase3ObjFv
        .4byte setFSM__Q34Game11OtakaraBase3ObjFPQ34Game11OtakaraBase3FSM
        .4byte interactCreature__Q34Game11ElecOtakara3ObjFPQ24Game8Creature
        .4byte createEffect__Q34Game11ElecOtakara3ObjFv
        .4byte setupEffect__Q34Game11ElecOtakara3ObjFv
        .4byte startChargeEffect__Q34Game11ElecOtakara3ObjFv
        .4byte finishChargeEffect__Q34Game11ElecOtakara3ObjFv
        .4byte createDisChargeEffect__Q34Game11ElecOtakara3ObjFv
        .4byte effectDrawOn__Q34Game11ElecOtakara3ObjFv
        .4byte effectDrawOff__Q34Game11ElecOtakara3ObjFv
        .4byte startEscapeSE__Q34Game11OtakaraBase3ObjFv
        .4byte startDisChargeSE__Q34Game11ElecOtakara3ObjFv
        .4byte 0
        .4byte 0
        .4byte viewGetBaseScale__Q24Game10PelletViewFv
        .4byte "@760@12@viewGetShape__Q24Game9EnemyBaseFv"
        .4byte viewGetCollTreeJointIndex__Q24Game10PelletViewFv
        .4byte viewGetCollTreeOffset__Q24Game10PelletViewFv
        .4byte "@760@12@view_start_carrymotion__Q24Game9EnemyBaseFv"
        .4byte "@760@12@view_finish_carrymotion__Q24Game9EnemyBaseFv"
        .4byte "@760@12@viewStartPreCarryMotion__Q24Game9EnemyBaseFv"
        .4byte "@760@12@viewStartCarryMotion__Q24Game9EnemyBaseFv"
        .4byte "@760@12@viewOnPelletKilled__Q24Game9EnemyBaseFv"
        .4byte "viewEntryShape__Q24Game10PelletViewFR7MatrixfR10Vector3<f>"
        .4byte 0

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_8051C320
    lbl_8051C320:
        .4byte 0x00000000
    .global lbl_8051C324
    lbl_8051C324:
        .float 1.0
    .global lbl_8051C328
    lbl_8051C328:
        .4byte 0x63656E74
        .4byte 0x65720000
*/

namespace Game {

/*
 * --INFO--
 * Address:	802B9AD8
 * Size:	0000A4
 */
ElecOtakara::Obj::Obj()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	extsh.   r0, r4
	stw      r31, 0xc(r1)
	mr       r31, r3
	beq      lbl_802B9B14
	addi     r0, r31, 0x2f8
	lis      r3, __vt__Q24Game10PelletView@ha
	stw      r0, 0x17c(r31)
	addi     r3, r3, __vt__Q24Game10PelletView@l
	li       r0, 0
	stw      r3, 0x2f8(r31)
	stw      r0, 0x2fc(r31)
	stw      r0, 0x300(r31)

lbl_802B9B14:
	mr       r3, r31
	li       r4, 0
	bl       __ct__Q34Game11OtakaraBase3ObjFv
	lis      r3, __vt__Q34Game11ElecOtakara3Obj@ha
	addi     r0, r31, 0x2f8
	addi     r5, r3, __vt__Q34Game11ElecOtakara3Obj@l
	mr       r3, r31
	stw      r5, 0(r31)
	addi     r4, r5, 0x1b0
	addi     r5, r5, 0x324
	stw      r4, 0x178(r31)
	lwz      r4, 0x17c(r31)
	stw      r5, 0(r4)
	lwz      r4, 0x17c(r31)
	subf     r0, r4, r0
	stw      r0, 0xc(r4)
	lwz      r12, 0(r31)
	lwz      r12, 0x300(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9B7C
 * Size:	0001A4
 */
void ElecOtakara::Obj::changeMaterial()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r27, r3
	lwz      r3, 0x180(r3)
	lwz      r4, 0x174(r27)
	lwz      r12, 0(r3)
	lwz      r29, 8(r4)
	lwz      r12, 0xe0(r12)
	lwz      r30, 4(r29)
	mtctr    r12
	bctrl
	mr       r31, r3
	mr       r3, r29
	lwz      r12, 0(r29)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r4, 0x174(r27)
	lis      r3, j3dSys@ha
	lbz      r0, 0(r31)
	addi     r27, r3, j3dSys@l
	lwz      r3, 8(r4)
	li       r28, 0
	lwz      r3, 4(r3)
	lwz      r4, 0x6c(r3)
	lwz      r3, 4(r4)
	stb      r0, 0(r3)
	lbz      r0, 1(r31)
	stb      r0, 1(r3)
	lhz      r0, 2(r31)
	sth      r0, 2(r3)
	lhz      r0, 4(r31)
	sth      r0, 4(r3)
	lbz      r0, 6(r31)
	stb      r0, 6(r3)
	lbz      r0, 7(r31)
	stb      r0, 7(r3)
	lbz      r0, 8(r31)
	stb      r0, 8(r3)
	lbz      r0, 9(r31)
	stb      r0, 9(r3)
	lhz      r0, 0xa(r31)
	sth      r0, 0xa(r3)
	lwz      r0, 0xc(r31)
	stw      r0, 0xc(r3)
	lbz      r0, 0x10(r31)
	stb      r0, 0x10(r3)
	lbz      r0, 0x11(r31)
	stb      r0, 0x11(r3)
	lbz      r0, 0x12(r31)
	stb      r0, 0x12(r3)
	lbz      r0, 0x13(r31)
	stb      r0, 0x13(r3)
	lbz      r0, 0x14(r31)
	stb      r0, 0x14(r3)
	lbz      r0, 0x15(r31)
	stb      r0, 0x15(r3)
	lbz      r0, 0x16(r31)
	stb      r0, 0x16(r3)
	lbz      r0, 0x17(r31)
	stb      r0, 0x17(r3)
	lbz      r0, 0x18(r31)
	stb      r0, 0x18(r3)
	lbz      r0, 0x19(r31)
	stb      r0, 0x19(r3)
	lha      r0, 0x1a(r31)
	sth      r0, 0x1a(r3)
	lwz      r0, 0x1c(r31)
	stw      r0, 0x1c(r3)
	lwz      r3, 4(r4)
	lwz      r0, 0x1c(r3)
	add      r0, r31, r0
	subf     r0, r3, r0
	stw      r0, 0x1c(r3)
	lwz      r3, 4(r4)
	lwz      r0, 0xc(r3)
	add      r0, r31, r0
	subf     r0, r3, r0
	stw      r0, 0xc(r3)
	b        lbl_802B9CFC

lbl_802B9CC4:
	lwz      r4, 0xc0(r29)
	rlwinm   r3, r28, 6, 0xa, 0x19
	rlwinm   r0, r28, 2, 0xe, 0x1d
	add      r4, r4, r3
	stw      r4, 0x3c(r27)
	lwz      r3, 0x60(r30)
	lwz      r4, 0x2c(r4)
	lwzx     r3, r3, r0
	lwz      r4, 0x34(r4)
	lwz      r12, 0(r3)
	lwz      r12, 0x24(r12)
	mtctr    r12
	bctrl
	addi     r28, r28, 1

lbl_802B9CFC:
	lhz      r0, 0x5c(r30)
	clrlwi   r3, r28, 0x10
	cmplw    r3, r0
	blt      lbl_802B9CC4
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9D20
 * Size:	000168
 */
void ElecOtakara::Obj::interactCreature(Game::Creature*)
{
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stfd     f30, 0x50(r1)
	psq_st   f30, 88(r1), 0, qr0
	stfd     f29, 0x40(r1)
	psq_st   f29, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	lwz      r12, 0(r4)
	mr       r30, r3
	mr       r31, r4
	addi     r3, r1, 8
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f2, 0x10(r1)
	lfs      f0, 0x194(r30)
	lfs      f1, 8(r1)
	fsubs    f29, f2, f0
	lfs      f0, 0x18c(r30)
	lfs      f30, lbl_8051C320@sda21(r2)
	fsubs    f31, f1, f0
	fmuls    f1, f29, f29
	fmadds   f0, f31, f31, f30
	fadds    f1, f1, f0
	fcmpo    cr0, f1, f30
	ble      lbl_802B9DA8
	ble      lbl_802B9DAC
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802B9DAC

lbl_802B9DA8:
	fmr      f1, f30

lbl_802B9DAC:
	lfs      f0, lbl_8051C320@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802B9DCC
	lfs      f0, lbl_8051C324@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f31, f31, f0
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0

lbl_802B9DCC:
	mr       r3, r31
	lwz      r4, 0xc0(r30)
	lwz      r12, 0(r31)
	lfs      f0, 0x44c(r4)
	lwz      r12, 0x18(r12)
	fmuls    f31, f31, f0
	fmuls    f29, f29, f0
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_802B9E00
	lwz      r3, 0xc0(r30)
	lfs      f30, 0x474(r3)

lbl_802B9E00:
	lwz      r6, 0xc0(r30)
	lis      r5, __vt__Q24Game11Interaction@ha
	lis      r4, __vt__Q24Game12InteractWind@ha
	lis      r3, __vt__Q24Game13InteractDenki@ha
	lfs      f0, 0x604(r6)
	addi     r6, r5, __vt__Q24Game11Interaction@l
	addi     r5, r4, __vt__Q24Game12InteractWind@l
	addi     r0, r3, __vt__Q24Game13InteractDenki@l
	stw      r6, 0x14(r1)
	mr       r3, r31
	addi     r4, r1, 0x14
	stw      r5, 0x14(r1)
	stw      r30, 0x18(r1)
	stfs     f0, 0x1c(r1)
	stfs     f31, 0x20(r1)
	stfs     f30, 0x24(r1)
	stfs     f29, 0x28(r1)
	stw      r0, 0x14(r1)
	lwz      r12, 0(r31)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl
	psq_l    f31, 104(r1), 0, qr0
	lfd      f31, 0x60(r1)
	psq_l    f30, 88(r1), 0, qr0
	lfd      f30, 0x50(r1)
	psq_l    f29, 72(r1), 0, qr0
	lfd      f29, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r0, 0x74(r1)
	lwz      r30, 0x38(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9E88
 * Size:	000060
 */
void ElecOtakara::Obj::createEffect()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r3
	li       r3, 0x2c
	bl       __nw__FUl
	or.      r31, r3, r3
	beq      lbl_802B9ECC
	li       r4, 0
	li       r5, 0x12c
	li       r6, 0x12d
	bl       __ct__Q23efx11TChaseMtxT2FPA4_fUsUs
	lis      r3, __vt__Q23efx14TOtaChargeelec@ha
	addi     r0, r3, __vt__Q23efx14TOtaChargeelec@l
	stw      r0, 0(r31)

lbl_802B9ECC:
	stw      r31, 0x2f4(r30)
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9EE8
 * Size:	000048
 */
void ElecOtakara::Obj::setupEffect()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	addi     r4, r2, lbl_8051C328@sda21
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	lwz      r3, 0x174(r3)
	bl       getJoint__Q28SysShape5ModelFPc
	bl       getWorldMatrix__Q28SysShape5JointFv
	mr       r0, r3
	lwz      r3, 0x2f4(r31)
	mr       r4, r0
	bl       setMtxptr__Q23efx11TChaseMtxT2FPA4_f
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9F30
 * Size:	000034
 */
void ElecOtakara::Obj::startChargeEffect()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	li       r4, 0
	stw      r0, 0x14(r1)
	lwz      r3, 0x2f4(r3)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9F64
 * Size:	000030
 */
void ElecOtakara::Obj::finishChargeEffect()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r3, 0x2f4(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802B9F94
 * Size:	000098
 */
void ElecOtakara::Obj::createDisChargeEffect()
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	lis      r6, __vt__Q23efx5TBase@ha
	lis      r5, __vt__Q23efx8TSimple3@ha
	stw      r0, 0x34(r1)
	lis      r4, __vt__Q23efx3Arg@ha
	addi     r0, r4, __vt__Q23efx3Arg@l
	addi     r10, r6, __vt__Q23efx5TBase@l
	stw      r0, 8(r1)
	addi     r9, r5, __vt__Q23efx8TSimple3@l
	lis      r4, __vt__Q23efx8TOtaElec@ha
	li       r8, 0x134
	lfs      f0, 0x18c(r3)
	addi     r0, r4, __vt__Q23efx8TOtaElec@l
	li       r7, 0x135
	li       r6, 0x136
	stfs     f0, 0xc(r1)
	li       r5, 0
	addi     r4, r1, 8
	lfs      f0, 0x190(r3)
	stfs     f0, 0x10(r1)
	lfs      f0, 0x194(r3)
	addi     r3, r1, 0x18
	stw      r10, 0x18(r1)
	stw      r9, 0x18(r1)
	stfs     f0, 0x14(r1)
	sth      r8, 0x1c(r1)
	sth      r7, 0x1e(r1)
	sth      r6, 0x20(r1)
	stw      r5, 0x24(r1)
	stw      r5, 0x28(r1)
	stw      r5, 0x2c(r1)
	stw      r0, 0x18(r1)
	bl       create__Q23efx8TSimple3FPQ23efx3Arg
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	802BA02C
 * Size:	000030
 */
void ElecOtakara::Obj::effectDrawOn()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r3, 0x2f4(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802BA05C
 * Size:	000030
 */
void ElecOtakara::Obj::effectDrawOff()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r3, 0x2f4(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802BA08C
 * Size:	000044
 */
void ElecOtakara::Obj::startDisChargeSE()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0xf4(r12)
	mtctr    r12
	bctrl
	lwz      r12, 0(r3)
	li       r4, 0x5166
	li       r5, 0
	lwz      r12, 0xc(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802BA0D0
 * Size:	000008
 */
u32 ElecOtakara::Obj::getEnemyTypeID() { return 0x3E; }
} // namespace Game
