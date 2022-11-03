.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80516708
lbl_80516708:
	.4byte 0x3E000000
.global lbl_8051670C
lbl_8051670C:
	.4byte 0x42C80000
.global lbl_80516710
lbl_80516710:
	.4byte 0x43300000
	.4byte 0x00000000
.global lbl_80516718
lbl_80516718:
	.4byte 0x43300000
	.4byte 0x80000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__10JUTTextureFii9_GXTexFmt
__ct__10JUTTextureFii9_GXTexFmt:
/* 80032F1C 0002FE5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032F20 0002FE60  7C 08 02 A6 */	mflr r0
/* 80032F24 0002FE64  38 E0 00 01 */	li r7, 1
/* 80032F28 0002FE68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032F2C 0002FE6C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80032F30 0002FE70  7C DE 33 78 */	mr r30, r6
/* 80032F34 0002FE74  7C 7B 1B 78 */	mr r27, r3
/* 80032F38 0002FE78  7C 9C 23 78 */	mr r28, r4
/* 80032F3C 0002FE7C  7C BD 2B 78 */	mr r29, r5
/* 80032F40 0002FE80  38 C0 00 00 */	li r6, 0
/* 80032F44 0002FE84  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 80032F48 0002FE88  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 80032F4C 0002FE8C  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 80032F50 0002FE90  7F C5 F3 78 */	mr r5, r30
/* 80032F54 0002FE94  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 80032F58 0002FE98  60 00 00 01 */	ori r0, r0, 1
/* 80032F5C 0002FE9C  98 1B 00 3B */	stb r0, 0x3b(r27)
/* 80032F60 0002FEA0  48 0B 3F F9 */	bl GXGetTexBufferSize
/* 80032F64 0002FEA4  7C 7F 1B 78 */	mr r31, r3
/* 80032F68 0002FEA8  38 80 00 20 */	li r4, 0x20
/* 80032F6C 0002FEAC  38 7F 00 20 */	addi r3, r31, 0x20
/* 80032F70 0002FEB0  4B FF 10 89 */	bl __nwa__FUli
/* 80032F74 0002FEB4  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80032F78 0002FEB8  38 E0 00 00 */	li r7, 0
/* 80032F7C 0002FEBC  38 C0 00 01 */	li r6, 1
/* 80032F80 0002FEC0  38 00 00 20 */	li r0, 0x20
/* 80032F84 0002FEC4  80 9B 00 3C */	lwz r4, 0x3c(r27)
/* 80032F88 0002FEC8  7F 63 DB 78 */	mr r3, r27
/* 80032F8C 0002FECC  38 A0 00 00 */	li r5, 0
/* 80032F90 0002FED0  9B C4 00 00 */	stb r30, 0(r4)
/* 80032F94 0002FED4  98 E4 00 01 */	stb r7, 1(r4)
/* 80032F98 0002FED8  B3 84 00 02 */	sth r28, 2(r4)
/* 80032F9C 0002FEDC  B3 A4 00 04 */	sth r29, 4(r4)
/* 80032FA0 0002FEE0  98 E4 00 06 */	stb r7, 6(r4)
/* 80032FA4 0002FEE4  98 E4 00 07 */	stb r7, 7(r4)
/* 80032FA8 0002FEE8  98 E4 00 08 */	stb r7, 8(r4)
/* 80032FAC 0002FEEC  98 E4 00 09 */	stb r7, 9(r4)
/* 80032FB0 0002FEF0  B0 E4 00 0A */	sth r7, 0xa(r4)
/* 80032FB4 0002FEF4  90 E4 00 0C */	stw r7, 0xc(r4)
/* 80032FB8 0002FEF8  98 E4 00 10 */	stb r7, 0x10(r4)
/* 80032FBC 0002FEFC  98 E4 00 11 */	stb r7, 0x11(r4)
/* 80032FC0 0002FF00  98 E4 00 12 */	stb r7, 0x12(r4)
/* 80032FC4 0002FF04  98 E4 00 13 */	stb r7, 0x13(r4)
/* 80032FC8 0002FF08  98 C4 00 14 */	stb r6, 0x14(r4)
/* 80032FCC 0002FF0C  98 C4 00 15 */	stb r6, 0x15(r4)
/* 80032FD0 0002FF10  98 E4 00 16 */	stb r7, 0x16(r4)
/* 80032FD4 0002FF14  98 E4 00 17 */	stb r7, 0x17(r4)
/* 80032FD8 0002FF18  98 C4 00 18 */	stb r6, 0x18(r4)
/* 80032FDC 0002FF1C  B0 E4 00 1A */	sth r7, 0x1a(r4)
/* 80032FE0 0002FF20  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80032FE4 0002FF24  90 FB 00 28 */	stw r7, 0x28(r27)
/* 80032FE8 0002FF28  48 00 00 9D */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 80032FEC 0002FF2C  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 80032FF0 0002FF30  7F E4 FB 78 */	mr r4, r31
/* 80032FF4 0002FF34  48 0B 97 25 */	bl DCFlushRange
/* 80032FF8 0002FF38  7F 63 DB 78 */	mr r3, r27
/* 80032FFC 0002FF3C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80033000 0002FF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033004 0002FF44  7C 08 03 A6 */	mtlr r0
/* 80033008 0002FF48  38 21 00 20 */	addi r1, r1, 0x20
/* 8003300C 0002FF4C  4E 80 00 20 */	blr 

