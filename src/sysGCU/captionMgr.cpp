#include "types.h"

/*
    Generated from dpostproc

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_8049B848
    lbl_8049B848:
        .4byte 0x834C8383
        .4byte 0x83768356
        .4byte 0x83878393
        .4byte 0x837D836C
        .4byte 0x815B8357
        .4byte 0x83830000
    .global lbl_8049B860
    lbl_8049B860:
        .4byte 0x63617074
        .4byte 0x696F6E4D
        .4byte 0x67722E63
        .4byte 0x70700000
    .global lbl_8049B870
    lbl_8049B870:
        .asciz "P2Assert"
        .skip 3

    .section .data, "wa"	# 0x8049E220 - 0x804EFC20
    .global __vt__Q27Caption3Mgr
    __vt__Q27Caption3Mgr:
        .4byte 0
        .4byte 0
        .4byte __dt__Q27Caption3MgrFv
        .4byte getChildCount__5CNodeFv
        .4byte read__Q27Caption3MgrFR6Stream
    .global __vt__Q27Caption4Node
    __vt__Q27Caption4Node:
        .4byte 0
        .4byte 0
        .4byte __dt__Q27Caption4NodeFv
        .4byte getChildCount__5CNodeFv
        .4byte read__Q27Caption4NodeFR6Stream

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_80520B20
    lbl_80520B20:
        .4byte 0x00000000
    .global lbl_80520B24
    lbl_80520B24:
        .4byte 0x2D2D2D2D
        .4byte 0x5F2D2D00
        .4byte 0x00000000
*/

/*
 * --INFO--
 * Address:	........
 * Size:	000080
 */
