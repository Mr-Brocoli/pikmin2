.include "macros.inc"
.section .init, "ax"  # 0x80003100 - 0x80005600

.global __TRK_reset
__TRK_reset:
/* 80005088 00002088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000508C 0000208C  7C 08 02 A6 */	mflr r0
/* 80005090 00002090  38 60 00 00 */	li r3, 0
/* 80005094 00002094  38 80 00 00 */	li r4, 0
/* 80005098 00002098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000509C 0000209C  38 A0 00 00 */	li r5, 0
/* 800050A0 000020A0  48 0E B3 41 */	bl OSResetSystem
/* 800050A4 000020A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800050A8 000020A8  7C 08 03 A6 */	mtlr r0
/* 800050AC 000020AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800050B0 000020B0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
TRK_ISR_OFFSETS:
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700

.section .bss  # 0x804EFC20 - 0x8051467C
.balign 8
lc_base:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global InitMetroTRK
InitMetroTRK:
/* 800BFDD0 000BCD10  38 21 FF FC */	addi r1, r1, -4
/* 800BFDD4 000BCD14  90 61 00 00 */	stw r3, 0(r1)
/* 800BFDD8 000BCD18  3C 60 80 4F */	lis r3, gTRKCPUState@h
/* 800BFDDC 000BCD1C  60 63 43 28 */	ori r3, r3, gTRKCPUState@l
/* 800BFDE0 000BCD20  BC 03 00 00 */	stmw r0, 0(r3)
/* 800BFDE4 000BCD24  80 81 00 00 */	lwz r4, 0(r1)
/* 800BFDE8 000BCD28  38 21 00 04 */	addi r1, r1, 4
/* 800BFDEC 000BCD2C  90 23 00 04 */	stw r1, 4(r3)
/* 800BFDF0 000BCD30  90 83 00 0C */	stw r4, 0xc(r3)
/* 800BFDF4 000BCD34  7C 88 02 A6 */	mflr r4
/* 800BFDF8 000BCD38  90 83 00 84 */	stw r4, 0x84(r3)
/* 800BFDFC 000BCD3C  90 83 00 80 */	stw r4, 0x80(r3)
/* 800BFE00 000BCD40  7C 80 00 26 */	mfcr r4
/* 800BFE04 000BCD44  90 83 00 88 */	stw r4, 0x88(r3)
/* 800BFE08 000BCD48  7C 80 00 A6 */	mfmsr r4
/* 800BFE0C 000BCD4C  60 83 80 00 */	ori r3, r4, 0x8000
/* 800BFE10 000BCD50  68 63 80 00 */	xori r3, r3, 0x8000
/* 800BFE14 000BCD54  7C 60 01 24 */	mtmsr r3
/* 800BFE18 000BCD58  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 800BFE1C 000BCD5C  4B FF FC 45 */	bl TRKSaveExtended1Block
/* 800BFE20 000BCD60  3C 60 80 4F */	lis r3, gTRKCPUState@h
/* 800BFE24 000BCD64  60 63 43 28 */	ori r3, r3, gTRKCPUState@l
/* 800BFE28 000BCD68  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800BFE2C 000BCD6C  38 00 00 00 */	li r0, 0
/* 800BFE30 000BCD70  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 800BFE34 000BCD74  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 800BFE38 000BCD78  3C 20 80 53 */	lis r1, _db_stack_addr@h
/* 800BFE3C 000BCD7C  60 21 2E D8 */	ori r1, r1, _db_stack_addr@l
/* 800BFE40 000BCD80  7C A3 2B 78 */	mr r3, r5
/* 800BFE44 000BCD84  48 00 08 D5 */	bl InitMetroTRKCommTable
/* 800BFE48 000BCD88  2C 03 00 01 */	cmpwi r3, 1
/* 800BFE4C 000BCD8C  40 82 00 14 */	bne .L_800BFE60
/* 800BFE50 000BCD90  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800BFE54 000BCD94  7C 88 03 A6 */	mtlr r4
/* 800BFE58 000BCD98  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800BFE5C 000BCD9C  4E 80 00 20 */	blr 
.L_800BFE60:
/* 800BFE60 000BCDA0  48 00 05 AC */	b TRK_main
/* 800BFE64 000BCDA4  4E 80 00 20 */	blr 