.global __dt__10JUTTextureFv
__dt__10JUTTextureFv:
/* 80033010 0002FF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033014 0002FF54  7C 08 02 A6 */	mflr r0
/* 80033018 0002FF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003301C 0002FF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033020 0002FF60  7C 9F 23 78 */	mr r31, r4
/* 80033024 0002FF64  93 C1 00 08 */	stw r30, 8(r1)
/* 80033028 0002FF68  7C 7E 1B 79 */	or. r30, r3, r3
/* 8003302C 0002FF6C  41 82 00 3C */	beq .L_80033068
/* 80033030 0002FF70  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 80033034 0002FF74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80033038 0002FF78  41 82 00 0C */	beq .L_80033044
/* 8003303C 0002FF7C  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80033040 0002FF80  4B FF 10 99 */	bl __dla__FPv
.L_80033044:
/* 80033044 0002FF84  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 80033048 0002FF88  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8003304C 0002FF8C  41 82 00 0C */	beq .L_80033058
/* 80033050 0002FF90  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80033054 0002FF94  4B FF 10 61 */	bl __dl__FPv
.L_80033058:
/* 80033058 0002FF98  7F E0 07 35 */	extsh. r0, r31
/* 8003305C 0002FF9C  40 81 00 0C */	ble .L_80033068
/* 80033060 0002FFA0  7F C3 F3 78 */	mr r3, r30
/* 80033064 0002FFA4  4B FF 10 51 */	bl __dl__FPv
.L_80033068:
/* 80033068 0002FFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003306C 0002FFAC  7F C3 F3 78 */	mr r3, r30
/* 80033070 0002FFB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033074 0002FFB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80033078 0002FFB8  7C 08 03 A6 */	mtlr r0
/* 8003307C 0002FFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80033080 0002FFC0  4E 80 00 20 */	blr 

