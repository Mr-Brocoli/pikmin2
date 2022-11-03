.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global regist__14JASCallbackMgrFPFPv_lPv
regist__14JASCallbackMgrFPFPv_lPv:
/* 800A6500 000A3440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A6504 000A3444  7C 08 02 A6 */	mflr r0
/* 800A6508 000A3448  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A650C 000A344C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A6510 000A3450  7C BF 2B 78 */	mr r31, r5
/* 800A6514 000A3454  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A6518 000A3458  7C 9E 23 78 */	mr r30, r4
/* 800A651C 000A345C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A6520 000A3460  7C 7D 1B 78 */	mr r29, r3
/* 800A6524 000A3464  48 04 87 15 */	bl OSDisableInterrupts
/* 800A6528 000A3468  38 00 00 10 */	li r0, 0x10
/* 800A652C 000A346C  7F A4 EB 78 */	mr r4, r29
/* 800A6530 000A3470  90 61 00 08 */	stw r3, 8(r1)
/* 800A6534 000A3474  38 60 00 00 */	li r3, 0
/* 800A6538 000A3478  7C 09 03 A6 */	mtctr r0
.L_800A653C:
/* 800A653C 000A347C  80 04 00 00 */	lwz r0, 0(r4)
/* 800A6540 000A3480  28 00 00 00 */	cmplwi r0, 0
/* 800A6544 000A3484  40 82 00 24 */	bne .L_800A6568
/* 800A6548 000A3488  54 60 18 38 */	slwi r0, r3, 3
/* 800A654C 000A348C  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6550 000A3490  7F DD 01 2E */	stwx r30, r29, r0
/* 800A6554 000A3494  7C 9D 02 14 */	add r4, r29, r0
/* 800A6558 000A3498  93 E4 00 04 */	stw r31, 4(r4)
/* 800A655C 000A349C  48 04 87 05 */	bl OSRestoreInterrupts
/* 800A6560 000A34A0  38 60 00 01 */	li r3, 1
/* 800A6564 000A34A4  48 00 00 1C */	b .L_800A6580
.L_800A6568:
/* 800A6568 000A34A8  38 84 00 08 */	addi r4, r4, 8
/* 800A656C 000A34AC  38 63 00 01 */	addi r3, r3, 1
/* 800A6570 000A34B0  42 00 FF CC */	bdnz .L_800A653C
/* 800A6574 000A34B4  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6578 000A34B8  48 04 86 E9 */	bl OSRestoreInterrupts
/* 800A657C 000A34BC  38 60 00 00 */	li r3, 0
.L_800A6580:
/* 800A6580 000A34C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A6584 000A34C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A6588 000A34C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A658C 000A34CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A6590 000A34D0  7C 08 03 A6 */	mtlr r0
/* 800A6594 000A34D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800A6598 000A34D8  4E 80 00 20 */	blr 

