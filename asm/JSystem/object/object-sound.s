.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte "__sinit_object-sound_cpp"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
lbl_8049F910:
	.4byte 0x00000000
	.4byte 0x00000080
	.4byte 0x00000010
lbl_8049F91C:
	.4byte 0x00000000
	.4byte 0x00000084
	.4byte 0x00000010
lbl_8049F928:
	.4byte 0x00000000
	.4byte 0x00000088
	.4byte 0x00000010
lbl_8049F934:
	.4byte 0x00000000
	.4byte 0x00000044
	.4byte 0x00000010
lbl_8049F940:
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000010
.global __vt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_
__vt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_:
	.4byte 0
	.4byte 0
	.4byte __cl__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_CFfPQ27JStudio8TAdaptor
	.4byte __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv
.global __vt__Q214JStudio_JAudio14TAdaptor_sound
__vt__Q214JStudio_JAudio14TAdaptor_sound:
	.4byte 0
	.4byte 0
	.4byte __dt__Q214JStudio_JAudio14TAdaptor_soundFv
	.4byte adaptor_do_prepare__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObject
	.4byte adaptor_do_begin__Q27JStudio8TAdaptorFPCQ27JStudio7TObject
	.4byte adaptor_do_end__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObject
	.4byte adaptor_do_update__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObjectUl
	.4byte adaptor_do_data__Q27JStudio8TAdaptorFPCQ27JStudio7TObjectPCvUlPCvUl
	.4byte adaptor_do_SOUND__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_BEGIN__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_BEGIN_FADE_IN__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_END__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_END_FADE_OUT__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_PARENT__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_PARENT_NODE__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_PARENT_ENABLE__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
	.4byte adaptor_do_LOCATED__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
# not part of the vtable. not sure what causes these null bytes.
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .bss  # 0x804EFC20 - 0x8051467C
.balign 8
.lcomm aoData$1256, 0x20, 4
.lcomm lbl_804EFEB0, 0xC, 4
.lcomm lbl_804EFEBC, 0xC, 4
.lcomm lbl_804EFEC8, 0xC, 4
.lcomm lbl_804EFED4, 0xC, 4
.lcomm lbl_804EFEE0, 0xC, 4
.lcomm lbl_804EFEEC, 0xC, 4
# object-sound.cpp
.comm saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound, 0x78, 4

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
init$1257:
	.skip 0x1

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_805164B0:
	.float 0.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q214JStudio_JAudio14TAdaptor_soundFP8JAIBasicPCQ26JStage7TSystem
__ct__Q214JStudio_JAudio14TAdaptor_soundFP8JAIBasicPCQ26JStage7TSystem:
/* 80014FD8 00011F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80014FDC 00011F1C  7C 08 02 A6 */	mflr r0
/* 80014FE0 00011F20  3C C0 80 4A */	lis r6, __vt__Q27JStudio8TAdaptor@ha
/* 80014FE4 00011F24  3C E0 80 4A */	lis r7, __vt__Q27JStudio14TAdaptor_sound@ha
/* 80014FE8 00011F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80014FEC 00011F2C  38 06 F4 68 */	addi r0, r6, __vt__Q27JStudio8TAdaptor@l
/* 80014FF0 00011F30  3C C0 80 00 */	lis r6, __ct__Q27JStudio14TVariableValueFv@ha
/* 80014FF4 00011F34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80014FF8 00011F38  7C BF 2B 78 */	mr r31, r5
/* 80014FFC 00011F3C  38 A7 F1 CC */	addi r5, r7, __vt__Q27JStudio14TAdaptor_sound@l
/* 80015000 00011F40  38 E0 00 0A */	li r7, 0xa
/* 80015004 00011F44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80015008 00011F48  7C 9E 23 78 */	mr r30, r4
/* 8001500C 00011F4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80015010 00011F50  7C 7D 1B 78 */	mr r29, r3
/* 80015014 00011F54  7F A8 EB 78 */	mr r8, r29
/* 80015018 00011F58  90 03 00 00 */	stw r0, 0(r3)
/* 8001501C 00011F5C  38 68 00 0C */	addi r3, r8, 0xc
/* 80015020 00011F60  38 00 00 0A */	li r0, 0xa
/* 80015024 00011F64  90 7D 00 04 */	stw r3, 4(r29)
/* 80015028 00011F68  90 1D 00 08 */	stw r0, 8(r29)
/* 8001502C 00011F6C  38 06 58 08 */	addi r0, r6, __ct__Q27JStudio14TVariableValueFv@l
/* 80015030 00011F70  7C 04 03 78 */	mr r4, r0
/* 80015034 00011F74  38 C0 00 14 */	li r6, 0x14
/* 80015038 00011F78  90 BD 00 00 */	stw r5, 0(r29)
/* 8001503C 00011F7C  38 A0 00 00 */	li r5, 0
/* 80015040 00011F80  48 0A C7 FD */	bl __construct_array
/* 80015044 00011F84  3C 60 80 4A */	lis r3, __vt__Q214JStudio_JAudio14TAdaptor_sound@ha
/* 80015048 00011F88  38 80 00 00 */	li r4, 0
/* 8001504C 00011F8C  38 63 F9 5C */	addi r3, r3, __vt__Q214JStudio_JAudio14TAdaptor_sound@l
/* 80015050 00011F90  38 00 FF FF */	li r0, -1
/* 80015054 00011F94  90 7D 00 00 */	stw r3, 0(r29)
/* 80015058 00011F98  7F A3 EB 78 */	mr r3, r29
/* 8001505C 00011F9C  93 DD 00 D4 */	stw r30, 0xd4(r29)
/* 80015060 00011FA0  90 9D 00 D8 */	stw r4, 0xd8(r29)
/* 80015064 00011FA4  90 1D 00 DC */	stw r0, 0xdc(r29)
/* 80015068 00011FA8  90 9D 00 E0 */	stw r4, 0xe0(r29)
/* 8001506C 00011FAC  90 9D 00 E4 */	stw r4, 0xe4(r29)
/* 80015070 00011FB0  90 9D 00 E8 */	stw r4, 0xe8(r29)
/* 80015074 00011FB4  93 FD 00 F8 */	stw r31, 0xf8(r29)
/* 80015078 00011FB8  90 9D 00 FC */	stw r4, 0xfc(r29)
/* 8001507C 00011FBC  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80015080 00011FC0  98 9D 01 04 */	stb r4, 0x104(r29)
/* 80015084 00011FC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80015088 00011FC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001508C 00011FCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80015090 00011FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015094 00011FD4  7C 08 03 A6 */	mtlr r0
/* 80015098 00011FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001509C 00011FDC  4E 80 00 20 */	blr 