.global InitMetroTRK_BBA
InitMetroTRK_BBA:
/* 800BFE68 000BCDA8  38 21 FF FC */	addi r1, r1, -4
/* 800BFE6C 000BCDAC  90 61 00 00 */	stw r3, 0(r1)
/* 800BFE70 000BCDB0  3C 60 80 4F */	lis r3, gTRKCPUState@h
/* 800BFE74 000BCDB4  60 63 43 28 */	ori r3, r3, gTRKCPUState@l
/* 800BFE78 000BCDB8  BC 03 00 00 */	stmw r0, 0(r3)
/* 800BFE7C 000BCDBC  80 81 00 00 */	lwz r4, 0(r1)
/* 800BFE80 000BCDC0  38 21 00 04 */	addi r1, r1, 4
/* 800BFE84 000BCDC4  90 23 00 04 */	stw r1, 4(r3)
/* 800BFE88 000BCDC8  90 83 00 0C */	stw r4, 0xc(r3)
/* 800BFE8C 000BCDCC  7C 88 02 A6 */	mflr r4
/* 800BFE90 000BCDD0  90 83 00 84 */	stw r4, 0x84(r3)
/* 800BFE94 000BCDD4  90 83 00 80 */	stw r4, 0x80(r3)
/* 800BFE98 000BCDD8  7C 80 00 26 */	mfcr r4
/* 800BFE9C 000BCDDC  90 83 00 88 */	stw r4, 0x88(r3)
/* 800BFEA0 000BCDE0  7C 80 00 A6 */	mfmsr r4
/* 800BFEA4 000BCDE4  60 83 80 00 */	ori r3, r4, 0x8000
/* 800BFEA8 000BCDE8  7C 60 01 24 */	mtmsr r3
/* 800BFEAC 000BCDEC  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 800BFEB0 000BCDF0  4B FF FB B1 */	bl TRKSaveExtended1Block
/* 800BFEB4 000BCDF4  3C 60 80 4F */	lis r3, gTRKCPUState@h
/* 800BFEB8 000BCDF8  60 63 43 28 */	ori r3, r3, gTRKCPUState@l
/* 800BFEBC 000BCDFC  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800BFEC0 000BCE00  38 00 00 00 */	li r0, 0
/* 800BFEC4 000BCE04  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 800BFEC8 000BCE08  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 800BFECC 000BCE0C  3C 20 80 53 */	lis r1, _db_stack_addr@h
/* 800BFED0 000BCE10  60 21 2E D8 */	ori r1, r1, _db_stack_addr@l
/* 800BFED4 000BCE14  38 60 00 02 */	li r3, 2
/* 800BFED8 000BCE18  48 00 08 41 */	bl InitMetroTRKCommTable
/* 800BFEDC 000BCE1C  2C 03 00 01 */	cmpwi r3, 1
/* 800BFEE0 000BCE20  40 82 00 14 */	bne .L_800BFEF4
/* 800BFEE4 000BCE24  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800BFEE8 000BCE28  7C 88 03 A6 */	mtlr r4
/* 800BFEEC 000BCE2C  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800BFEF0 000BCE30  4E 80 00 20 */	blr 
.L_800BFEF4:
/* 800BFEF4 000BCE34  48 00 05 18 */	b TRK_main
/* 800BFEF8 000BCE38  4E 80 00 20 */	blr 

