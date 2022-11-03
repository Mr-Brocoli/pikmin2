.include "macros.inc"
.section ._extab, "wa"  # 0x80005600 - 0x80005660
.global "@205"
"@205":
	.4byte 0x30080000
	.skip 0x4
.global "@210"
"@210":
	.4byte 0x20080000
	.skip 0x4
.global "@231"
"@231":
	.4byte 0x20080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv
.global "@239"
"@239":
	.4byte 0x18080000
	.skip 0x4
.global "@262"
"@262":
	.4byte 0x28080000
	.4byte 0x00000070
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv

.section ._exidx, "a"  # 0x80005660 - 0x800056C0
.global .L_80005660
.L_80005660:
	.4byte __destroy_new_array
	.4byte 0x0000007C
	.4byte "@205"
	.4byte __destroy_arr
	.4byte 0x00000078
	.4byte "@210"
	.4byte __construct_array
	.4byte 0x000000FC
	.4byte "@231"
	.4byte __dt__26__partial_array_destructorFv
	.4byte 0x000000B8
	.4byte "@239"
	.4byte __construct_new_array
	.4byte 0x00000104
	.4byte "@262"
.global .L_8000569C
.L_8000569C:
	.4byte .L_80005660
	.4byte .L_8000569C
	.4byte __destroy_new_array
	.4byte 0x000003AC
	.skip 0x10

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __destroy_new_array
__destroy_new_array:
/* 800C1748 000BE688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C174C 000BE68C  7C 08 02 A6 */	mflr r0
/* 800C1750 000BE690  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C1754 000BE694  BF 41 00 08 */	stmw r26, 8(r1)
/* 800C1758 000BE698  7C 7A 1B 79 */	or. r26, r3, r3
/* 800C175C 000BE69C  7C 9B 23 78 */	mr r27, r4
/* 800C1760 000BE6A0  41 82 00 50 */	beq .L_800C17B0
/* 800C1764 000BE6A4  28 1B 00 00 */	cmplwi r27, 0
/* 800C1768 000BE6A8  41 82 00 40 */	beq .L_800C17A8
/* 800C176C 000BE6AC  83 BA FF F0 */	lwz r29, -0x10(r26)
/* 800C1770 000BE6B0  3B E0 00 00 */	li r31, 0
/* 800C1774 000BE6B4  83 DA FF F4 */	lwz r30, -0xc(r26)
/* 800C1778 000BE6B8  7C 1D F1 D6 */	mullw r0, r29, r30
/* 800C177C 000BE6BC  7F 9A 02 14 */	add r28, r26, r0
/* 800C1780 000BE6C0  48 00 00 20 */	b .L_800C17A0
.L_800C1784:
/* 800C1784 000BE6C4  7F 9D E0 50 */	subf r28, r29, r28
/* 800C1788 000BE6C8  7F 6C DB 78 */	mr r12, r27
/* 800C178C 000BE6CC  7F 83 E3 78 */	mr r3, r28
/* 800C1790 000BE6D0  38 80 FF FF */	li r4, -1
/* 800C1794 000BE6D4  7D 89 03 A6 */	mtctr r12
/* 800C1798 000BE6D8  4E 80 04 21 */	bctrl 
/* 800C179C 000BE6DC  3B FF 00 01 */	addi r31, r31, 1
.L_800C17A0:
/* 800C17A0 000BE6E0  7C 1F F0 40 */	cmplw r31, r30
/* 800C17A4 000BE6E4  41 80 FF E0 */	blt .L_800C1784
.L_800C17A8:
/* 800C17A8 000BE6E8  38 7A FF F0 */	addi r3, r26, -16
/* 800C17AC 000BE6EC  4B F6 29 2D */	bl __dla__FPv
.L_800C17B0:
/* 800C17B0 000BE6F0  BB 41 00 08 */	lmw r26, 8(r1)
/* 800C17B4 000BE6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C17B8 000BE6F8  7C 08 03 A6 */	mtlr r0
/* 800C17BC 000BE6FC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C17C0 000BE700  4E 80 00 20 */	blr 

