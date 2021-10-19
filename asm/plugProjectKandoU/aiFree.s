.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_8047F260
lbl_8047F260:
	.asciz "ActFreeArg"
	.skip 1
	.asciz "aiFree.cpp"
	.skip 1
	.asciz "P2Assert"
	.skip 3
	.asciz "ActionArg"
	.skip 2
.global lbl_8047F290
lbl_8047F290:
	.asciz "GatherActionArg"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q26PikiAI7ActFreeFPQ24Game4Piki
__ct__Q26PikiAI7ActFreeFPQ24Game4Piki:
/* 8019FF38 0019CE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019FF3C 0019CE7C  7C 08 02 A6 */	mflr r0
/* 8019FF40 0019CE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019FF44 0019CE84  7C 80 07 35 */	extsh. r0, r4
/* 8019FF48 0019CE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019FF4C 0019CE8C  7C 7F 1B 78 */	mr r31, r3
/* 8019FF50 0019CE90  93 C1 00 08 */	stw r30, 8(r1)
/* 8019FF54 0019CE94  7C BE 2B 78 */	mr r30, r5
/* 8019FF58 0019CE98  41 82 00 18 */	beq lbl_8019FF70
/* 8019FF5C 0019CE9C  38 1F 00 20 */	addi r0, r31, 0x20
/* 8019FF60 0019CEA0  3C 60 80 4B */	lis r3, __vt__Q28SysShape14MotionListener@ha
/* 8019FF64 0019CEA4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8019FF68 0019CEA8  38 03 A6 6C */	addi r0, r3, __vt__Q28SysShape14MotionListener@l
/* 8019FF6C 0019CEAC  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_8019FF70:
/* 8019FF70 0019CEB0  7F E3 FB 78 */	mr r3, r31
/* 8019FF74 0019CEB4  7F C4 F3 78 */	mr r4, r30
/* 8019FF78 0019CEB8  4B FF 6A A1 */	bl __ct__Q26PikiAI6ActionFPQ24Game4Piki
/* 8019FF7C 0019CEBC  3C 60 80 4B */	lis r3, __vt__Q26PikiAI7ActFree@ha
/* 8019FF80 0019CEC0  38 1F 00 20 */	addi r0, r31, 0x20
/* 8019FF84 0019CEC4  38 83 4E 34 */	addi r4, r3, __vt__Q26PikiAI7ActFree@l
/* 8019FF88 0019CEC8  38 60 00 20 */	li r3, 0x20
/* 8019FF8C 0019CECC  90 9F 00 00 */	stw r4, 0(r31)
/* 8019FF90 0019CED0  38 A4 00 40 */	addi r5, r4, 0x40
/* 8019FF94 0019CED4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8019FF98 0019CED8  90 A4 00 00 */	stw r5, 0(r4)
/* 8019FF9C 0019CEDC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8019FFA0 0019CEE0  7C 04 00 50 */	subf r0, r4, r0
/* 8019FFA4 0019CEE4  90 04 00 04 */	stw r0, 4(r4)
/* 8019FFA8 0019CEE8  4B E8 3E FD */	bl __nw__FUl
/* 8019FFAC 0019CEEC  7C 60 1B 79 */	or. r0, r3, r3
/* 8019FFB0 0019CEF0  41 82 00 10 */	beq lbl_8019FFC0
/* 8019FFB4 0019CEF4  7F C4 F3 78 */	mr r4, r30
/* 8019FFB8 0019CEF8  4B FF C9 E9 */	bl __ct__Q26PikiAI9ActGatherFPQ24Game4Piki
/* 8019FFBC 0019CEFC  7C 60 1B 78 */	mr r0, r3
lbl_8019FFC0:
/* 8019FFC0 0019CF00  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8019FFC4 0019CF04  38 60 00 24 */	li r3, 0x24
/* 8019FFC8 0019CF08  4B E8 3E DD */	bl __nw__FUl
/* 8019FFCC 0019CF0C  7C 60 1B 79 */	or. r0, r3, r3
/* 8019FFD0 0019CF10  41 82 00 10 */	beq lbl_8019FFE0
/* 8019FFD4 0019CF14  7F C4 F3 78 */	mr r4, r30
/* 8019FFD8 0019CF18  48 09 13 1D */	bl __ct__Q26PikiAI7ActBoreFPQ24Game4Piki
/* 8019FFDC 0019CF1C  7C 60 1B 78 */	mr r0, r3
lbl_8019FFE0:
/* 8019FFE0 0019CF20  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8019FFE4 0019CF24  38 02 AC F8 */	addi r0, r2, lbl_80519058@sda21
/* 8019FFE8 0019CF28  7F E3 FB 78 */	mr r3, r31
/* 8019FFEC 0019CF2C  90 1F 00 08 */	stw r0, 8(r31)
/* 8019FFF0 0019CF30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019FFF4 0019CF34  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019FFF8 0019CF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019FFFC 0019CF3C  7C 08 03 A6 */	mtlr r0
/* 801A0000 0019CF40  38 21 00 10 */	addi r1, r1, 0x10
/* 801A0004 0019CF44  4E 80 00 20 */	blr 