.global TRK__write_aram
TRK__write_aram:
/* 800BFEFC 000BCE3C  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 800BFF00 000BCE40  7C 2C 0B 78 */	mr r12, r1
/* 800BFF04 000BCE44  21 6B FF 80 */	subfic r11, r11, -128
/* 800BFF08 000BCE48  7C 21 59 6E */	stwux r1, r1, r11
/* 800BFF0C 000BCE4C  7C 08 02 A6 */	mflr r0
/* 800BFF10 000BCE50  90 0C 00 04 */	stw r0, 4(r12)
/* 800BFF14 000BCE54  BE EC FF DC */	stmw r23, -0x24(r12)
/* 800BFF18 000BCE58  7C 9F 23 78 */	mr r31, r4
/* 800BFF1C 000BCE5C  28 1F 40 00 */	cmplwi r31, 0x4000
/* 800BFF20 000BCE60  7C 7E 1B 78 */	mr r30, r3
/* 800BFF24 000BCE64  7C B7 2B 78 */	mr r23, r5
/* 800BFF28 000BCE68  41 80 01 A8 */	blt .L_800C00D0
/* 800BFF2C 000BCE6C  80 97 00 00 */	lwz r4, 0(r23)
/* 800BFF30 000BCE70  3C 00 08 00 */	lis r0, 0x800
/* 800BFF34 000BCE74  7C 7F 22 14 */	add r3, r31, r4
/* 800BFF38 000BCE78  7C 03 00 40 */	cmplw r3, r0
/* 800BFF3C 000BCE7C  40 81 00 08 */	ble .L_800BFF44
/* 800BFF40 000BCE80  48 00 01 90 */	b .L_800C00D0
.L_800BFF44:
/* 800BFF44 000BCE84  57 E0 06 FE */	clrlwi r0, r31, 0x1b
/* 800BFF48 000BCE88  57 FB 00 34 */	rlwinm r27, r31, 0, 0, 0x1a
/* 800BFF4C 000BCE8C  7F 44 02 14 */	add r26, r4, r0
/* 800BFF50 000BCE90  3B 00 00 00 */	li r24, 0
/* 800BFF54 000BCE94  38 1A 00 1F */	addi r0, r26, 0x1f
/* 800BFF58 000BCE98  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 800BFF5C 000BCE9C  28 1A 00 00 */	cmplwi r26, 0
/* 800BFF60 000BCEA0  38 7A 00 1F */	addi r3, r26, 0x1f
/* 800BFF64 000BCEA4  54 63 D9 7E */	srwi r3, r3, 5
/* 800BFF68 000BCEA8  40 81 00 6C */	ble .L_800BFFD4
/* 800BFF6C 000BCEAC  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 800BFF70 000BCEB0  7C 09 03 A6 */	mtctr r0
/* 800BFF74 000BCEB4  41 82 00 50 */	beq .L_800BFFC4
.L_800BFF78:
/* 800BFF78 000BCEB8  7C 18 F0 AC */	dcbf r24, r30
/* 800BFF7C 000BCEBC  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFF80 000BCEC0  7C 18 F0 AC */	dcbf r24, r30
/* 800BFF84 000BCEC4  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFF88 000BCEC8  7C 18 F0 AC */	dcbf r24, r30
/* 800BFF8C 000BCECC  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFF90 000BCED0  7C 18 F0 AC */	dcbf r24, r30
/* 800BFF94 000BCED4  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFF98 000BCED8  7C 18 F0 AC */	dcbf r24, r30
/* 800BFF9C 000BCEDC  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFFA0 000BCEE0  7C 18 F0 AC */	dcbf r24, r30
/* 800BFFA4 000BCEE4  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFFA8 000BCEE8  7C 18 F0 AC */	dcbf r24, r30
/* 800BFFAC 000BCEEC  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFFB0 000BCEF0  7C 18 F0 AC */	dcbf r24, r30
/* 800BFFB4 000BCEF4  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFFB8 000BCEF8  42 00 FF C0 */	bdnz .L_800BFF78
/* 800BFFBC 000BCEFC  70 63 00 07 */	andi. r3, r3, 7
/* 800BFFC0 000BCF00  41 82 00 14 */	beq .L_800BFFD4
.L_800BFFC4:
/* 800BFFC4 000BCF04  7C 69 03 A6 */	mtctr r3
.L_800BFFC8:
/* 800BFFC8 000BCF08  7C 18 F0 AC */	dcbf r24, r30
/* 800BFFCC 000BCF0C  3B 18 00 20 */	addi r24, r24, 0x20
/* 800BFFD0 000BCF10  42 00 FF F8 */	bdnz .L_800BFFC8
.L_800BFFD4:
/* 800BFFD4 000BCF14  48 01 26 E5 */	bl ARGetDMAStatus
/* 800BFFD8 000BCF18  28 03 00 00 */	cmplwi r3, 0
/* 800BFFDC 000BCF1C  40 82 FF F8 */	bne .L_800BFFD4
/* 800BFFE0 000BCF20  48 01 29 D9 */	bl __ARGetInterruptStatus
/* 800BFFE4 000BCF24  57 F8 06 FF */	clrlwi. r24, r31, 0x1b
/* 800BFFE8 000BCF28  7C 7D 1B 78 */	mr r29, r3
/* 800BFFEC 000BCF2C  3F 20 08 00 */	lis r25, 0x800
/* 800BFFF0 000BCF30  41 82 00 48 */	beq .L_800C0038
/* 800BFFF4 000BCF34  3B 81 00 20 */	addi r28, r1, 0x20
/* 800BFFF8 000BCF38  7F 79 DB 78 */	mr r25, r27
/* 800BFFFC 000BCF3C  7C 00 E3 AC */	dcbi 0, r28
/* 800C0000 000BCF40  48 01 29 99 */	bl __ARClearInterrupt
/* 800C0004 000BCF44  7F 84 E3 78 */	mr r4, r28
/* 800C0008 000BCF48  7F 65 DB 78 */	mr r5, r27
/* 800C000C 000BCF4C  38 60 00 01 */	li r3, 1
/* 800C0010 000BCF50  38 C0 00 20 */	li r6, 0x20
/* 800C0014 000BCF54  48 01 26 E1 */	bl ARStartDMA
.L_800C0018:
/* 800C0018 000BCF58  48 01 29 A1 */	bl __ARGetInterruptStatus
/* 800C001C 000BCF5C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800C0020 000BCF60  41 82 FF F8 */	beq .L_800C0018
/* 800C0024 000BCF64  7F C3 F3 78 */	mr r3, r30
/* 800C0028 000BCF68  7F 05 C3 78 */	mr r5, r24
/* 800C002C 000BCF6C  38 81 00 20 */	addi r4, r1, 0x20
/* 800C0030 000BCF70  4B F4 31 01 */	bl TRK_memcpy
/* 800C0034 000BCF74  7C 00 F0 AC */	dcbf 0, r30
.L_800C0038:
/* 800C0038 000BCF78  80 17 00 00 */	lwz r0, 0(r23)
/* 800C003C 000BCF7C  7F FF 02 14 */	add r31, r31, r0
/* 800C0040 000BCF80  57 F8 06 FF */	clrlwi. r24, r31, 0x1b
/* 800C0044 000BCF84  41 82 00 58 */	beq .L_800C009C
/* 800C0048 000BCF88  57 F7 00 34 */	rlwinm r23, r31, 0, 0, 0x1a
/* 800C004C 000BCF8C  7C 17 C8 40 */	cmplw r23, r25
/* 800C0050 000BCF90  41 82 00 30 */	beq .L_800C0080
/* 800C0054 000BCF94  3B 81 00 20 */	addi r28, r1, 0x20
/* 800C0058 000BCF98  7C 00 E3 AC */	dcbi 0, r28
/* 800C005C 000BCF9C  48 01 29 3D */	bl __ARClearInterrupt
/* 800C0060 000BCFA0  7F 84 E3 78 */	mr r4, r28
/* 800C0064 000BCFA4  7E E5 BB 78 */	mr r5, r23
/* 800C0068 000BCFA8  38 60 00 01 */	li r3, 1
/* 800C006C 000BCFAC  38 C0 00 20 */	li r6, 0x20
/* 800C0070 000BCFB0  48 01 26 85 */	bl ARStartDMA
.L_800C0074:
/* 800C0074 000BCFB4  48 01 29 45 */	bl __ARGetInterruptStatus
/* 800C0078 000BCFB8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800C007C 000BCFBC  41 82 FF F8 */	beq .L_800C0074
.L_800C0080:
/* 800C0080 000BCFC0  7F 3E FA 14 */	add r25, r30, r31
/* 800C0084 000BCFC4  38 81 00 20 */	addi r4, r1, 0x20
/* 800C0088 000BCFC8  7F 23 CB 78 */	mr r3, r25
/* 800C008C 000BCFCC  20 B8 00 20 */	subfic r5, r24, 0x20
/* 800C0090 000BCFD0  7C 84 C2 14 */	add r4, r4, r24
/* 800C0094 000BCFD4  4B F4 30 9D */	bl TRK_memcpy
/* 800C0098 000BCFD8  7C 00 C8 AC */	dcbf 0, r25
.L_800C009C:
/* 800C009C 000BCFDC  7C 00 04 AC */	sync 0
/* 800C00A0 000BCFE0  48 01 28 F9 */	bl __ARClearInterrupt
/* 800C00A4 000BCFE4  7F C4 F3 78 */	mr r4, r30
/* 800C00A8 000BCFE8  7F 65 DB 78 */	mr r5, r27
/* 800C00AC 000BCFEC  7F 46 D3 78 */	mr r6, r26
/* 800C00B0 000BCFF0  38 60 00 00 */	li r3, 0
/* 800C00B4 000BCFF4  48 01 26 41 */	bl ARStartDMA
/* 800C00B8 000BCFF8  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 800C00BC 000BCFFC  40 82 00 14 */	bne .L_800C00D0
.L_800C00C0:
/* 800C00C0 000BD000  48 01 28 F9 */	bl __ARGetInterruptStatus
/* 800C00C4 000BD004  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800C00C8 000BD008  41 82 FF F8 */	beq .L_800C00C0
/* 800C00CC 000BD00C  48 01 28 CD */	bl __ARClearInterrupt
.L_800C00D0:
/* 800C00D0 000BD010  81 41 00 00 */	lwz r10, 0(r1)
/* 800C00D4 000BD014  BA EA FF DC */	lmw r23, -0x24(r10)
/* 800C00D8 000BD018  80 0A 00 04 */	lwz r0, 4(r10)
/* 800C00DC 000BD01C  7C 08 03 A6 */	mtlr r0
/* 800C00E0 000BD020  7D 41 53 78 */	mr r1, r10
/* 800C00E4 000BD024  4E 80 00 20 */	blr 