.global __destroy_arr
__destroy_arr:
/* 800C17C4 000BE704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C17C8 000BE708  7C 08 02 A6 */	mflr r0
/* 800C17CC 000BE70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C17D0 000BE710  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C17D4 000BE714  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C17D8 000BE718  7C DE 33 78 */	mr r30, r6
/* 800C17DC 000BE71C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C17E0 000BE720  7C BD 2B 78 */	mr r29, r5
/* 800C17E4 000BE724  7C 1D F1 D6 */	mullw r0, r29, r30
/* 800C17E8 000BE728  93 81 00 10 */	stw r28, 0x10(r1)
/* 800C17EC 000BE72C  7C 9C 23 78 */	mr r28, r4
/* 800C17F0 000BE730  7F E3 02 14 */	add r31, r3, r0
/* 800C17F4 000BE734  48 00 00 20 */	b .L_800C1814
.L_800C17F8:
/* 800C17F8 000BE738  7F FD F8 50 */	subf r31, r29, r31
/* 800C17FC 000BE73C  7F 8C E3 78 */	mr r12, r28
/* 800C1800 000BE740  7F E3 FB 78 */	mr r3, r31
/* 800C1804 000BE744  38 80 FF FF */	li r4, -1
/* 800C1808 000BE748  7D 89 03 A6 */	mtctr r12
/* 800C180C 000BE74C  4E 80 04 21 */	bctrl 
/* 800C1810 000BE750  3B DE FF FF */	addi r30, r30, -1
.L_800C1814:
/* 800C1814 000BE754  28 1E 00 00 */	cmplwi r30, 0
/* 800C1818 000BE758  40 82 FF E0 */	bne .L_800C17F8
/* 800C181C 000BE75C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C1820 000BE760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C1824 000BE764  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C1828 000BE768  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C182C 000BE76C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800C1830 000BE770  7C 08 03 A6 */	mtlr r0
/* 800C1834 000BE774  38 21 00 20 */	addi r1, r1, 0x20
/* 800C1838 000BE778  4E 80 00 20 */	blr 