.global init__Q26PikiAI7ActFreeFPQ26PikiAI9ActionArg
init__Q26PikiAI7ActFreeFPQ26PikiAI9ActionArg:
/* 801A0008 0019CF48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A000C 0019CF4C  7C 08 02 A6 */	mflr r0
/* 801A0010 0019CF50  3C A0 80 48 */	lis r5, lbl_8047F260@ha
/* 801A0014 0019CF54  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A0018 0019CF58  38 00 00 00 */	li r0, 0
/* 801A001C 0019CF5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A0020 0019CF60  7C 7F 1B 78 */	mr r31, r3
/* 801A0024 0019CF64  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A0028 0019CF68  3B C5 F2 60 */	addi r30, r5, lbl_8047F260@l
/* 801A002C 0019CF6C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801A0030 0019CF70  7C 9D 23 78 */	mr r29, r4
/* 801A0034 0019CF74  80 63 00 04 */	lwz r3, 4(r3)
/* 801A0038 0019CF78  90 03 02 C4 */	stw r0, 0x2c4(r3)
/* 801A003C 0019CF7C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A0040 0019CF80  80 63 02 50 */	lwz r3, 0x250(r3)
/* 801A0044 0019CF84  48 2C 25 25 */	bl becomeFree__Q23PSM4PikiFv
/* 801A0048 0019CF88  38 00 00 00 */	li r0, 0
/* 801A004C 0019CF8C  28 1D 00 00 */	cmplwi r29, 0
/* 801A0050 0019CF90  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 801A0054 0019CF94  7F A5 EB 78 */	mr r5, r29
/* 801A0058 0019CF98  41 82 00 5C */	beq lbl_801A00B4
/* 801A005C 0019CF9C  7F A3 EB 78 */	mr r3, r29
/* 801A0060 0019CFA0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801A0064 0019CFA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A0068 0019CFA8  7D 89 03 A6 */	mtctr r12
/* 801A006C 0019CFAC  4E 80 04 21 */	bctrl 
/* 801A0070 0019CFB0  7C 64 1B 78 */	mr r4, r3
/* 801A0074 0019CFB4  38 7E 00 00 */	addi r3, r30, 0
/* 801A0078 0019CFB8  4B F2 A6 49 */	bl strcmp
/* 801A007C 0019CFBC  7C 60 00 34 */	cntlzw r0, r3
/* 801A0080 0019CFC0  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 801A0084 0019CFC4  40 82 00 18 */	bne lbl_801A009C
/* 801A0088 0019CFC8  38 7E 00 0C */	addi r3, r30, 0xc
/* 801A008C 0019CFCC  38 BE 00 18 */	addi r5, r30, 0x18
/* 801A0090 0019CFD0  38 80 00 77 */	li r4, 0x77
/* 801A0094 0019CFD4  4C C6 31 82 */	crclr 6
/* 801A0098 0019CFD8  4B E8 A5 A9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801A009C:
/* 801A009C 0019CFDC  88 1D 00 04 */	lbz r0, 4(r29)
/* 801A00A0 0019CFE0  7F A5 EB 78 */	mr r5, r29
/* 801A00A4 0019CFE4  28 00 00 00 */	cmplwi r0, 0
/* 801A00A8 0019CFE8  41 82 00 0C */	beq lbl_801A00B4
/* 801A00AC 0019CFEC  38 00 00 01 */	li r0, 1
/* 801A00B0 0019CFF0  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_801A00B4:
/* 801A00B4 0019CFF4  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 801A00B8 0019CFF8  2C 00 00 01 */	cmpwi r0, 1
/* 801A00BC 0019CFFC  41 82 00 08 */	beq lbl_801A00C4
/* 801A00C0 0019D000  48 00 00 58 */	b lbl_801A0118
lbl_801A00C4:
/* 801A00C4 0019D004  3C 80 80 4B */	lis r4, __vt__Q26PikiAI9ActionArg@ha
/* 801A00C8 0019D008  3C 60 80 4B */	lis r3, __vt__Q26PikiAI15GatherActionArg@ha
/* 801A00CC 0019D00C  38 04 05 30 */	addi r0, r4, __vt__Q26PikiAI9ActionArg@l
/* 801A00D0 0019D010  38 81 00 08 */	addi r4, r1, 8
/* 801A00D4 0019D014  90 01 00 08 */	stw r0, 8(r1)
/* 801A00D8 0019D018  38 03 4E 28 */	addi r0, r3, __vt__Q26PikiAI15GatherActionArg@l
/* 801A00DC 0019D01C  90 01 00 08 */	stw r0, 8(r1)
/* 801A00E0 0019D020  C0 05 00 08 */	lfs f0, 8(r5)
/* 801A00E4 0019D024  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A00E8 0019D028  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 801A00EC 0019D02C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A00F0 0019D030  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 801A00F4 0019D034  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A00F8 0019D038  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 801A00FC 0019D03C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A0100 0019D040  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801A0104 0019D044  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0108 0019D048  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A010C 0019D04C  7D 89 03 A6 */	mtctr r12
/* 801A0110 0019D050  4E 80 04 21 */	bctrl 
/* 801A0114 0019D054  48 00 00 3C */	b lbl_801A0150
lbl_801A0118:
/* 801A0118 0019D058  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A011C 0019D05C  38 80 00 1F */	li r4, 0x1f
/* 801A0120 0019D060  38 A0 00 1F */	li r5, 0x1f
/* 801A0124 0019D064  38 C0 00 00 */	li r6, 0
/* 801A0128 0019D068  81 83 00 00 */	lwz r12, 0(r3)
/* 801A012C 0019D06C  38 E0 00 00 */	li r7, 0
/* 801A0130 0019D070  81 8C 02 08 */	lwz r12, 0x208(r12)
/* 801A0134 0019D074  7D 89 03 A6 */	mtctr r12
/* 801A0138 0019D078  4E 80 04 21 */	bctrl 
/* 801A013C 0019D07C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A0140 0019D080  C0 02 AD 00 */	lfs f0, lbl_80519060@sda21(r2)
/* 801A0144 0019D084  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 801A0148 0019D088  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 801A014C 0019D08C  D0 03 01 EC */	stfs f0, 0x1ec(r3)
lbl_801A0150:
/* 801A0150 0019D090  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A0154 0019D094  38 80 00 01 */	li r4, 1
/* 801A0158 0019D098  4B FA 9E E1 */	bl setPastel__Q24Game4PikiFb
/* 801A015C 0019D09C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A0160 0019D0A0  38 80 00 01 */	li r4, 1
/* 801A0164 0019D0A4  4B FA 9B 61 */	bl setFreeLightEffect__Q24Game4PikiFb
/* 801A0168 0019D0A8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A016C 0019D0AC  38 80 00 01 */	li r4, 1
/* 801A0170 0019D0B0  4B FA 89 B1 */	bl attachRadar__Q24Game4PikiFb
/* 801A0174 0019D0B4  38 00 00 00 */	li r0, 0
/* 801A0178 0019D0B8  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 801A017C 0019D0BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A0180 0019D0C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A0184 0019D0C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A0188 0019D0C8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801A018C 0019D0CC  7C 08 03 A6 */	mtlr r0
/* 801A0190 0019D0D0  38 21 00 30 */	addi r1, r1, 0x30
/* 801A0194 0019D0D4  4E 80 00 20 */	blr 