.global TRK__read_aram
TRK__read_aram:
/* 800C00E8 000BD028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C00EC 000BD02C  7C 08 02 A6 */	mflr r0
/* 800C00F0 000BD030  28 04 40 00 */	cmplwi r4, 0x4000
/* 800C00F4 000BD034  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C00F8 000BD038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C00FC 000BD03C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0100 000BD040  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C0104 000BD044  93 81 00 10 */	stw r28, 0x10(r1)
/* 800C0108 000BD048  7C 7C 1B 78 */	mr r28, r3
/* 800C010C 000BD04C  41 80 00 F0 */	blt .L_800C01FC
/* 800C0110 000BD050  80 A5 00 00 */	lwz r5, 0(r5)
/* 800C0114 000BD054  3C 00 08 00 */	lis r0, 0x800
/* 800C0118 000BD058  7C 64 2A 14 */	add r3, r4, r5
/* 800C011C 000BD05C  7C 03 00 40 */	cmplw r3, r0
/* 800C0120 000BD060  40 81 00 08 */	ble .L_800C0128
/* 800C0124 000BD064  48 00 00 D8 */	b .L_800C01FC
.L_800C0128:
/* 800C0128 000BD068  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800C012C 000BD06C  54 9E 00 34 */	rlwinm r30, r4, 0, 0, 0x1a
/* 800C0130 000BD070  7F A5 02 14 */	add r29, r5, r0
/* 800C0134 000BD074  38 80 00 00 */	li r4, 0
/* 800C0138 000BD078  38 1D 00 1F */	addi r0, r29, 0x1f
/* 800C013C 000BD07C  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 800C0140 000BD080  28 1D 00 00 */	cmplwi r29, 0
/* 800C0144 000BD084  38 7D 00 1F */	addi r3, r29, 0x1f
/* 800C0148 000BD088  54 63 D9 7E */	srwi r3, r3, 5
/* 800C014C 000BD08C  40 81 00 6C */	ble .L_800C01B8
/* 800C0150 000BD090  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 800C0154 000BD094  7C 09 03 A6 */	mtctr r0
/* 800C0158 000BD098  41 82 00 50 */	beq .L_800C01A8
.L_800C015C:
/* 800C015C 000BD09C  7C 04 E3 AC */	dcbi r4, r28
/* 800C0160 000BD0A0  38 84 00 20 */	addi r4, r4, 0x20
/* 800C0164 000BD0A4  7C 04 E3 AC */	dcbi r4, r28
/* 800C0168 000BD0A8  38 84 00 20 */	addi r4, r4, 0x20
/* 800C016C 000BD0AC  7C 04 E3 AC */	dcbi r4, r28
/* 800C0170 000BD0B0  38 84 00 20 */	addi r4, r4, 0x20
/* 800C0174 000BD0B4  7C 04 E3 AC */	dcbi r4, r28
/* 800C0178 000BD0B8  38 84 00 20 */	addi r4, r4, 0x20
/* 800C017C 000BD0BC  7C 04 E3 AC */	dcbi r4, r28
/* 800C0180 000BD0C0  38 84 00 20 */	addi r4, r4, 0x20
/* 800C0184 000BD0C4  7C 04 E3 AC */	dcbi r4, r28
/* 800C0188 000BD0C8  38 84 00 20 */	addi r4, r4, 0x20
/* 800C018C 000BD0CC  7C 04 E3 AC */	dcbi r4, r28
/* 800C0190 000BD0D0  38 84 00 20 */	addi r4, r4, 0x20
/* 800C0194 000BD0D4  7C 04 E3 AC */	dcbi r4, r28
/* 800C0198 000BD0D8  38 84 00 20 */	addi r4, r4, 0x20
/* 800C019C 000BD0DC  42 00 FF C0 */	bdnz .L_800C015C
/* 800C01A0 000BD0E0  70 63 00 07 */	andi. r3, r3, 7
/* 800C01A4 000BD0E4  41 82 00 14 */	beq .L_800C01B8
.L_800C01A8:
/* 800C01A8 000BD0E8  7C 69 03 A6 */	mtctr r3
.L_800C01AC:
/* 800C01AC 000BD0EC  7C 04 E3 AC */	dcbi r4, r28
/* 800C01B0 000BD0F0  38 84 00 20 */	addi r4, r4, 0x20
/* 800C01B4 000BD0F4  42 00 FF F8 */	bdnz .L_800C01AC
.L_800C01B8:
/* 800C01B8 000BD0F8  48 01 25 01 */	bl ARGetDMAStatus
/* 800C01BC 000BD0FC  28 03 00 00 */	cmplwi r3, 0
/* 800C01C0 000BD100  40 82 FF F8 */	bne .L_800C01B8
/* 800C01C4 000BD104  48 01 27 F5 */	bl __ARGetInterruptStatus
/* 800C01C8 000BD108  7C 7F 1B 78 */	mr r31, r3
/* 800C01CC 000BD10C  48 01 27 CD */	bl __ARClearInterrupt
/* 800C01D0 000BD110  7F 84 E3 78 */	mr r4, r28
/* 800C01D4 000BD114  7F C5 F3 78 */	mr r5, r30
/* 800C01D8 000BD118  7F A6 EB 78 */	mr r6, r29
/* 800C01DC 000BD11C  38 60 00 01 */	li r3, 1
/* 800C01E0 000BD120  48 01 25 15 */	bl ARStartDMA
.L_800C01E4:
/* 800C01E4 000BD124  48 01 27 D5 */	bl __ARGetInterruptStatus
/* 800C01E8 000BD128  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800C01EC 000BD12C  41 82 FF F8 */	beq .L_800C01E4
/* 800C01F0 000BD130  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 800C01F4 000BD134  40 82 00 08 */	bne .L_800C01FC
/* 800C01F8 000BD138  48 01 27 A1 */	bl __ARClearInterrupt
.L_800C01FC:
/* 800C01FC 000BD13C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0200 000BD140  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0204 000BD144  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C0208 000BD148  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C020C 000BD14C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800C0210 000BD150  7C 08 03 A6 */	mtlr r0
/* 800C0214 000BD154  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0218 000BD158  4E 80 00 20 */	blr 