.global __construct_array
__construct_array:
/* 800C183C 000BE77C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800C1840 000BE780  7C 08 02 A6 */	mflr r0
/* 800C1844 000BE784  90 01 00 34 */	stw r0, 0x34(r1)
/* 800C1848 000BE788  38 00 00 00 */	li r0, 0
/* 800C184C 000BE78C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800C1850 000BE790  7C 7F 1B 78 */	mr r31, r3
/* 800C1854 000BE794  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800C1858 000BE798  7C FE 3B 78 */	mr r30, r7
/* 800C185C 000BE79C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800C1860 000BE7A0  7C DD 33 78 */	mr r29, r6
/* 800C1864 000BE7A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C1868 000BE7A8  93 81 00 20 */	stw r28, 0x20(r1)
/* 800C186C 000BE7AC  7C 9C 23 78 */	mr r28, r4
/* 800C1870 000BE7B0  90 61 00 08 */	stw r3, 8(r1)
/* 800C1874 000BE7B4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800C1878 000BE7B8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800C187C 000BE7BC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800C1880 000BE7C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 800C1884 000BE7C4  48 00 00 28 */	b .L_800C18AC
.L_800C1888:
/* 800C1888 000BE7C8  7F 8C E3 78 */	mr r12, r28
/* 800C188C 000BE7CC  7F E3 FB 78 */	mr r3, r31
/* 800C1890 000BE7D0  38 80 00 01 */	li r4, 1
/* 800C1894 000BE7D4  7D 89 03 A6 */	mtctr r12
/* 800C1898 000BE7D8  4E 80 04 21 */	bctrl 
/* 800C189C 000BE7DC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800C18A0 000BE7E0  7F FF EA 14 */	add r31, r31, r29
/* 800C18A4 000BE7E4  38 03 00 01 */	addi r0, r3, 1
/* 800C18A8 000BE7E8  90 01 00 18 */	stw r0, 0x18(r1)
.L_800C18AC:
/* 800C18AC 000BE7EC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800C18B0 000BE7F0  7C 04 F0 40 */	cmplw r4, r30
/* 800C18B4 000BE7F4  41 80 FF D4 */	blt .L_800C1888
/* 800C18B8 000BE7F8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800C18BC 000BE7FC  7C 04 00 40 */	cmplw r4, r0
/* 800C18C0 000BE800  40 80 00 58 */	bge .L_800C1918
/* 800C18C4 000BE804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C18C8 000BE808  28 00 00 00 */	cmplwi r0, 0
/* 800C18CC 000BE80C  41 82 00 4C */	beq .L_800C1918
/* 800C18D0 000BE810  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C18D4 000BE814  80 61 00 08 */	lwz r3, 8(r1)
/* 800C18D8 000BE818  7C 00 21 D6 */	mullw r0, r0, r4
/* 800C18DC 000BE81C  7F E3 02 14 */	add r31, r3, r0
/* 800C18E0 000BE820  48 00 00 2C */	b .L_800C190C
.L_800C18E4:
/* 800C18E4 000BE824  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C18E8 000BE828  38 80 FF FF */	li r4, -1
/* 800C18EC 000BE82C  81 81 00 14 */	lwz r12, 0x14(r1)
/* 800C18F0 000BE830  7F E0 F8 50 */	subf r31, r0, r31
/* 800C18F4 000BE834  7F E3 FB 78 */	mr r3, r31
/* 800C18F8 000BE838  7D 89 03 A6 */	mtctr r12
/* 800C18FC 000BE83C  4E 80 04 21 */	bctrl 
/* 800C1900 000BE840  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800C1904 000BE844  38 03 FF FF */	addi r0, r3, -1
/* 800C1908 000BE848  90 01 00 18 */	stw r0, 0x18(r1)
.L_800C190C:
/* 800C190C 000BE84C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800C1910 000BE850  28 00 00 00 */	cmplwi r0, 0
/* 800C1914 000BE854  40 82 FF D0 */	bne .L_800C18E4
.L_800C1918:
/* 800C1918 000BE858  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800C191C 000BE85C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800C1920 000BE860  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800C1924 000BE864  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800C1928 000BE868  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800C192C 000BE86C  7C 08 03 A6 */	mtlr r0
/* 800C1930 000BE870  38 21 00 30 */	addi r1, r1, 0x30
/* 800C1934 000BE874  4E 80 00 20 */	blr 