.global exec__Q26PikiAI7ActFreeFv
exec__Q26PikiAI7ActFreeFv:
/* 801A0198 0019D0D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A019C 0019D0DC  7C 08 02 A6 */	mflr r0
/* 801A01A0 0019D0E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A01A4 0019D0E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A01A8 0019D0E8  7C 7F 1B 78 */	mr r31, r3
/* 801A01AC 0019D0EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A01B0 0019D0F0  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 801A01B4 0019D0F4  2C 00 00 02 */	cmpwi r0, 2
/* 801A01B8 0019D0F8  41 82 00 80 */	beq lbl_801A0238
/* 801A01BC 0019D0FC  40 80 00 E8 */	bge lbl_801A02A4
/* 801A01C0 0019D100  2C 00 00 01 */	cmpwi r0, 1
/* 801A01C4 0019D104  40 80 00 08 */	bge lbl_801A01CC
/* 801A01C8 0019D108  48 00 00 DC */	b lbl_801A02A4
lbl_801A01CC:
/* 801A01CC 0019D10C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801A01D0 0019D110  81 83 00 00 */	lwz r12, 0(r3)
/* 801A01D4 0019D114  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A01D8 0019D118  7D 89 03 A6 */	mtctr r12
/* 801A01DC 0019D11C  4E 80 04 21 */	bctrl 
/* 801A01E0 0019D120  2C 03 00 00 */	cmpwi r3, 0
/* 801A01E4 0019D124  40 82 01 68 */	bne lbl_801A034C
/* 801A01E8 0019D128  38 00 00 00 */	li r0, 0
/* 801A01EC 0019D12C  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 801A01F0 0019D130  4B F2 93 B1 */	bl rand
/* 801A01F4 0019D134  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801A01F8 0019D138  3C 00 43 30 */	lis r0, 0x4330
/* 801A01FC 0019D13C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801A0200 0019D140  C8 62 AD 10 */	lfd f3, lbl_80519070@sda21(r2)
/* 801A0204 0019D144  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A0208 0019D148  C0 22 AD 04 */	lfs f1, lbl_80519064@sda21(r2)
/* 801A020C 0019D14C  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801A0210 0019D150  C0 02 AD 08 */	lfs f0, lbl_80519068@sda21(r2)
/* 801A0214 0019D154  EC 42 18 28 */	fsubs f2, f2, f3
/* 801A0218 0019D158  EC 22 08 24 */	fdivs f1, f2, f1
/* 801A021C 0019D15C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A0220 0019D160  FC 00 00 1E */	fctiwz f0, f0
/* 801A0224 0019D164  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801A0228 0019D168  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801A022C 0019D16C  38 03 00 96 */	addi r0, r3, 0x96
/* 801A0230 0019D170  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 801A0234 0019D174  48 00 01 18 */	b lbl_801A034C
lbl_801A0238:
/* 801A0238 0019D178  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801A023C 0019D17C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0240 0019D180  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A0244 0019D184  7D 89 03 A6 */	mtctr r12
/* 801A0248 0019D188  4E 80 04 21 */	bctrl 
/* 801A024C 0019D18C  38 A0 00 00 */	li r5, 0
/* 801A0250 0019D190  38 00 00 01 */	li r0, 1
/* 801A0254 0019D194  98 A1 00 0D */	stb r5, 0xd(r1)
/* 801A0258 0019D198  7C 7E 1B 78 */	mr r30, r3
/* 801A025C 0019D19C  38 81 00 0C */	addi r4, r1, 0xc
/* 801A0260 0019D1A0  98 A1 00 0C */	stb r5, 0xc(r1)
/* 801A0264 0019D1A4  98 01 00 0D */	stb r0, 0xd(r1)
/* 801A0268 0019D1A8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A026C 0019D1AC  48 01 35 DD */	bl invokeAIFree__Q24Game4PikiFRQ34Game4Piki15InvokeAIFreeArg
/* 801A0270 0019D1B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A0274 0019D1B4  41 82 00 0C */	beq lbl_801A0280
/* 801A0278 0019D1B8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801A027C 0019D1BC  48 09 13 11 */	bl finish__Q26PikiAI7ActBoreFv
lbl_801A0280:
/* 801A0280 0019D1C0  2C 1E 00 00 */	cmpwi r30, 0
/* 801A0284 0019D1C4  41 82 00 0C */	beq lbl_801A0290
/* 801A0288 0019D1C8  2C 1E 00 02 */	cmpwi r30, 2
/* 801A028C 0019D1CC  40 82 00 C0 */	bne lbl_801A034C
lbl_801A0290:
/* 801A0290 0019D1D0  38 60 00 00 */	li r3, 0
/* 801A0294 0019D1D4  38 00 00 5A */	li r0, 0x5a
/* 801A0298 0019D1D8  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 801A029C 0019D1DC  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 801A02A0 0019D1E0  48 00 00 AC */	b lbl_801A034C
lbl_801A02A4:
/* 801A02A4 0019D1E4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A02A8 0019D1E8  38 00 00 00 */	li r0, 0
/* 801A02AC 0019D1EC  C0 02 AD 00 */	lfs f0, lbl_80519060@sda21(r2)
/* 801A02B0 0019D1F0  38 81 00 08 */	addi r4, r1, 8
/* 801A02B4 0019D1F4  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 801A02B8 0019D1F8  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 801A02BC 0019D1FC  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 801A02C0 0019D200  98 01 00 08 */	stb r0, 8(r1)
/* 801A02C4 0019D204  98 01 00 09 */	stb r0, 9(r1)
/* 801A02C8 0019D208  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A02CC 0019D20C  48 01 35 7D */	bl invokeAIFree__Q24Game4PikiFRQ34Game4Piki15InvokeAIFreeArg
/* 801A02D0 0019D210  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A02D4 0019D214  41 82 00 0C */	beq lbl_801A02E0
/* 801A02D8 0019D218  38 60 00 00 */	li r3, 0
/* 801A02DC 0019D21C  48 00 00 74 */	b lbl_801A0350
lbl_801A02E0:
/* 801A02E0 0019D220  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 801A02E4 0019D224  28 03 00 00 */	cmplwi r3, 0
/* 801A02E8 0019D228  41 82 00 10 */	beq lbl_801A02F8
/* 801A02EC 0019D22C  38 03 FF FF */	addi r0, r3, -1
/* 801A02F0 0019D230  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 801A02F4 0019D234  48 00 00 58 */	b lbl_801A034C
lbl_801A02F8:
/* 801A02F8 0019D238  4B F2 92 A9 */	bl rand
/* 801A02FC 0019D23C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801A0300 0019D240  3C 00 43 30 */	lis r0, 0x4330
/* 801A0304 0019D244  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801A0308 0019D248  C8 62 AD 10 */	lfd f3, lbl_80519070@sda21(r2)
/* 801A030C 0019D24C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801A0310 0019D250  C0 22 AD 04 */	lfs f1, lbl_80519064@sda21(r2)
/* 801A0314 0019D254  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 801A0318 0019D258  C0 02 AD 0C */	lfs f0, lbl_8051906C@sda21(r2)
/* 801A031C 0019D25C  EC 42 18 28 */	fsubs f2, f2, f3
/* 801A0320 0019D260  EC 22 08 24 */	fdivs f1, f2, f1
/* 801A0324 0019D264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A0328 0019D268  40 81 00 24 */	ble lbl_801A034C
/* 801A032C 0019D26C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801A0330 0019D270  38 80 00 00 */	li r4, 0
/* 801A0334 0019D274  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0338 0019D278  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A033C 0019D27C  7D 89 03 A6 */	mtctr r12
/* 801A0340 0019D280  4E 80 04 21 */	bctrl 
/* 801A0344 0019D284  38 00 00 02 */	li r0, 2
/* 801A0348 0019D288  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_801A034C:
/* 801A034C 0019D28C  38 60 00 01 */	li r3, 1
lbl_801A0350:
/* 801A0350 0019D290  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A0354 0019D294  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A0358 0019D298  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A035C 0019D29C  7C 08 03 A6 */	mtlr r0
/* 801A0360 0019D2A0  38 21 00 30 */	addi r1, r1, 0x30
/* 801A0364 0019D2A4  4E 80 00 20 */	blr 