.global storeTIMG__10JUTTextureFPC7ResTIMGUc
storeTIMG__10JUTTextureFPC7ResTIMGUc:
/* 80033084 0002FFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033088 0002FFC8  7C 08 02 A6 */	mflr r0
/* 8003308C 0002FFCC  28 04 00 00 */	cmplwi r4, 0
/* 80033090 0002FFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033094 0002FFD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80033098 0002FFD8  7C 7F 1B 78 */	mr r31, r3
/* 8003309C 0002FFDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800330A0 0002FFE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800330A4 0002FFE4  41 82 01 70 */	beq .L_80033214
/* 800330A8 0002FFE8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 800330AC 0002FFEC  28 00 00 10 */	cmplwi r0, 0x10
/* 800330B0 0002FFF0  40 80 01 64 */	bge .L_80033214
/* 800330B4 0002FFF4  90 9F 00 20 */	stw r4, 0x20(r31)
/* 800330B8 0002FFF8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800330BC 0002FFFC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800330C0 00030000  7C 03 02 14 */	add r0, r3, r0
/* 800330C4 00030004  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800330C8 00030008  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800330CC 0003000C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800330D0 00030010  28 00 00 00 */	cmplwi r0, 0
/* 800330D4 00030014  40 82 00 0C */	bne .L_800330E0
/* 800330D8 00030018  38 03 00 20 */	addi r0, r3, 0x20
/* 800330DC 0003001C  90 1F 00 24 */	stw r0, 0x24(r31)
.L_800330E0:
/* 800330E0 00030020  38 00 00 00 */	li r0, 0
/* 800330E4 00030024  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 800330E8 00030028  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 800330EC 0003002C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800330F0 00030030  88 03 00 06 */	lbz r0, 6(r3)
/* 800330F4 00030034  98 1F 00 30 */	stb r0, 0x30(r31)
/* 800330F8 00030038  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800330FC 0003003C  88 03 00 07 */	lbz r0, 7(r3)
/* 80033100 00030040  98 1F 00 31 */	stb r0, 0x31(r31)
/* 80033104 00030044  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80033108 00030048  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8003310C 0003004C  98 1F 00 32 */	stb r0, 0x32(r31)
/* 80033110 00030050  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80033114 00030054  88 03 00 15 */	lbz r0, 0x15(r3)
/* 80033118 00030058  98 1F 00 33 */	stb r0, 0x33(r31)
/* 8003311C 0003005C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80033120 00030060  88 03 00 16 */	lbz r0, 0x16(r3)
/* 80033124 00030064  7C 00 07 74 */	extsb r0, r0
/* 80033128 00030068  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 8003312C 0003006C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80033130 00030070  88 03 00 17 */	lbz r0, 0x17(r3)
/* 80033134 00030074  7C 00 07 74 */	extsb r0, r0
/* 80033138 00030078  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8003313C 0003007C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80033140 00030080  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 80033144 00030084  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 80033148 00030088  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 8003314C 0003008C  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 80033150 00030090  28 07 00 00 */	cmplwi r7, 0
/* 80033154 00030094  40 82 00 10 */	bne .L_80033164
/* 80033158 00030098  7F E3 FB 78 */	mr r3, r31
/* 8003315C 0003009C  48 00 02 E9 */	bl initTexObj__10JUTTextureFv
/* 80033160 000300A0  48 00 00 B4 */	b .L_80033214
.L_80033164:
/* 80033164 000300A4  28 07 01 00 */	cmplwi r7, 0x100
/* 80033168 000300A8  40 81 00 24 */	ble .L_8003318C
/* 8003316C 000300AC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80033170 000300B0  54 A0 F0 02 */	slwi r0, r5, 0x1e
/* 80033174 000300B4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80033178 000300B8  7C 03 00 50 */	subf r0, r3, r0
/* 8003317C 000300BC  54 00 10 3E */	rotlwi r0, r0, 2
/* 80033180 000300C0  7C 60 1A 14 */	add r3, r0, r3
/* 80033184 000300C4  3B A3 00 10 */	addi r29, r3, 0x10
/* 80033188 000300C8  48 00 00 08 */	b .L_80033190
.L_8003318C:
/* 8003318C 000300CC  54 BD 06 3E */	clrlwi r29, r5, 0x18
.L_80033190:
/* 80033190 000300D0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80033194 000300D4  28 03 00 00 */	cmplwi r3, 0
/* 80033198 000300D8  41 82 00 10 */	beq .L_800331A8
/* 8003319C 000300DC  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 800331A0 000300E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800331A4 000300E4  40 82 00 4C */	bne .L_800331F0
.L_800331A8:
/* 800331A8 000300E8  38 60 00 18 */	li r3, 0x18
/* 800331AC 000300EC  4B FF 0C F9 */	bl __nw__FUl
/* 800331B0 000300F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800331B4 000300F4  41 82 00 24 */	beq .L_800331D8
/* 800331B8 000300F8  80 FF 00 20 */	lwz r7, 0x20(r31)
/* 800331BC 000300FC  7F A4 EB 78 */	mr r4, r29
/* 800331C0 00030100  80 07 00 0C */	lwz r0, 0xc(r7)
/* 800331C4 00030104  88 A7 00 09 */	lbz r5, 9(r7)
/* 800331C8 00030108  88 C7 00 01 */	lbz r6, 1(r7)
/* 800331CC 0003010C  7D 07 02 14 */	add r8, r7, r0
/* 800331D0 00030110  A0 E7 00 0A */	lhz r7, 0xa(r7)
/* 800331D4 00030114  4B FF BD 89 */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
.L_800331D8:
/* 800331D8 00030118  93 DF 00 28 */	stw r30, 0x28(r31)
/* 800331DC 0003011C  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 800331E0 00030120  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800331E4 00030124  60 00 00 02 */	ori r0, r0, 2
/* 800331E8 00030128  98 1F 00 3B */	stb r0, 0x3b(r31)
/* 800331EC 0003012C  48 00 00 1C */	b .L_80033208
.L_800331F0:
/* 800331F0 00030130  80 08 00 0C */	lwz r0, 0xc(r8)
/* 800331F4 00030134  7F A4 EB 78 */	mr r4, r29
/* 800331F8 00030138  88 A8 00 09 */	lbz r5, 9(r8)
/* 800331FC 0003013C  88 C8 00 01 */	lbz r6, 1(r8)
/* 80033200 00030140  7D 08 02 14 */	add r8, r8, r0
/* 80033204 00030144  4B FF BD 59 */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
.L_80033208:
/* 80033208 00030148  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8003320C 0003014C  7F E3 FB 78 */	mr r3, r31
/* 80033210 00030150  48 00 01 8D */	bl attachPalette__10JUTTextureFP10JUTPalette
.L_80033214:
/* 80033214 00030154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033218 00030158  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003321C 0003015C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80033220 00030160  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80033224 00030164  7C 08 03 A6 */	mtlr r0
/* 80033228 00030168  38 21 00 20 */	addi r1, r1, 0x20
/* 8003322C 0003016C  4E 80 00 20 */	blr 