.global __dt__26__partial_array_destructorFv
__dt__26__partial_array_destructorFv:
/* 800C1938 000BE878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C193C 000BE87C  7C 08 02 A6 */	mflr r0
/* 800C1940 000BE880  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C1944 000BE884  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C1948 000BE888  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C194C 000BE88C  7C 9E 23 78 */	mr r30, r4
/* 800C1950 000BE890  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C1954 000BE894  7C 7D 1B 79 */	or. r29, r3, r3
/* 800C1958 000BE898  41 82 00 78 */	beq .L_800C19D0
/* 800C195C 000BE89C  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 800C1960 000BE8A0  80 1D 00 08 */	lwz r0, 8(r29)
/* 800C1964 000BE8A4  7C 04 00 40 */	cmplw r4, r0
/* 800C1968 000BE8A8  40 80 00 58 */	bge .L_800C19C0
/* 800C196C 000BE8AC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800C1970 000BE8B0  28 00 00 00 */	cmplwi r0, 0
/* 800C1974 000BE8B4  41 82 00 4C */	beq .L_800C19C0
/* 800C1978 000BE8B8  80 1D 00 04 */	lwz r0, 4(r29)
/* 800C197C 000BE8BC  80 7D 00 00 */	lwz r3, 0(r29)
/* 800C1980 000BE8C0  7C 00 21 D6 */	mullw r0, r0, r4
/* 800C1984 000BE8C4  7F E3 02 14 */	add r31, r3, r0
/* 800C1988 000BE8C8  48 00 00 2C */	b .L_800C19B4
.L_800C198C:
/* 800C198C 000BE8CC  80 1D 00 04 */	lwz r0, 4(r29)
/* 800C1990 000BE8D0  38 80 FF FF */	li r4, -1
/* 800C1994 000BE8D4  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 800C1998 000BE8D8  7F E0 F8 50 */	subf r31, r0, r31
/* 800C199C 000BE8DC  7F E3 FB 78 */	mr r3, r31
/* 800C19A0 000BE8E0  7D 89 03 A6 */	mtctr r12
/* 800C19A4 000BE8E4  4E 80 04 21 */	bctrl 
/* 800C19A8 000BE8E8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800C19AC 000BE8EC  38 03 FF FF */	addi r0, r3, -1
/* 800C19B0 000BE8F0  90 1D 00 10 */	stw r0, 0x10(r29)
.L_800C19B4:
/* 800C19B4 000BE8F4  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 800C19B8 000BE8F8  28 00 00 00 */	cmplwi r0, 0
/* 800C19BC 000BE8FC  40 82 FF D0 */	bne .L_800C198C
.L_800C19C0:
/* 800C19C0 000BE900  7F C0 07 35 */	extsh. r0, r30
/* 800C19C4 000BE904  40 81 00 0C */	ble .L_800C19D0
/* 800C19C8 000BE908  7F A3 EB 78 */	mr r3, r29
/* 800C19CC 000BE90C  4B F6 26 E9 */	bl __dl__FPv
.L_800C19D0:
/* 800C19D0 000BE910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C19D4 000BE914  7F A3 EB 78 */	mr r3, r29
/* 800C19D8 000BE918  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C19DC 000BE91C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C19E0 000BE920  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C19E4 000BE924  7C 08 03 A6 */	mtlr r0
/* 800C19E8 000BE928  38 21 00 20 */	addi r1, r1, 0x20
/* 800C19EC 000BE92C  4E 80 00 20 */	blr 