.global cleanup__Q26PikiAI7ActFreeFv
cleanup__Q26PikiAI7ActFreeFv:
/* 801A0368 0019D2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A036C 0019D2AC  7C 08 02 A6 */	mflr r0
/* 801A0370 0019D2B0  38 80 00 00 */	li r4, 0
/* 801A0374 0019D2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A0378 0019D2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A037C 0019D2BC  7C 7F 1B 78 */	mr r31, r3
/* 801A0380 0019D2C0  80 63 00 04 */	lwz r3, 4(r3)
/* 801A0384 0019D2C4  4B FA 99 41 */	bl setFreeLightEffect__Q24Game4PikiFb
/* 801A0388 0019D2C8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A038C 0019D2CC  38 80 00 00 */	li r4, 0
/* 801A0390 0019D2D0  4B FA 87 91 */	bl attachRadar__Q24Game4PikiFb
/* 801A0394 0019D2D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A0398 0019D2D8  80 63 02 50 */	lwz r3, 0x250(r3)
/* 801A039C 0019D2DC  48 2C 21 D9 */	bl becomeNotFree__Q23PSM4PikiFv
/* 801A03A0 0019D2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A03A4 0019D2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A03A8 0019D2E8  7C 08 03 A6 */	mtlr r0
/* 801A03AC 0019D2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A03B0 0019D2F0  4E 80 00 20 */	blr 