.global __dt__Q214JStudio_JAudio14TAdaptor_soundFv
__dt__Q214JStudio_JAudio14TAdaptor_soundFv:
/* 800150A0 00011FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800150A4 00011FE4  7C 08 02 A6 */	mflr r0
/* 800150A8 00011FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800150AC 00011FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800150B0 00011FF0  7C 9F 23 78 */	mr r31, r4
/* 800150B4 00011FF4  93 C1 00 08 */	stw r30, 8(r1)
/* 800150B8 00011FF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800150BC 00011FFC  41 82 00 4C */	beq lbl_80015108
/* 800150C0 00012000  3C 60 80 4A */	lis r3, __vt__Q214JStudio_JAudio14TAdaptor_sound@ha
/* 800150C4 00012004  38 03 F9 5C */	addi r0, r3, __vt__Q214JStudio_JAudio14TAdaptor_sound@l
/* 800150C8 00012008  90 1E 00 00 */	stw r0, 0(r30)
/* 800150CC 0001200C  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 800150D0 00012010  28 03 00 00 */	cmplwi r3, 0
/* 800150D4 00012014  41 82 00 18 */	beq lbl_800150EC
/* 800150D8 00012018  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800150DC 0001201C  38 80 00 00 */	li r4, 0
/* 800150E0 00012020  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800150E4 00012024  7D 89 03 A6 */	mtctr r12
/* 800150E8 00012028  4E 80 04 21 */	bctrl 
lbl_800150EC:
/* 800150EC 0001202C  7F C3 F3 78 */	mr r3, r30
/* 800150F0 00012030  38 80 00 00 */	li r4, 0
/* 800150F4 00012034  4B FF A1 2D */	bl __dt__Q27JStudio14TAdaptor_soundFv
/* 800150F8 00012038  7F E0 07 35 */	extsh. r0, r31
/* 800150FC 0001203C  40 81 00 0C */	ble lbl_80015108
/* 80015100 00012040  7F C3 F3 78 */	mr r3, r30
/* 80015104 00012044  48 00 EF B1 */	bl __dl__FPv
lbl_80015108:
/* 80015108 00012048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001510C 0001204C  7F C3 F3 78 */	mr r3, r30
/* 80015110 00012050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015114 00012054  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015118 00012058  7C 08 03 A6 */	mtlr r0
/* 8001511C 0001205C  38 21 00 10 */	addi r1, r1, 0x10
/* 80015120 00012060  4E 80 00 20 */	blr 

.global adaptor_do_prepare__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObject
adaptor_do_prepare__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObject:
/* 80015124 00012064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015128 00012068  7C 08 02 A6 */	mflr r0
/* 8001512C 0001206C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015130 00012070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015134 00012074  7C 7F 1B 78 */	mr r31, r3
/* 80015138 00012078  88 0D 87 18 */	lbz r0, init$1257@sda21(r13)
/* 8001513C 0001207C  7C 00 07 75 */	extsb. r0, r0
/* 80015140 00012080  40 82 00 48 */	bne lbl_80015188
/* 80015144 00012084  3C 60 80 51 */	lis r3, __float_nan@ha
/* 80015148 00012088  38 C0 00 00 */	li r6, 0
/* 8001514C 0001208C  3C A0 80 4F */	lis r5, aoData$1256@ha
/* 80015150 00012090  C0 23 48 B0 */	lfs f1, __float_nan@l(r3)
/* 80015154 00012094  94 C5 FE 90 */	stwu r6, aoData$1256@l(r5)
/* 80015158 00012098  38 80 00 01 */	li r4, 1
/* 8001515C 0001209C  C0 02 81 50 */	lfs f0, lbl_805164B0@sda21(r2)
/* 80015160 000120A0  38 60 00 02 */	li r3, 2
/* 80015164 000120A4  38 00 FF FF */	li r0, -1
/* 80015168 000120A8  90 85 00 08 */	stw r4, 8(r5)
/* 8001516C 000120AC  D0 05 00 04 */	stfs f0, 4(r5)
/* 80015170 000120B0  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80015174 000120B4  90 65 00 10 */	stw r3, 0x10(r5)
/* 80015178 000120B8  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8001517C 000120BC  90 05 00 18 */	stw r0, 0x18(r5)
/* 80015180 000120C0  D0 25 00 1C */	stfs f1, 0x1c(r5)
/* 80015184 000120C4  98 8D 87 18 */	stb r4, init$1257@sda21(r13)
lbl_80015188:
/* 80015188 000120C8  3C 80 80 4F */	lis r4, aoData$1256@ha
/* 8001518C 000120CC  7F E3 FB 78 */	mr r3, r31
/* 80015190 000120D0  38 84 FE 90 */	addi r4, r4, aoData$1256@l
/* 80015194 000120D4  4B FF 80 E5 */	bl adaptor_setVariableValue_immediate__Q27JStudio8TAdaptorFPCQ37JStudio8TAdaptor27TSetVariableValue_immediate
/* 80015198 000120D8  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 8001519C 000120DC  38 03 6D 34 */	addi r0, r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l
/* 800151A0 000120E0  7C 04 03 78 */	mr r4, r0
/* 800151A4 000120E4  48 00 00 2C */	b lbl_800151D0
lbl_800151A8:
/* 800151A8 000120E8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800151AC 000120EC  80 7F 00 04 */	lwz r3, 4(r31)
/* 800151B0 000120F0  28 04 00 00 */	cmplwi r4, 0
/* 800151B4 000120F4  7C 63 02 14 */	add r3, r3, r0
/* 800151B8 000120F8  41 82 00 0C */	beq lbl_800151C4
/* 800151BC 000120FC  7C 80 23 78 */	mr r0, r4
/* 800151C0 00012100  48 00 00 08 */	b lbl_800151C8
lbl_800151C4:
/* 800151C4 00012104  38 0D 87 10 */	addi r0, r13, soOutput_none___Q27JStudio14TVariableValue@sda21
lbl_800151C8:
/* 800151C8 00012108  90 03 00 10 */	stw r0, 0x10(r3)
/* 800151CC 0001210C  38 84 00 14 */	addi r4, r4, 0x14
lbl_800151D0:
/* 800151D0 00012110  80 04 00 04 */	lwz r0, 4(r4)
/* 800151D4 00012114  2C 00 FF FF */	cmpwi r0, -1
/* 800151D8 00012118  40 82 FF D0 */	bne lbl_800151A8
/* 800151DC 0001211C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800151E0 00012120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800151E4 00012124  7C 08 03 A6 */	mtlr r0
/* 800151E8 00012128  38 21 00 10 */	addi r1, r1, 0x10
/* 800151EC 0001212C  4E 80 00 20 */	blr 

.global adaptor_do_end__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObject
adaptor_do_end__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObject:
/* 800151F0 00012130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800151F4 00012134  7C 08 02 A6 */	mflr r0
/* 800151F8 00012138  3C 80 C0 00 */	lis r4, 0xC0000C00@ha
/* 800151FC 0001213C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015200 00012140  38 04 0C 00 */	addi r0, r4, 0xC0000C00@l
/* 80015204 00012144  80 A3 00 DC */	lwz r5, 0xdc(r3)
/* 80015208 00012148  7C A0 00 39 */	and. r0, r5, r0
/* 8001520C 0001214C  40 82 00 2C */	bne lbl_80015238
/* 80015210 00012150  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 80015214 00012154  2C 00 00 03 */	cmpwi r0, 3
/* 80015218 00012158  40 82 00 20 */	bne lbl_80015238
/* 8001521C 0001215C  80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 80015220 00012160  28 03 00 00 */	cmplwi r3, 0
/* 80015224 00012164  41 82 00 14 */	beq lbl_80015238
/* 80015228 00012168  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8001522C 0001216C  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 80015230 00012170  7D 89 03 A6 */	mtctr r12
/* 80015234 00012174  4E 80 04 21 */	bctrl 
lbl_80015238:
/* 80015238 00012178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001523C 0001217C  7C 08 03 A6 */	mtlr r0
/* 80015240 00012180  38 21 00 10 */	addi r1, r1, 0x10
/* 80015244 00012184  4E 80 00 20 */	blr 