.global storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette:
/* 80033230 00030170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033234 00030174  7C 08 02 A6 */	mflr r0
/* 80033238 00030178  28 05 00 00 */	cmplwi r5, 0
/* 8003323C 0003017C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033240 00030180  41 82 00 0C */	beq .L_8003324C
/* 80033244 00030184  88 C5 00 0C */	lbz r6, 0xc(r5)
/* 80033248 00030188  48 00 00 08 */	b .L_80033250
.L_8003324C:
/* 8003324C 0003018C  38 C0 00 00 */	li r6, 0
.L_80033250:
/* 80033250 00030190  48 00 00 15 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette7_GXTlut
/* 80033254 00030194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033258 00030198  7C 08 03 A6 */	mtlr r0
/* 8003325C 0003019C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033260 000301A0  4E 80 00 20 */	blr 

.global storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette7_GXTlut
storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette7_GXTlut:
/* 80033264 000301A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033268 000301A8  7C 08 02 A6 */	mflr r0
/* 8003326C 000301AC  28 04 00 00 */	cmplwi r4, 0
/* 80033270 000301B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033274 000301B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80033278 000301B8  7C 7F 1B 78 */	mr r31, r3
/* 8003327C 000301BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80033280 000301C0  7C DE 33 78 */	mr r30, r6
/* 80033284 000301C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80033288 000301C8  7C BD 2B 78 */	mr r29, r5
/* 8003328C 000301CC  41 82 00 F4 */	beq .L_80033380
/* 80033290 000301D0  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80033294 000301D4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80033298 000301D8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8003329C 000301DC  7C 03 02 14 */	add r0, r3, r0
/* 800332A0 000301E0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800332A4 000301E4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800332A8 000301E8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800332AC 000301EC  28 00 00 00 */	cmplwi r0, 0
/* 800332B0 000301F0  40 82 00 0C */	bne .L_800332BC
/* 800332B4 000301F4  38 03 00 20 */	addi r0, r3, 0x20
/* 800332B8 000301F8  90 1F 00 24 */	stw r0, 0x24(r31)
.L_800332BC:
/* 800332BC 000301FC  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 800332C0 00030200  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800332C4 00030204  41 82 00 0C */	beq .L_800332D0
/* 800332C8 00030208  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 800332CC 0003020C  4B FF 0D E9 */	bl __dl__FPv
.L_800332D0:
/* 800332D0 00030210  93 BF 00 28 */	stw r29, 0x28(r31)
/* 800332D4 00030214  28 1D 00 00 */	cmplwi r29, 0
/* 800332D8 00030218  38 00 00 00 */	li r0, 0
/* 800332DC 0003021C  88 7F 00 3B */	lbz r3, 0x3b(r31)
/* 800332E0 00030220  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 800332E4 00030224  98 7F 00 3B */	stb r3, 0x3b(r31)
/* 800332E8 00030228  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 800332EC 0003022C  41 82 00 30 */	beq .L_8003331C
/* 800332F0 00030230  9B DF 00 3A */	stb r30, 0x3a(r31)
/* 800332F4 00030234  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 800332F8 00030238  7C 1E 00 00 */	cmpw r30, r0
/* 800332FC 0003023C  41 82 00 20 */	beq .L_8003331C
/* 80033300 00030240  88 BD 00 0D */	lbz r5, 0xd(r29)
/* 80033304 00030244  7F A3 EB 78 */	mr r3, r29
/* 80033308 00030248  88 DD 00 16 */	lbz r6, 0x16(r29)
/* 8003330C 0003024C  7F C4 F3 78 */	mr r4, r30
/* 80033310 00030250  A0 FD 00 14 */	lhz r7, 0x14(r29)
/* 80033314 00030254  81 1D 00 10 */	lwz r8, 0x10(r29)
/* 80033318 00030258  4B FF BC 45 */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
.L_8003331C:
/* 8003331C 0003025C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80033320 00030260  7F E3 FB 78 */	mr r3, r31
/* 80033324 00030264  88 04 00 06 */	lbz r0, 6(r4)
/* 80033328 00030268  98 1F 00 30 */	stb r0, 0x30(r31)
/* 8003332C 0003026C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80033330 00030270  88 04 00 07 */	lbz r0, 7(r4)
/* 80033334 00030274  98 1F 00 31 */	stb r0, 0x31(r31)
/* 80033338 00030278  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8003333C 0003027C  88 04 00 14 */	lbz r0, 0x14(r4)
/* 80033340 00030280  98 1F 00 32 */	stb r0, 0x32(r31)
/* 80033344 00030284  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80033348 00030288  88 04 00 15 */	lbz r0, 0x15(r4)
/* 8003334C 0003028C  98 1F 00 33 */	stb r0, 0x33(r31)
/* 80033350 00030290  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80033354 00030294  88 04 00 16 */	lbz r0, 0x16(r4)
/* 80033358 00030298  7C 00 07 74 */	extsb r0, r0
/* 8003335C 0003029C  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 80033360 000302A0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80033364 000302A4  88 04 00 17 */	lbz r0, 0x17(r4)
/* 80033368 000302A8  7C 00 07 74 */	extsb r0, r0
/* 8003336C 000302AC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80033370 000302B0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80033374 000302B4  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 80033378 000302B8  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8003337C 000302BC  48 00 00 79 */	bl init__10JUTTextureFv
.L_80033380:
/* 80033380 000302C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033384 000302C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80033388 000302C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003338C 000302CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80033390 000302D0  7C 08 03 A6 */	mtlr r0
/* 80033394 000302D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80033398 000302D8  4E 80 00 20 */	blr 