.global TRKInitializeTarget
TRKInitializeTarget:
/* 800C021C 000BD15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0220 000BD160  7C 08 02 A6 */	mflr r0
/* 800C0224 000BD164  3C 60 80 4F */	lis r3, gTRKState@ha
/* 800C0228 000BD168  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C022C 000BD16C  38 00 00 01 */	li r0, 1
/* 800C0230 000BD170  38 63 42 84 */	addi r3, r3, gTRKState@l
/* 800C0234 000BD174  90 03 00 98 */	stw r0, 0x98(r3)
/* 800C0238 000BD178  4B FF DC 71 */	bl __TRK_get_MSR
/* 800C023C 000BD17C  3C A0 80 4F */	lis r5, gTRKState@ha
/* 800C0240 000BD180  3C 80 80 4F */	lis r4, lc_base@ha
/* 800C0244 000BD184  38 A5 42 84 */	addi r5, r5, gTRKState@l
/* 800C0248 000BD188  3C 00 E0 00 */	lis r0, 0xe000
/* 800C024C 000BD18C  90 65 00 8C */	stw r3, 0x8c(r5)
/* 800C0250 000BD190  38 60 00 00 */	li r3, 0
/* 800C0254 000BD194  90 04 48 00 */	stw r0, lc_base@l(r4)
/* 800C0258 000BD198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C025C 000BD19C  7C 08 03 A6 */	mtlr r0
/* 800C0260 000BD1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0264 000BD1A4  4E 80 00 20 */	blr 