.global adaptor_do_update__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObjectUl
adaptor_do_update__Q214JStudio_JAudio14TAdaptor_soundFPCQ27JStudio7TObjectUl:
/* 80015248 00012188  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8001524C 0001218C  7C 08 02 A6 */	mflr r0
/* 80015250 00012190  3C A0 80 47 */	lis r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_sound@ha
/* 80015254 00012194  90 01 00 64 */	stw r0, 0x64(r1)
/* 80015258 00012198  38 A5 34 54 */	addi r5, r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_sound@l
/* 8001525C 0001219C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80015260 000121A0  7C 7F 1B 78 */	mr r31, r3
/* 80015264 000121A4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80015268 000121A8  83 C4 00 14 */	lwz r30, 0x14(r4)
/* 8001526C 000121AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80015270 000121B0  4B FF 80 BD */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 80015274 000121B4  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 80015278 000121B8  28 00 00 00 */	cmplwi r0, 0
/* 8001527C 000121BC  40 82 00 34 */	bne lbl_800152B0
/* 80015280 000121C0  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 80015284 000121C4  28 00 00 00 */	cmplwi r0, 0
/* 80015288 000121C8  40 82 00 0C */	bne lbl_80015294
/* 8001528C 000121CC  38 01 00 14 */	addi r0, r1, 0x14
/* 80015290 000121D0  48 00 00 18 */	b lbl_800152A8
lbl_80015294:
/* 80015294 000121D4  38 7E 00 98 */	addi r3, r30, 0x98
/* 80015298 000121D8  38 81 00 14 */	addi r4, r1, 0x14
/* 8001529C 000121DC  38 A1 00 08 */	addi r5, r1, 8
/* 800152A0 000121E0  48 0D 59 39 */	bl PSMTXMultVec
/* 800152A4 000121E4  38 01 00 08 */	addi r0, r1, 8
lbl_800152A8:
/* 800152A8 000121E8  7C 04 03 78 */	mr r4, r0
/* 800152AC 000121EC  48 00 00 50 */	b lbl_800152FC
lbl_800152B0:
/* 800152B0 000121F0  80 BF 00 FC */	lwz r5, 0xfc(r31)
/* 800152B4 000121F4  38 61 00 20 */	addi r3, r1, 0x20
/* 800152B8 000121F8  80 DF 01 00 */	lwz r6, 0x100(r31)
/* 800152BC 000121FC  38 81 00 14 */	addi r4, r1, 0x14
/* 800152C0 00012200  4B FF CB A5 */	bl transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
/* 800152C4 00012204  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800152C8 00012208  40 82 00 0C */	bne lbl_800152D4
/* 800152CC 0001220C  38 00 00 00 */	li r0, 0
/* 800152D0 00012210  48 00 00 20 */	b lbl_800152F0
lbl_800152D4:
/* 800152D4 00012214  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 800152D8 00012218  38 00 00 01 */	li r0, 1
/* 800152DC 0001221C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 800152E0 00012220  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800152E4 00012224  D0 41 00 08 */	stfs f2, 8(r1)
/* 800152E8 00012228  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800152EC 0001222C  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_800152F0:
/* 800152F0 00012230  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800152F4 00012234  41 82 00 88 */	beq lbl_8001537C
/* 800152F8 00012238  38 81 00 08 */	addi r4, r1, 8
lbl_800152FC:
/* 800152FC 0001223C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80015300 00012240  3C 60 C0 00 */	lis r3, 0xC0000C00@ha
/* 80015304 00012244  38 03 0C 00 */	addi r0, r3, 0xC0000C00@l
/* 80015308 00012248  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 8001530C 0001224C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80015310 00012250  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 80015314 00012254  C0 04 00 08 */	lfs f0, 8(r4)
/* 80015318 00012258  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 8001531C 0001225C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80015320 00012260  7C 60 00 39 */	and. r0, r3, r0
/* 80015324 00012264  40 82 00 58 */	bne lbl_8001537C
/* 80015328 00012268  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 8001532C 0001226C  2C 00 00 03 */	cmpwi r0, 3
/* 80015330 00012270  40 82 00 18 */	bne lbl_80015348
/* 80015334 00012274  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80015338 00012278  28 00 00 00 */	cmplwi r0, 0
/* 8001533C 0001227C  40 82 00 0C */	bne lbl_80015348
/* 80015340 00012280  38 00 00 00 */	li r0, 0
/* 80015344 00012284  90 1F 00 E0 */	stw r0, 0xe0(r31)
lbl_80015348:
/* 80015348 00012288  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 8001534C 0001228C  2C 00 00 00 */	cmpwi r0, 0
/* 80015350 00012290  41 82 00 2C */	beq lbl_8001537C
/* 80015354 00012294  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80015358 00012298  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 8001535C 0001229C  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 80015360 000122A0  39 00 00 00 */	li r8, 0
/* 80015364 000122A4  80 DF 00 E8 */	lwz r6, 0xe8(r31)
/* 80015368 000122A8  39 20 00 04 */	li r9, 4
/* 8001536C 000122AC  80 FF 00 E4 */	lwz r7, 0xe4(r31)
/* 80015370 000122B0  48 00 04 FD */	bl "startSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc"
/* 80015374 000122B4  38 00 00 00 */	li r0, 0
/* 80015378 000122B8  90 1F 00 E4 */	stw r0, 0xe4(r31)
lbl_8001537C:
/* 8001537C 000122BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80015380 000122C0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80015384 000122C4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80015388 000122C8  7C 08 03 A6 */	mtlr r0
/* 8001538C 000122CC  38 21 00 60 */	addi r1, r1, 0x60
/* 80015390 000122D0  4E 80 00 20 */	blr 

.global adaptor_do_SOUND__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_SOUND__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015394 000122D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015398 000122D8  7C 08 02 A6 */	mflr r0
/* 8001539C 000122DC  2C 04 00 19 */	cmpwi r4, 0x19
/* 800153A0 000122E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800153A4 000122E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800153A8 000122E8  7C 7F 1B 78 */	mr r31, r3
/* 800153AC 000122EC  41 82 00 08 */	beq lbl_800153B4
/* 800153B0 000122F0  48 00 00 74 */	b lbl_80015424
lbl_800153B4:
/* 800153B4 000122F4  80 05 00 00 */	lwz r0, 0(r5)
/* 800153B8 000122F8  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 800153BC 000122FC  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 800153C0 00012300  54 00 00 03 */	rlwinm. r0, r0, 0, 0, 1
/* 800153C4 00012304  41 82 00 60 */	beq lbl_80015424
/* 800153C8 00012308  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 800153CC 0001230C  28 03 00 00 */	cmplwi r3, 0
/* 800153D0 00012310  41 82 00 20 */	beq lbl_800153F0
/* 800153D4 00012314  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800153D8 00012318  38 80 00 00 */	li r4, 0
/* 800153DC 0001231C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800153E0 00012320  7D 89 03 A6 */	mtctr r12
/* 800153E4 00012324  4E 80 04 21 */	bctrl 
/* 800153E8 00012328  38 00 00 00 */	li r0, 0
/* 800153EC 0001232C  90 1F 00 E0 */	stw r0, 0xe0(r31)
lbl_800153F0:
/* 800153F0 00012330  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 800153F4 00012334  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 800153F8 00012338  80 9F 00 DC */	lwz r4, 0xdc(r31)
/* 800153FC 0001233C  38 E0 00 00 */	li r7, 0
/* 80015400 00012340  80 DF 00 E8 */	lwz r6, 0xe8(r31)
/* 80015404 00012344  39 00 00 00 */	li r8, 0
/* 80015408 00012348  39 20 00 04 */	li r9, 4
/* 8001540C 0001234C  48 00 04 15 */	bl "prepareSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc"
/* 80015410 00012350  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80015414 00012354  28 00 00 00 */	cmplwi r0, 0
/* 80015418 00012358  41 82 00 0C */	beq lbl_80015424
/* 8001541C 0001235C  38 00 00 01 */	li r0, 1
/* 80015420 00012360  90 1F 00 E0 */	stw r0, 0xe0(r31)
lbl_80015424:
/* 80015424 00012364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015428 00012368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001542C 0001236C  7C 08 03 A6 */	mtlr r0
/* 80015430 00012370  38 21 00 10 */	addi r1, r1, 0x10
/* 80015434 00012374  4E 80 00 20 */	blr 