.global reject__14JASCallbackMgrFPFPv_lPv
reject__14JASCallbackMgrFPFPv_lPv:
/* 800A659C 000A34DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A65A0 000A34E0  7C 08 02 A6 */	mflr r0
/* 800A65A4 000A34E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A65A8 000A34E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A65AC 000A34EC  3B E0 00 00 */	li r31, 0
/* 800A65B0 000A34F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A65B4 000A34F4  7C BE 2B 78 */	mr r30, r5
/* 800A65B8 000A34F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A65BC 000A34FC  7C 9D 23 78 */	mr r29, r4
/* 800A65C0 000A3500  93 81 00 10 */	stw r28, 0x10(r1)
/* 800A65C4 000A3504  7C 7C 1B 78 */	mr r28, r3
/* 800A65C8 000A3508  48 04 86 71 */	bl OSDisableInterrupts
/* 800A65CC 000A350C  38 00 00 04 */	li r0, 4
/* 800A65D0 000A3510  7F 84 E3 78 */	mr r4, r28
/* 800A65D4 000A3514  90 61 00 08 */	stw r3, 8(r1)
/* 800A65D8 000A3518  38 A0 00 00 */	li r5, 0
/* 800A65DC 000A351C  38 60 00 00 */	li r3, 0
/* 800A65E0 000A3520  7C 09 03 A6 */	mtctr r0
.L_800A65E4:
/* 800A65E4 000A3524  80 04 00 00 */	lwz r0, 0(r4)
/* 800A65E8 000A3528  7C 00 E8 40 */	cmplw r0, r29
/* 800A65EC 000A352C  40 82 00 1C */	bne .L_800A6608
/* 800A65F0 000A3530  80 04 00 04 */	lwz r0, 4(r4)
/* 800A65F4 000A3534  7C 00 F0 40 */	cmplw r0, r30
/* 800A65F8 000A3538  40 82 00 10 */	bne .L_800A6608
/* 800A65FC 000A353C  90 64 00 00 */	stw r3, 0(r4)
/* 800A6600 000A3540  3B E0 00 01 */	li r31, 1
/* 800A6604 000A3544  90 64 00 04 */	stw r3, 4(r4)
.L_800A6608:
/* 800A6608 000A3548  80 04 00 08 */	lwz r0, 8(r4)
/* 800A660C 000A354C  7C 00 E8 40 */	cmplw r0, r29
/* 800A6610 000A3550  40 82 00 1C */	bne .L_800A662C
/* 800A6614 000A3554  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800A6618 000A3558  7C 00 F0 40 */	cmplw r0, r30
/* 800A661C 000A355C  40 82 00 10 */	bne .L_800A662C
/* 800A6620 000A3560  90 64 00 08 */	stw r3, 8(r4)
/* 800A6624 000A3564  3B E0 00 01 */	li r31, 1
/* 800A6628 000A3568  90 64 00 0C */	stw r3, 0xc(r4)
.L_800A662C:
/* 800A662C 000A356C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800A6630 000A3570  7C 00 E8 40 */	cmplw r0, r29
/* 800A6634 000A3574  40 82 00 1C */	bne .L_800A6650
/* 800A6638 000A3578  80 04 00 14 */	lwz r0, 0x14(r4)
/* 800A663C 000A357C  7C 00 F0 40 */	cmplw r0, r30
/* 800A6640 000A3580  40 82 00 10 */	bne .L_800A6650
/* 800A6644 000A3584  90 64 00 10 */	stw r3, 0x10(r4)
/* 800A6648 000A3588  3B E0 00 01 */	li r31, 1
/* 800A664C 000A358C  90 64 00 14 */	stw r3, 0x14(r4)
.L_800A6650:
/* 800A6650 000A3590  80 04 00 18 */	lwz r0, 0x18(r4)
/* 800A6654 000A3594  7C 00 E8 40 */	cmplw r0, r29
/* 800A6658 000A3598  40 82 00 1C */	bne .L_800A6674
/* 800A665C 000A359C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 800A6660 000A35A0  7C 00 F0 40 */	cmplw r0, r30
/* 800A6664 000A35A4  40 82 00 10 */	bne .L_800A6674
/* 800A6668 000A35A8  90 64 00 18 */	stw r3, 0x18(r4)
/* 800A666C 000A35AC  3B E0 00 01 */	li r31, 1
/* 800A6670 000A35B0  90 64 00 1C */	stw r3, 0x1c(r4)
.L_800A6674:
/* 800A6674 000A35B4  38 84 00 20 */	addi r4, r4, 0x20
/* 800A6678 000A35B8  38 A5 00 03 */	addi r5, r5, 3
/* 800A667C 000A35BC  42 00 FF 68 */	bdnz .L_800A65E4
/* 800A6680 000A35C0  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6684 000A35C4  48 04 85 DD */	bl OSRestoreInterrupts
/* 800A6688 000A35C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A668C 000A35CC  7F E3 FB 78 */	mr r3, r31
/* 800A6690 000A35D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A6694 000A35D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A6698 000A35D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A669C 000A35DC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800A66A0 000A35E0  7C 08 03 A6 */	mtlr r0
/* 800A66A4 000A35E4  38 21 00 20 */	addi r1, r1, 0x20
/* 800A66A8 000A35E8  4E 80 00 20 */	blr 

.global callback__14JASCallbackMgrFv
callback__14JASCallbackMgrFv:
/* 800A66AC 000A35EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A66B0 000A35F0  7C 08 02 A6 */	mflr r0
/* 800A66B4 000A35F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A66B8 000A35F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A66BC 000A35FC  3B E0 00 00 */	li r31, 0
/* 800A66C0 000A3600  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A66C4 000A3604  7C 7E 1B 78 */	mr r30, r3
/* 800A66C8 000A3608  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A66CC 000A360C  3B A0 00 00 */	li r29, 0
.L_800A66D0:
/* 800A66D0 000A3610  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A66D4 000A3614  28 0C 00 00 */	cmplwi r12, 0
/* 800A66D8 000A3618  41 82 00 20 */	beq .L_800A66F8
/* 800A66DC 000A361C  80 7E 00 04 */	lwz r3, 4(r30)
/* 800A66E0 000A3620  7D 89 03 A6 */	mtctr r12
/* 800A66E4 000A3624  4E 80 04 21 */	bctrl 
/* 800A66E8 000A3628  2C 03 00 00 */	cmpwi r3, 0
/* 800A66EC 000A362C  40 80 00 0C */	bge .L_800A66F8
/* 800A66F0 000A3630  93 FE 00 00 */	stw r31, 0(r30)
/* 800A66F4 000A3634  93 FE 00 04 */	stw r31, 4(r30)
.L_800A66F8:
/* 800A66F8 000A3638  3B BD 00 01 */	addi r29, r29, 1
/* 800A66FC 000A363C  3B DE 00 08 */	addi r30, r30, 8
/* 800A6700 000A3640  2C 1D 00 10 */	cmpwi r29, 0x10
/* 800A6704 000A3644  41 80 FF CC */	blt .L_800A66D0
/* 800A6708 000A3648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A670C 000A364C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A6710 000A3650  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A6714 000A3654  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A6718 000A3658  7C 08 03 A6 */	mtlr r0
/* 800A671C 000A365C  38 21 00 20 */	addi r1, r1, 0x20
/* 800A6720 000A3660  4E 80 00 20 */	blr 
