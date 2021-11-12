#include "types.h"

#include "ebi/title/TTitleCameraMgr.h"

/*
    Generated from dpostproc

    .section .ctors, "wa"  # 0x80472F00 - 0x804732C0
        .4byte __sinit_ebiP2TitleCamera_cpp

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global lbl_804E79C8
    lbl_804E79C8:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000

    .section .sbss # 0x80514D80 - 0x80516360
    .global lbl_805160C0
    lbl_805160C0:
        .skip 0x4
    .global lbl_805160C4
    lbl_805160C4:
        .skip 0x4
*/

namespace ebi {
namespace title {
	/*
	 * --INFO--
	 * Address:	803C1EBC
	 * Size:	000074
	 */

	void TTitleCameraMgr::update()
	{
		float178 += float1BC;
		float18C = 0.0f;
		float190 = 0.0f;
		float194 = -1.0f;
		float180 = float174;
		float184 = float178;
		float188 = float17C;
		float184 -= 1.0f;
		float28 = float1E4;
		Camera::update();
	}

} // namespace title
} // namespace ebi

/*
 * --INFO--
 * Address:	803C1F30
 * Size:	000028
 */
// // clang-format off
// asm void __sinit_ebiP2TitleCamera_cpp(void)
// {
// 	nofralloc
// 	  lis       r4, 0x8051
// 	  li        r0, -0x1
// 	  lfs       f0, 0x48B0(r4)
// 	  lis       r3, 0x804E
// 	  stw       r0, -0x65C0(r13)
// 	  stfsu     f0, 0x79C8(r3)
// 	  stfs      f0, -0x65BC(r13)
// 	  stfs      f0, 0x4(r3)
// 	  stfs      f0, 0x8(r3)
// 	  blr
// }
// // clang-format on