.global adaptor_do_BEGIN__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_BEGIN__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015438 00012378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001543C 0001237C  7C 08 02 A6 */	mflr r0
/* 80015440 00012380  2C 04 00 01 */	cmpwi r4, 1
/* 80015444 00012384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015448 00012388  41 82 00 08 */	beq lbl_80015450
/* 8001544C 0001238C  48 00 00 0C */	b lbl_80015458
lbl_80015450:
/* 80015450 00012390  38 80 00 00 */	li r4, 0
/* 80015454 00012394  48 00 02 45 */	bl beginSound_fadeIn___Q214JStudio_JAudio14TAdaptor_soundFUl
lbl_80015458:
/* 80015458 00012398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001545C 0001239C  7C 08 03 A6 */	mtlr r0
/* 80015460 000123A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80015464 000123A4  4E 80 00 20 */	blr 

.global adaptor_do_BEGIN_FADE_IN__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_BEGIN_FADE_IN__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015468 000123A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001546C 000123AC  7C 08 02 A6 */	mflr r0
/* 80015470 000123B0  2C 04 00 02 */	cmpwi r4, 2
/* 80015474 000123B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015478 000123B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001547C 000123BC  7C 7F 1B 78 */	mr r31, r3
/* 80015480 000123C0  41 82 00 08 */	beq lbl_80015488
/* 80015484 000123C4  48 00 00 18 */	b lbl_8001549C
lbl_80015488:
/* 80015488 000123C8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8001548C 000123CC  48 0A C6 C1 */	bl __cvt_fp2unsigned
/* 80015490 000123D0  7C 64 1B 78 */	mr r4, r3
/* 80015494 000123D4  7F E3 FB 78 */	mr r3, r31
/* 80015498 000123D8  48 00 02 01 */	bl beginSound_fadeIn___Q214JStudio_JAudio14TAdaptor_soundFUl
lbl_8001549C:
/* 8001549C 000123DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800154A0 000123E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800154A4 000123E4  7C 08 03 A6 */	mtlr r0
/* 800154A8 000123E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800154AC 000123EC  4E 80 00 20 */	blr 

.global adaptor_do_END__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_END__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 800154B0 000123F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800154B4 000123F4  7C 08 02 A6 */	mflr r0
/* 800154B8 000123F8  2C 04 00 01 */	cmpwi r4, 1
/* 800154BC 000123FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800154C0 00012400  41 82 00 08 */	beq lbl_800154C8
/* 800154C4 00012404  48 00 00 0C */	b lbl_800154D0
lbl_800154C8:
/* 800154C8 00012408  38 80 00 00 */	li r4, 0
/* 800154CC 0001240C  48 00 02 A5 */	bl endSound_fadeOut___Q214JStudio_JAudio14TAdaptor_soundFUl
lbl_800154D0:
/* 800154D0 00012410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800154D4 00012414  7C 08 03 A6 */	mtlr r0
/* 800154D8 00012418  38 21 00 10 */	addi r1, r1, 0x10
/* 800154DC 0001241C  4E 80 00 20 */	blr 

.global adaptor_do_END_FADE_OUT__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_END_FADE_OUT__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 800154E0 00012420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800154E4 00012424  7C 08 02 A6 */	mflr r0
/* 800154E8 00012428  2C 04 00 02 */	cmpwi r4, 2
/* 800154EC 0001242C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800154F0 00012430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800154F4 00012434  7C 7F 1B 78 */	mr r31, r3
/* 800154F8 00012438  41 82 00 08 */	beq lbl_80015500
/* 800154FC 0001243C  48 00 00 18 */	b lbl_80015514
lbl_80015500:
/* 80015500 00012440  C0 25 00 00 */	lfs f1, 0(r5)
/* 80015504 00012444  48 0A C6 49 */	bl __cvt_fp2unsigned
/* 80015508 00012448  7C 64 1B 78 */	mr r4, r3
/* 8001550C 0001244C  7F E3 FB 78 */	mr r3, r31
/* 80015510 00012450  48 00 02 61 */	bl endSound_fadeOut___Q214JStudio_JAudio14TAdaptor_soundFUl
lbl_80015514:
/* 80015514 00012454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015518 00012458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001551C 0001245C  7C 08 03 A6 */	mtlr r0
/* 80015520 00012460  38 21 00 10 */	addi r1, r1, 0x10
/* 80015524 00012464  4E 80 00 20 */	blr 

.global adaptor_do_PARENT__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_PARENT__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015528 00012468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001552C 0001246C  7C 08 02 A6 */	mflr r0
/* 80015530 00012470  2C 04 00 18 */	cmpwi r4, 0x18
/* 80015534 00012474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015538 00012478  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001553C 0001247C  7C 7F 1B 78 */	mr r31, r3
/* 80015540 00012480  41 82 00 08 */	beq lbl_80015548
/* 80015544 00012484  48 00 00 38 */	b lbl_8001557C
lbl_80015548:
/* 80015548 00012488  38 00 00 00 */	li r0, 0
/* 8001554C 0001248C  38 81 00 08 */	addi r4, r1, 8
/* 80015550 00012490  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 80015554 00012494  38 C0 00 00 */	li r6, 0
/* 80015558 00012498  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 8001555C 0001249C  81 83 00 00 */	lwz r12, 0(r3)
/* 80015560 000124A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80015564 000124A4  7D 89 03 A6 */	mtctr r12
/* 80015568 000124A8  4E 80 04 21 */	bctrl 
/* 8001556C 000124AC  2C 03 00 00 */	cmpwi r3, 0
/* 80015570 000124B0  40 82 00 0C */	bne lbl_8001557C
/* 80015574 000124B4  80 01 00 08 */	lwz r0, 8(r1)
/* 80015578 000124B8  90 1F 00 FC */	stw r0, 0xfc(r31)
lbl_8001557C:
/* 8001557C 000124BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015580 000124C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80015584 000124C4  7C 08 03 A6 */	mtlr r0
/* 80015588 000124C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001558C 000124CC  4E 80 00 20 */	blr 

