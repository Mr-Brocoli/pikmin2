#include "types.h"

/*
    Generated from dpostproc

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__Q34Game12Hanachirashi14ProperAnimator
    __vt__Q34Game12Hanachirashi14ProperAnimator:
        .4byte 0
        .4byte 0
        .4byte __dt__Q34Game12Hanachirashi14ProperAnimatorFv
        .4byte
   setAnimMgr__Q34Game12Hanachirashi14ProperAnimatorFPQ28SysShape7AnimMgr .4byte
   getAnimator__Q34Game12Hanachirashi14ProperAnimatorFv .4byte
   getAnimator__Q34Game12Hanachirashi14ProperAnimatorFi .4byte
   animate__Q24Game17EnemyAnimatorBaseFf .4byte
   animate__Q24Game17EnemyAnimatorBaseFif .4byte
   resetAnimSpeed__Q24Game17EnemyAnimatorBaseFv .4byte
   getTypeID__Q24Game17EnemyAnimatorBaseFv
*/

namespace Game {

/*
 * --INFO--
 * Address:	802A12B4
 * Size:	000008
 */
void Hanachirashi::ProperAnimator::setAnimMgr(SysShape::AnimMgr* a1)
{
	// Generated from stw r4, 0x20(r3)
	_20 = a1;
}

/*
 * --INFO--
 * Address:	802A12BC
 * Size:	000008
 */
void Hanachirashi::ProperAnimator::getAnimator(int)
{
	/*
	addi     r3, r3, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	802A12C4
 * Size:	00005C
 */
Hanachirashi::ProperAnimator::~ProperAnimator()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_802A1308
	lis      r3, __vt__Q34Game12Hanachirashi14ProperAnimator@ha
	addi     r0, r3, __vt__Q34Game12Hanachirashi14ProperAnimator@l
	stw      r0, 0(r31)
	beq      lbl_802A12F8
	lis      r3, __vt__Q24Game17EnemyAnimatorBase@ha
	addi     r0, r3, __vt__Q24Game17EnemyAnimatorBase@l
	stw      r0, 0(r31)

lbl_802A12F8:
	extsh.   r0, r4
	ble      lbl_802A1308
	mr       r3, r31
	bl       __dl__FPv

lbl_802A1308:
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
 * Address:	802A1320
 * Size:	000008
 */
void Hanachirashi::ProperAnimator::getAnimator()
{
	/*
	addi     r3, r3, 0x10
	blr
	*/
}
} // namespace Game