.global attachPalette__10JUTTextureFP10JUTPalette
attachPalette__10JUTTextureFP10JUTPalette:
/* 8003339C 000302DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800333A0 000302E0  7C 08 02 A6 */	mflr r0
/* 800333A4 000302E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800333A8 000302E8  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 800333AC 000302EC  88 05 00 08 */	lbz r0, 8(r5)
/* 800333B0 000302F0  28 00 00 00 */	cmplwi r0, 0
/* 800333B4 000302F4  41 82 00 30 */	beq .L_800333E4
/* 800333B8 000302F8  28 04 00 00 */	cmplwi r4, 0
/* 800333BC 000302FC  40 82 00 18 */	bne .L_800333D4
/* 800333C0 00030300  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800333C4 00030304  28 00 00 00 */	cmplwi r0, 0
/* 800333C8 00030308  41 82 00 0C */	beq .L_800333D4
/* 800333CC 0003030C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 800333D0 00030310  48 00 00 08 */	b .L_800333D8
.L_800333D4:
/* 800333D4 00030314  90 83 00 2C */	stw r4, 0x2c(r3)
.L_800333D8:
/* 800333D8 00030318  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 800333DC 0003031C  88 84 00 0C */	lbz r4, 0xc(r4)
/* 800333E0 00030320  48 00 01 55 */	bl initTexObj__10JUTTextureF7_GXTlut
.L_800333E4:
/* 800333E4 00030324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800333E8 00030328  7C 08 03 A6 */	mtlr r0
/* 800333EC 0003032C  38 21 00 10 */	addi r1, r1, 0x10
/* 800333F0 00030330  4E 80 00 20 */	blr 

.global init__10JUTTextureFv
init__10JUTTextureFv:
/* 800333F4 00030334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800333F8 00030338  7C 08 02 A6 */	mflr r0
/* 800333FC 0003033C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033400 00030340  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80033404 00030344  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 80033408 00030348  28 00 00 00 */	cmplwi r0, 0
/* 8003340C 0003034C  40 82 00 0C */	bne .L_80033418
/* 80033410 00030350  48 00 00 35 */	bl initTexObj__10JUTTextureFv
/* 80033414 00030354  48 00 00 20 */	b .L_80033434
.L_80033418:
/* 80033418 00030358  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8003341C 0003035C  28 00 00 00 */	cmplwi r0, 0
/* 80033420 00030360  41 82 00 14 */	beq .L_80033434
/* 80033424 00030364  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80033428 00030368  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8003342C 0003036C  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80033430 00030370  48 00 01 05 */	bl initTexObj__10JUTTextureF7_GXTlut
.L_80033434:
/* 80033434 00030374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033438 00030378  7C 08 03 A6 */	mtlr r0
/* 8003343C 0003037C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033440 00030380  4E 80 00 20 */	blr 