.global adaptor_do_PARENT_NODE__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_PARENT_NODE__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015590 000124D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015594 000124D4  7C 08 02 A6 */	mflr r0
/* 80015598 000124D8  2C 04 00 19 */	cmpwi r4, 0x19
/* 8001559C 000124DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800155A0 000124E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800155A4 000124E4  7C 7F 1B 78 */	mr r31, r3
/* 800155A8 000124E8  41 82 00 4C */	beq lbl_800155F4
/* 800155AC 000124EC  40 80 00 50 */	bge lbl_800155FC
/* 800155B0 000124F0  2C 04 00 18 */	cmpwi r4, 0x18
/* 800155B4 000124F4  40 80 00 08 */	bge lbl_800155BC
/* 800155B8 000124F8  48 00 00 44 */	b lbl_800155FC
lbl_800155BC:
/* 800155BC 000124FC  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 800155C0 00012500  28 03 00 00 */	cmplwi r3, 0
/* 800155C4 00012504  41 82 00 38 */	beq lbl_800155FC
/* 800155C8 00012508  81 83 00 00 */	lwz r12, 0(r3)
/* 800155CC 0001250C  7C A4 2B 78 */	mr r4, r5
/* 800155D0 00012510  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800155D4 00012514  7D 89 03 A6 */	mtctr r12
/* 800155D8 00012518  4E 80 04 21 */	bctrl 
/* 800155DC 0001251C  90 7F 01 00 */	stw r3, 0x100(r31)
/* 800155E0 00012520  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 800155E4 00012524  3C 03 00 01 */	addis r0, r3, 1
/* 800155E8 00012528  28 00 FF FF */	cmplwi r0, 0xffff
/* 800155EC 0001252C  40 82 00 10 */	bne lbl_800155FC
/* 800155F0 00012530  48 00 00 0C */	b lbl_800155FC
lbl_800155F4:
/* 800155F4 00012534  80 05 00 00 */	lwz r0, 0(r5)
/* 800155F8 00012538  90 1F 01 00 */	stw r0, 0x100(r31)
lbl_800155FC:
/* 800155FC 0001253C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015600 00012540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015604 00012544  7C 08 03 A6 */	mtlr r0
/* 80015608 00012548  38 21 00 10 */	addi r1, r1, 0x10
/* 8001560C 0001254C  4E 80 00 20 */	blr 

.global adaptor_do_PARENT_ENABLE__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_PARENT_ENABLE__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015610 00012550  2C 04 00 02 */	cmpwi r4, 2
/* 80015614 00012554  4C 82 00 20 */	bnelr 
/* 80015618 00012558  80 85 00 00 */	lwz r4, 0(r5)
/* 8001561C 0001255C  7C 04 00 D0 */	neg r0, r4
/* 80015620 00012560  7C 00 23 78 */	or r0, r0, r4
/* 80015624 00012564  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80015628 00012568  98 03 01 04 */	stb r0, 0x104(r3)
/* 8001562C 0001256C  4E 80 00 20 */	blr 

.global adaptor_do_LOCATED__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl
adaptor_do_LOCATED__Q214JStudio_JAudio14TAdaptor_soundFQ37JStudio4data15TEOperationDataPCvUl:
/* 80015630 00012570  2C 04 00 02 */	cmpwi r4, 2
/* 80015634 00012574  4C 82 00 20 */	bnelr 
/* 80015638 00012578  80 85 00 00 */	lwz r4, 0(r5)
/* 8001563C 0001257C  38 00 00 00 */	li r0, 0
/* 80015640 00012580  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 80015644 00012584  28 04 00 00 */	cmplwi r4, 0
/* 80015648 00012588  4D 82 00 20 */	beqlr 
/* 8001564C 0001258C  38 03 00 EC */	addi r0, r3, 0xec
/* 80015650 00012590  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 80015654 00012594  4E 80 00 20 */	blr 

.global __cl__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_CFfPQ27JStudio8TAdaptor
__cl__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_CFfPQ27JStudio8TAdaptor:
/* 80015658 00012598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001565C 0001259C  7C 08 02 A6 */	mflr r0
/* 80015660 000125A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015664 000125A4  80 04 00 D8 */	lwz r0, 0xd8(r4)
/* 80015668 000125A8  7C 64 1B 78 */	mr r4, r3
/* 8001566C 000125AC  28 00 00 00 */	cmplwi r0, 0
/* 80015670 000125B0  41 82 00 18 */	beq lbl_80015688
/* 80015674 000125B4  7C 03 03 78 */	mr r3, r0
/* 80015678 000125B8  39 84 00 08 */	addi r12, r4, 8
/* 8001567C 000125BC  38 80 00 00 */	li r4, 0
/* 80015680 000125C0  48 0A C4 A5 */	bl __ptmf_scall
/* 80015684 000125C4  60 00 00 00 */	nop 
lbl_80015688:
/* 80015688 000125C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001568C 000125CC  7C 08 03 A6 */	mtlr r0
/* 80015690 000125D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80015694 000125D4  4E 80 00 20 */	blr 

.global beginSound_fadeIn___Q214JStudio_JAudio14TAdaptor_soundFUl
beginSound_fadeIn___Q214JStudio_JAudio14TAdaptor_soundFUl:
/* 80015698 000125D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001569C 000125DC  7C 08 02 A6 */	mflr r0
/* 800156A0 000125E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800156A4 000125E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800156A8 000125E8  7C 9F 23 78 */	mr r31, r4
/* 800156AC 000125EC  93 C1 00 08 */	stw r30, 8(r1)
/* 800156B0 000125F0  7C 7E 1B 78 */	mr r30, r3
/* 800156B4 000125F4  93 E3 00 E4 */	stw r31, 0xe4(r3)
/* 800156B8 000125F8  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 800156BC 000125FC  54 00 00 03 */	rlwinm. r0, r0, 0, 0, 1
/* 800156C0 00012600  41 82 00 2C */	beq lbl_800156EC
/* 800156C4 00012604  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 800156C8 00012608  28 03 00 00 */	cmplwi r3, 0
/* 800156CC 0001260C  41 82 00 8C */	beq lbl_80015758
/* 800156D0 00012610  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800156D4 00012614  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800156D8 00012618  7D 89 03 A6 */	mtctr r12
/* 800156DC 0001261C  4E 80 04 21 */	bctrl 
/* 800156E0 00012620  38 00 00 02 */	li r0, 2
/* 800156E4 00012624  90 1E 00 E0 */	stw r0, 0xe0(r30)
/* 800156E8 00012628  48 00 00 70 */	b lbl_80015758
lbl_800156EC:
/* 800156EC 0001262C  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 800156F0 00012630  28 03 00 00 */	cmplwi r3, 0
/* 800156F4 00012634  41 82 00 20 */	beq lbl_80015714
/* 800156F8 00012638  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800156FC 0001263C  38 80 00 00 */	li r4, 0
/* 80015700 00012640  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80015704 00012644  7D 89 03 A6 */	mtctr r12
/* 80015708 00012648  4E 80 04 21 */	bctrl 
/* 8001570C 0001264C  38 00 00 00 */	li r0, 0
/* 80015710 00012650  90 1E 00 E0 */	stw r0, 0xe0(r30)
lbl_80015714:
/* 80015714 00012654  3C 60 C0 00 */	lis r3, 0xC0000C00@ha
/* 80015718 00012658  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 8001571C 0001265C  38 03 0C 00 */	addi r0, r3, 0xC0000C00@l
/* 80015720 00012660  7C 80 00 39 */	and. r0, r4, r0
/* 80015724 00012664  41 82 00 2C */	beq lbl_80015750
/* 80015728 00012668  80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 8001572C 0001266C  7F E7 FB 78 */	mr r7, r31
/* 80015730 00012670  80 DE 00 E8 */	lwz r6, 0xe8(r30)
/* 80015734 00012674  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 80015738 00012678  39 00 00 00 */	li r8, 0
/* 8001573C 0001267C  39 20 00 04 */	li r9, 4
/* 80015740 00012680  48 00 01 2D */	bl "startSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc"
/* 80015744 00012684  80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 80015748 00012688  28 00 00 00 */	cmplwi r0, 0
/* 8001574C 0001268C  41 82 00 0C */	beq lbl_80015758
lbl_80015750:
/* 80015750 00012690  38 00 00 02 */	li r0, 2
/* 80015754 00012694  90 1E 00 E0 */	stw r0, 0xe0(r30)
lbl_80015758:
/* 80015758 00012698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001575C 0001269C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015760 000126A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015764 000126A4  7C 08 03 A6 */	mtlr r0
/* 80015768 000126A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001576C 000126AC  4E 80 00 20 */	blr 