.global __TRK_copy_vectors
__TRK_copy_vectors:
/* 800C0268 000BD1A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C026C 000BD1AC  7C 08 02 A6 */	mflr r0
/* 800C0270 000BD1B0  3C 60 80 4F */	lis r3, lc_base@ha
/* 800C0274 000BD1B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0278 000BD1B8  38 63 48 00 */	addi r3, r3, lc_base@l
/* 800C027C 000BD1BC  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800C0280 000BD1C0  80 63 00 00 */	lwz r3, 0(r3)
/* 800C0284 000BD1C4  28 03 00 44 */	cmplwi r3, 0x44
/* 800C0288 000BD1C8  41 81 00 2C */	bgt .L_800C02B4
/* 800C028C 000BD1CC  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C0290 000BD1D0  28 00 00 44 */	cmplwi r0, 0x44
/* 800C0294 000BD1D4  40 81 00 20 */	ble .L_800C02B4
/* 800C0298 000BD1D8  3C 60 80 4F */	lis r3, gTRKCPUState@ha
/* 800C029C 000BD1DC  38 63 43 28 */	addi r3, r3, gTRKCPUState@l
/* 800C02A0 000BD1E0  80 03 02 38 */	lwz r0, 0x238(r3)
/* 800C02A4 000BD1E4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800C02A8 000BD1E8  41 82 00 0C */	beq .L_800C02B4
/* 800C02AC 000BD1EC  38 A0 00 44 */	li r5, 0x44
/* 800C02B0 000BD1F0  48 00 00 0C */	b .L_800C02BC
.L_800C02B4:
/* 800C02B4 000BD1F4  3C 60 80 00 */	lis r3, 0x80000044@ha
/* 800C02B8 000BD1F8  38 A3 00 44 */	addi r5, r3, 0x80000044@l
.L_800C02BC:
/* 800C02BC 000BD1FC  3C 80 80 4A */	lis r4, TRK_ISR_OFFSETS@ha
/* 800C02C0 000BD200  3C 60 80 4F */	lis r3, gTRKCPUState@ha
/* 800C02C4 000BD204  83 A5 00 00 */	lwz r29, 0(r5)
/* 800C02C8 000BD208  3B E4 68 E0 */	addi r31, r4, TRK_ISR_OFFSETS@l
/* 800C02CC 000BD20C  3B 83 43 28 */	addi r28, r3, gTRKCPUState@l
/* 800C02D0 000BD210  3B C0 00 00 */	li r30, 0
.L_800C02D4:
/* 800C02D4 000BD214  38 00 00 01 */	li r0, 1
/* 800C02D8 000BD218  7C 00 F0 30 */	slw r0, r0, r30
/* 800C02DC 000BD21C  7F A0 00 39 */	and. r0, r29, r0
/* 800C02E0 000BD220  41 82 00 90 */	beq .L_800C0370
/* 800C02E4 000BD224  2C 1E 00 04 */	cmpwi r30, 4
/* 800C02E8 000BD228  41 82 00 88 */	beq .L_800C0370
/* 800C02EC 000BD22C  3C 60 80 4F */	lis r3, lc_base@ha
/* 800C02F0 000BD230  80 DF 00 00 */	lwz r6, 0(r31)
/* 800C02F4 000BD234  38 63 48 00 */	addi r3, r3, lc_base@l
/* 800C02F8 000BD238  80 63 00 00 */	lwz r3, 0(r3)
/* 800C02FC 000BD23C  7C 06 18 40 */	cmplw r6, r3
/* 800C0300 000BD240  41 80 00 24 */	blt .L_800C0324
/* 800C0304 000BD244  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C0308 000BD248  7C 06 00 40 */	cmplw r6, r0
/* 800C030C 000BD24C  40 80 00 18 */	bge .L_800C0324
/* 800C0310 000BD250  80 1C 02 38 */	lwz r0, 0x238(r28)
/* 800C0314 000BD254  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800C0318 000BD258  41 82 00 0C */	beq .L_800C0324
/* 800C031C 000BD25C  7C DB 33 78 */	mr r27, r6
/* 800C0320 000BD260  48 00 00 2C */	b .L_800C034C
.L_800C0324:
/* 800C0324 000BD264  3C 00 7E 00 */	lis r0, 0x7e00
/* 800C0328 000BD268  7C 06 00 40 */	cmplw r6, r0
/* 800C032C 000BD26C  41 80 00 18 */	blt .L_800C0344
/* 800C0330 000BD270  3C 00 80 00 */	lis r0, 0x8000
/* 800C0334 000BD274  7C 06 00 40 */	cmplw r6, r0
/* 800C0338 000BD278  41 81 00 0C */	bgt .L_800C0344
/* 800C033C 000BD27C  7C DB 33 78 */	mr r27, r6
/* 800C0340 000BD280  48 00 00 0C */	b .L_800C034C
.L_800C0344:
/* 800C0344 000BD284  54 C0 00 BE */	clrlwi r0, r6, 2
/* 800C0348 000BD288  64 1B 80 00 */	oris r27, r0, 0x8000
.L_800C034C:
/* 800C034C 000BD28C  3C 80 80 00 */	lis r4, gTRKInterruptVectorTable@ha
/* 800C0350 000BD290  7F 63 DB 78 */	mr r3, r27
/* 800C0354 000BD294  38 04 31 54 */	addi r0, r4, gTRKInterruptVectorTable@l
/* 800C0358 000BD298  38 A0 01 00 */	li r5, 0x100
/* 800C035C 000BD29C  7C 80 32 14 */	add r4, r0, r6
/* 800C0360 000BD2A0  4B F4 2D D1 */	bl TRK_memcpy
/* 800C0364 000BD2A4  7F 63 DB 78 */	mr r3, r27
/* 800C0368 000BD2A8  38 80 01 00 */	li r4, 0x100
/* 800C036C 000BD2AC  4B FF DA 4D */	bl TRK_flush_cache
.L_800C0370:
/* 800C0370 000BD2B0  3B DE 00 01 */	addi r30, r30, 1
/* 800C0374 000BD2B4  3B FF 00 04 */	addi r31, r31, 4
/* 800C0378 000BD2B8  2C 1E 00 0E */	cmpwi r30, 0xe
/* 800C037C 000BD2BC  40 81 FF 58 */	ble .L_800C02D4
/* 800C0380 000BD2C0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800C0384 000BD2C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0388 000BD2C8  7C 08 03 A6 */	mtlr r0
/* 800C038C 000BD2CC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0390 000BD2D0  4E 80 00 20 */	blr 