.global __construct_new_array
__construct_new_array:
/* 800C19F0 000BE930  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800C19F4 000BE934  7C 08 02 A6 */	mflr r0
/* 800C19F8 000BE938  90 01 00 44 */	stw r0, 0x44(r1)
/* 800C19FC 000BE93C  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 800C1A00 000BE940  7C 7E 1B 79 */	or. r30, r3, r3
/* 800C1A04 000BE944  7C 9B 23 78 */	mr r27, r4
/* 800C1A08 000BE948  7C DC 33 78 */	mr r28, r6
/* 800C1A0C 000BE94C  7C FD 3B 78 */	mr r29, r7
/* 800C1A10 000BE950  41 82 00 CC */	beq .L_800C1ADC
/* 800C1A14 000BE954  93 9E 00 00 */	stw r28, 0(r30)
/* 800C1A18 000BE958  28 1B 00 00 */	cmplwi r27, 0
/* 800C1A1C 000BE95C  93 BE 00 04 */	stw r29, 4(r30)
/* 800C1A20 000BE960  3B DE 00 10 */	addi r30, r30, 0x10
/* 800C1A24 000BE964  41 82 00 B8 */	beq .L_800C1ADC
/* 800C1A28 000BE968  93 A1 00 18 */	stw r29, 0x18(r1)
/* 800C1A2C 000BE96C  38 00 00 00 */	li r0, 0
/* 800C1A30 000BE970  7F DF F3 78 */	mr r31, r30
/* 800C1A34 000BE974  93 C1 00 08 */	stw r30, 8(r1)
/* 800C1A38 000BE978  93 81 00 0C */	stw r28, 0xc(r1)
/* 800C1A3C 000BE97C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 800C1A40 000BE980  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800C1A44 000BE984  90 01 00 18 */	stw r0, 0x18(r1)
/* 800C1A48 000BE988  48 00 00 28 */	b .L_800C1A70
.L_800C1A4C:
/* 800C1A4C 000BE98C  7F 6C DB 78 */	mr r12, r27
/* 800C1A50 000BE990  7F E3 FB 78 */	mr r3, r31
/* 800C1A54 000BE994  38 80 00 01 */	li r4, 1
/* 800C1A58 000BE998  7D 89 03 A6 */	mtctr r12
/* 800C1A5C 000BE99C  4E 80 04 21 */	bctrl 
/* 800C1A60 000BE9A0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800C1A64 000BE9A4  7F FF E2 14 */	add r31, r31, r28
/* 800C1A68 000BE9A8  38 03 00 01 */	addi r0, r3, 1
/* 800C1A6C 000BE9AC  90 01 00 18 */	stw r0, 0x18(r1)
.L_800C1A70:
/* 800C1A70 000BE9B0  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800C1A74 000BE9B4  7C 04 E8 40 */	cmplw r4, r29
/* 800C1A78 000BE9B8  41 80 FF D4 */	blt .L_800C1A4C
/* 800C1A7C 000BE9BC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800C1A80 000BE9C0  7C 04 00 40 */	cmplw r4, r0
/* 800C1A84 000BE9C4  40 80 00 58 */	bge .L_800C1ADC
/* 800C1A88 000BE9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1A8C 000BE9CC  28 00 00 00 */	cmplwi r0, 0
/* 800C1A90 000BE9D0  41 82 00 4C */	beq .L_800C1ADC
/* 800C1A94 000BE9D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C1A98 000BE9D8  80 61 00 08 */	lwz r3, 8(r1)
/* 800C1A9C 000BE9DC  7C 00 21 D6 */	mullw r0, r0, r4
/* 800C1AA0 000BE9E0  7F E3 02 14 */	add r31, r3, r0
/* 800C1AA4 000BE9E4  48 00 00 2C */	b .L_800C1AD0
.L_800C1AA8:
/* 800C1AA8 000BE9E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C1AAC 000BE9EC  38 80 FF FF */	li r4, -1
/* 800C1AB0 000BE9F0  81 81 00 14 */	lwz r12, 0x14(r1)
/* 800C1AB4 000BE9F4  7F E0 F8 50 */	subf r31, r0, r31
/* 800C1AB8 000BE9F8  7F E3 FB 78 */	mr r3, r31
/* 800C1ABC 000BE9FC  7D 89 03 A6 */	mtctr r12
/* 800C1AC0 000BEA00  4E 80 04 21 */	bctrl 
/* 800C1AC4 000BEA04  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800C1AC8 000BEA08  38 03 FF FF */	addi r0, r3, -1
/* 800C1ACC 000BEA0C  90 01 00 18 */	stw r0, 0x18(r1)
.L_800C1AD0:
/* 800C1AD0 000BEA10  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800C1AD4 000BEA14  28 00 00 00 */	cmplwi r0, 0
/* 800C1AD8 000BEA18  40 82 FF D0 */	bne .L_800C1AA8
.L_800C1ADC:
/* 800C1ADC 000BEA1C  7F C3 F3 78 */	mr r3, r30
/* 800C1AE0 000BEA20  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 800C1AE4 000BEA24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800C1AE8 000BEA28  7C 08 03 A6 */	mtlr r0
/* 800C1AEC 000BEA2C  38 21 00 40 */	addi r1, r1, 0x40
/* 800C1AF0 000BEA30  4E 80 00 20 */	blr 