.global endSound_fadeOut___Q214JStudio_JAudio14TAdaptor_soundFUl
endSound_fadeOut___Q214JStudio_JAudio14TAdaptor_soundFUl:
/* 80015770 000126B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015774 000126B4  7C 08 02 A6 */	mflr r0
/* 80015778 000126B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001577C 000126BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015780 000126C0  7C 7F 1B 78 */	mr r31, r3
/* 80015784 000126C4  90 83 00 E4 */	stw r4, 0xe4(r3)
/* 80015788 000126C8  80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 8001578C 000126CC  28 03 00 00 */	cmplwi r3, 0
/* 80015790 000126D0  41 82 00 1C */	beq lbl_800157AC
/* 80015794 000126D4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80015798 000126D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8001579C 000126DC  7D 89 03 A6 */	mtctr r12
/* 800157A0 000126E0  4E 80 04 21 */	bctrl 
/* 800157A4 000126E4  38 00 00 03 */	li r0, 3
/* 800157A8 000126E8  90 1F 00 E0 */	stw r0, 0xe0(r31)
lbl_800157AC:
/* 800157AC 000126EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800157B0 000126F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800157B4 000126F4  7C 08 03 A6 */	mtlr r0
/* 800157B8 000126F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800157BC 000126FC  4E 80 00 20 */	blr 

.global __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv
__dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv:
/* 800157C0 00012700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800157C4 00012704  7C 08 02 A6 */	mflr r0
/* 800157C8 00012708  90 01 00 14 */	stw r0, 0x14(r1)
/* 800157CC 0001270C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800157D0 00012710  7C 9F 23 78 */	mr r31, r4
/* 800157D4 00012714  93 C1 00 08 */	stw r30, 8(r1)
/* 800157D8 00012718  7C 7E 1B 79 */	or. r30, r3, r3
/* 800157DC 0001271C  41 82 00 28 */	beq lbl_80015804
/* 800157E0 00012720  3C A0 80 4A */	lis r5, __vt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_@ha
/* 800157E4 00012724  38 80 00 00 */	li r4, 0
/* 800157E8 00012728  38 05 F9 4C */	addi r0, r5, __vt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_@l
/* 800157EC 0001272C  90 1E 00 00 */	stw r0, 0(r30)
/* 800157F0 00012730  4B FF 78 79 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 800157F4 00012734  7F E0 07 35 */	extsh. r0, r31
/* 800157F8 00012738  40 81 00 0C */	ble lbl_80015804
/* 800157FC 0001273C  7F C3 F3 78 */	mr r3, r30
/* 80015800 00012740  48 00 E8 B5 */	bl __dl__FPv
lbl_80015804:
/* 80015804 00012744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015808 00012748  7F C3 F3 78 */	mr r3, r30
/* 8001580C 0001274C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015810 00012750  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015814 00012754  7C 08 03 A6 */	mtlr r0
/* 80015818 00012758  38 21 00 10 */	addi r1, r1, 0x10
/* 8001581C 0001275C  4E 80 00 20 */	blr 

.global "prepareSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc"
"prepareSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc":
/* 80015820 00012760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015824 00012764  7C 08 02 A6 */	mflr r0
/* 80015828 00012768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001582C 0001276C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015830 00012770  7C BF 2B 78 */	mr r31, r5
/* 80015834 00012774  48 00 00 39 */	bl "startSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc"
/* 80015838 00012778  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001583C 0001277C  28 03 00 00 */	cmplwi r3, 0
/* 80015840 00012780  41 82 00 18 */	beq lbl_80015858
/* 80015844 00012784  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80015848 00012788  38 80 00 01 */	li r4, 1
/* 8001584C 0001278C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80015850 00012790  7D 89 03 A6 */	mtctr r12
/* 80015854 00012794  4E 80 04 21 */	bctrl 
lbl_80015858:
/* 80015858 00012798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001585C 0001279C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015860 000127A0  7C 08 03 A6 */	mtlr r0
/* 80015864 000127A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80015868 000127A8  4E 80 00 20 */	blr 

.global "startSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc"
"startSoundVecT<8JAISound>__8JAIBasicFUlPP8JAISoundP3VecUlUlUc":
/* 8001586C 000127AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015870 000127B0  7C 08 02 A6 */	mflr r0
/* 80015874 000127B4  28 06 00 00 */	cmplwi r6, 0
/* 80015878 000127B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001587C 000127BC  90 C1 00 08 */	stw r6, 8(r1)
/* 80015880 000127C0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80015884 000127C4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80015888 000127C8  91 01 00 14 */	stw r8, 0x14(r1)
/* 8001588C 000127CC  41 82 00 10 */	beq lbl_8001589C
/* 80015890 000127D0  3C 06 00 01 */	addis r0, r6, 1
/* 80015894 000127D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80015898 000127D8  40 82 00 10 */	bne lbl_800158A8
lbl_8001589C:
/* 8001589C 000127DC  38 00 00 01 */	li r0, 1
/* 800158A0 000127E0  98 01 00 18 */	stb r0, 0x18(r1)
/* 800158A4 000127E4  48 00 00 0C */	b lbl_800158B0
lbl_800158A8:
/* 800158A8 000127E8  38 00 00 00 */	li r0, 0
/* 800158AC 000127EC  98 01 00 18 */	stb r0, 0x18(r1)
lbl_800158B0:
/* 800158B0 000127F0  7D 28 4B 78 */	mr r8, r9
/* 800158B4 000127F4  38 C1 00 08 */	addi r6, r1, 8
/* 800158B8 000127F8  48 00 00 15 */	bl "startSoundActorT<8JAISound>__8JAIBasicFUlPP8JAISoundPQ27JAInter5ActorUlUc"
/* 800158BC 000127FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800158C0 00012800  7C 08 03 A6 */	mtlr r0
/* 800158C4 00012804  38 21 00 20 */	addi r1, r1, 0x20
/* 800158C8 00012808  4E 80 00 20 */	blr 

.global "startSoundActorT<8JAISound>__8JAIBasicFUlPP8JAISoundPQ27JAInter5ActorUlUc"
"startSoundActorT<8JAISound>__8JAIBasicFUlPP8JAISoundPQ27JAInter5ActorUlUc":
/* 800158CC 0001280C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800158D0 00012810  7C 08 02 A6 */	mflr r0
/* 800158D4 00012814  90 01 00 24 */	stw r0, 0x24(r1)
/* 800158D8 00012818  BF 41 00 08 */	stmw r26, 8(r1)
/* 800158DC 0001281C  7C 9B 23 78 */	mr r27, r4
/* 800158E0 00012820  7C 7A 1B 78 */	mr r26, r3
/* 800158E4 00012824  7C BC 2B 78 */	mr r28, r5
/* 800158E8 00012828  7C DD 33 78 */	mr r29, r6
/* 800158EC 0001282C  7C FE 3B 78 */	mr r30, r7
/* 800158F0 00012830  7D 1F 43 78 */	mr r31, r8
/* 800158F4 00012834  7F 63 DB 78 */	mr r3, r27
/* 800158F8 00012838  48 0A 1C 21 */	bl getInfoPointer__Q27JAInter10SoundTableFUl
/* 800158FC 0001283C  7C 69 1B 79 */	or. r9, r3, r3
/* 80015900 00012840  41 82 00 20 */	beq lbl_80015920
/* 80015904 00012844  7F 43 D3 78 */	mr r3, r26
/* 80015908 00012848  7F 64 DB 78 */	mr r4, r27
/* 8001590C 0001284C  7F 85 E3 78 */	mr r5, r28
/* 80015910 00012850  7F A6 EB 78 */	mr r6, r29
/* 80015914 00012854  7F C7 F3 78 */	mr r7, r30
/* 80015918 00012858  7F E8 FB 78 */	mr r8, r31
/* 8001591C 0001285C  48 09 6E 61 */	bl startSoundBasic__8JAIBasicFUlPP8JAISoundPQ27JAInter5ActorUlUcPQ27JAInter9SoundInfo
lbl_80015920:
/* 80015920 00012860  BB 41 00 08 */	lmw r26, 8(r1)
/* 80015924 00012864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015928 00012868  7C 08 03 A6 */	mtlr r0
/* 8001592C 0001286C  38 21 00 20 */	addi r1, r1, 0x20
/* 80015930 00012870  4E 80 00 20 */	blr 