.global initTexObj__10JUTTextureFv
initTexObj__10JUTTextureFv:
/* 80033444 00030384  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80033448 00030388  7C 08 02 A6 */	mflr r0
/* 8003344C 0003038C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80033450 00030390  38 00 00 20 */	li r0, 0x20
/* 80033454 00030394  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80033458 00030398  7C 7F 1B 78 */	mr r31, r3
/* 8003345C 0003039C  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 80033460 000303A0  88 87 00 10 */	lbz r4, 0x10(r7)
/* 80033464 000303A4  80 A7 00 1C */	lwz r5, 0x1c(r7)
/* 80033468 000303A8  7C 64 00 D0 */	neg r3, r4
/* 8003346C 000303AC  7C 63 23 78 */	or r3, r3, r4
/* 80033470 000303B0  28 05 00 00 */	cmplwi r5, 0
/* 80033474 000303B4  54 6A 0F FE */	srwi r10, r3, 0x1f
/* 80033478 000303B8  41 82 00 08 */	beq .L_80033480
/* 8003347C 000303BC  7C A0 2B 78 */	mr r0, r5
.L_80033480:
/* 80033480 000303C0  7C 87 02 14 */	add r4, r7, r0
/* 80033484 000303C4  A0 A7 00 02 */	lhz r5, 2(r7)
/* 80033488 000303C8  A0 C7 00 04 */	lhz r6, 4(r7)
/* 8003348C 000303CC  7F E3 FB 78 */	mr r3, r31
/* 80033490 000303D0  88 E7 00 00 */	lbz r7, 0(r7)
/* 80033494 000303D4  89 1F 00 30 */	lbz r8, 0x30(r31)
/* 80033498 000303D8  89 3F 00 31 */	lbz r9, 0x31(r31)
/* 8003349C 000303DC  48 0B 3C E1 */	bl GXInitTexObj
/* 800334A0 000303E0  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 800334A4 000303E4  3C A0 43 30 */	lis r5, 0x4330
/* 800334A8 000303E8  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 800334AC 000303EC  7F E3 FB 78 */	mr r3, r31
/* 800334B0 000303F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800334B4 000303F4  A0 9F 00 34 */	lhz r4, 0x34(r31)
/* 800334B8 000303F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800334BC 000303FC  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 800334C0 00030400  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800334C4 00030404  C8 42 83 B8 */	lfd f2, lbl_80516718@sda21(r2)
/* 800334C8 00030408  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800334CC 0003040C  C0 02 83 AC */	lfs f0, lbl_8051670C@sda21(r2)
/* 800334D0 00030410  EC 21 10 28 */	fsubs f1, f1, f2
/* 800334D4 00030414  90 81 00 0C */	stw r4, 0xc(r1)
/* 800334D8 00030418  C8 82 83 B0 */	lfd f4, lbl_80516710@sda21(r2)
/* 800334DC 0003041C  90 A1 00 08 */	stw r5, 8(r1)
/* 800334E0 00030420  EC 61 00 24 */	fdivs f3, f1, f0
/* 800334E4 00030424  C0 42 83 A8 */	lfs f2, lbl_80516708@sda21(r2)
/* 800334E8 00030428  C8 21 00 08 */	lfd f1, 8(r1)
/* 800334EC 0003042C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800334F0 00030430  88 9F 00 32 */	lbz r4, 0x32(r31)
/* 800334F4 00030434  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800334F8 00030438  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800334FC 0003043C  EC 21 20 28 */	fsubs f1, f1, f4
/* 80033500 00030440  88 BF 00 33 */	lbz r5, 0x33(r31)
/* 80033504 00030444  EC 00 20 28 */	fsubs f0, f0, f4
/* 80033508 00030448  88 C8 00 12 */	lbz r6, 0x12(r8)
/* 8003350C 0003044C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80033510 00030450  88 E8 00 11 */	lbz r7, 0x11(r8)
/* 80033514 00030454  89 08 00 13 */	lbz r8, 0x13(r8)
/* 80033518 00030458  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8003351C 0003045C  48 0B 3E F5 */	bl GXInitTexObjLOD
/* 80033520 00030460  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80033524 00030464  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80033528 00030468  7C 08 03 A6 */	mtlr r0
/* 8003352C 0003046C  38 21 00 30 */	addi r1, r1, 0x30
/* 80033530 00030470  4E 80 00 20 */	blr 