.global onKeyEvent__Q26PikiAI7ActFreeFRCQ28SysShape8KeyEvent
onKeyEvent__Q26PikiAI7ActFreeFRCQ28SysShape8KeyEvent:
/* 801A03B4 0019D2F4  4E 80 00 20 */	blr 

.global collisionCallback__Q26PikiAI7ActFreeFPQ24Game4PikiRQ24Game9CollEvent
collisionCallback__Q26PikiAI7ActFreeFPQ24Game4PikiRQ24Game9CollEvent:
/* 801A03B8 0019D2F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A03BC 0019D2FC  7C 08 02 A6 */	mflr r0
/* 801A03C0 0019D300  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A03C4 0019D304  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A03C8 0019D308  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A03CC 0019D30C  7C BE 2B 78 */	mr r30, r5
/* 801A03D0 0019D310  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801A03D4 0019D314  7C 9D 23 78 */	mr r29, r4
/* 801A03D8 0019D318  80 65 00 00 */	lwz r3, 0(r5)
/* 801A03DC 0019D31C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A03E0 0019D320  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801A03E4 0019D324  7D 89 03 A6 */	mtctr r12
/* 801A03E8 0019D328  4E 80 04 21 */	bctrl 
/* 801A03EC 0019D32C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A03F0 0019D330  41 82 00 98 */	beq lbl_801A0488
/* 801A03F4 0019D334  83 FE 00 00 */	lwz r31, 0(r30)
/* 801A03F8 0019D338  7F E3 FB 78 */	mr r3, r31
/* 801A03FC 0019D33C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801A0400 0019D340  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801A0404 0019D344  7D 89 03 A6 */	mtctr r12
/* 801A0408 0019D348  4E 80 04 21 */	bctrl 
/* 801A040C 0019D34C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A0410 0019D350  41 82 00 78 */	beq lbl_801A0488
/* 801A0414 0019D354  80 1F 02 78 */	lwz r0, 0x278(r31)
/* 801A0418 0019D358  28 00 00 00 */	cmplwi r0, 0
/* 801A041C 0019D35C  41 82 00 6C */	beq lbl_801A0488
/* 801A0420 0019D360  7F E3 FB 78 */	mr r3, r31
/* 801A0424 0019D364  4B FA 46 9D */	bl formationable__Q24Game4NaviFv
/* 801A0428 0019D368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A042C 0019D36C  41 82 00 5C */	beq lbl_801A0488
/* 801A0430 0019D370  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 801A0434 0019D374  38 80 00 02 */	li r4, 2
/* 801A0438 0019D378  A0 BF 02 DC */	lhz r5, 0x2dc(r31)
/* 801A043C 0019D37C  48 0B 34 E9 */	bl startRumble__Q24Game9RumbleMgrFii
/* 801A0440 0019D380  80 9E 00 00 */	lwz r4, 0(r30)
/* 801A0444 0019D384  3C 60 80 4B */	lis r3, __vt__Q24Game11Interaction@ha
/* 801A0448 0019D388  38 03 A3 00 */	addi r0, r3, __vt__Q24Game11Interaction@l
/* 801A044C 0019D38C  3C 60 80 4B */	lis r3, __vt__Q24Game11InteractFue@ha
/* 801A0450 0019D390  90 01 00 08 */	stw r0, 8(r1)
/* 801A0454 0019D394  38 C3 49 BC */	addi r6, r3, __vt__Q24Game11InteractFue@l
/* 801A0458 0019D398  38 A0 00 00 */	li r5, 0
/* 801A045C 0019D39C  38 00 00 01 */	li r0, 1
/* 801A0460 0019D3A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A0464 0019D3A4  7F A3 EB 78 */	mr r3, r29
/* 801A0468 0019D3A8  38 81 00 08 */	addi r4, r1, 8
/* 801A046C 0019D3AC  90 C1 00 08 */	stw r6, 8(r1)
/* 801A0470 0019D3B0  98 A1 00 10 */	stb r5, 0x10(r1)
/* 801A0474 0019D3B4  98 01 00 11 */	stb r0, 0x11(r1)
/* 801A0478 0019D3B8  81 9D 00 00 */	lwz r12, 0(r29)
/* 801A047C 0019D3BC  81 8C 01 A4 */	lwz r12, 0x1a4(r12)
/* 801A0480 0019D3C0  7D 89 03 A6 */	mtctr r12
/* 801A0484 0019D3C4  4E 80 04 21 */	bctrl 
lbl_801A0488:
/* 801A0488 0019D3C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A048C 0019D3CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A0490 0019D3D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A0494 0019D3D4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801A0498 0019D3D8  7C 08 03 A6 */	mtlr r0
/* 801A049C 0019D3DC  38 21 00 30 */	addi r1, r1, 0x30
/* 801A04A0 0019D3E0  4E 80 00 20 */	blr 