"__sinit_object-sound_cpp": # static initializer
/* 80015934 00012874  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80015938 00012878  7C 08 02 A6 */	mflr r0
/* 8001593C 0001287C  3C 80 80 4A */	lis r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 80015940 00012880  3C 60 80 4A */	lis r3, lbl_8049F910@ha
/* 80015944 00012884  90 01 00 94 */	stw r0, 0x94(r1)
/* 80015948 00012888  38 A4 F4 98 */	addi r5, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 8001594C 0001288C  3C 80 80 01 */	lis r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@ha
/* 80015950 00012890  3D 20 80 4F */	lis r9, aoData$1256@ha
/* 80015954 00012894  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80015958 00012898  3B E3 F9 10 */	addi r31, r3, lbl_8049F910@l
/* 8001595C 0001289C  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 80015960 000128A0  39 00 00 05 */	li r8, 5
/* 80015964 000128A4  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80015968 000128A8  3B C9 FE 90 */	addi r30, r9, aoData$1256@l
/* 8001596C 000128AC  39 3F 00 3C */	addi r9, r31, 0x3c
/* 80015970 000128B0  38 84 57 C0 */	addi r4, r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@l
/* 80015974 000128B4  94 A3 6D 34 */	stwu r5, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l(r3)
/* 80015978 000128B8  80 FF 00 00 */	lwz r7, 0(r31)
/* 8001597C 000128BC  80 DF 00 04 */	lwz r6, 4(r31)
/* 80015980 000128C0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80015984 000128C4  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 80015988 000128C8  38 BE 00 20 */	addi r5, r30, 0x20
/* 8001598C 000128CC  91 21 00 6C */	stw r9, 0x6c(r1)
/* 80015990 000128D0  91 01 00 70 */	stw r8, 0x70(r1)
/* 80015994 000128D4  90 E1 00 74 */	stw r7, 0x74(r1)
/* 80015998 000128D8  90 C1 00 78 */	stw r6, 0x78(r1)
/* 8001599C 000128DC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800159A0 000128E0  91 23 00 00 */	stw r9, 0(r3)
/* 800159A4 000128E4  91 03 00 04 */	stw r8, 4(r3)
/* 800159A8 000128E8  90 E3 00 08 */	stw r7, 8(r3)
/* 800159AC 000128EC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 800159B0 000128F0  90 03 00 10 */	stw r0, 0x10(r3)
/* 800159B4 000128F4  48 0A BD 4D */	bl __register_global_object
/* 800159B8 000128F8  38 1F 00 3C */	addi r0, r31, 0x3c
/* 800159BC 000128FC  38 61 00 6C */	addi r3, r1, 0x6c
/* 800159C0 00012900  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800159C4 00012904  38 80 00 00 */	li r4, 0
/* 800159C8 00012908  4B FF 76 A1 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 800159CC 0001290C  3C 80 80 4A */	lis r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 800159D0 00012910  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 800159D4 00012914  38 A4 F4 98 */	addi r5, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 800159D8 00012918  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 800159DC 0001291C  38 63 6D 34 */	addi r3, r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l
/* 800159E0 00012920  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 800159E4 00012924  94 A3 00 14 */	stwu r5, 0x14(r3)
/* 800159E8 00012928  39 00 00 06 */	li r8, 6
/* 800159EC 0001292C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800159F0 00012930  39 3F 00 3C */	addi r9, r31, 0x3c
/* 800159F4 00012934  90 A1 00 58 */	stw r5, 0x58(r1)
/* 800159F8 00012938  3C 80 80 01 */	lis r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@ha
/* 800159FC 0001293C  38 84 57 C0 */	addi r4, r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@l
/* 80015A00 00012940  38 BE 00 2C */	addi r5, r30, 0x2c
/* 80015A04 00012944  91 21 00 58 */	stw r9, 0x58(r1)
/* 80015A08 00012948  91 01 00 5C */	stw r8, 0x5c(r1)
/* 80015A0C 0001294C  90 E1 00 60 */	stw r7, 0x60(r1)
/* 80015A10 00012950  90 C1 00 64 */	stw r6, 0x64(r1)
/* 80015A14 00012954  90 01 00 68 */	stw r0, 0x68(r1)
/* 80015A18 00012958  91 23 00 00 */	stw r9, 0(r3)
/* 80015A1C 0001295C  91 03 00 04 */	stw r8, 4(r3)
/* 80015A20 00012960  90 E3 00 08 */	stw r7, 8(r3)
/* 80015A24 00012964  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80015A28 00012968  90 03 00 10 */	stw r0, 0x10(r3)
/* 80015A2C 0001296C  48 0A BC D5 */	bl __register_global_object
/* 80015A30 00012970  38 1F 00 3C */	addi r0, r31, 0x3c
/* 80015A34 00012974  38 61 00 58 */	addi r3, r1, 0x58
/* 80015A38 00012978  90 01 00 58 */	stw r0, 0x58(r1)
/* 80015A3C 0001297C  38 80 00 00 */	li r4, 0
/* 80015A40 00012980  4B FF 76 29 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 80015A44 00012984  3C 80 80 4A */	lis r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 80015A48 00012988  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 80015A4C 0001298C  38 A4 F4 98 */	addi r5, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 80015A50 00012990  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 80015A54 00012994  38 63 6D 34 */	addi r3, r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l
/* 80015A58 00012998  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 80015A5C 0001299C  94 A3 00 28 */	stwu r5, 0x28(r3)
/* 80015A60 000129A0  39 00 00 07 */	li r8, 7
/* 80015A64 000129A4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80015A68 000129A8  39 3F 00 3C */	addi r9, r31, 0x3c
/* 80015A6C 000129AC  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80015A70 000129B0  3C 80 80 01 */	lis r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@ha
/* 80015A74 000129B4  38 84 57 C0 */	addi r4, r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@l
/* 80015A78 000129B8  38 BE 00 38 */	addi r5, r30, 0x38
/* 80015A7C 000129BC  91 21 00 44 */	stw r9, 0x44(r1)
/* 80015A80 000129C0  91 01 00 48 */	stw r8, 0x48(r1)
/* 80015A84 000129C4  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 80015A88 000129C8  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80015A8C 000129CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80015A90 000129D0  91 23 00 00 */	stw r9, 0(r3)
/* 80015A94 000129D4  91 03 00 04 */	stw r8, 4(r3)
/* 80015A98 000129D8  90 E3 00 08 */	stw r7, 8(r3)
/* 80015A9C 000129DC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80015AA0 000129E0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80015AA4 000129E4  48 0A BC 5D */	bl __register_global_object
/* 80015AA8 000129E8  38 1F 00 3C */	addi r0, r31, 0x3c
/* 80015AAC 000129EC  38 61 00 44 */	addi r3, r1, 0x44
/* 80015AB0 000129F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80015AB4 000129F4  38 80 00 00 */	li r4, 0
/* 80015AB8 000129F8  4B FF 75 B1 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 80015ABC 000129FC  3C 80 80 4A */	lis r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 80015AC0 00012A00  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 80015AC4 00012A04  38 A4 F4 98 */	addi r5, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 80015AC8 00012A08  80 FF 00 24 */	lwz r7, 0x24(r31)
/* 80015ACC 00012A0C  38 63 6D 34 */	addi r3, r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l
/* 80015AD0 00012A10  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80015AD4 00012A14  94 A3 00 3C */	stwu r5, 0x3c(r3)
/* 80015AD8 00012A18  39 00 00 08 */	li r8, 8
/* 80015ADC 00012A1C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80015AE0 00012A20  39 3F 00 3C */	addi r9, r31, 0x3c
/* 80015AE4 00012A24  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80015AE8 00012A28  3C 80 80 01 */	lis r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@ha
/* 80015AEC 00012A2C  38 84 57 C0 */	addi r4, r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@l
/* 80015AF0 00012A30  38 BE 00 44 */	addi r5, r30, 0x44
/* 80015AF4 00012A34  91 21 00 30 */	stw r9, 0x30(r1)
/* 80015AF8 00012A38  91 01 00 34 */	stw r8, 0x34(r1)
/* 80015AFC 00012A3C  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80015B00 00012A40  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80015B04 00012A44  90 01 00 40 */	stw r0, 0x40(r1)
/* 80015B08 00012A48  91 23 00 00 */	stw r9, 0(r3)
/* 80015B0C 00012A4C  91 03 00 04 */	stw r8, 4(r3)
/* 80015B10 00012A50  90 E3 00 08 */	stw r7, 8(r3)
/* 80015B14 00012A54  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80015B18 00012A58  90 03 00 10 */	stw r0, 0x10(r3)
/* 80015B1C 00012A5C  48 0A BB E5 */	bl __register_global_object
/* 80015B20 00012A60  38 1F 00 3C */	addi r0, r31, 0x3c
/* 80015B24 00012A64  38 61 00 30 */	addi r3, r1, 0x30
/* 80015B28 00012A68  90 01 00 30 */	stw r0, 0x30(r1)
/* 80015B2C 00012A6C  38 80 00 00 */	li r4, 0
/* 80015B30 00012A70  4B FF 75 39 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 80015B34 00012A74  3C 80 80 4A */	lis r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 80015B38 00012A78  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 80015B3C 00012A7C  38 A4 F4 98 */	addi r5, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 80015B40 00012A80  80 FF 00 30 */	lwz r7, 0x30(r31)
/* 80015B44 00012A84  38 63 6D 34 */	addi r3, r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l
/* 80015B48 00012A88  80 DF 00 34 */	lwz r6, 0x34(r31)
/* 80015B4C 00012A8C  94 A3 00 50 */	stwu r5, 0x50(r3)
/* 80015B50 00012A90  39 00 00 09 */	li r8, 9
/* 80015B54 00012A94  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80015B58 00012A98  39 3F 00 3C */	addi r9, r31, 0x3c
/* 80015B5C 00012A9C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80015B60 00012AA0  3C 80 80 01 */	lis r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@ha
/* 80015B64 00012AA4  38 84 57 C0 */	addi r4, r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@l
/* 80015B68 00012AA8  38 BE 00 50 */	addi r5, r30, 0x50
/* 80015B6C 00012AAC  91 21 00 1C */	stw r9, 0x1c(r1)
/* 80015B70 00012AB0  91 01 00 20 */	stw r8, 0x20(r1)
/* 80015B74 00012AB4  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80015B78 00012AB8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80015B7C 00012ABC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80015B80 00012AC0  91 23 00 00 */	stw r9, 0(r3)
/* 80015B84 00012AC4  91 03 00 04 */	stw r8, 4(r3)
/* 80015B88 00012AC8  90 E3 00 08 */	stw r7, 8(r3)
/* 80015B8C 00012ACC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80015B90 00012AD0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80015B94 00012AD4  48 0A BB 6D */	bl __register_global_object
/* 80015B98 00012AD8  38 1F 00 3C */	addi r0, r31, 0x3c
/* 80015B9C 00012ADC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80015BA0 00012AE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80015BA4 00012AE4  38 80 00 00 */	li r4, 0
/* 80015BA8 00012AE8  4B FF 74 C1 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 80015BAC 00012AEC  3C 60 80 4A */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 80015BB0 00012AF0  39 20 FF FF */	li r9, -1
/* 80015BB4 00012AF4  39 63 F4 98 */	addi r11, r3, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 80015BB8 00012AF8  3C 80 80 01 */	lis r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@ha
/* 80015BBC 00012AFC  91 61 00 08 */	stw r11, 8(r1)
/* 80015BC0 00012B00  39 5F 00 3C */	addi r10, r31, 0x3c
/* 80015BC4 00012B04  3C 60 80 48 */	lis r3, __ptmf_null@ha
/* 80015BC8 00012B08  38 84 57 C0 */	addi r4, r4, __dt__Q314JStudio_JAudio14TAdaptor_sound13TVVOSetValue_Fv@l
/* 80015BCC 00012B0C  91 41 00 08 */	stw r10, 8(r1)
/* 80015BD0 00012B10  39 03 9F 10 */	addi r8, r3, __ptmf_null@l
/* 80015BD4 00012B14  3C 60 80 50 */	lis r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@ha
/* 80015BD8 00012B18  80 E8 00 00 */	lwz r7, 0(r8)
/* 80015BDC 00012B1C  91 21 00 0C */	stw r9, 0xc(r1)
/* 80015BE0 00012B20  38 63 6D 34 */	addi r3, r3, saoVVOSetValue___Q214JStudio_JAudio14TAdaptor_sound@l
/* 80015BE4 00012B24  38 BE 00 5C */	addi r5, r30, 0x5c
/* 80015BE8 00012B28  80 C8 00 04 */	lwz r6, 4(r8)
/* 80015BEC 00012B2C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80015BF0 00012B30  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80015BF4 00012B34  80 08 00 08 */	lwz r0, 8(r8)
/* 80015BF8 00012B38  95 63 00 64 */	stwu r11, 0x64(r3)
/* 80015BFC 00012B3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80015C00 00012B40  91 43 00 00 */	stw r10, 0(r3)
/* 80015C04 00012B44  91 23 00 04 */	stw r9, 4(r3)
/* 80015C08 00012B48  90 E3 00 08 */	stw r7, 8(r3)
/* 80015C0C 00012B4C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80015C10 00012B50  90 03 00 10 */	stw r0, 0x10(r3)
/* 80015C14 00012B54  48 0A BA ED */	bl __register_global_object
/* 80015C18 00012B58  38 1F 00 3C */	addi r0, r31, 0x3c
/* 80015C1C 00012B5C  38 61 00 08 */	addi r3, r1, 8
/* 80015C20 00012B60  90 01 00 08 */	stw r0, 8(r1)
/* 80015C24 00012B64  38 80 00 00 */	li r4, 0
/* 80015C28 00012B68  4B FF 74 41 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 80015C2C 00012B6C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80015C30 00012B70  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80015C34 00012B74  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80015C38 00012B78  7C 08 03 A6 */	mtlr r0
/* 80015C3C 00012B7C  38 21 00 90 */	addi r1, r1, 0x90
/* 80015C40 00012B80  4E 80 00 20 */	blr 