.global TRKTargetTranslate
TRKTargetTranslate:
/* 800C0394 000BD2D4  3C 80 80 4F */	lis r4, lc_base@ha
/* 800C0398 000BD2D8  38 84 48 00 */	addi r4, r4, lc_base@l
/* 800C039C 000BD2DC  80 84 00 00 */	lwz r4, 0(r4)
/* 800C03A0 000BD2E0  7C 03 20 40 */	cmplw r3, r4
/* 800C03A4 000BD2E4  41 80 00 24 */	blt .L_800C03C8
/* 800C03A8 000BD2E8  38 04 40 00 */	addi r0, r4, 0x4000
/* 800C03AC 000BD2EC  7C 03 00 40 */	cmplw r3, r0
/* 800C03B0 000BD2F0  40 80 00 18 */	bge .L_800C03C8
/* 800C03B4 000BD2F4  3C 80 80 4F */	lis r4, gTRKCPUState@ha
/* 800C03B8 000BD2F8  38 84 43 28 */	addi r4, r4, gTRKCPUState@l
/* 800C03BC 000BD2FC  80 04 02 38 */	lwz r0, 0x238(r4)
/* 800C03C0 000BD300  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800C03C4 000BD304  4C 82 00 20 */	bnelr 
.L_800C03C8:
/* 800C03C8 000BD308  3C 00 7E 00 */	lis r0, 0x7e00
/* 800C03CC 000BD30C  7C 03 00 40 */	cmplw r3, r0
/* 800C03D0 000BD310  41 80 00 10 */	blt .L_800C03E0
/* 800C03D4 000BD314  3C 00 80 00 */	lis r0, 0x8000
/* 800C03D8 000BD318  7C 03 00 40 */	cmplw r3, r0
/* 800C03DC 000BD31C  4C 81 00 20 */	blelr 
.L_800C03E0:
/* 800C03E0 000BD320  54 60 00 BE */	clrlwi r0, r3, 2
/* 800C03E4 000BD324  64 03 80 00 */	oris r3, r0, 0x8000
/* 800C03E8 000BD328  4E 80 00 20 */	blr 

.global EnableMetroTRKInterrupts
EnableMetroTRKInterrupts:
/* 800C03EC 000BD32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C03F0 000BD330  7C 08 02 A6 */	mflr r0
/* 800C03F4 000BD334  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C03F8 000BD338  48 00 02 89 */	bl EnableEXI2Interrupts
/* 800C03FC 000BD33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0400 000BD340  7C 08 03 A6 */	mtlr r0
/* 800C0404 000BD344  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0408 000BD348  4E 80 00 20 */	blr 