.global getName__Q26PikiAI15GatherActionArgFv
getName__Q26PikiAI15GatherActionArgFv:
/* 801A04A4 0019D3E4  3C 60 80 48 */	lis r3, lbl_8047F290@ha
/* 801A04A8 0019D3E8  38 63 F2 90 */	addi r3, r3, lbl_8047F290@l
/* 801A04AC 0019D3EC  4E 80 00 20 */	blr 

.global getNextAIType__Q26PikiAI7ActFreeFv
getNextAIType__Q26PikiAI7ActFreeFv:
/* 801A04B0 0019D3F0  38 60 00 02 */	li r3, 2
/* 801A04B4 0019D3F4  4E 80 00 20 */	blr 

.global "@32@4@onKeyEvent__Q26PikiAI7ActFreeFRCQ28SysShape8KeyEvent"
"@32@4@onKeyEvent__Q26PikiAI7ActFreeFRCQ28SysShape8KeyEvent":
/* 801A04B8 0019D3F8  39 60 00 04 */	li r11, 4
/* 801A04BC 0019D3FC  7D 63 58 2E */	lwzx r11, r3, r11
/* 801A04C0 0019D400  7C 63 5A 14 */	add r3, r3, r11
/* 801A04C4 0019D404  38 63 FF E0 */	addi r3, r3, -32
/* 801A04C8 0019D408  4B FF FE EC */	b onKeyEvent__Q26PikiAI7ActFreeFRCQ28SysShape8KeyEvent