Caption::Node::Node(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	804508E8
 * Size:	000064
 */
void Caption::Node::read(Stream&)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	li       r5, 8
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	mr       r30, r3
	mr       r3, r31
	addi     r4, r30, 0x20
	bl       readString__6StreamFPci
	mr       r3, r31
	bl       readShort__6StreamFv
	clrlwi   r0, r3, 0x10
	mr       r3, r31
	stw      r0, 0x18(r30)
	bl       readShort__6StreamFv
	clrlwi   r0, r3, 0x10
	stw      r0, 0x1c(r30)
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
 * Address:	8045094C
 * Size:	0000D4
 */
Caption::Mgr::Mgr(void)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r4, __vt__5CNode@ha
	li       r5, 0
	stw      r0, 0x24(r1)
	addi     r0, r4, __vt__5CNode@l
	lis      r4, lbl_8049B848@ha
	stw      r31, 0x1c(r1)
	addi     r4, r4, lbl_8049B848@l
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r3
	stw      r0, 0(r3)
	lis      r3, __vt__Q27Caption3Mgr@ha
	addi     r0, r3, __vt__Q27Caption3Mgr@l
	stw      r5, 0x10(r29)
	li       r3, 0x154
	stw      r5, 0xc(r29)
	stw      r5, 8(r29)
	stw      r5, 4(r29)
	stw      r4, 0x14(r29)
	stw      r0, 0(r29)
	stw      r5, 0x1c(r29)
	stb      r5, 0x20(r29)
	stb      r5, 0x21(r29)
	stb      r5, 0x22(r29)
	stb      r5, 0x23(r29)
	bl       __nwa__FUl
	lis      r4, __ct__Q35P2JME7Caption8TControlFv@ha
	lis      r5, __dt__Q35P2JME7Caption8TControlFv@ha
	addi     r4, r4, __ct__Q35P2JME7Caption8TControlFv@l
	li       r6, 0x6c
	addi     r5, r5, __dt__Q35P2JME7Caption8TControlFv@l
	li       r7, 3
	bl       __construct_new_array
	stw      r3, 0x18(r29)
	li       r30, 0
	li       r31, 0

lbl_804509E4:
	lwz      r0, 0x18(r29)
	add      r3, r0, r31
	bl       init__Q25P2JME8TControlFv
	addi     r30, r30, 1
	addi     r31, r31, 0x6c
	cmplwi   r30, 3
	blt      lbl_804509E4
	lwz      r0, 0x24(r1)
	mr       r3, r29
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

namespace P2JME {

/*
 * --INFO--
 * Address:	80450A20
 * Size:	000080
 */
Caption::TControl::~TControl(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_80450A84
	lis      r4, __vt__Q35P2JME7Caption8TControl@ha
	addi     r0, r4, __vt__Q35P2JME7Caption8TControl@l
	stw      r0, 0(r30)
	beq      lbl_80450A74
	lis      r4, __vt__Q35P2JME6Window8TControl@ha
	addi     r0, r4, __vt__Q35P2JME6Window8TControl@l
	stw      r0, 0(r30)
	beq      lbl_80450A74
	lis      r5, __vt__Q25P2JME8TControl@ha
	li       r4, 0
	addi     r0, r5, __vt__Q25P2JME8TControl@l
	stw      r0, 0(r30)
	bl       __dt__Q28JMessage8TControlFv

lbl_80450A74:
	extsh.   r0, r31
	ble      lbl_80450A84
	mr       r3, r30
	bl       __dl__FPv

lbl_80450A84:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

} // namespace P2JME

/*
 * --INFO--
 * Address:	80450AA0
 * Size:	000108
 */
void Caption::Mgr::read(Stream&)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r28, r4
	mr       r27, r3
	mr       r3, r28
	bl       readInt__6StreamFv
	or.      r31, r3, r3
	bge      lbl_80450AE4
	lis      r3, lbl_8049B860@ha
	lis      r5, lbl_8049B870@ha
	addi     r3, r3, lbl_8049B860@l
	li       r4, 0xfe
	addi     r5, r5, lbl_8049B870@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80450AE4:
	li       r29, 0
	b        lbl_80450B60

lbl_80450AEC:
	li       r3, 0x28
	bl       __nw__FUl
	or.      r30, r3, r3
	beq      lbl_80450B50
	lis      r3, __vt__5CNode@ha
	li       r7, 0
	addi     r0, r3, __vt__5CNode@l
	addi     r6, r2, lbl_80520B20@sda21
	stw      r0, 0(r30)
	lis      r3, __vt__Q27Caption4Node@ha
	addi     r5, r3, __vt__Q27Caption4Node@l
	li       r0, 1
	stw      r7, 0x10(r30)
	addi     r3, r30, 0x20
	addi     r4, r2, lbl_80520B24@sda21
	stw      r7, 0xc(r30)
	stw      r7, 8(r30)
	stw      r7, 4(r30)
	stw      r6, 0x14(r30)
	stw      r5, 0(r30)
	stw      r7, 0x18(r30)
	stw      r0, 0x1c(r30)
	bl       strcpy
	addi     r0, r30, 0x20
	stw      r0, 0x14(r30)

lbl_80450B50:
	mr       r3, r27
	mr       r4, r30
	bl       add__5CNodeFP5CNode
	addi     r29, r29, 1

lbl_80450B60:
	cmpw     r29, r31
	blt      lbl_80450AEC
	lwz      r29, 0x10(r27)
	b        lbl_80450B8C

lbl_80450B70:
	mr       r3, r29
	mr       r4, r28
	lwz      r12, 0(r29)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	lwz      r29, 4(r29)

lbl_80450B8C:
	cmplwi   r29, 0
	bne      lbl_80450B70
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	80450BA8
 * Size:	000068
 */
void Caption::Mgr::reset(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r3
	lwz      r31, 0x10(r3)
	b        lbl_80450BD4

lbl_80450BC8:
	mr       r3, r31
	bl       del__5CNodeFv
	lwz      r31, 4(r31)

lbl_80450BD4:
	cmplwi   r31, 0
	bne      lbl_80450BC8
	mr       r3, r30
	bl       del__5CNodeFv
	li       r0, 0
	mr       r3, r30
	stw      r0, 0x10(r30)
	stw      r0, 0x1c(r30)
	bl       resetMessageObjs__Q27Caption3MgrFv
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
 * Address:	80450C10
 * Size:	000068
 */
void Caption::Mgr::resetMessageObjs(void)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	li       r31, 0
	stw      r30, 0x18(r1)
	li       r30, 0
	stw      r29, 0x14(r1)
	mr       r29, r3

lbl_80450C34:
	lwz      r0, 0x18(r29)
	add      r3, r0, r31
	lwz      r12, 0(r3)
	lwz      r12, 0xc(r12)
	mtctr    r12
	bctrl
	addi     r30, r30, 1
	addi     r31, r31, 0x6c
	cmplwi   r30, 3
	blt      lbl_80450C34
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	00002C
 */
void Caption::Mgr::setCurrentNode(long)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80450C78
 * Size:	000194
 */
void Caption::Mgr::update(long)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	or.      r31, r4, r4
	stw      r30, 0x18(r1)
	mr       r30, r3
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	blt      lbl_80450DEC
	lwz      r4, 0x1c(r30)
	cmplwi   r4, 0
	beq      lbl_80450D48
	lwz      r0, 0x1c(r4)
	cmpw     r31, r0
	bgt      lbl_80450D20
	lwz      r3, 8(r4)
	cmplwi   r3, 0
	beq      lbl_80450CF8
	lwz      r0, 0x1c(r3)
	cmpw     r31, r0
	bgt      lbl_80450D6C
	lwz      r3, 0x10(r30)
	b        lbl_80450CE8

lbl_80450CD8:
	lwz      r0, 0x1c(r3)
	cmpw     r31, r0
	ble      lbl_80450CF0
	lwz      r3, 4(r3)

lbl_80450CE8:
	cmplwi   r3, 0
	bne      lbl_80450CD8

lbl_80450CF0:
	stw      r3, 0x1c(r30)
	b        lbl_80450D6C

lbl_80450CF8:
	lwz      r3, 0x10(r30)
	b        lbl_80450D10

lbl_80450D00:
	lwz      r0, 0x1c(r3)
	cmpw     r31, r0
	ble      lbl_80450D18
	lwz      r3, 4(r3)

lbl_80450D10:
	cmplwi   r3, 0
	bne      lbl_80450D00

lbl_80450D18:
	stw      r3, 0x1c(r30)
	b        lbl_80450D6C

lbl_80450D20:
	lwz      r3, 0x10(r30)
	b        lbl_80450D38

lbl_80450D28:
	lwz      r0, 0x1c(r3)
	cmpw     r31, r0
	ble      lbl_80450D40
	lwz      r3, 4(r3)

lbl_80450D38:
	cmplwi   r3, 0
	bne      lbl_80450D28

lbl_80450D40:
	stw      r3, 0x1c(r30)
	b        lbl_80450D6C

lbl_80450D48:
	lwz      r3, 0x10(r30)
	b        lbl_80450D60

lbl_80450D50:
	lwz      r0, 0x1c(r3)
	cmpw     r31, r0
	ble      lbl_80450D68
	lwz      r3, 4(r3)

lbl_80450D60:
	cmplwi   r3, 0
	bne      lbl_80450D50

lbl_80450D68:
	stw      r3, 0x1c(r30)

lbl_80450D6C:
	lwz      r0, 0x1c(r30)
	cmplwi   r0, 0
	beq      lbl_80450DC4
	cmplw    r4, r0
	beq      lbl_80450DC4
	mr       r3, r30
	bl       getFreeMessage__Q27Caption3MgrFv
	or.      r29, r3, r3
	bne      lbl_80450DAC
	lis      r3, lbl_8049B860@ha
	lis      r5, lbl_8049B870@ha
	addi     r3, r3, lbl_8049B860@l
	li       r4, 0x163
	addi     r5, r5, lbl_8049B870@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80450DAC:
	lwz      r6, 0x1c(r30)
	mr       r3, r29
	lwz      r5, 0x18(r6)
	addi     r4, r6, 0x20
	lwz      r6, 0x1c(r6)
	bl       start__Q35P2JME7Caption8TControlFPcll

lbl_80450DC4:
	li       r28, 0
	li       r29, 0

lbl_80450DCC:
	lwz      r0, 0x18(r30)
	mr       r4, r31
	add      r3, r0, r29
	bl       updateSetFrame__Q35P2JME7Caption8TControlFl
	addi     r28, r28, 1
	addi     r29, r29, 0x6c
	cmplwi   r28, 3
	blt      lbl_80450DCC

lbl_80450DEC:
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

/*
 * --INFO--
 * Address:	80450E0C
 * Size:	000098
 */
void Caption::Mgr::draw(Graphics&)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r4
	stw      r28, 0x10(r1)
	mr       r28, r3
	addi     r3, r29, 0xbc
	lwz      r12, 0xbc(r4)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x1c(r28)
	cmplwi   r0, 0
	beq      lbl_80450E84
	li       r30, 0
	li       r31, 0

lbl_80450E58:
	lwz      r0, 0x18(r28)
	mr       r4, r29
	add      r3, r0, r31
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	addi     r30, r30, 1
	addi     r31, r31, 0x6c
	cmplwi   r30, 3
	blt      lbl_80450E58

lbl_80450E84:
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

/*
 * --INFO--
 * Address:	80450EA4
 * Size:	00005C
 */
void Caption::Mgr::getFreeMessage(void)
{
	/*
	lwz      r4, 0x18(r3)
	li       r3, 0
	li       r5, 0
	lwz      r0, 0x5c(r4)
	cmpwi    r0, 0
	bne      lbl_80450EC8
	mulli    r0, r5, 0x6c
	add      r3, r4, r0
	blr

lbl_80450EC8:
	lwz      r0, 0xc8(r4)
	li       r5, 1
	cmpwi    r0, 0
	bne      lbl_80450EE4
	mulli    r0, r5, 0x6c
	add      r3, r4, r0
	blr

lbl_80450EE4:
	lwz      r0, 0x134(r4)
	li       r5, 2
	cmpwi    r0, 0
	bnelr
	mulli    r0, r5, 0x6c
	add      r3, r4, r0
	blr
	*/
}

/*
 * --INFO--
 * Address:	80450F00
 * Size:	000060
 */
Caption::Mgr::~Mgr(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_80450F44
	lis      r5, __vt__Q27Caption3Mgr@ha
	li       r4, 0
	addi     r0, r5, __vt__Q27Caption3Mgr@l
	stw      r0, 0(r30)
	bl       __dt__5CNodeFv
	extsh.   r0, r31
	ble      lbl_80450F44
	mr       r3, r30
	bl       __dl__FPv

lbl_80450F44:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	80450F60
 * Size:	000060
 */
Caption::Node::~Node(void)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	or.      r30, r3, r3
	beq      lbl_80450FA4
	lis      r5, __vt__Q27Caption4Node@ha
	li       r4, 0
	addi     r0, r5, __vt__Q27Caption4Node@l
	stw      r0, 0(r30)
	bl       __dt__5CNodeFv
	extsh.   r0, r31
	ble      lbl_80450FA4
	mr       r3, r30
	bl       __dl__FPv

lbl_80450FA4:
	lwz      r0, 0x14(r1)
	mr       r3, r30
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}