.global initTexObj__10JUTTextureF7_GXTlut
initTexObj__10JUTTextureF7_GXTlut:
/* 80033534 00030474  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80033538 00030478  7C 08 02 A6 */	mflr r0
/* 8003353C 0003047C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80033540 00030480  38 00 00 20 */	li r0, 0x20
/* 80033544 00030484  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80033548 00030488  7C 7F 1B 78 */	mr r31, r3
/* 8003354C 0003048C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80033550 00030490  88 A3 00 10 */	lbz r5, 0x10(r3)
/* 80033554 00030494  98 9F 00 3A */	stb r4, 0x3a(r31)
/* 80033558 00030498  7C 65 00 D0 */	neg r3, r5
/* 8003355C 0003049C  7C 63 2B 78 */	or r3, r3, r5
/* 80033560 000304A0  80 FF 00 20 */	lwz r7, 0x20(r31)
/* 80033564 000304A4  54 6A 0F FE */	srwi r10, r3, 0x1f
/* 80033568 000304A8  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 8003356C 000304AC  28 03 00 00 */	cmplwi r3, 0
/* 80033570 000304B0  41 82 00 08 */	beq .L_80033578
/* 80033574 000304B4  7C 60 1B 78 */	mr r0, r3
.L_80033578:
/* 80033578 000304B8  90 81 00 08 */	stw r4, 8(r1)
/* 8003357C 000304BC  7C 87 02 14 */	add r4, r7, r0
/* 80033580 000304C0  7F E3 FB 78 */	mr r3, r31
/* 80033584 000304C4  A0 A7 00 02 */	lhz r5, 2(r7)
/* 80033588 000304C8  A0 C7 00 04 */	lhz r6, 4(r7)
/* 8003358C 000304CC  88 E7 00 00 */	lbz r7, 0(r7)
/* 80033590 000304D0  89 1F 00 30 */	lbz r8, 0x30(r31)
/* 80033594 000304D4  89 3F 00 31 */	lbz r9, 0x31(r31)
/* 80033598 000304D8  48 0B 3E 31 */	bl GXInitTexObjCI
/* 8003359C 000304DC  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 800335A0 000304E0  3C A0 43 30 */	lis r5, 0x4330
/* 800335A4 000304E4  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 800335A8 000304E8  7F E3 FB 78 */	mr r3, r31
/* 800335AC 000304EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800335B0 000304F0  A0 9F 00 34 */	lhz r4, 0x34(r31)
/* 800335B4 000304F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800335B8 000304F8  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 800335BC 000304FC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800335C0 00030500  C8 42 83 B8 */	lfd f2, lbl_80516718@sda21(r2)
/* 800335C4 00030504  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 800335C8 00030508  C0 02 83 AC */	lfs f0, lbl_8051670C@sda21(r2)
/* 800335CC 0003050C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800335D0 00030510  90 81 00 14 */	stw r4, 0x14(r1)
/* 800335D4 00030514  C8 82 83 B0 */	lfd f4, lbl_80516710@sda21(r2)
/* 800335D8 00030518  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800335DC 0003051C  EC 61 00 24 */	fdivs f3, f1, f0
/* 800335E0 00030520  C0 42 83 A8 */	lfs f2, lbl_80516708@sda21(r2)
/* 800335E4 00030524  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800335E8 00030528  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800335EC 0003052C  88 9F 00 32 */	lbz r4, 0x32(r31)
/* 800335F0 00030530  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800335F4 00030534  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800335F8 00030538  EC 21 20 28 */	fsubs f1, f1, f4
/* 800335FC 0003053C  88 BF 00 33 */	lbz r5, 0x33(r31)
/* 80033600 00030540  EC 00 20 28 */	fsubs f0, f0, f4
/* 80033604 00030544  88 C8 00 12 */	lbz r6, 0x12(r8)
/* 80033608 00030548  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8003360C 0003054C  88 E8 00 11 */	lbz r7, 0x11(r8)
/* 80033610 00030550  89 08 00 13 */	lbz r8, 0x13(r8)
/* 80033614 00030554  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80033618 00030558  48 0B 3D F9 */	bl GXInitTexObjLOD
/* 8003361C 0003055C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80033620 00030560  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80033624 00030564  7C 08 03 A6 */	mtlr r0
/* 80033628 00030568  38 21 00 30 */	addi r1, r1, 0x30
/* 8003362C 0003056C  4E 80 00 20 */	blr 

.global load__10JUTTextureF11_GXTexMapID
load__10JUTTextureF11_GXTexMapID:
/* 80033630 00030570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033634 00030574  7C 08 02 A6 */	mflr r0
/* 80033638 00030578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003363C 0003057C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033640 00030580  7C 9F 23 78 */	mr r31, r4
/* 80033644 00030584  93 C1 00 08 */	stw r30, 8(r1)
/* 80033648 00030588  7C 7E 1B 78 */	mr r30, r3
/* 8003364C 0003058C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80033650 00030590  28 03 00 00 */	cmplwi r3, 0
/* 80033654 00030594  41 82 00 08 */	beq .L_8003365C
/* 80033658 00030598  4B FF B9 45 */	bl load__10JUTPaletteFv
.L_8003365C:
/* 8003365C 0003059C  7F C3 F3 78 */	mr r3, r30
/* 80033660 000305A0  7F E4 FB 78 */	mr r4, r31
/* 80033664 000305A4  48 0B 40 AD */	bl GXLoadTexObj
/* 80033668 000305A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003366C 000305AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033670 000305B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80033674 000305B4  7C 08 03 A6 */	mtlr r0
/* 80033678 000305B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003367C 000305BC  4E 80 00 20 */	blr 

.global capture__10JUTTextureFii9_GXTexFmtbUc
capture__10JUTTextureFii9_GXTexFmtbUc:
/* 80033680 000305C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033684 000305C4  7C 08 02 A6 */	mflr r0
/* 80033688 000305C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003368C 000305CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80033690 000305D0  7D 1F 43 78 */	mr r31, r8
/* 80033694 000305D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80033698 000305D8  7C FE 3B 78 */	mr r30, r7
/* 8003369C 000305DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800336A0 000305E0  7C DD 33 78 */	mr r29, r6
/* 800336A4 000305E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800336A8 000305E8  7C 7C 1B 78 */	mr r28, r3
/* 800336AC 000305EC  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 800336B0 000305F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800336B4 000305F4  41 82 00 70 */	beq .L_80033724
/* 800336B8 000305F8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800336BC 000305FC  41 82 00 28 */	beq .L_800336E4
/* 800336C0 00030600  80 DC 00 20 */	lwz r6, 0x20(r28)
/* 800336C4 00030604  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 800336C8 00030608  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 800336CC 0003060C  A0 A6 00 02 */	lhz r5, 2(r6)
/* 800336D0 00030610  A0 06 00 04 */	lhz r0, 4(r6)
/* 800336D4 00030614  54 A5 0C 3C */	rlwinm r5, r5, 1, 0x10, 0x1e
/* 800336D8 00030618  54 06 0C 3C */	rlwinm r6, r0, 1, 0x10, 0x1e
/* 800336DC 0003061C  48 0B 25 E5 */	bl GXSetTexCopySrc
/* 800336E0 00030620  48 00 00 1C */	b .L_800336FC
.L_800336E4:
/* 800336E4 00030624  80 DC 00 20 */	lwz r6, 0x20(r28)
/* 800336E8 00030628  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 800336EC 0003062C  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 800336F0 00030630  A0 A6 00 02 */	lhz r5, 2(r6)
/* 800336F4 00030634  A0 C6 00 04 */	lhz r6, 4(r6)
/* 800336F8 00030638  48 0B 25 C9 */	bl GXSetTexCopySrc
.L_800336FC:
/* 800336FC 0003063C  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 80033700 00030640  7F A5 EB 78 */	mr r5, r29
/* 80033704 00030644  57 C6 06 3E */	clrlwi r6, r30, 0x18
/* 80033708 00030648  A0 64 00 02 */	lhz r3, 2(r4)
/* 8003370C 0003064C  A0 84 00 04 */	lhz r4, 4(r4)
/* 80033710 00030650  48 0B 26 61 */	bl GXSetTexCopyDst
/* 80033714 00030654  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 80033718 00030658  7F E4 FB 78 */	mr r4, r31
/* 8003371C 0003065C  48 0B 2F 91 */	bl GXCopyTex
/* 80033720 00030660  48 0B 1E 9D */	bl GXPixModeSync
.L_80033724:
/* 80033724 00030664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033728 00030668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003372C 0003066C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80033730 00030670  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80033734 00030674  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80033738 00030678  7C 08 03 A6 */	mtlr r0
/* 8003373C 0003067C  38 21 00 20 */	addi r1, r1, 0x20
/* 80033740 00030680  4E 80 00 20 */	blr 
