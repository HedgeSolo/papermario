
.section .text802CDAC0, "ax"

func_802CDAC0:
/* 0F2470 802CDAC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F2474 802CDAC4 0080182D */  daddu $v1, $a0, $zero
/* 0F2478 802CDAC8 00A0202D */  daddu $a0, $a1, $zero
/* 0F247C 802CDACC 2402FFFF */  addiu $v0, $zero, -1
/* 0F2480 802CDAD0 14820004 */  bne   $a0, $v0, .L802CDAE4
/* 0F2484 802CDAD4 AFBF0010 */   sw    $ra, 0x10($sp)
/* 0F2488 802CDAD8 8C64014C */  lw    $a0, 0x14c($v1)
/* 0F248C 802CDADC 080B36BE */  j     func_802CDAF8
/* 0F2490 802CDAE0 00000000 */   nop   

.L802CDAE4:
/* 0F2494 802CDAE4 3C02EFE8 */  lui   $v0, 0xefe8
/* 0F2498 802CDAE8 34422080 */  ori   $v0, $v0, 0x2080
/* 0F249C 802CDAEC 0082102A */  slt   $v0, $a0, $v0
/* 0F24A0 802CDAF0 14400003 */  bnez  $v0, .L802CDB00
/* 0F24A4 802CDAF4 0080102D */   daddu $v0, $a0, $zero
func_802CDAF8:
/* 0F24A8 802CDAF8 0C00EAD2 */  jal   get_npc_safe
/* 0F24AC 802CDAFC 00000000 */   nop   
.L802CDB00:
/* 0F24B0 802CDB00 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F24B4 802CDB04 03E00008 */  jr    $ra
/* 0F24B8 802CDB08 27BD0018 */   addiu $sp, $sp, 0x18

set_npc_animation:
/* 0F24BC 802CDB0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F24C0 802CDB10 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F24C4 802CDB14 0080882D */  daddu $s1, $a0, $zero
/* 0F24C8 802CDB18 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F24CC 802CDB1C 00A0802D */  daddu $s0, $a1, $zero
/* 0F24D0 802CDB20 2604FEFF */  addiu $a0, $s0, -0x101
/* 0F24D4 802CDB24 2C820009 */  sltiu $v0, $a0, 9
/* 0F24D8 802CDB28 1040000D */  beqz  $v0, .L802CDB60
/* 0F24DC 802CDB2C AFBF0018 */   sw    $ra, 0x18($sp)
/* 0F24E0 802CDB30 3C028011 */  lui   $v0, 0x8011
/* 0F24E4 802CDB34 2442F290 */  addiu $v0, $v0, -0xd70
/* 0F24E8 802CDB38 80430012 */  lb    $v1, 0x12($v0)
/* 0F24EC 802CDB3C 000310C0 */  sll   $v0, $v1, 3
/* 0F24F0 802CDB40 00431021 */  addu  $v0, $v0, $v1
/* 0F24F4 802CDB44 00441021 */  addu  $v0, $v0, $a0
/* 0F24F8 802CDB48 00021080 */  sll   $v0, $v0, 2
/* 0F24FC 802CDB4C 3C018010 */  lui   $at, 0x8010
/* 0F2500 802CDB50 00220821 */  addu  $at, $at, $v0
/* 0F2504 802CDB54 8C228348 */  lw    $v0, -0x7cb8($at)
/* 0F2508 802CDB58 080B36E4 */  j     func_802CDB90
/* 0F250C 802CDB5C AE220028 */   sw    $v0, 0x28($s1)

.L802CDB60:
/* 0F2510 802CDB60 2602FDFF */  addiu $v0, $s0, -0x201
/* 0F2514 802CDB64 2C420010 */  sltiu $v0, $v0, 0x10
/* 0F2518 802CDB68 50400009 */  beql  $v0, $zero, .L802CDB90
/* 0F251C 802CDB6C AE300028 */   sw    $s0, 0x28($s1)
/* 0F2520 802CDB70 822400A4 */  lb    $a0, 0xa4($s1)
/* 0F2524 802CDB74 0C00FB3A */  jal   get_enemy
/* 0F2528 802CDB78 00000000 */   nop   
/* 0F252C 802CDB7C 8C4200CC */  lw    $v0, 0xcc($v0)
/* 0F2530 802CDB80 00101880 */  sll   $v1, $s0, 2
/* 0F2534 802CDB84 00621821 */  addu  $v1, $v1, $v0
/* 0F2538 802CDB88 8C62F7FC */  lw    $v0, -0x804($v1)
/* 0F253C 802CDB8C AE220028 */  sw    $v0, 0x28($s1)
func_802CDB90:
.L802CDB90:
/* 0F2540 802CDB90 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2544 802CDB94 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2548 802CDB98 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F254C 802CDB9C 03E00008 */  jr    $ra
/* 0F2550 802CDBA0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F2554 802CDBA4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F2558 802CDBA8 AFB10024 */  sw    $s1, 0x24($sp)
/* 0F255C 802CDBAC 0080882D */  daddu $s1, $a0, $zero
/* 0F2560 802CDBB0 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0F2564 802CDBB4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0F2568 802CDBB8 8E30000C */  lw    $s0, 0xc($s1)
/* 0F256C 802CDBBC 8E050000 */  lw    $a1, ($s0)
/* 0F2570 802CDBC0 0C0B1EAF */  jal   get_variable
/* 0F2574 802CDBC4 26100004 */   addiu $s0, $s0, 4
/* 0F2578 802CDBC8 0220202D */  daddu $a0, $s1, $zero
/* 0F257C 802CDBCC 8E050000 */  lw    $a1, ($s0)
/* 0F2580 802CDBD0 0C0B1EAF */  jal   get_variable
/* 0F2584 802CDBD4 0040802D */   daddu $s0, $v0, $zero
/* 0F2588 802CDBD8 27A40010 */  addiu $a0, $sp, 0x10
/* 0F258C 802CDBDC AFA00010 */  sw    $zero, 0x10($sp)
/* 0F2590 802CDBE0 AFA20014 */  sw    $v0, 0x14($sp)
/* 0F2594 802CDBE4 AFA00018 */  sw    $zero, 0x18($sp)
/* 0F2598 802CDBE8 0C00E211 */  jal   func_80038844
/* 0F259C 802CDBEC AFA0001C */   sw    $zero, 0x1c($sp)
/* 0F25A0 802CDBF0 0C00E2B7 */  jal   get_npc_by_index
/* 0F25A4 802CDBF4 0040202D */   daddu $a0, $v0, $zero
/* 0F25A8 802CDBF8 0040202D */  daddu $a0, $v0, $zero
/* 0F25AC 802CDBFC 0C00EAFF */  jal   disable_npc_shadow
/* 0F25B0 802CDC00 A09000A4 */   sb    $s0, 0xa4($a0)
/* 0F25B4 802CDC04 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0F25B8 802CDC08 8FB10024 */  lw    $s1, 0x24($sp)
/* 0F25BC 802CDC0C 8FB00020 */  lw    $s0, 0x20($sp)
/* 0F25C0 802CDC10 24020002 */  addiu $v0, $zero, 2
/* 0F25C4 802CDC14 03E00008 */  jr    $ra
/* 0F25C8 802CDC18 27BD0030 */   addiu $sp, $sp, 0x30

DeleteNpc:
/* 0F25CC 802CDC1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F25D0 802CDC20 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F25D4 802CDC24 8C82000C */  lw    $v0, 0xc($a0)
/* 0F25D8 802CDC28 0C0B1EAF */  jal   get_variable
/* 0F25DC 802CDC2C 8C450000 */   lw    $a1, ($v0)
/* 0F25E0 802CDC30 0C00EABB */  jal   get_npc_unsafe
/* 0F25E4 802CDC34 0040202D */   daddu $a0, $v0, $zero
/* 0F25E8 802CDC38 50400004 */  beql  $v0, $zero, .L802CDC4C
/* 0F25EC 802CDC3C 24020002 */   addiu $v0, $zero, 2
/* 0F25F0 802CDC40 0C00E273 */  jal   free_npc
/* 0F25F4 802CDC44 0040202D */   daddu $a0, $v0, $zero
/* 0F25F8 802CDC48 24020002 */  addiu $v0, $zero, 2
.L802CDC4C:
/* 0F25FC 802CDC4C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F2600 802CDC50 03E00008 */  jr    $ra
/* 0F2604 802CDC54 27BD0018 */   addiu $sp, $sp, 0x18

GetNpcPointer:
/* 0F2608 802CDC58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F260C 802CDC5C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2610 802CDC60 0080882D */  daddu $s1, $a0, $zero
/* 0F2614 802CDC64 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F2618 802CDC68 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F261C 802CDC6C 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2620 802CDC70 8E050000 */  lw    $a1, ($s0)
/* 0F2624 802CDC74 0C0B1EAF */  jal   get_variable
/* 0F2628 802CDC78 26100004 */   addiu $s0, $s0, 4
/* 0F262C 802CDC7C 8E100000 */  lw    $s0, ($s0)
/* 0F2630 802CDC80 0C00EAD2 */  jal   get_npc_safe
/* 0F2634 802CDC84 0040202D */   daddu $a0, $v0, $zero
/* 0F2638 802CDC88 0220202D */  daddu $a0, $s1, $zero
/* 0F263C 802CDC8C 0040302D */  daddu $a2, $v0, $zero
/* 0F2640 802CDC90 0C0B2026 */  jal   set_variable
/* 0F2644 802CDC94 0200282D */   daddu $a1, $s0, $zero
/* 0F2648 802CDC98 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F264C 802CDC9C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2650 802CDCA0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2654 802CDCA4 24020002 */  addiu $v0, $zero, 2
/* 0F2658 802CDCA8 03E00008 */  jr    $ra
/* 0F265C 802CDCAC 27BD0020 */   addiu $sp, $sp, 0x20

SetNpcPos:
/* 0F2660 802CDCB0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0F2664 802CDCB4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2668 802CDCB8 0080882D */  daddu $s1, $a0, $zero
/* 0F266C 802CDCBC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F2670 802CDCC0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F2674 802CDCC4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2678 802CDCC8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F267C 802CDCCC F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F2680 802CDCD0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F2684 802CDCD4 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2688 802CDCD8 8E050000 */  lw    $a1, ($s0)
/* 0F268C 802CDCDC 0C0B1EAF */  jal   get_variable
/* 0F2690 802CDCE0 26100004 */   addiu $s0, $s0, 4
/* 0F2694 802CDCE4 8E050000 */  lw    $a1, ($s0)
/* 0F2698 802CDCE8 26100004 */  addiu $s0, $s0, 4
/* 0F269C 802CDCEC 0220202D */  daddu $a0, $s1, $zero
/* 0F26A0 802CDCF0 0C0B1EAF */  jal   get_variable
/* 0F26A4 802CDCF4 0040902D */   daddu $s2, $v0, $zero
/* 0F26A8 802CDCF8 8E050000 */  lw    $a1, ($s0)
/* 0F26AC 802CDCFC 26100004 */  addiu $s0, $s0, 4
/* 0F26B0 802CDD00 4482C000 */  mtc1  $v0, $f24
/* 0F26B4 802CDD04 00000000 */  nop   
/* 0F26B8 802CDD08 4680C620 */  cvt.s.w $f24, $f24
/* 0F26BC 802CDD0C 0C0B1EAF */  jal   get_variable
/* 0F26C0 802CDD10 0220202D */   daddu $a0, $s1, $zero
/* 0F26C4 802CDD14 8E050000 */  lw    $a1, ($s0)
/* 0F26C8 802CDD18 4482B000 */  mtc1  $v0, $f22
/* 0F26CC 802CDD1C 00000000 */  nop   
/* 0F26D0 802CDD20 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F26D4 802CDD24 0C0B1EAF */  jal   get_variable
/* 0F26D8 802CDD28 0220202D */   daddu $a0, $s1, $zero
/* 0F26DC 802CDD2C 0220202D */  daddu $a0, $s1, $zero
/* 0F26E0 802CDD30 4482A000 */  mtc1  $v0, $f20
/* 0F26E4 802CDD34 00000000 */  nop   
/* 0F26E8 802CDD38 4680A520 */  cvt.s.w $f20, $f20
/* 0F26EC 802CDD3C 0C0B36B0 */  jal   func_802CDAC0
/* 0F26F0 802CDD40 0240282D */   daddu $a1, $s2, $zero
/* 0F26F4 802CDD44 0040282D */  daddu $a1, $v0, $zero
/* 0F26F8 802CDD48 10A0000F */  beqz  $a1, .L802CDD88
/* 0F26FC 802CDD4C 4600C006 */   mov.s $f0, $f24
/* 0F2700 802CDD50 E4B80038 */  swc1  $f24, 0x38($a1)
/* 0F2704 802CDD54 E4B6003C */  swc1  $f22, 0x3c($a1)
/* 0F2708 802CDD58 4600B086 */  mov.s $f2, $f22
/* 0F270C 802CDD5C E4B40040 */  swc1  $f20, 0x40($a1)
/* 0F2710 802CDD60 4600A106 */  mov.s $f4, $f20
/* 0F2714 802CDD64 24020002 */  addiu $v0, $zero, 2
/* 0F2718 802CDD68 8CA30000 */  lw    $v1, ($a1)
/* 0F271C 802CDD6C 3C040001 */  lui   $a0, 1
/* 0F2720 802CDD70 E4A0006C */  swc1  $f0, 0x6c($a1)
/* 0F2724 802CDD74 E4A20070 */  swc1  $f2, 0x70($a1)
/* 0F2728 802CDD78 E4A40074 */  swc1  $f4, 0x74($a1)
/* 0F272C 802CDD7C 00641825 */  or    $v1, $v1, $a0
/* 0F2730 802CDD80 080B3763 */  j     func_802CDD8C
/* 0F2734 802CDD84 ACA30000 */   sw    $v1, ($a1)

.L802CDD88:
/* 0F2738 802CDD88 24020002 */  addiu $v0, $zero, 2
func_802CDD8C:
/* 0F273C 802CDD8C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F2740 802CDD90 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F2744 802CDD94 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2748 802CDD98 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F274C 802CDD9C D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F2750 802CDDA0 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F2754 802CDDA4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2758 802CDDA8 03E00008 */  jr    $ra
/* 0F275C 802CDDAC 27BD0038 */   addiu $sp, $sp, 0x38

SetNpcRotation:
/* 0F2760 802CDDB0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0F2764 802CDDB4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2768 802CDDB8 0080882D */  daddu $s1, $a0, $zero
/* 0F276C 802CDDBC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F2770 802CDDC0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F2774 802CDDC4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2778 802CDDC8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F277C 802CDDCC F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F2780 802CDDD0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F2784 802CDDD4 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2788 802CDDD8 8E050000 */  lw    $a1, ($s0)
/* 0F278C 802CDDDC 0C0B1EAF */  jal   get_variable
/* 0F2790 802CDDE0 26100004 */   addiu $s0, $s0, 4
/* 0F2794 802CDDE4 8E050000 */  lw    $a1, ($s0)
/* 0F2798 802CDDE8 26100004 */  addiu $s0, $s0, 4
/* 0F279C 802CDDEC 0220202D */  daddu $a0, $s1, $zero
/* 0F27A0 802CDDF0 0C0B210B */  jal   get_float_variable
/* 0F27A4 802CDDF4 0040902D */   daddu $s2, $v0, $zero
/* 0F27A8 802CDDF8 8E050000 */  lw    $a1, ($s0)
/* 0F27AC 802CDDFC 26100004 */  addiu $s0, $s0, 4
/* 0F27B0 802CDE00 0220202D */  daddu $a0, $s1, $zero
/* 0F27B4 802CDE04 0C0B210B */  jal   get_float_variable
/* 0F27B8 802CDE08 46000606 */   mov.s $f24, $f0
/* 0F27BC 802CDE0C 0220202D */  daddu $a0, $s1, $zero
/* 0F27C0 802CDE10 8E050000 */  lw    $a1, ($s0)
/* 0F27C4 802CDE14 0C0B210B */  jal   get_float_variable
/* 0F27C8 802CDE18 46000586 */   mov.s $f22, $f0
/* 0F27CC 802CDE1C 0220202D */  daddu $a0, $s1, $zero
/* 0F27D0 802CDE20 0240282D */  daddu $a1, $s2, $zero
/* 0F27D4 802CDE24 0C0B36B0 */  jal   func_802CDAC0
/* 0F27D8 802CDE28 46000506 */   mov.s $f20, $f0
/* 0F27DC 802CDE2C 0040182D */  daddu $v1, $v0, $zero
/* 0F27E0 802CDE30 10600004 */  beqz  $v1, .L802CDE44
/* 0F27E4 802CDE34 24020002 */   addiu $v0, $zero, 2
/* 0F27E8 802CDE38 E4780044 */  swc1  $f24, 0x44($v1)
/* 0F27EC 802CDE3C E4760048 */  swc1  $f22, 0x48($v1)
/* 0F27F0 802CDE40 E474004C */  swc1  $f20, 0x4c($v1)
.L802CDE44:
/* 0F27F4 802CDE44 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F27F8 802CDE48 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F27FC 802CDE4C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2800 802CDE50 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2804 802CDE54 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F2808 802CDE58 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F280C 802CDE5C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2810 802CDE60 03E00008 */  jr    $ra
/* 0F2814 802CDE64 27BD0038 */   addiu $sp, $sp, 0x38

/* 0F2818 802CDE68 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F281C 802CDE6C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2820 802CDE70 0080882D */  daddu $s1, $a0, $zero
/* 0F2824 802CDE74 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F2828 802CDE78 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F282C 802CDE7C F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F2830 802CDE80 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2834 802CDE84 8E050000 */  lw    $a1, ($s0)
/* 0F2838 802CDE88 0C0B1EAF */  jal   get_variable
/* 0F283C 802CDE8C 26100004 */   addiu $s0, $s0, 4
/* 0F2840 802CDE90 0220202D */  daddu $a0, $s1, $zero
/* 0F2844 802CDE94 8E050000 */  lw    $a1, ($s0)
/* 0F2848 802CDE98 0C0B210B */  jal   get_float_variable
/* 0F284C 802CDE9C 0040802D */   daddu $s0, $v0, $zero
/* 0F2850 802CDEA0 0220202D */  daddu $a0, $s1, $zero
/* 0F2854 802CDEA4 0200282D */  daddu $a1, $s0, $zero
/* 0F2858 802CDEA8 0C0B36B0 */  jal   func_802CDAC0
/* 0F285C 802CDEAC 46000506 */   mov.s $f20, $f0
/* 0F2860 802CDEB0 54400001 */  bnezl $v0, .L802CDEB8
/* 0F2864 802CDEB4 E4540050 */   swc1  $f20, 0x50($v0)
.L802CDEB8:
/* 0F2868 802CDEB8 24020002 */  addiu $v0, $zero, 2
/* 0F286C 802CDEBC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2870 802CDEC0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2874 802CDEC4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2878 802CDEC8 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F287C 802CDECC 03E00008 */  jr    $ra
/* 0F2880 802CDED0 27BD0028 */   addiu $sp, $sp, 0x28

SetNpcScale:
/* 0F2884 802CDED4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0F2888 802CDED8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F288C 802CDEDC 0080882D */  daddu $s1, $a0, $zero
/* 0F2890 802CDEE0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F2894 802CDEE4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F2898 802CDEE8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F289C 802CDEEC F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F28A0 802CDEF0 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F28A4 802CDEF4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F28A8 802CDEF8 8E30000C */  lw    $s0, 0xc($s1)
/* 0F28AC 802CDEFC 8E050000 */  lw    $a1, ($s0)
/* 0F28B0 802CDF00 0C0B1EAF */  jal   get_variable
/* 0F28B4 802CDF04 26100004 */   addiu $s0, $s0, 4
/* 0F28B8 802CDF08 8E050000 */  lw    $a1, ($s0)
/* 0F28BC 802CDF0C 26100004 */  addiu $s0, $s0, 4
/* 0F28C0 802CDF10 0220202D */  daddu $a0, $s1, $zero
/* 0F28C4 802CDF14 0C0B210B */  jal   get_float_variable
/* 0F28C8 802CDF18 0040902D */   daddu $s2, $v0, $zero
/* 0F28CC 802CDF1C 8E050000 */  lw    $a1, ($s0)
/* 0F28D0 802CDF20 26100004 */  addiu $s0, $s0, 4
/* 0F28D4 802CDF24 0220202D */  daddu $a0, $s1, $zero
/* 0F28D8 802CDF28 0C0B210B */  jal   get_float_variable
/* 0F28DC 802CDF2C 46000606 */   mov.s $f24, $f0
/* 0F28E0 802CDF30 0220202D */  daddu $a0, $s1, $zero
/* 0F28E4 802CDF34 8E050000 */  lw    $a1, ($s0)
/* 0F28E8 802CDF38 0C0B210B */  jal   get_float_variable
/* 0F28EC 802CDF3C 46000586 */   mov.s $f22, $f0
/* 0F28F0 802CDF40 0220202D */  daddu $a0, $s1, $zero
/* 0F28F4 802CDF44 0240282D */  daddu $a1, $s2, $zero
/* 0F28F8 802CDF48 0C0B36B0 */  jal   func_802CDAC0
/* 0F28FC 802CDF4C 46000506 */   mov.s $f20, $f0
/* 0F2900 802CDF50 0040182D */  daddu $v1, $v0, $zero
/* 0F2904 802CDF54 10600004 */  beqz  $v1, .L802CDF68
/* 0F2908 802CDF58 24020002 */   addiu $v0, $zero, 2
/* 0F290C 802CDF5C E4780054 */  swc1  $f24, 0x54($v1)
/* 0F2910 802CDF60 E4760058 */  swc1  $f22, 0x58($v1)
/* 0F2914 802CDF64 E474005C */  swc1  $f20, 0x5c($v1)
.L802CDF68:
/* 0F2918 802CDF68 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F291C 802CDF6C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F2920 802CDF70 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2924 802CDF74 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2928 802CDF78 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F292C 802CDF7C D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F2930 802CDF80 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2934 802CDF84 03E00008 */  jr    $ra
/* 0F2938 802CDF88 27BD0038 */   addiu $sp, $sp, 0x38

SetNpcCollisionSize:
/* 0F293C 802CDF8C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F2940 802CDF90 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2944 802CDF94 0080882D */  daddu $s1, $a0, $zero
/* 0F2948 802CDF98 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F294C 802CDF9C AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F2950 802CDFA0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F2954 802CDFA4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2958 802CDFA8 8E30000C */  lw    $s0, 0xc($s1)
/* 0F295C 802CDFAC 8E050000 */  lw    $a1, ($s0)
/* 0F2960 802CDFB0 0C0B1EAF */  jal   get_variable
/* 0F2964 802CDFB4 26100004 */   addiu $s0, $s0, 4
/* 0F2968 802CDFB8 8E050000 */  lw    $a1, ($s0)
/* 0F296C 802CDFBC 26100004 */  addiu $s0, $s0, 4
/* 0F2970 802CDFC0 0220202D */  daddu $a0, $s1, $zero
/* 0F2974 802CDFC4 0C0B1EAF */  jal   get_variable
/* 0F2978 802CDFC8 0040902D */   daddu $s2, $v0, $zero
/* 0F297C 802CDFCC 0220202D */  daddu $a0, $s1, $zero
/* 0F2980 802CDFD0 8E050000 */  lw    $a1, ($s0)
/* 0F2984 802CDFD4 0C0B1EAF */  jal   get_variable
/* 0F2988 802CDFD8 0040982D */   daddu $s3, $v0, $zero
/* 0F298C 802CDFDC 0220202D */  daddu $a0, $s1, $zero
/* 0F2990 802CDFE0 0240282D */  daddu $a1, $s2, $zero
/* 0F2994 802CDFE4 0C0B36B0 */  jal   func_802CDAC0
/* 0F2998 802CDFE8 0040802D */   daddu $s0, $v0, $zero
/* 0F299C 802CDFEC 0040182D */  daddu $v1, $v0, $zero
/* 0F29A0 802CDFF0 10600003 */  beqz  $v1, .L802CE000
/* 0F29A4 802CDFF4 24020002 */   addiu $v0, $zero, 2
/* 0F29A8 802CDFF8 A47300A8 */  sh    $s3, 0xa8($v1)
/* 0F29AC 802CDFFC A47000A6 */  sh    $s0, 0xa6($v1)
.L802CE000:
/* 0F29B0 802CE000 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F29B4 802CE004 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F29B8 802CE008 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F29BC 802CE00C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F29C0 802CE010 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F29C4 802CE014 03E00008 */  jr    $ra
/* 0F29C8 802CE018 27BD0028 */   addiu $sp, $sp, 0x28

SetNpcSpeed:
/* 0F29CC 802CE01C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F29D0 802CE020 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F29D4 802CE024 0080882D */  daddu $s1, $a0, $zero
/* 0F29D8 802CE028 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F29DC 802CE02C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F29E0 802CE030 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F29E4 802CE034 8E30000C */  lw    $s0, 0xc($s1)
/* 0F29E8 802CE038 8E050000 */  lw    $a1, ($s0)
/* 0F29EC 802CE03C 0C0B1EAF */  jal   get_variable
/* 0F29F0 802CE040 26100004 */   addiu $s0, $s0, 4
/* 0F29F4 802CE044 0220202D */  daddu $a0, $s1, $zero
/* 0F29F8 802CE048 8E050000 */  lw    $a1, ($s0)
/* 0F29FC 802CE04C 0C0B210B */  jal   get_float_variable
/* 0F2A00 802CE050 0040802D */   daddu $s0, $v0, $zero
/* 0F2A04 802CE054 0220202D */  daddu $a0, $s1, $zero
/* 0F2A08 802CE058 0200282D */  daddu $a1, $s0, $zero
/* 0F2A0C 802CE05C 0C0B36B0 */  jal   func_802CDAC0
/* 0F2A10 802CE060 46000506 */   mov.s $f20, $f0
/* 0F2A14 802CE064 54400001 */  bnezl $v0, .L802CE06C
/* 0F2A18 802CE068 E4540018 */   swc1  $f20, 0x18($v0)
.L802CE06C:
/* 0F2A1C 802CE06C 24020002 */  addiu $v0, $zero, 2
/* 0F2A20 802CE070 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2A24 802CE074 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2A28 802CE078 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2A2C 802CE07C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2A30 802CE080 03E00008 */  jr    $ra
/* 0F2A34 802CE084 27BD0028 */   addiu $sp, $sp, 0x28

SetNpcJumpscale:
/* 0F2A38 802CE088 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F2A3C 802CE08C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2A40 802CE090 0080882D */  daddu $s1, $a0, $zero
/* 0F2A44 802CE094 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F2A48 802CE098 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2A4C 802CE09C F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F2A50 802CE0A0 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2A54 802CE0A4 8E050000 */  lw    $a1, ($s0)
/* 0F2A58 802CE0A8 0C0B1EAF */  jal   get_variable
/* 0F2A5C 802CE0AC 26100004 */   addiu $s0, $s0, 4
/* 0F2A60 802CE0B0 0220202D */  daddu $a0, $s1, $zero
/* 0F2A64 802CE0B4 8E050000 */  lw    $a1, ($s0)
/* 0F2A68 802CE0B8 0C0B210B */  jal   get_float_variable
/* 0F2A6C 802CE0BC 0040802D */   daddu $s0, $v0, $zero
/* 0F2A70 802CE0C0 0220202D */  daddu $a0, $s1, $zero
/* 0F2A74 802CE0C4 0200282D */  daddu $a1, $s0, $zero
/* 0F2A78 802CE0C8 0C0B36B0 */  jal   func_802CDAC0
/* 0F2A7C 802CE0CC 46000506 */   mov.s $f20, $f0
/* 0F2A80 802CE0D0 54400001 */  bnezl $v0, .L802CE0D8
/* 0F2A84 802CE0D4 E4540014 */   swc1  $f20, 0x14($v0)
.L802CE0D8:
/* 0F2A88 802CE0D8 24020002 */  addiu $v0, $zero, 2
/* 0F2A8C 802CE0DC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2A90 802CE0E0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2A94 802CE0E4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2A98 802CE0E8 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2A9C 802CE0EC 03E00008 */  jr    $ra
/* 0F2AA0 802CE0F0 27BD0028 */   addiu $sp, $sp, 0x28

SetNpcAnimation:
/* 0F2AA4 802CE0F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F2AA8 802CE0F8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2AAC 802CE0FC 0080882D */  daddu $s1, $a0, $zero
/* 0F2AB0 802CE100 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F2AB4 802CE104 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2AB8 802CE108 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2ABC 802CE10C 8E050000 */  lw    $a1, ($s0)
/* 0F2AC0 802CE110 0C0B1EAF */  jal   get_variable
/* 0F2AC4 802CE114 26100004 */   addiu $s0, $s0, 4
/* 0F2AC8 802CE118 0220202D */  daddu $a0, $s1, $zero
/* 0F2ACC 802CE11C 8E050000 */  lw    $a1, ($s0)
/* 0F2AD0 802CE120 0C0B1EAF */  jal   get_variable
/* 0F2AD4 802CE124 0040802D */   daddu $s0, $v0, $zero
/* 0F2AD8 802CE128 0220202D */  daddu $a0, $s1, $zero
/* 0F2ADC 802CE12C 0200282D */  daddu $a1, $s0, $zero
/* 0F2AE0 802CE130 0C0B36B0 */  jal   func_802CDAC0
/* 0F2AE4 802CE134 0040802D */   daddu $s0, $v0, $zero
/* 0F2AE8 802CE138 10400003 */  beqz  $v0, .L802CE148
/* 0F2AEC 802CE13C 0040202D */   daddu $a0, $v0, $zero
/* 0F2AF0 802CE140 0C0B36C3 */  jal   set_npc_animation
/* 0F2AF4 802CE144 0200282D */   daddu $a1, $s0, $zero
.L802CE148:
/* 0F2AF8 802CE148 24020002 */  addiu $v0, $zero, 2
/* 0F2AFC 802CE14C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2B00 802CE150 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2B04 802CE154 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2B08 802CE158 03E00008 */  jr    $ra
/* 0F2B0C 802CE15C 27BD0020 */   addiu $sp, $sp, 0x20

GetNpcAnimation:
/* 0F2B10 802CE160 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F2B14 802CE164 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2B18 802CE168 0080882D */  daddu $s1, $a0, $zero
/* 0F2B1C 802CE16C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F2B20 802CE170 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2B24 802CE174 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2B28 802CE178 8E050000 */  lw    $a1, ($s0)
/* 0F2B2C 802CE17C 0C0B1EAF */  jal   get_variable
/* 0F2B30 802CE180 26100004 */   addiu $s0, $s0, 4
/* 0F2B34 802CE184 0220202D */  daddu $a0, $s1, $zero
/* 0F2B38 802CE188 8E100000 */  lw    $s0, ($s0)
/* 0F2B3C 802CE18C 0C0B36B0 */  jal   func_802CDAC0
/* 0F2B40 802CE190 0040282D */   daddu $a1, $v0, $zero
/* 0F2B44 802CE194 10400004 */  beqz  $v0, .L802CE1A8
/* 0F2B48 802CE198 0220202D */   daddu $a0, $s1, $zero
/* 0F2B4C 802CE19C 8C460028 */  lw    $a2, 0x28($v0)
/* 0F2B50 802CE1A0 0C0B2026 */  jal   set_variable
/* 0F2B54 802CE1A4 0200282D */   daddu $a1, $s0, $zero
.L802CE1A8:
/* 0F2B58 802CE1A8 24020002 */  addiu $v0, $zero, 2
/* 0F2B5C 802CE1AC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2B60 802CE1B0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2B64 802CE1B4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2B68 802CE1B8 03E00008 */  jr    $ra
/* 0F2B6C 802CE1BC 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F2B70 802CE1C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F2B74 802CE1C4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2B78 802CE1C8 0080882D */  daddu $s1, $a0, $zero
/* 0F2B7C 802CE1CC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F2B80 802CE1D0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2B84 802CE1D4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F2B88 802CE1D8 8E30000C */  lw    $s0, 0xc($s1)
/* 0F2B8C 802CE1DC 8E050000 */  lw    $a1, ($s0)
/* 0F2B90 802CE1E0 0C0B1EAF */  jal   get_variable
/* 0F2B94 802CE1E4 26100004 */   addiu $s0, $s0, 4
/* 0F2B98 802CE1E8 0220202D */  daddu $a0, $s1, $zero
/* 0F2B9C 802CE1EC 8E050000 */  lw    $a1, ($s0)
/* 0F2BA0 802CE1F0 0C0B210B */  jal   get_float_variable
/* 0F2BA4 802CE1F4 0040802D */   daddu $s0, $v0, $zero
/* 0F2BA8 802CE1F8 0220202D */  daddu $a0, $s1, $zero
/* 0F2BAC 802CE1FC 0200282D */  daddu $a1, $s0, $zero
/* 0F2BB0 802CE200 0C0B36B0 */  jal   func_802CDAC0
/* 0F2BB4 802CE204 46000506 */   mov.s $f20, $f0
/* 0F2BB8 802CE208 54400001 */  bnezl $v0, .L802CE210
/* 0F2BBC 802CE20C E4540030 */   swc1  $f20, 0x30($v0)
.L802CE210:
/* 0F2BC0 802CE210 24020002 */  addiu $v0, $zero, 2
/* 0F2BC4 802CE214 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F2BC8 802CE218 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2BCC 802CE21C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2BD0 802CE220 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2BD4 802CE224 03E00008 */  jr    $ra
/* 0F2BD8 802CE228 27BD0028 */   addiu $sp, $sp, 0x28

NpcMoveTo:
/* 0F2BDC 802CE22C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F2BE0 802CE230 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F2BE4 802CE234 0080902D */  daddu $s2, $a0, $zero
/* 0F2BE8 802CE238 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F2BEC 802CE23C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2BF0 802CE240 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2BF4 802CE244 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F2BF8 802CE248 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F2BFC 802CE24C 8E51000C */  lw    $s1, 0xc($s2)
/* 0F2C00 802CE250 54A00001 */  bnezl $a1, .L802CE258
/* 0F2C04 802CE254 AE400070 */   sw    $zero, 0x70($s2)
.L802CE258:
/* 0F2C08 802CE258 8E420070 */  lw    $v0, 0x70($s2)
/* 0F2C0C 802CE25C 1440003D */  bnez  $v0, .L802CE354
/* 0F2C10 802CE260 00000000 */   nop   
/* 0F2C14 802CE264 8E250000 */  lw    $a1, ($s1)
/* 0F2C18 802CE268 26310004 */  addiu $s1, $s1, 4
/* 0F2C1C 802CE26C 0C0B1EAF */  jal   get_variable
/* 0F2C20 802CE270 0240202D */   daddu $a0, $s2, $zero
/* 0F2C24 802CE274 8E250000 */  lw    $a1, ($s1)
/* 0F2C28 802CE278 26310004 */  addiu $s1, $s1, 4
/* 0F2C2C 802CE27C 0240202D */  daddu $a0, $s2, $zero
/* 0F2C30 802CE280 0C0B1EAF */  jal   get_variable
/* 0F2C34 802CE284 0040802D */   daddu $s0, $v0, $zero
/* 0F2C38 802CE288 8E250000 */  lw    $a1, ($s1)
/* 0F2C3C 802CE28C 26310004 */  addiu $s1, $s1, 4
/* 0F2C40 802CE290 4482B000 */  mtc1  $v0, $f22
/* 0F2C44 802CE294 00000000 */  nop   
/* 0F2C48 802CE298 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F2C4C 802CE29C 0C0B1EAF */  jal   get_variable
/* 0F2C50 802CE2A0 0240202D */   daddu $a0, $s2, $zero
/* 0F2C54 802CE2A4 8E250000 */  lw    $a1, ($s1)
/* 0F2C58 802CE2A8 4482A000 */  mtc1  $v0, $f20
/* 0F2C5C 802CE2AC 00000000 */  nop   
/* 0F2C60 802CE2B0 4680A520 */  cvt.s.w $f20, $f20
/* 0F2C64 802CE2B4 0C0B1EAF */  jal   get_variable
/* 0F2C68 802CE2B8 0240202D */   daddu $a0, $s2, $zero
/* 0F2C6C 802CE2BC 0240202D */  daddu $a0, $s2, $zero
/* 0F2C70 802CE2C0 0200282D */  daddu $a1, $s0, $zero
/* 0F2C74 802CE2C4 0C0B36B0 */  jal   func_802CDAC0
/* 0F2C78 802CE2C8 0040882D */   daddu $s1, $v0, $zero
/* 0F2C7C 802CE2CC 0040802D */  daddu $s0, $v0, $zero
/* 0F2C80 802CE2D0 56000003 */  bnezl $s0, .L802CE2E0
/* 0F2C84 802CE2D4 AE500074 */   sw    $s0, 0x74($s2)
/* 0F2C88 802CE2D8 080B3905 */  j     func_802CE414
/* 0F2C8C 802CE2DC 24020002 */   addiu $v0, $zero, 2

.L802CE2E0:
/* 0F2C90 802CE2E0 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F2C94 802CE2E4 C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F2C98 802CE2E8 E6160060 */  swc1  $f22, 0x60($s0)
/* 0F2C9C 802CE2EC 4406B000 */  mfc1  $a2, $f22
/* 0F2CA0 802CE2F0 E6140068 */  swc1  $f20, 0x68($s0)
/* 0F2CA4 802CE2F4 4407A000 */  mfc1  $a3, $f20
/* 0F2CA8 802CE2F8 0C00A7B5 */  jal   dist2D
/* 0F2CAC 802CE2FC A611008E */   sh    $s1, 0x8e($s0)
/* 0F2CB0 802CE300 8602008E */  lh    $v0, 0x8e($s0)
/* 0F2CB4 802CE304 14400007 */  bnez  $v0, .L802CE324
/* 0F2CB8 802CE308 46000186 */   mov.s $f6, $f0
/* 0F2CBC 802CE30C C6000018 */  lwc1  $f0, 0x18($s0)
/* 0F2CC0 802CE310 46003003 */  div.s $f0, $f6, $f0
/* 0F2CC4 802CE314 4600020D */  trunc.w.s $f8, $f0
/* 0F2CC8 802CE318 44024000 */  mfc1  $v0, $f8
/* 0F2CCC 802CE31C 080B38CE */  j     func_802CE338
/* 0F2CD0 802CE320 A602008E */   sh    $v0, 0x8e($s0)

.L802CE324:
/* 0F2CD4 802CE324 44820000 */  mtc1  $v0, $f0
/* 0F2CD8 802CE328 00000000 */  nop   
/* 0F2CDC 802CE32C 46800020 */  cvt.s.w $f0, $f0
/* 0F2CE0 802CE330 46003003 */  div.s $f0, $f6, $f0
/* 0F2CE4 802CE334 E6000018 */  swc1  $f0, 0x18($s0)
func_802CE338:
/* 0F2CE8 802CE338 8602008E */  lh    $v0, 0x8e($s0)
/* 0F2CEC 802CE33C 14400004 */  bnez  $v0, .L802CE350
/* 0F2CF0 802CE340 24020001 */   addiu $v0, $zero, 1
/* 0F2CF4 802CE344 24020001 */  addiu $v0, $zero, 1
/* 0F2CF8 802CE348 A602008E */  sh    $v0, 0x8e($s0)
/* 0F2CFC 802CE34C 24020001 */  addiu $v0, $zero, 1
.L802CE350:
/* 0F2D00 802CE350 AE420070 */  sw    $v0, 0x70($s2)
.L802CE354:
/* 0F2D04 802CE354 8E500074 */  lw    $s0, 0x74($s2)
/* 0F2D08 802CE358 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F2D0C 802CE35C C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F2D10 802CE360 8E060060 */  lw    $a2, 0x60($s0)
/* 0F2D14 802CE364 0C00A720 */  jal   atan2
/* 0F2D18 802CE368 8E070068 */   lw    $a3, 0x68($s0)
/* 0F2D1C 802CE36C 8E050018 */  lw    $a1, 0x18($s0)
/* 0F2D20 802CE370 44060000 */  mfc1  $a2, $f0
/* 0F2D24 802CE374 0200202D */  daddu $a0, $s0, $zero
/* 0F2D28 802CE378 0C00EA95 */  jal   npc_move_heading
/* 0F2D2C 802CE37C AE06000C */   sw    $a2, 0xc($s0)
/* 0F2D30 802CE380 C6000018 */  lwc1  $f0, 0x18($s0)
/* 0F2D34 802CE384 3C014010 */  lui   $at, 0x4010
/* 0F2D38 802CE388 44811800 */  mtc1  $at, $f3
/* 0F2D3C 802CE38C 44801000 */  mtc1  $zero, $f2
/* 0F2D40 802CE390 46000021 */  cvt.d.s $f0, $f0
/* 0F2D44 802CE394 4622003C */  c.lt.d $f0, $f2
/* 0F2D48 802CE398 00000000 */  nop   
/* 0F2D4C 802CE39C 45000003 */  bc1f  .L802CE3AC
/* 0F2D50 802CE3A0 0200202D */   daddu $a0, $s0, $zero
/* 0F2D54 802CE3A4 080B38EC */  j     func_802CE3B0
/* 0F2D58 802CE3A8 0000282D */   daddu $a1, $zero, $zero

.L802CE3AC:
/* 0F2D5C 802CE3AC 24050001 */  addiu $a1, $zero, 1
func_802CE3B0:
/* 0F2D60 802CE3B0 0C00F598 */  jal   func_8003D660
/* 0F2D64 802CE3B4 00000000 */   nop   
/* 0F2D68 802CE3B8 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F2D6C 802CE3BC C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F2D70 802CE3C0 8E060060 */  lw    $a2, 0x60($s0)
/* 0F2D74 802CE3C4 0C00A7B5 */  jal   dist2D
/* 0F2D78 802CE3C8 8E070068 */   lw    $a3, 0x68($s0)
/* 0F2D7C 802CE3CC 46000186 */  mov.s $f6, $f0
/* 0F2D80 802CE3D0 C6040018 */  lwc1  $f4, 0x18($s0)
/* 0F2D84 802CE3D4 3C013FF0 */  lui   $at, 0x3ff0
/* 0F2D88 802CE3D8 44811800 */  mtc1  $at, $f3
/* 0F2D8C 802CE3DC 44801000 */  mtc1  $zero, $f2
/* 0F2D90 802CE3E0 46002021 */  cvt.d.s $f0, $f4
/* 0F2D94 802CE3E4 4622003C */  c.lt.d $f0, $f2
/* 0F2D98 802CE3E8 00000000 */  nop   
/* 0F2D9C 802CE3EC 45000004 */  bc1f  .L802CE400
/* 0F2DA0 802CE3F0 00000000 */   nop   
/* 0F2DA4 802CE3F4 3C013F80 */  lui   $at, 0x3f80
/* 0F2DA8 802CE3F8 44812000 */  mtc1  $at, $f4
/* 0F2DAC 802CE3FC 00000000 */  nop   
.L802CE400:
/* 0F2DB0 802CE400 4604303E */  c.le.s $f6, $f4
/* 0F2DB4 802CE404 00000000 */  nop   
/* 0F2DB8 802CE408 45010002 */  bc1t  .L802CE414
/* 0F2DBC 802CE40C 24020001 */   addiu $v0, $zero, 1
/* 0F2DC0 802CE410 0000102D */  daddu $v0, $zero, $zero
func_802CE414:
.L802CE414:
/* 0F2DC4 802CE414 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F2DC8 802CE418 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F2DCC 802CE41C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F2DD0 802CE420 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F2DD4 802CE424 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F2DD8 802CE428 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F2DDC 802CE42C 03E00008 */  jr    $ra
/* 0F2DE0 802CE430 27BD0030 */   addiu $sp, $sp, 0x30

_npc_jump_to:
/* 0F2DE4 802CE434 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0F2DE8 802CE438 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F2DEC 802CE43C 0080902D */  daddu $s2, $a0, $zero
/* 0F2DF0 802CE440 AFB40020 */  sw    $s4, 0x20($sp)
/* 0F2DF4 802CE444 00C0A02D */  daddu $s4, $a2, $zero
/* 0F2DF8 802CE448 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F2DFC 802CE44C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0F2E00 802CE450 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F2E04 802CE454 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F2E08 802CE458 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 0F2E0C 802CE45C F7B60030 */  sdc1  $f22, 0x30($sp)
/* 0F2E10 802CE460 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0F2E14 802CE464 8E51000C */  lw    $s1, 0xc($s2)
/* 0F2E18 802CE468 10A00002 */  beqz  $a1, .L802CE474
/* 0F2E1C 802CE46C 26530078 */   addiu $s3, $s2, 0x78
/* 0F2E20 802CE470 AE400070 */  sw    $zero, 0x70($s2)
.L802CE474:
/* 0F2E24 802CE474 8E420070 */  lw    $v0, 0x70($s2)
/* 0F2E28 802CE478 14400065 */  bnez  $v0, .L802CE610
/* 0F2E2C 802CE47C 00000000 */   nop   
/* 0F2E30 802CE480 8E250000 */  lw    $a1, ($s1)
/* 0F2E34 802CE484 26310004 */  addiu $s1, $s1, 4
/* 0F2E38 802CE488 0C0B1EAF */  jal   get_variable
/* 0F2E3C 802CE48C 0240202D */   daddu $a0, $s2, $zero
/* 0F2E40 802CE490 8E250000 */  lw    $a1, ($s1)
/* 0F2E44 802CE494 26310004 */  addiu $s1, $s1, 4
/* 0F2E48 802CE498 0240202D */  daddu $a0, $s2, $zero
/* 0F2E4C 802CE49C 0C0B1EAF */  jal   get_variable
/* 0F2E50 802CE4A0 0040802D */   daddu $s0, $v0, $zero
/* 0F2E54 802CE4A4 8E250000 */  lw    $a1, ($s1)
/* 0F2E58 802CE4A8 26310004 */  addiu $s1, $s1, 4
/* 0F2E5C 802CE4AC 4482C000 */  mtc1  $v0, $f24
/* 0F2E60 802CE4B0 00000000 */  nop   
/* 0F2E64 802CE4B4 4680C620 */  cvt.s.w $f24, $f24
/* 0F2E68 802CE4B8 0C0B1EAF */  jal   get_variable
/* 0F2E6C 802CE4BC 0240202D */   daddu $a0, $s2, $zero
/* 0F2E70 802CE4C0 4482B000 */  mtc1  $v0, $f22
/* 0F2E74 802CE4C4 00000000 */  nop   
/* 0F2E78 802CE4C8 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F2E7C 802CE4CC 8E250000 */  lw    $a1, ($s1)
/* 0F2E80 802CE4D0 26310004 */  addiu $s1, $s1, 4
/* 0F2E84 802CE4D4 0C0B1EAF */  jal   get_variable
/* 0F2E88 802CE4D8 0240202D */   daddu $a0, $s2, $zero
/* 0F2E8C 802CE4DC 8E250000 */  lw    $a1, ($s1)
/* 0F2E90 802CE4E0 4482A000 */  mtc1  $v0, $f20
/* 0F2E94 802CE4E4 00000000 */  nop   
/* 0F2E98 802CE4E8 4680A520 */  cvt.s.w $f20, $f20
/* 0F2E9C 802CE4EC 0C0B1EAF */  jal   get_variable
/* 0F2EA0 802CE4F0 0240202D */   daddu $a0, $s2, $zero
/* 0F2EA4 802CE4F4 0240202D */  daddu $a0, $s2, $zero
/* 0F2EA8 802CE4F8 0200282D */  daddu $a1, $s0, $zero
/* 0F2EAC 802CE4FC 0C0B36B0 */  jal   func_802CDAC0
/* 0F2EB0 802CE500 0040882D */   daddu $s1, $v0, $zero
/* 0F2EB4 802CE504 0040802D */  daddu $s0, $v0, $zero
/* 0F2EB8 802CE508 56000003 */  bnezl $s0, .L802CE518
/* 0F2EBC 802CE50C AE500074 */   sw    $s0, 0x74($s2)
/* 0F2EC0 802CE510 080B39A6 */  j     func_802CE698
/* 0F2EC4 802CE514 24020002 */   addiu $v0, $zero, 2

.L802CE518:
/* 0F2EC8 802CE518 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F2ECC 802CE51C C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F2ED0 802CE520 E6180060 */  swc1  $f24, 0x60($s0)
/* 0F2ED4 802CE524 4406C000 */  mfc1  $a2, $f24
/* 0F2ED8 802CE528 E6140068 */  swc1  $f20, 0x68($s0)
/* 0F2EDC 802CE52C 4407A000 */  mfc1  $a3, $f20
/* 0F2EE0 802CE530 E6160064 */  swc1  $f22, 0x64($s0)
/* 0F2EE4 802CE534 0C00A7B5 */  jal   dist2D
/* 0F2EE8 802CE538 A611008E */   sh    $s1, 0x8e($s0)
/* 0F2EEC 802CE53C 46000506 */  mov.s $f20, $f0
/* 0F2EF0 802CE540 3C014000 */  lui   $at, 0x4000
/* 0F2EF4 802CE544 44811800 */  mtc1  $at, $f3
/* 0F2EF8 802CE548 44801000 */  mtc1  $zero, $f2
/* 0F2EFC 802CE54C 4600A021 */  cvt.d.s $f0, $f20
/* 0F2F00 802CE550 4620103C */  c.lt.d $f2, $f0
/* 0F2F04 802CE554 00000000 */  nop   
/* 0F2F08 802CE558 45000009 */  bc1f  .L802CE580
/* 0F2F0C 802CE55C AE400078 */   sw    $zero, 0x78($s2)
/* 0F2F10 802CE560 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F2F14 802CE564 C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F2F18 802CE568 8E060060 */  lw    $a2, 0x60($s0)
/* 0F2F1C 802CE56C 0C00A720 */  jal   atan2
/* 0F2F20 802CE570 8E070068 */   lw    $a3, 0x68($s0)
/* 0F2F24 802CE574 16800002 */  bnez  $s4, .L802CE580
/* 0F2F28 802CE578 E6400078 */   swc1  $f0, 0x78($s2)
/* 0F2F2C 802CE57C E600000C */  swc1  $f0, 0xc($s0)
.L802CE580:
/* 0F2F30 802CE580 C6020064 */  lwc1  $f2, 0x64($s0)
/* 0F2F34 802CE584 C600003C */  lwc1  $f0, 0x3c($s0)
/* 0F2F38 802CE588 8602008E */  lh    $v0, 0x8e($s0)
/* 0F2F3C 802CE58C 14400007 */  bnez  $v0, .L802CE5AC
/* 0F2F40 802CE590 46001581 */   sub.s $f22, $f2, $f0
/* 0F2F44 802CE594 C6000018 */  lwc1  $f0, 0x18($s0)
/* 0F2F48 802CE598 4600A003 */  div.s $f0, $f20, $f0
/* 0F2F4C 802CE59C 4600018D */  trunc.w.s $f6, $f0
/* 0F2F50 802CE5A0 44023000 */  mfc1  $v0, $f6
/* 0F2F54 802CE5A4 080B3970 */  j     func_802CE5C0
/* 0F2F58 802CE5A8 A602008E */   sh    $v0, 0x8e($s0)

.L802CE5AC:
/* 0F2F5C 802CE5AC 44820000 */  mtc1  $v0, $f0
/* 0F2F60 802CE5B0 00000000 */  nop   
/* 0F2F64 802CE5B4 46800020 */  cvt.s.w $f0, $f0
/* 0F2F68 802CE5B8 4600A003 */  div.s $f0, $f20, $f0
/* 0F2F6C 802CE5BC E6000018 */  swc1  $f0, 0x18($s0)
func_802CE5C0:
/* 0F2F70 802CE5C0 8602008E */  lh    $v0, 0x8e($s0)
/* 0F2F74 802CE5C4 C6000014 */  lwc1  $f0, 0x14($s0)
/* 0F2F78 802CE5C8 44822000 */  mtc1  $v0, $f4
/* 0F2F7C 802CE5CC 00000000 */  nop   
/* 0F2F80 802CE5D0 46802120 */  cvt.s.w $f4, $f4
/* 0F2F84 802CE5D4 46040002 */  mul.s $f0, $f0, $f4
/* 0F2F88 802CE5D8 00000000 */  nop   
/* 0F2F8C 802CE5DC 3C013F00 */  lui   $at, 0x3f00
/* 0F2F90 802CE5E0 44811000 */  mtc1  $at, $f2
/* 0F2F94 802CE5E4 00000000 */  nop   
/* 0F2F98 802CE5E8 46020002 */  mul.s $f0, $f0, $f2
/* 0F2F9C 802CE5EC 00000000 */  nop   
/* 0F2FA0 802CE5F0 8E020000 */  lw    $v0, ($s0)
/* 0F2FA4 802CE5F4 4604B103 */  div.s $f4, $f22, $f4
/* 0F2FA8 802CE5F8 34420800 */  ori   $v0, $v0, 0x800
/* 0F2FAC 802CE5FC 46040000 */  add.s $f0, $f0, $f4
/* 0F2FB0 802CE600 AE020000 */  sw    $v0, ($s0)
/* 0F2FB4 802CE604 24020001 */  addiu $v0, $zero, 1
/* 0F2FB8 802CE608 E600001C */  swc1  $f0, 0x1c($s0)
/* 0F2FBC 802CE60C AE420070 */  sw    $v0, 0x70($s2)
.L802CE610:
/* 0F2FC0 802CE610 8E500074 */  lw    $s0, 0x74($s2)
/* 0F2FC4 802CE614 8E660000 */  lw    $a2, ($s3)
/* 0F2FC8 802CE618 8E050018 */  lw    $a1, 0x18($s0)
/* 0F2FCC 802CE61C 0C00EA95 */  jal   npc_move_heading
/* 0F2FD0 802CE620 0200202D */   daddu $a0, $s0, $zero
/* 0F2FD4 802CE624 C604003C */  lwc1  $f4, 0x3c($s0)
/* 0F2FD8 802CE628 C600001C */  lwc1  $f0, 0x1c($s0)
/* 0F2FDC 802CE62C 9602008E */  lhu   $v0, 0x8e($s0)
/* 0F2FE0 802CE630 46002100 */  add.s $f4, $f4, $f0
/* 0F2FE4 802CE634 C6020014 */  lwc1  $f2, 0x14($s0)
/* 0F2FE8 802CE638 2442FFFF */  addiu $v0, $v0, -1
/* 0F2FEC 802CE63C 46020001 */  sub.s $f0, $f0, $f2
/* 0F2FF0 802CE640 A602008E */  sh    $v0, 0x8e($s0)
/* 0F2FF4 802CE644 00021400 */  sll   $v0, $v0, 0x10
/* 0F2FF8 802CE648 E604003C */  swc1  $f4, 0x3c($s0)
/* 0F2FFC 802CE64C 04400003 */  bltz  $v0, .L802CE65C
/* 0F3000 802CE650 E600001C */   swc1  $f0, 0x1c($s0)
/* 0F3004 802CE654 080B39A6 */  j     func_802CE698
/* 0F3008 802CE658 0000102D */   daddu $v0, $zero, $zero

.L802CE65C:
/* 0F300C 802CE65C 0200202D */  daddu $a0, $s0, $zero
/* 0F3010 802CE660 24050002 */  addiu $a1, $zero, 2
/* 0F3014 802CE664 C4800060 */  lwc1  $f0, 0x60($a0)
/* 0F3018 802CE668 C4820064 */  lwc1  $f2, 0x64($a0)
/* 0F301C 802CE66C C4840068 */  lwc1  $f4, 0x68($a0)
/* 0F3020 802CE670 8C820000 */  lw    $v0, ($a0)
/* 0F3024 802CE674 2403F7FF */  addiu $v1, $zero, -0x801
/* 0F3028 802CE678 AC80001C */  sw    $zero, 0x1c($a0)
/* 0F302C 802CE67C 00431024 */  and   $v0, $v0, $v1
/* 0F3030 802CE680 E4800038 */  swc1  $f0, 0x38($a0)
/* 0F3034 802CE684 E482003C */  swc1  $f2, 0x3c($a0)
/* 0F3038 802CE688 E4840040 */  swc1  $f4, 0x40($a0)
/* 0F303C 802CE68C 0C00F598 */  jal   func_8003D660
/* 0F3040 802CE690 AC820000 */   sw    $v0, ($a0)
/* 0F3044 802CE694 24020001 */  addiu $v0, $zero, 1
func_802CE698:
/* 0F3048 802CE698 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0F304C 802CE69C 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F3050 802CE6A0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F3054 802CE6A4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3058 802CE6A8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F305C 802CE6AC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3060 802CE6B0 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 0F3064 802CE6B4 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 0F3068 802CE6B8 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0F306C 802CE6BC 03E00008 */  jr    $ra
/* 0F3070 802CE6C0 27BD0040 */   addiu $sp, $sp, 0x40

NpcJump0:
/* 0F3074 802CE6C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3078 802CE6C8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F307C 802CE6CC 0C0B390D */  jal   _npc_jump_to
/* 0F3080 802CE6D0 0000302D */   daddu $a2, $zero, $zero
/* 0F3084 802CE6D4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F3088 802CE6D8 03E00008 */  jr    $ra
/* 0F308C 802CE6DC 27BD0018 */   addiu $sp, $sp, 0x18

NpcJump1:
/* 0F3090 802CE6E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3094 802CE6E4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F3098 802CE6E8 0C0B390D */  jal   _npc_jump_to
/* 0F309C 802CE6EC 24060001 */   addiu $a2, $zero, 1
/* 0F30A0 802CE6F0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F30A4 802CE6F4 03E00008 */  jr    $ra
/* 0F30A8 802CE6F8 27BD0018 */   addiu $sp, $sp, 0x18

NpcFlyTo:
/* 0F30AC 802CE6FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0F30B0 802CE700 AFB20020 */  sw    $s2, 0x20($sp)
/* 0F30B4 802CE704 0080902D */  daddu $s2, $a0, $zero
/* 0F30B8 802CE708 AFB30024 */  sw    $s3, 0x24($sp)
/* 0F30BC 802CE70C 26530090 */  addiu $s3, $s2, 0x90
/* 0F30C0 802CE710 AFB40028 */  sw    $s4, 0x28($sp)
/* 0F30C4 802CE714 26540094 */  addiu $s4, $s2, 0x94
/* 0F30C8 802CE718 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0F30CC 802CE71C AFBF0030 */  sw    $ra, 0x30($sp)
/* 0F30D0 802CE720 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F30D4 802CE724 AFB00018 */  sw    $s0, 0x18($sp)
/* 0F30D8 802CE728 F7B40038 */  sdc1  $f20, 0x38($sp)
/* 0F30DC 802CE72C 8E50000C */  lw    $s0, 0xc($s2)
/* 0F30E0 802CE730 10A0004A */  beqz  $a1, .L802CE85C
/* 0F30E4 802CE734 26550098 */   addiu $s5, $s2, 0x98
/* 0F30E8 802CE738 8E050000 */  lw    $a1, ($s0)
/* 0F30EC 802CE73C 0C0B1EAF */  jal   get_variable
/* 0F30F0 802CE740 26100004 */   addiu $s0, $s0, 4
/* 0F30F4 802CE744 0240202D */  daddu $a0, $s2, $zero
/* 0F30F8 802CE748 0C0B36B0 */  jal   func_802CDAC0
/* 0F30FC 802CE74C 0040282D */   daddu $a1, $v0, $zero
/* 0F3100 802CE750 0040882D */  daddu $s1, $v0, $zero
/* 0F3104 802CE754 56200003 */  bnezl $s1, .L802CE764
/* 0F3108 802CE758 AE510074 */   sw    $s1, 0x74($s2)
/* 0F310C 802CE75C 080B3A7A */  j     func_802CE9E8
/* 0F3110 802CE760 24020002 */   addiu $v0, $zero, 2

.L802CE764:
/* 0F3114 802CE764 8E050000 */  lw    $a1, ($s0)
/* 0F3118 802CE768 26100004 */  addiu $s0, $s0, 4
/* 0F311C 802CE76C 0C0B210B */  jal   get_float_variable
/* 0F3120 802CE770 0240202D */   daddu $a0, $s2, $zero
/* 0F3124 802CE774 E6200060 */  swc1  $f0, 0x60($s1)
/* 0F3128 802CE778 8E050000 */  lw    $a1, ($s0)
/* 0F312C 802CE77C 26100004 */  addiu $s0, $s0, 4
/* 0F3130 802CE780 0C0B210B */  jal   get_float_variable
/* 0F3134 802CE784 0240202D */   daddu $a0, $s2, $zero
/* 0F3138 802CE788 E6200064 */  swc1  $f0, 0x64($s1)
/* 0F313C 802CE78C 8E050000 */  lw    $a1, ($s0)
/* 0F3140 802CE790 26100004 */  addiu $s0, $s0, 4
/* 0F3144 802CE794 0C0B210B */  jal   get_float_variable
/* 0F3148 802CE798 0240202D */   daddu $a0, $s2, $zero
/* 0F314C 802CE79C E6200068 */  swc1  $f0, 0x68($s1)
/* 0F3150 802CE7A0 8E050000 */  lw    $a1, ($s0)
/* 0F3154 802CE7A4 26100004 */  addiu $s0, $s0, 4
/* 0F3158 802CE7A8 0C0B1EAF */  jal   get_variable
/* 0F315C 802CE7AC 0240202D */   daddu $a0, $s2, $zero
/* 0F3160 802CE7B0 AE42009C */  sw    $v0, 0x9c($s2)
/* 0F3164 802CE7B4 8E050000 */  lw    $a1, ($s0)
/* 0F3168 802CE7B8 26100004 */  addiu $s0, $s0, 4
/* 0F316C 802CE7BC 0C0B1EAF */  jal   get_variable
/* 0F3170 802CE7C0 0240202D */   daddu $a0, $s2, $zero
/* 0F3174 802CE7C4 AE420078 */  sw    $v0, 0x78($s2)
/* 0F3178 802CE7C8 8E050000 */  lw    $a1, ($s0)
/* 0F317C 802CE7CC 0C0B1EAF */  jal   get_variable
/* 0F3180 802CE7D0 0240202D */   daddu $a0, $s2, $zero
/* 0F3184 802CE7D4 AE42007C */  sw    $v0, 0x7c($s2)
/* 0F3188 802CE7D8 C6200038 */  lwc1  $f0, 0x38($s1)
/* 0F318C 802CE7DC A620008E */  sh    $zero, 0x8e($s1)
/* 0F3190 802CE7E0 E6400090 */  swc1  $f0, 0x90($s2)
/* 0F3194 802CE7E4 C620003C */  lwc1  $f0, 0x3c($s1)
/* 0F3198 802CE7E8 E6400094 */  swc1  $f0, 0x94($s2)
/* 0F319C 802CE7EC C6200040 */  lwc1  $f0, 0x40($s1)
/* 0F31A0 802CE7F0 E6400098 */  swc1  $f0, 0x98($s2)
/* 0F31A4 802CE7F4 C62C0038 */  lwc1  $f12, 0x38($s1)
/* 0F31A8 802CE7F8 C62E0040 */  lwc1  $f14, 0x40($s1)
/* 0F31AC 802CE7FC 8E260060 */  lw    $a2, 0x60($s1)
/* 0F31B0 802CE800 0C00A720 */  jal   atan2
/* 0F31B4 802CE804 8E270068 */   lw    $a3, 0x68($s1)
/* 0F31B8 802CE808 C62C0038 */  lwc1  $f12, 0x38($s1)
/* 0F31BC 802CE80C C62E0040 */  lwc1  $f14, 0x40($s1)
/* 0F31C0 802CE810 8E260060 */  lw    $a2, 0x60($s1)
/* 0F31C4 802CE814 8E270068 */  lw    $a3, 0x68($s1)
/* 0F31C8 802CE818 0C00A7B5 */  jal   dist2D
/* 0F31CC 802CE81C E620000C */   swc1  $f0, 0xc($s1)
/* 0F31D0 802CE820 46000086 */  mov.s $f2, $f0
/* 0F31D4 802CE824 E6220010 */  swc1  $f2, 0x10($s1)
/* 0F31D8 802CE828 8E42009C */  lw    $v0, 0x9c($s2)
/* 0F31DC 802CE82C 14400006 */  bnez  $v0, .L802CE848
/* 0F31E0 802CE830 00000000 */   nop   
/* 0F31E4 802CE834 C6200018 */  lwc1  $f0, 0x18($s1)
/* 0F31E8 802CE838 46001003 */  div.s $f0, $f2, $f0
/* 0F31EC 802CE83C 4600018D */  trunc.w.s $f6, $f0
/* 0F31F0 802CE840 080B3A17 */  j     func_802CE85C
/* 0F31F4 802CE844 E646009C */   swc1  $f6, 0x9c($s2)

.L802CE848:
/* 0F31F8 802CE848 44820000 */  mtc1  $v0, $f0
/* 0F31FC 802CE84C 00000000 */  nop   
/* 0F3200 802CE850 46800020 */  cvt.s.w $f0, $f0
/* 0F3204 802CE854 46001003 */  div.s $f0, $f2, $f0
/* 0F3208 802CE858 E6200018 */  swc1  $f0, 0x18($s1)
func_802CE85C:
.L802CE85C:
/* 0F320C 802CE85C 8E510074 */  lw    $s1, 0x74($s2)
/* 0F3210 802CE860 8E42009C */  lw    $v0, 0x9c($s2)
/* 0F3214 802CE864 8627008E */  lh    $a3, 0x8e($s1)
/* 0F3218 802CE868 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F321C 802CE86C 8E44007C */  lw    $a0, 0x7c($s2)
/* 0F3220 802CE870 8E650000 */  lw    $a1, ($s3)
/* 0F3224 802CE874 0C00A8ED */  jal   update_lerp
/* 0F3228 802CE878 8E260060 */   lw    $a2, 0x60($s1)
/* 0F322C 802CE87C E6200038 */  swc1  $f0, 0x38($s1)
/* 0F3230 802CE880 8E42009C */  lw    $v0, 0x9c($s2)
/* 0F3234 802CE884 8627008E */  lh    $a3, 0x8e($s1)
/* 0F3238 802CE888 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F323C 802CE88C 8E44007C */  lw    $a0, 0x7c($s2)
/* 0F3240 802CE890 8E850000 */  lw    $a1, ($s4)
/* 0F3244 802CE894 0C00A8ED */  jal   update_lerp
/* 0F3248 802CE898 8E260064 */   lw    $a2, 0x64($s1)
/* 0F324C 802CE89C E620003C */  swc1  $f0, 0x3c($s1)
/* 0F3250 802CE8A0 8E42009C */  lw    $v0, 0x9c($s2)
/* 0F3254 802CE8A4 8627008E */  lh    $a3, 0x8e($s1)
/* 0F3258 802CE8A8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F325C 802CE8AC 8E44007C */  lw    $a0, 0x7c($s2)
/* 0F3260 802CE8B0 8EA50000 */  lw    $a1, ($s5)
/* 0F3264 802CE8B4 0C00A8ED */  jal   update_lerp
/* 0F3268 802CE8B8 8E260068 */   lw    $a2, 0x68($s1)
/* 0F326C 802CE8BC 9622008E */  lhu   $v0, 0x8e($s1)
/* 0F3270 802CE8C0 E6200040 */  swc1  $f0, 0x40($s1)
/* 0F3274 802CE8C4 24420001 */  addiu $v0, $v0, 1
/* 0F3278 802CE8C8 A622008E */  sh    $v0, 0x8e($s1)
/* 0F327C 802CE8CC 00021400 */  sll   $v0, $v0, 0x10
/* 0F3280 802CE8D0 8E43009C */  lw    $v1, 0x9c($s2)
/* 0F3284 802CE8D4 00021403 */  sra   $v0, $v0, 0x10
/* 0F3288 802CE8D8 0043102A */  slt   $v0, $v0, $v1
/* 0F328C 802CE8DC 14400008 */  bnez  $v0, .L802CE900
/* 0F3290 802CE8E0 24020002 */   addiu $v0, $zero, 2
/* 0F3294 802CE8E4 C6200060 */  lwc1  $f0, 0x60($s1)
/* 0F3298 802CE8E8 C6220064 */  lwc1  $f2, 0x64($s1)
/* 0F329C 802CE8EC C6240068 */  lwc1  $f4, 0x68($s1)
/* 0F32A0 802CE8F0 E6200038 */  swc1  $f0, 0x38($s1)
/* 0F32A4 802CE8F4 E622003C */  swc1  $f2, 0x3c($s1)
/* 0F32A8 802CE8F8 080B3A7A */  j     func_802CE9E8
/* 0F32AC 802CE8FC E6240040 */   swc1  $f4, 0x40($s1)

.L802CE900:
/* 0F32B0 802CE900 C62C0038 */  lwc1  $f12, 0x38($s1)
/* 0F32B4 802CE904 C62E0040 */  lwc1  $f14, 0x40($s1)
/* 0F32B8 802CE908 8E260060 */  lw    $a2, 0x60($s1)
/* 0F32BC 802CE90C 0C00A7B5 */  jal   dist2D
/* 0F32C0 802CE910 8E270068 */   lw    $a3, 0x68($s1)
/* 0F32C4 802CE914 4480A000 */  mtc1  $zero, $f20
/* 0F32C8 802CE918 00000000 */  nop   
/* 0F32CC 802CE91C 46140032 */  c.eq.s $f0, $f20
/* 0F32D0 802CE920 00000000 */  nop   
/* 0F32D4 802CE924 45000003 */  bc1f  .L802CE934
/* 0F32D8 802CE928 46000086 */   mov.s $f2, $f0
/* 0F32DC 802CE92C 3C013F80 */  lui   $at, 0x3f80
/* 0F32E0 802CE930 44811000 */  mtc1  $at, $f2
.L802CE934:
/* 0F32E4 802CE934 C6200010 */  lwc1  $f0, 0x10($s1)
/* 0F32E8 802CE938 46140032 */  c.eq.s $f0, $f20
/* 0F32EC 802CE93C 00000000 */  nop   
/* 0F32F0 802CE940 45000006 */  bc1f  .L802CE95C
/* 0F32F4 802CE944 00000000 */   nop   
/* 0F32F8 802CE948 3C013F80 */  lui   $at, 0x3f80
/* 0F32FC 802CE94C 44810000 */  mtc1  $at, $f0
/* 0F3300 802CE950 00000000 */  nop   
/* 0F3304 802CE954 E6200010 */  swc1  $f0, 0x10($s1)
/* 0F3308 802CE958 C6200010 */  lwc1  $f0, 0x10($s1)
.L802CE95C:
/* 0F330C 802CE95C 3C013FF0 */  lui   $at, 0x3ff0
/* 0F3310 802CE960 44816800 */  mtc1  $at, $f13
/* 0F3314 802CE964 44806000 */  mtc1  $zero, $f12
/* 0F3318 802CE968 46001003 */  div.s $f0, $f2, $f0
/* 0F331C 802CE96C 46000021 */  cvt.d.s $f0, $f0
/* 0F3320 802CE970 46206301 */  sub.d $f12, $f12, $f0
/* 0F3324 802CE974 3C01802E */  lui   $at, 0x802e
/* 0F3328 802CE978 D420A1E0 */  ldc1  $f0, -0x5e20($at)
/* 0F332C 802CE97C 46206302 */  mul.d $f12, $f12, $f0
/* 0F3330 802CE980 00000000 */  nop   
/* 0F3334 802CE984 0C00A8BB */  jal   sin_deg
/* 0F3338 802CE988 46206320 */   cvt.s.d $f12, $f12
/* 0F333C 802CE98C 8E440078 */  lw    $a0, 0x78($s2)
/* 0F3340 802CE990 14800002 */  bnez  $a0, .L802CE99C
/* 0F3344 802CE994 46000106 */   mov.s $f4, $f0
/* 0F3348 802CE998 4600A106 */  mov.s $f4, $f20
.L802CE99C:
/* 0F334C 802CE99C 04810007 */  bgez  $a0, .L802CE9BC
/* 0F3350 802CE9A0 00041023 */   negu  $v0, $a0
/* 0F3354 802CE9A4 44821000 */  mtc1  $v0, $f2
/* 0F3358 802CE9A8 00000000 */  nop   
/* 0F335C 802CE9AC 468010A0 */  cvt.s.w $f2, $f2
/* 0F3360 802CE9B0 46002007 */  neg.s $f0, $f4
/* 0F3364 802CE9B4 46020102 */  mul.s $f4, $f0, $f2
/* 0F3368 802CE9B8 00000000 */  nop   
.L802CE9BC:
/* 0F336C 802CE9BC 18800006 */  blez  $a0, .L802CE9D8
/* 0F3370 802CE9C0 00000000 */   nop   
/* 0F3374 802CE9C4 44840000 */  mtc1  $a0, $f0
/* 0F3378 802CE9C8 00000000 */  nop   
/* 0F337C 802CE9CC 46800020 */  cvt.s.w $f0, $f0
/* 0F3380 802CE9D0 46002102 */  mul.s $f4, $f4, $f0
/* 0F3384 802CE9D4 00000000 */  nop   
.L802CE9D8:
/* 0F3388 802CE9D8 C620003C */  lwc1  $f0, 0x3c($s1)
/* 0F338C 802CE9DC 46040000 */  add.s $f0, $f0, $f4
/* 0F3390 802CE9E0 0000102D */  daddu $v0, $zero, $zero
/* 0F3394 802CE9E4 E620003C */  swc1  $f0, 0x3c($s1)
func_802CE9E8:
/* 0F3398 802CE9E8 8FBF0030 */  lw    $ra, 0x30($sp)
/* 0F339C 802CE9EC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0F33A0 802CE9F0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0F33A4 802CE9F4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0F33A8 802CE9F8 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F33AC 802CE9FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F33B0 802CEA00 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F33B4 802CEA04 D7B40038 */  ldc1  $f20, 0x38($sp)
/* 0F33B8 802CEA08 03E00008 */  jr    $ra
/* 0F33BC 802CEA0C 27BD0040 */   addiu $sp, $sp, 0x40

GetNpcYaw:
/* 0F33C0 802CEA10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F33C4 802CEA14 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F33C8 802CEA18 0080882D */  daddu $s1, $a0, $zero
/* 0F33CC 802CEA1C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F33D0 802CEA20 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F33D4 802CEA24 8E30000C */  lw    $s0, 0xc($s1)
/* 0F33D8 802CEA28 8E050000 */  lw    $a1, ($s0)
/* 0F33DC 802CEA2C 0C0B1EAF */  jal   get_variable
/* 0F33E0 802CEA30 26100004 */   addiu $s0, $s0, 4
/* 0F33E4 802CEA34 0220202D */  daddu $a0, $s1, $zero
/* 0F33E8 802CEA38 8E100000 */  lw    $s0, ($s0)
/* 0F33EC 802CEA3C 0C0B36B0 */  jal   func_802CDAC0
/* 0F33F0 802CEA40 0040282D */   daddu $a1, $v0, $zero
/* 0F33F4 802CEA44 5040000A */  beql  $v0, $zero, .L802CEA70
/* 0F33F8 802CEA48 24020002 */   addiu $v0, $zero, 2
/* 0F33FC 802CEA4C C44C000C */  lwc1  $f12, 0xc($v0)
/* 0F3400 802CEA50 0C00A6C9 */  jal   clamp_angle
/* 0F3404 802CEA54 00000000 */   nop   
/* 0F3408 802CEA58 0220202D */  daddu $a0, $s1, $zero
/* 0F340C 802CEA5C 4600008D */  trunc.w.s $f2, $f0
/* 0F3410 802CEA60 44061000 */  mfc1  $a2, $f2
/* 0F3414 802CEA64 0C0B2026 */  jal   set_variable
/* 0F3418 802CEA68 0200282D */   daddu $a1, $s0, $zero
/* 0F341C 802CEA6C 24020002 */  addiu $v0, $zero, 2
.L802CEA70:
/* 0F3420 802CEA70 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F3424 802CEA74 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3428 802CEA78 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F342C 802CEA7C 03E00008 */  jr    $ra
/* 0F3430 802CEA80 27BD0020 */   addiu $sp, $sp, 0x20

SetNpcYaw:
/* 0F3434 802CEA84 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F3438 802CEA88 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F343C 802CEA8C 0080902D */  daddu $s2, $a0, $zero
/* 0F3440 802CEA90 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F3444 802CEA94 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3448 802CEA98 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F344C 802CEA9C 8E50000C */  lw    $s0, 0xc($s2)
/* 0F3450 802CEAA0 8E050000 */  lw    $a1, ($s0)
/* 0F3454 802CEAA4 0C0B1EAF */  jal   get_variable
/* 0F3458 802CEAA8 26100004 */   addiu $s0, $s0, 4
/* 0F345C 802CEAAC 0240202D */  daddu $a0, $s2, $zero
/* 0F3460 802CEAB0 0C0B36B0 */  jal   func_802CDAC0
/* 0F3464 802CEAB4 0040282D */   daddu $a1, $v0, $zero
/* 0F3468 802CEAB8 0040882D */  daddu $s1, $v0, $zero
/* 0F346C 802CEABC 1220000B */  beqz  $s1, .L802CEAEC
/* 0F3470 802CEAC0 24020002 */   addiu $v0, $zero, 2
/* 0F3474 802CEAC4 8E050000 */  lw    $a1, ($s0)
/* 0F3478 802CEAC8 0C0B1EAF */  jal   get_variable
/* 0F347C 802CEACC 0240202D */   daddu $a0, $s2, $zero
/* 0F3480 802CEAD0 44820000 */  mtc1  $v0, $f0
/* 0F3484 802CEAD4 00000000 */  nop   
/* 0F3488 802CEAD8 46800020 */  cvt.s.w $f0, $f0
/* 0F348C 802CEADC 44050000 */  mfc1  $a1, $f0
/* 0F3490 802CEAE0 0C00ECD0 */  jal   set_npc_yaw
/* 0F3494 802CEAE4 0220202D */   daddu $a0, $s1, $zero
/* 0F3498 802CEAE8 24020002 */  addiu $v0, $zero, 2
.L802CEAEC:
/* 0F349C 802CEAEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F34A0 802CEAF0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F34A4 802CEAF4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F34A8 802CEAF8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F34AC 802CEAFC 03E00008 */  jr    $ra
/* 0F34B0 802CEB00 27BD0020 */   addiu $sp, $sp, 0x20

InterpNpcYaw:
/* 0F34B4 802CEB04 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F34B8 802CEB08 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F34BC 802CEB0C 0080902D */  daddu $s2, $a0, $zero
/* 0F34C0 802CEB10 AFB50024 */  sw    $s5, 0x24($sp)
/* 0F34C4 802CEB14 26550074 */  addiu $s5, $s2, 0x74
/* 0F34C8 802CEB18 AFB40020 */  sw    $s4, 0x20($sp)
/* 0F34CC 802CEB1C 26540078 */  addiu $s4, $s2, 0x78
/* 0F34D0 802CEB20 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F34D4 802CEB24 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0F34D8 802CEB28 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F34DC 802CEB2C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F34E0 802CEB30 8E51000C */  lw    $s1, 0xc($s2)
/* 0F34E4 802CEB34 10A0003B */  beqz  $a1, .L802CEC24
/* 0F34E8 802CEB38 2653007C */   addiu $s3, $s2, 0x7c
/* 0F34EC 802CEB3C 8E250000 */  lw    $a1, ($s1)
/* 0F34F0 802CEB40 0C0B1EAF */  jal   get_variable
/* 0F34F4 802CEB44 26310004 */   addiu $s1, $s1, 4
/* 0F34F8 802CEB48 0240202D */  daddu $a0, $s2, $zero
/* 0F34FC 802CEB4C 0C0B36B0 */  jal   func_802CDAC0
/* 0F3500 802CEB50 0040282D */   daddu $a1, $v0, $zero
/* 0F3504 802CEB54 0040802D */  daddu $s0, $v0, $zero
/* 0F3508 802CEB58 12000052 */  beqz  $s0, .L802CECA4
/* 0F350C 802CEB5C 24020002 */   addiu $v0, $zero, 2
/* 0F3510 802CEB60 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F3514 802CEB64 E6400074 */  swc1  $f0, 0x74($s2)
/* 0F3518 802CEB68 8E250000 */  lw    $a1, ($s1)
/* 0F351C 802CEB6C 0C0B1EAF */  jal   get_variable
/* 0F3520 802CEB70 0240202D */   daddu $a0, $s2, $zero
/* 0F3524 802CEB74 C6420074 */  lwc1  $f2, 0x74($s2)
/* 0F3528 802CEB78 44820000 */  mtc1  $v0, $f0
/* 0F352C 802CEB7C 00000000 */  nop   
/* 0F3530 802CEB80 46800020 */  cvt.s.w $f0, $f0
/* 0F3534 802CEB84 46020001 */  sub.s $f0, $f0, $f2
/* 0F3538 802CEB88 26310004 */  addiu $s1, $s1, 4
/* 0F353C 802CEB8C AE500070 */  sw    $s0, 0x70($s2)
/* 0F3540 802CEB90 E6400078 */  swc1  $f0, 0x78($s2)
/* 0F3544 802CEB94 8E250000 */  lw    $a1, ($s1)
/* 0F3548 802CEB98 0C0B1EAF */  jal   get_variable
/* 0F354C 802CEB9C 0240202D */   daddu $a0, $s2, $zero
/* 0F3550 802CEBA0 14400005 */  bnez  $v0, .L802CEBB8
/* 0F3554 802CEBA4 AE42007C */   sw    $v0, 0x7c($s2)
/* 0F3558 802CEBA8 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F355C 802CEBAC C6420078 */  lwc1  $f2, 0x78($s2)
/* 0F3560 802CEBB0 080B3B0F */  j     func_802CEC3C
/* 0F3564 802CEBB4 46020000 */   add.s $f0, $f0, $f2

.L802CEBB8:
/* 0F3568 802CEBB8 A600008E */  sh    $zero, 0x8e($s0)
/* 0F356C 802CEBBC C6420078 */  lwc1  $f2, 0x78($s2)
/* 0F3570 802CEBC0 3C01C334 */  lui   $at, 0xc334
/* 0F3574 802CEBC4 44810000 */  mtc1  $at, $f0
/* 0F3578 802CEBC8 00000000 */  nop   
/* 0F357C 802CEBCC 4600103C */  c.lt.s $f2, $f0
/* 0F3580 802CEBD0 00000000 */  nop   
/* 0F3584 802CEBD4 45000007 */  bc1f  .L802CEBF4
/* 0F3588 802CEBD8 00000000 */   nop   
/* 0F358C 802CEBDC 3C0143B4 */  lui   $at, 0x43b4
/* 0F3590 802CEBE0 44810000 */  mtc1  $at, $f0
/* 0F3594 802CEBE4 00000000 */  nop   
/* 0F3598 802CEBE8 46001000 */  add.s $f0, $f2, $f0
/* 0F359C 802CEBEC E6400078 */  swc1  $f0, 0x78($s2)
/* 0F35A0 802CEBF0 C6420078 */  lwc1  $f2, 0x78($s2)
.L802CEBF4:
/* 0F35A4 802CEBF4 3C014334 */  lui   $at, 0x4334
/* 0F35A8 802CEBF8 44810000 */  mtc1  $at, $f0
/* 0F35AC 802CEBFC 00000000 */  nop   
/* 0F35B0 802CEC00 4602003C */  c.lt.s $f0, $f2
/* 0F35B4 802CEC04 00000000 */  nop   
/* 0F35B8 802CEC08 45000006 */  bc1f  .L802CEC24
/* 0F35BC 802CEC0C 00000000 */   nop   
/* 0F35C0 802CEC10 3C0143B4 */  lui   $at, 0x43b4
/* 0F35C4 802CEC14 44810000 */  mtc1  $at, $f0
/* 0F35C8 802CEC18 00000000 */  nop   
/* 0F35CC 802CEC1C 46001001 */  sub.s $f0, $f2, $f0
/* 0F35D0 802CEC20 E6400078 */  swc1  $f0, 0x78($s2)
.L802CEC24:
/* 0F35D4 802CEC24 8E620000 */  lw    $v0, ($s3)
/* 0F35D8 802CEC28 1C400007 */  bgtz  $v0, .L802CEC48
/* 0F35DC 802CEC2C 8E500070 */   lw    $s0, 0x70($s2)
/* 0F35E0 802CEC30 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F35E4 802CEC34 C6820000 */  lwc1  $f2, ($s4)
/* 0F35E8 802CEC38 46020000 */  add.s $f0, $f0, $f2
func_802CEC3C:
/* 0F35EC 802CEC3C 24020002 */  addiu $v0, $zero, 2
/* 0F35F0 802CEC40 080B3B29 */  j     func_802CECA4
/* 0F35F4 802CEC44 E600000C */   swc1  $f0, 0xc($s0)

.L802CEC48:
/* 0F35F8 802CEC48 9602008E */  lhu   $v0, 0x8e($s0)
/* 0F35FC 802CEC4C 24420001 */  addiu $v0, $v0, 1
/* 0F3600 802CEC50 A602008E */  sh    $v0, 0x8e($s0)
/* 0F3604 802CEC54 00021400 */  sll   $v0, $v0, 0x10
/* 0F3608 802CEC58 00021403 */  sra   $v0, $v0, 0x10
/* 0F360C 802CEC5C C6800000 */  lwc1  $f0, ($s4)
/* 0F3610 802CEC60 44821000 */  mtc1  $v0, $f2
/* 0F3614 802CEC64 00000000 */  nop   
/* 0F3618 802CEC68 468010A0 */  cvt.s.w $f2, $f2
/* 0F361C 802CEC6C 46020002 */  mul.s $f0, $f0, $f2
/* 0F3620 802CEC70 00000000 */  nop   
/* 0F3624 802CEC74 C6AC0000 */  lwc1  $f12, ($s5)
/* 0F3628 802CEC78 C6620000 */  lwc1  $f2, ($s3)
/* 0F362C 802CEC7C 468010A0 */  cvt.s.w $f2, $f2
/* 0F3630 802CEC80 46020003 */  div.s $f0, $f0, $f2
/* 0F3634 802CEC84 46006300 */  add.s $f12, $f12, $f0
/* 0F3638 802CEC88 0C00A6C9 */  jal   clamp_angle
/* 0F363C 802CEC8C E60C000C */   swc1  $f12, 0xc($s0)
/* 0F3640 802CEC90 8602008E */  lh    $v0, 0x8e($s0)
/* 0F3644 802CEC94 E600000C */  swc1  $f0, 0xc($s0)
/* 0F3648 802CEC98 8E630000 */  lw    $v1, ($s3)
/* 0F364C 802CEC9C 0043102A */  slt   $v0, $v0, $v1
/* 0F3650 802CECA0 38420001 */  xori  $v0, $v0, 1
func_802CECA4:
.L802CECA4:
/* 0F3654 802CECA4 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0F3658 802CECA8 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F365C 802CECAC 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F3660 802CECB0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F3664 802CECB4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3668 802CECB8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F366C 802CECBC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3670 802CECC0 03E00008 */  jr    $ra
/* 0F3674 802CECC4 27BD0030 */   addiu $sp, $sp, 0x30

NpcFacePlayer:
/* 0F3678 802CECC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F367C 802CECCC AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3680 802CECD0 0080882D */  daddu $s1, $a0, $zero
/* 0F3684 802CECD4 AFB40020 */  sw    $s4, 0x20($sp)
/* 0F3688 802CECD8 3C148011 */  lui   $s4, 0x8011
/* 0F368C 802CECDC 2694EFC8 */  addiu $s4, $s4, -0x1038
/* 0F3690 802CECE0 AFB60028 */  sw    $s6, 0x28($sp)
/* 0F3694 802CECE4 26360074 */  addiu $s6, $s1, 0x74
/* 0F3698 802CECE8 AFB50024 */  sw    $s5, 0x24($sp)
/* 0F369C 802CECEC 26350078 */  addiu $s5, $s1, 0x78
/* 0F36A0 802CECF0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F36A4 802CECF4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0F36A8 802CECF8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F36AC 802CECFC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F36B0 802CED00 8E32000C */  lw    $s2, 0xc($s1)
/* 0F36B4 802CED04 10A00034 */  beqz  $a1, .L802CEDD8
/* 0F36B8 802CED08 2633007C */   addiu $s3, $s1, 0x7c
/* 0F36BC 802CED0C 8E450000 */  lw    $a1, ($s2)
/* 0F36C0 802CED10 0C0B1EAF */  jal   get_variable
/* 0F36C4 802CED14 26520004 */   addiu $s2, $s2, 4
/* 0F36C8 802CED18 0220202D */  daddu $a0, $s1, $zero
/* 0F36CC 802CED1C 0C0B36B0 */  jal   func_802CDAC0
/* 0F36D0 802CED20 0040282D */   daddu $a1, $v0, $zero
/* 0F36D4 802CED24 0040802D */  daddu $s0, $v0, $zero
/* 0F36D8 802CED28 1200004B */  beqz  $s0, .L802CEE58
/* 0F36DC 802CED2C 24020002 */   addiu $v0, $zero, 2
/* 0F36E0 802CED30 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F36E4 802CED34 E6200074 */  swc1  $f0, 0x74($s1)
/* 0F36E8 802CED38 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F36EC 802CED3C C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F36F0 802CED40 8E860028 */  lw    $a2, 0x28($s4)
/* 0F36F4 802CED44 0C00A720 */  jal   atan2
/* 0F36F8 802CED48 8E870030 */   lw    $a3, 0x30($s4)
/* 0F36FC 802CED4C C6220074 */  lwc1  $f2, 0x74($s1)
/* 0F3700 802CED50 46020001 */  sub.s $f0, $f0, $f2
/* 0F3704 802CED54 AE300070 */  sw    $s0, 0x70($s1)
/* 0F3708 802CED58 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F370C 802CED5C 8E450000 */  lw    $a1, ($s2)
/* 0F3710 802CED60 0C0B1EAF */  jal   get_variable
/* 0F3714 802CED64 0220202D */   daddu $a0, $s1, $zero
/* 0F3718 802CED68 AE22007C */  sw    $v0, 0x7c($s1)
/* 0F371C 802CED6C A600008E */  sh    $zero, 0x8e($s0)
/* 0F3720 802CED70 C6220078 */  lwc1  $f2, 0x78($s1)
/* 0F3724 802CED74 3C01C334 */  lui   $at, 0xc334
/* 0F3728 802CED78 44810000 */  mtc1  $at, $f0
/* 0F372C 802CED7C 00000000 */  nop   
/* 0F3730 802CED80 4600103C */  c.lt.s $f2, $f0
/* 0F3734 802CED84 00000000 */  nop   
/* 0F3738 802CED88 45000007 */  bc1f  .L802CEDA8
/* 0F373C 802CED8C 00000000 */   nop   
/* 0F3740 802CED90 3C0143B4 */  lui   $at, 0x43b4
/* 0F3744 802CED94 44810000 */  mtc1  $at, $f0
/* 0F3748 802CED98 00000000 */  nop   
/* 0F374C 802CED9C 46001000 */  add.s $f0, $f2, $f0
/* 0F3750 802CEDA0 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F3754 802CEDA4 C6220078 */  lwc1  $f2, 0x78($s1)
.L802CEDA8:
/* 0F3758 802CEDA8 3C014334 */  lui   $at, 0x4334
/* 0F375C 802CEDAC 44810000 */  mtc1  $at, $f0
/* 0F3760 802CEDB0 00000000 */  nop   
/* 0F3764 802CEDB4 4602003C */  c.lt.s $f0, $f2
/* 0F3768 802CEDB8 00000000 */  nop   
/* 0F376C 802CEDBC 45000006 */  bc1f  .L802CEDD8
/* 0F3770 802CEDC0 00000000 */   nop   
/* 0F3774 802CEDC4 3C0143B4 */  lui   $at, 0x43b4
/* 0F3778 802CEDC8 44810000 */  mtc1  $at, $f0
/* 0F377C 802CEDCC 00000000 */  nop   
/* 0F3780 802CEDD0 46001001 */  sub.s $f0, $f2, $f0
/* 0F3784 802CEDD4 E6200078 */  swc1  $f0, 0x78($s1)
.L802CEDD8:
/* 0F3788 802CEDD8 8E620000 */  lw    $v0, ($s3)
/* 0F378C 802CEDDC 8E300070 */  lw    $s0, 0x70($s1)
/* 0F3790 802CEDE0 1C400006 */  bgtz  $v0, .L802CEDFC
/* 0F3794 802CEDE4 24020002 */   addiu $v0, $zero, 2
/* 0F3798 802CEDE8 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F379C 802CEDEC C6A20000 */  lwc1  $f2, ($s5)
/* 0F37A0 802CEDF0 46020000 */  add.s $f0, $f0, $f2
/* 0F37A4 802CEDF4 080B3B96 */  j     func_802CEE58
/* 0F37A8 802CEDF8 E600000C */   swc1  $f0, 0xc($s0)

.L802CEDFC:
/* 0F37AC 802CEDFC 9602008E */  lhu   $v0, 0x8e($s0)
/* 0F37B0 802CEE00 24420001 */  addiu $v0, $v0, 1
/* 0F37B4 802CEE04 A602008E */  sh    $v0, 0x8e($s0)
/* 0F37B8 802CEE08 00021400 */  sll   $v0, $v0, 0x10
/* 0F37BC 802CEE0C 00021403 */  sra   $v0, $v0, 0x10
/* 0F37C0 802CEE10 C6A00000 */  lwc1  $f0, ($s5)
/* 0F37C4 802CEE14 44821000 */  mtc1  $v0, $f2
/* 0F37C8 802CEE18 00000000 */  nop   
/* 0F37CC 802CEE1C 468010A0 */  cvt.s.w $f2, $f2
/* 0F37D0 802CEE20 46020002 */  mul.s $f0, $f0, $f2
/* 0F37D4 802CEE24 00000000 */  nop   
/* 0F37D8 802CEE28 C6CC0000 */  lwc1  $f12, ($s6)
/* 0F37DC 802CEE2C C6620000 */  lwc1  $f2, ($s3)
/* 0F37E0 802CEE30 468010A0 */  cvt.s.w $f2, $f2
/* 0F37E4 802CEE34 46020003 */  div.s $f0, $f0, $f2
/* 0F37E8 802CEE38 46006300 */  add.s $f12, $f12, $f0
/* 0F37EC 802CEE3C 0C00A6C9 */  jal   clamp_angle
/* 0F37F0 802CEE40 E60C000C */   swc1  $f12, 0xc($s0)
/* 0F37F4 802CEE44 8602008E */  lh    $v0, 0x8e($s0)
/* 0F37F8 802CEE48 E600000C */  swc1  $f0, 0xc($s0)
/* 0F37FC 802CEE4C 8E630000 */  lw    $v1, ($s3)
/* 0F3800 802CEE50 0043102A */  slt   $v0, $v0, $v1
/* 0F3804 802CEE54 38420001 */  xori  $v0, $v0, 1
func_802CEE58:
.L802CEE58:
/* 0F3808 802CEE58 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0F380C 802CEE5C 8FB60028 */  lw    $s6, 0x28($sp)
/* 0F3810 802CEE60 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F3814 802CEE64 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F3818 802CEE68 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F381C 802CEE6C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3820 802CEE70 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3824 802CEE74 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3828 802CEE78 03E00008 */  jr    $ra
/* 0F382C 802CEE7C 27BD0030 */   addiu $sp, $sp, 0x30

NpcFaceNpc:
/* 0F3830 802CEE80 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F3834 802CEE84 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3838 802CEE88 0080882D */  daddu $s1, $a0, $zero
/* 0F383C 802CEE8C AFB60028 */  sw    $s6, 0x28($sp)
/* 0F3840 802CEE90 26360074 */  addiu $s6, $s1, 0x74
/* 0F3844 802CEE94 AFB50024 */  sw    $s5, 0x24($sp)
/* 0F3848 802CEE98 26350078 */  addiu $s5, $s1, 0x78
/* 0F384C 802CEE9C AFB40020 */  sw    $s4, 0x20($sp)
/* 0F3850 802CEEA0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0F3854 802CEEA4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F3858 802CEEA8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F385C 802CEEAC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3860 802CEEB0 8E32000C */  lw    $s2, 0xc($s1)
/* 0F3864 802CEEB4 10A00040 */  beqz  $a1, .L802CEFB8
/* 0F3868 802CEEB8 2634007C */   addiu $s4, $s1, 0x7c
/* 0F386C 802CEEBC 8E450000 */  lw    $a1, ($s2)
/* 0F3870 802CEEC0 0C0B1EAF */  jal   get_variable
/* 0F3874 802CEEC4 26520004 */   addiu $s2, $s2, 4
/* 0F3878 802CEEC8 8E450000 */  lw    $a1, ($s2)
/* 0F387C 802CEECC 26520004 */  addiu $s2, $s2, 4
/* 0F3880 802CEED0 0220202D */  daddu $a0, $s1, $zero
/* 0F3884 802CEED4 0C0B1EAF */  jal   get_variable
/* 0F3888 802CEED8 0040802D */   daddu $s0, $v0, $zero
/* 0F388C 802CEEDC 0220202D */  daddu $a0, $s1, $zero
/* 0F3890 802CEEE0 0C0B36B0 */  jal   func_802CDAC0
/* 0F3894 802CEEE4 0040282D */   daddu $a1, $v0, $zero
/* 0F3898 802CEEE8 0040982D */  daddu $s3, $v0, $zero
/* 0F389C 802CEEEC 12600006 */  beqz  $s3, .L802CEF08
/* 0F38A0 802CEEF0 0220202D */   daddu $a0, $s1, $zero
/* 0F38A4 802CEEF4 0C0B36B0 */  jal   func_802CDAC0
/* 0F38A8 802CEEF8 0200282D */   daddu $a1, $s0, $zero
/* 0F38AC 802CEEFC 0040802D */  daddu $s0, $v0, $zero
/* 0F38B0 802CEF00 16000003 */  bnez  $s0, .L802CEF10
/* 0F38B4 802CEF04 00000000 */   nop   
.L802CEF08:
/* 0F38B8 802CEF08 080B3C0E */  j     func_802CF038
/* 0F38BC 802CEF0C 24020002 */   addiu $v0, $zero, 2

.L802CEF10:
/* 0F38C0 802CEF10 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F38C4 802CEF14 E6200074 */  swc1  $f0, 0x74($s1)
/* 0F38C8 802CEF18 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F38CC 802CEF1C C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F38D0 802CEF20 8E660038 */  lw    $a2, 0x38($s3)
/* 0F38D4 802CEF24 0C00A720 */  jal   atan2
/* 0F38D8 802CEF28 8E670040 */   lw    $a3, 0x40($s3)
/* 0F38DC 802CEF2C C6220074 */  lwc1  $f2, 0x74($s1)
/* 0F38E0 802CEF30 46020001 */  sub.s $f0, $f0, $f2
/* 0F38E4 802CEF34 AE300070 */  sw    $s0, 0x70($s1)
/* 0F38E8 802CEF38 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F38EC 802CEF3C 8E450000 */  lw    $a1, ($s2)
/* 0F38F0 802CEF40 0C0B1EAF */  jal   get_variable
/* 0F38F4 802CEF44 0220202D */   daddu $a0, $s1, $zero
/* 0F38F8 802CEF48 AE22007C */  sw    $v0, 0x7c($s1)
/* 0F38FC 802CEF4C A600008E */  sh    $zero, 0x8e($s0)
/* 0F3900 802CEF50 C6220078 */  lwc1  $f2, 0x78($s1)
/* 0F3904 802CEF54 3C01C334 */  lui   $at, 0xc334
/* 0F3908 802CEF58 44810000 */  mtc1  $at, $f0
/* 0F390C 802CEF5C 00000000 */  nop   
/* 0F3910 802CEF60 4600103C */  c.lt.s $f2, $f0
/* 0F3914 802CEF64 00000000 */  nop   
/* 0F3918 802CEF68 45000007 */  bc1f  .L802CEF88
/* 0F391C 802CEF6C 00000000 */   nop   
/* 0F3920 802CEF70 3C0143B4 */  lui   $at, 0x43b4
/* 0F3924 802CEF74 44810000 */  mtc1  $at, $f0
/* 0F3928 802CEF78 00000000 */  nop   
/* 0F392C 802CEF7C 46001000 */  add.s $f0, $f2, $f0
/* 0F3930 802CEF80 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F3934 802CEF84 C6220078 */  lwc1  $f2, 0x78($s1)
.L802CEF88:
/* 0F3938 802CEF88 3C014334 */  lui   $at, 0x4334
/* 0F393C 802CEF8C 44810000 */  mtc1  $at, $f0
/* 0F3940 802CEF90 00000000 */  nop   
/* 0F3944 802CEF94 4602003C */  c.lt.s $f0, $f2
/* 0F3948 802CEF98 00000000 */  nop   
/* 0F394C 802CEF9C 45000006 */  bc1f  .L802CEFB8
/* 0F3950 802CEFA0 00000000 */   nop   
/* 0F3954 802CEFA4 3C0143B4 */  lui   $at, 0x43b4
/* 0F3958 802CEFA8 44810000 */  mtc1  $at, $f0
/* 0F395C 802CEFAC 00000000 */  nop   
/* 0F3960 802CEFB0 46001001 */  sub.s $f0, $f2, $f0
/* 0F3964 802CEFB4 E6200078 */  swc1  $f0, 0x78($s1)
.L802CEFB8:
/* 0F3968 802CEFB8 8E820000 */  lw    $v0, ($s4)
/* 0F396C 802CEFBC 8E300070 */  lw    $s0, 0x70($s1)
/* 0F3970 802CEFC0 1C400006 */  bgtz  $v0, .L802CEFDC
/* 0F3974 802CEFC4 24020002 */   addiu $v0, $zero, 2
/* 0F3978 802CEFC8 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F397C 802CEFCC C6A20000 */  lwc1  $f2, ($s5)
/* 0F3980 802CEFD0 46020000 */  add.s $f0, $f0, $f2
/* 0F3984 802CEFD4 080B3C0E */  j     func_802CF038
/* 0F3988 802CEFD8 E600000C */   swc1  $f0, 0xc($s0)

.L802CEFDC:
/* 0F398C 802CEFDC 9602008E */  lhu   $v0, 0x8e($s0)
/* 0F3990 802CEFE0 24420001 */  addiu $v0, $v0, 1
/* 0F3994 802CEFE4 A602008E */  sh    $v0, 0x8e($s0)
/* 0F3998 802CEFE8 00021400 */  sll   $v0, $v0, 0x10
/* 0F399C 802CEFEC 00021403 */  sra   $v0, $v0, 0x10
/* 0F39A0 802CEFF0 C6A00000 */  lwc1  $f0, ($s5)
/* 0F39A4 802CEFF4 44821000 */  mtc1  $v0, $f2
/* 0F39A8 802CEFF8 00000000 */  nop   
/* 0F39AC 802CEFFC 468010A0 */  cvt.s.w $f2, $f2
/* 0F39B0 802CF000 46020002 */  mul.s $f0, $f0, $f2
/* 0F39B4 802CF004 00000000 */  nop   
/* 0F39B8 802CF008 C6CC0000 */  lwc1  $f12, ($s6)
/* 0F39BC 802CF00C C6820000 */  lwc1  $f2, ($s4)
/* 0F39C0 802CF010 468010A0 */  cvt.s.w $f2, $f2
/* 0F39C4 802CF014 46020003 */  div.s $f0, $f0, $f2
/* 0F39C8 802CF018 46006300 */  add.s $f12, $f12, $f0
/* 0F39CC 802CF01C 0C00A6C9 */  jal   clamp_angle
/* 0F39D0 802CF020 E60C000C */   swc1  $f12, 0xc($s0)
/* 0F39D4 802CF024 8602008E */  lh    $v0, 0x8e($s0)
/* 0F39D8 802CF028 E600000C */  swc1  $f0, 0xc($s0)
/* 0F39DC 802CF02C 8E830000 */  lw    $v1, ($s4)
/* 0F39E0 802CF030 0043102A */  slt   $v0, $v0, $v1
/* 0F39E4 802CF034 38420001 */  xori  $v0, $v0, 1
func_802CF038:
/* 0F39E8 802CF038 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0F39EC 802CF03C 8FB60028 */  lw    $s6, 0x28($sp)
/* 0F39F0 802CF040 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F39F4 802CF044 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F39F8 802CF048 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F39FC 802CF04C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3A00 802CF050 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3A04 802CF054 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3A08 802CF058 03E00008 */  jr    $ra
/* 0F3A0C 802CF05C 27BD0030 */   addiu $sp, $sp, 0x30

SetNpcFlagBits:
/* 0F3A10 802CF060 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F3A14 802CF064 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3A18 802CF068 0080882D */  daddu $s1, $a0, $zero
/* 0F3A1C 802CF06C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F3A20 802CF070 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F3A24 802CF074 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3A28 802CF078 8E30000C */  lw    $s0, 0xc($s1)
/* 0F3A2C 802CF07C 8E050000 */  lw    $a1, ($s0)
/* 0F3A30 802CF080 0C0B1EAF */  jal   get_variable
/* 0F3A34 802CF084 26100004 */   addiu $s0, $s0, 4
/* 0F3A38 802CF088 0220202D */  daddu $a0, $s1, $zero
/* 0F3A3C 802CF08C 8E050004 */  lw    $a1, 4($s0)
/* 0F3A40 802CF090 8E100000 */  lw    $s0, ($s0)
/* 0F3A44 802CF094 0C0B1EAF */  jal   get_variable
/* 0F3A48 802CF098 0040902D */   daddu $s2, $v0, $zero
/* 0F3A4C 802CF09C 0220202D */  daddu $a0, $s1, $zero
/* 0F3A50 802CF0A0 0240282D */  daddu $a1, $s2, $zero
/* 0F3A54 802CF0A4 0C0B36B0 */  jal   func_802CDAC0
/* 0F3A58 802CF0A8 0040882D */   daddu $s1, $v0, $zero
/* 0F3A5C 802CF0AC 0040202D */  daddu $a0, $v0, $zero
/* 0F3A60 802CF0B0 5080000A */  beql  $a0, $zero, .L802CF0DC
/* 0F3A64 802CF0B4 24020002 */   addiu $v0, $zero, 2
/* 0F3A68 802CF0B8 12200004 */  beqz  $s1, .L802CF0CC
/* 0F3A6C 802CF0BC 00101827 */   nor   $v1, $zero, $s0
/* 0F3A70 802CF0C0 8C820000 */  lw    $v0, ($a0)
/* 0F3A74 802CF0C4 080B3C35 */  j     func_802CF0D4
/* 0F3A78 802CF0C8 00501025 */   or    $v0, $v0, $s0

.L802CF0CC:
/* 0F3A7C 802CF0CC 8C820000 */  lw    $v0, ($a0)
/* 0F3A80 802CF0D0 00431024 */  and   $v0, $v0, $v1
func_802CF0D4:
/* 0F3A84 802CF0D4 AC820000 */  sw    $v0, ($a0)
/* 0F3A88 802CF0D8 24020002 */  addiu $v0, $zero, 2
.L802CF0DC:
/* 0F3A8C 802CF0DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F3A90 802CF0E0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3A94 802CF0E4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3A98 802CF0E8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3A9C 802CF0EC 03E00008 */  jr    $ra
/* 0F3AA0 802CF0F0 27BD0020 */   addiu $sp, $sp, 0x20

GetNpcPos:
/* 0F3AA4 802CF0F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F3AA8 802CF0F8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3AAC 802CF0FC 0080882D */  daddu $s1, $a0, $zero
/* 0F3AB0 802CF100 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0F3AB4 802CF104 AFB40020 */  sw    $s4, 0x20($sp)
/* 0F3AB8 802CF108 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F3ABC 802CF10C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F3AC0 802CF110 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3AC4 802CF114 8E30000C */  lw    $s0, 0xc($s1)
/* 0F3AC8 802CF118 8E050000 */  lw    $a1, ($s0)
/* 0F3ACC 802CF11C 0C0B1EAF */  jal   get_variable
/* 0F3AD0 802CF120 26100004 */   addiu $s0, $s0, 4
/* 0F3AD4 802CF124 8E120000 */  lw    $s2, ($s0)
/* 0F3AD8 802CF128 26100004 */  addiu $s0, $s0, 4
/* 0F3ADC 802CF12C 0220202D */  daddu $a0, $s1, $zero
/* 0F3AE0 802CF130 8E130000 */  lw    $s3, ($s0)
/* 0F3AE4 802CF134 8E140004 */  lw    $s4, 4($s0)
/* 0F3AE8 802CF138 0C0B36B0 */  jal   func_802CDAC0
/* 0F3AEC 802CF13C 0040282D */   daddu $a1, $v0, $zero
/* 0F3AF0 802CF140 0040802D */  daddu $s0, $v0, $zero
/* 0F3AF4 802CF144 12000012 */  beqz  $s0, .L802CF190
/* 0F3AF8 802CF148 0220202D */   daddu $a0, $s1, $zero
/* 0F3AFC 802CF14C C6000038 */  lwc1  $f0, 0x38($s0)
/* 0F3B00 802CF150 4600008D */  trunc.w.s $f2, $f0
/* 0F3B04 802CF154 44061000 */  mfc1  $a2, $f2
/* 0F3B08 802CF158 0C0B2026 */  jal   set_variable
/* 0F3B0C 802CF15C 0240282D */   daddu $a1, $s2, $zero
/* 0F3B10 802CF160 0220202D */  daddu $a0, $s1, $zero
/* 0F3B14 802CF164 C600003C */  lwc1  $f0, 0x3c($s0)
/* 0F3B18 802CF168 4600008D */  trunc.w.s $f2, $f0
/* 0F3B1C 802CF16C 44061000 */  mfc1  $a2, $f2
/* 0F3B20 802CF170 0C0B2026 */  jal   set_variable
/* 0F3B24 802CF174 0260282D */   daddu $a1, $s3, $zero
/* 0F3B28 802CF178 0220202D */  daddu $a0, $s1, $zero
/* 0F3B2C 802CF17C C6000040 */  lwc1  $f0, 0x40($s0)
/* 0F3B30 802CF180 4600008D */  trunc.w.s $f2, $f0
/* 0F3B34 802CF184 44061000 */  mfc1  $a2, $f2
/* 0F3B38 802CF188 0C0B2026 */  jal   set_variable
/* 0F3B3C 802CF18C 0280282D */   daddu $a1, $s4, $zero
.L802CF190:
/* 0F3B40 802CF190 24020002 */  addiu $v0, $zero, 2
/* 0F3B44 802CF194 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0F3B48 802CF198 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F3B4C 802CF19C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F3B50 802CF1A0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3B54 802CF1A4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3B58 802CF1A8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3B5C 802CF1AC 03E00008 */  jr    $ra
/* 0F3B60 802CF1B0 27BD0028 */   addiu $sp, $sp, 0x28

/* 0F3B64 802CF1B4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F3B68 802CF1B8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3B6C 802CF1BC 0080802D */  daddu $s0, $a0, $zero
/* 0F3B70 802CF1C0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F3B74 802CF1C4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3B78 802CF1C8 8E11000C */  lw    $s1, 0xc($s0)
/* 0F3B7C 802CF1CC 8E250000 */  lw    $a1, ($s1)
/* 0F3B80 802CF1D0 0C0B1EAF */  jal   get_variable
/* 0F3B84 802CF1D4 26310004 */   addiu $s1, $s1, 4
/* 0F3B88 802CF1D8 0200202D */  daddu $a0, $s0, $zero
/* 0F3B8C 802CF1DC 8E310000 */  lw    $s1, ($s1)
/* 0F3B90 802CF1E0 0C0B36B0 */  jal   func_802CDAC0
/* 0F3B94 802CF1E4 0040282D */   daddu $a1, $v0, $zero
/* 0F3B98 802CF1E8 54400001 */  bnezl $v0, .L802CF1F0
/* 0F3B9C 802CF1EC AC510080 */   sw    $s1, 0x80($v0)
.L802CF1F0:
/* 0F3BA0 802CF1F0 24020002 */  addiu $v0, $zero, 2
/* 0F3BA4 802CF1F4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F3BA8 802CF1F8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3BAC 802CF1FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3BB0 802CF200 03E00008 */  jr    $ra
/* 0F3BB4 802CF204 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F3BB8 802CF208 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F3BBC 802CF20C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3BC0 802CF210 0080802D */  daddu $s0, $a0, $zero
/* 0F3BC4 802CF214 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F3BC8 802CF218 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3BCC 802CF21C 8E11000C */  lw    $s1, 0xc($s0)
/* 0F3BD0 802CF220 8E250000 */  lw    $a1, ($s1)
/* 0F3BD4 802CF224 0C0B1EAF */  jal   get_variable
/* 0F3BD8 802CF228 26310004 */   addiu $s1, $s1, 4
/* 0F3BDC 802CF22C 0200202D */  daddu $a0, $s0, $zero
/* 0F3BE0 802CF230 8E310000 */  lw    $s1, ($s1)
/* 0F3BE4 802CF234 0C0B36B0 */  jal   func_802CDAC0
/* 0F3BE8 802CF238 0040282D */   daddu $a1, $v0, $zero
/* 0F3BEC 802CF23C 10400004 */  beqz  $v0, .L802CF250
/* 0F3BF0 802CF240 0040202D */   daddu $a0, $v0, $zero
/* 0F3BF4 802CF244 0220282D */  daddu $a1, $s1, $zero
/* 0F3BF8 802CF248 0C00EB17 */  jal   func_8003AC5C
/* 0F3BFC 802CF24C 0000302D */   daddu $a2, $zero, $zero
.L802CF250:
/* 0F3C00 802CF250 24020002 */  addiu $v0, $zero, 2
/* 0F3C04 802CF254 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F3C08 802CF258 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3C0C 802CF25C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3C10 802CF260 03E00008 */  jr    $ra
/* 0F3C14 802CF264 27BD0020 */   addiu $sp, $sp, 0x20

EnableNpcShadow:
/* 0F3C18 802CF268 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F3C1C 802CF26C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3C20 802CF270 0080882D */  daddu $s1, $a0, $zero
/* 0F3C24 802CF274 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F3C28 802CF278 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3C2C 802CF27C 8E30000C */  lw    $s0, 0xc($s1)
/* 0F3C30 802CF280 8E050000 */  lw    $a1, ($s0)
/* 0F3C34 802CF284 0C0B1EAF */  jal   get_variable
/* 0F3C38 802CF288 26100004 */   addiu $s0, $s0, 4
/* 0F3C3C 802CF28C 0220202D */  daddu $a0, $s1, $zero
/* 0F3C40 802CF290 8E050000 */  lw    $a1, ($s0)
/* 0F3C44 802CF294 0C0B1EAF */  jal   get_variable
/* 0F3C48 802CF298 0040802D */   daddu $s0, $v0, $zero
/* 0F3C4C 802CF29C 0220202D */  daddu $a0, $s1, $zero
/* 0F3C50 802CF2A0 0200282D */  daddu $a1, $s0, $zero
/* 0F3C54 802CF2A4 0C0B36B0 */  jal   func_802CDAC0
/* 0F3C58 802CF2A8 0040802D */   daddu $s0, $v0, $zero
/* 0F3C5C 802CF2AC 5040000A */  beql  $v0, $zero, .L802CF2D8
/* 0F3C60 802CF2B0 24020002 */   addiu $v0, $zero, 2
/* 0F3C64 802CF2B4 12000005 */  beqz  $s0, .L802CF2CC
/* 0F3C68 802CF2B8 00000000 */   nop   
/* 0F3C6C 802CF2BC 0C00EAE8 */  jal   enable_npc_shadow
/* 0F3C70 802CF2C0 0040202D */   daddu $a0, $v0, $zero
/* 0F3C74 802CF2C4 080B3CB6 */  j     func_802CF2D8
/* 0F3C78 802CF2C8 24020002 */   addiu $v0, $zero, 2

.L802CF2CC:
/* 0F3C7C 802CF2CC 0C00EAFF */  jal   disable_npc_shadow
/* 0F3C80 802CF2D0 0040202D */   daddu $a0, $v0, $zero
/* 0F3C84 802CF2D4 24020002 */  addiu $v0, $zero, 2
func_802CF2D8:
.L802CF2D8:
/* 0F3C88 802CF2D8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F3C8C 802CF2DC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3C90 802CF2E0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3C94 802CF2E4 03E00008 */  jr    $ra
/* 0F3C98 802CF2E8 27BD0020 */   addiu $sp, $sp, 0x20

EnableNpcBlur:
/* 0F3C9C 802CF2EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F3CA0 802CF2F0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3CA4 802CF2F4 0080882D */  daddu $s1, $a0, $zero
/* 0F3CA8 802CF2F8 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F3CAC 802CF2FC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3CB0 802CF300 8E30000C */  lw    $s0, 0xc($s1)
/* 0F3CB4 802CF304 8E050000 */  lw    $a1, ($s0)
/* 0F3CB8 802CF308 0C0B1EAF */  jal   get_variable
/* 0F3CBC 802CF30C 26100004 */   addiu $s0, $s0, 4
/* 0F3CC0 802CF310 0220202D */  daddu $a0, $s1, $zero
/* 0F3CC4 802CF314 8E050000 */  lw    $a1, ($s0)
/* 0F3CC8 802CF318 0C0B1EAF */  jal   get_variable
/* 0F3CCC 802CF31C 0040802D */   daddu $s0, $v0, $zero
/* 0F3CD0 802CF320 0220202D */  daddu $a0, $s1, $zero
/* 0F3CD4 802CF324 0200282D */  daddu $a1, $s0, $zero
/* 0F3CD8 802CF328 0C0B36B0 */  jal   func_802CDAC0
/* 0F3CDC 802CF32C 0040802D */   daddu $s0, $v0, $zero
/* 0F3CE0 802CF330 5040000A */  beql  $v0, $zero, .L802CF35C
/* 0F3CE4 802CF334 24020002 */   addiu $v0, $zero, 2
/* 0F3CE8 802CF338 12000005 */  beqz  $s0, .L802CF350
/* 0F3CEC 802CF33C 00000000 */   nop   
/* 0F3CF0 802CF340 0C00EB49 */  jal   enable_npc_blur
/* 0F3CF4 802CF344 0040202D */   daddu $a0, $v0, $zero
/* 0F3CF8 802CF348 080B3CD7 */  j     func_802CF35C
/* 0F3CFC 802CF34C 24020002 */   addiu $v0, $zero, 2

.L802CF350:
/* 0F3D00 802CF350 0C00EB6B */  jal   disable_npc_blur
/* 0F3D04 802CF354 0040202D */   daddu $a0, $v0, $zero
/* 0F3D08 802CF358 24020002 */  addiu $v0, $zero, 2
func_802CF35C:
.L802CF35C:
/* 0F3D0C 802CF35C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F3D10 802CF360 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3D14 802CF364 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3D18 802CF368 03E00008 */  jr    $ra
/* 0F3D1C 802CF36C 27BD0020 */   addiu $sp, $sp, 0x20

ClearPartnerMoveHistory:
/* 0F3D20 802CF370 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3D24 802CF374 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3D28 802CF378 0080802D */  daddu $s0, $a0, $zero
/* 0F3D2C 802CF37C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F3D30 802CF380 8E02000C */  lw    $v0, 0xc($s0)
/* 0F3D34 802CF384 0C0B1EAF */  jal   get_variable
/* 0F3D38 802CF388 8C450000 */   lw    $a1, ($v0)
/* 0F3D3C 802CF38C 0200202D */  daddu $a0, $s0, $zero
/* 0F3D40 802CF390 0C0B36B0 */  jal   func_802CDAC0
/* 0F3D44 802CF394 0040282D */   daddu $a1, $v0, $zero
/* 0F3D48 802CF398 50400004 */  beql  $v0, $zero, .L802CF3AC
/* 0F3D4C 802CF39C 24020002 */   addiu $v0, $zero, 2
/* 0F3D50 802CF3A0 0C03BD17 */  jal   clear_partner_move_history
/* 0F3D54 802CF3A4 0040202D */   daddu $a0, $v0, $zero
/* 0F3D58 802CF3A8 24020002 */  addiu $v0, $zero, 2
.L802CF3AC:
/* 0F3D5C 802CF3AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F3D60 802CF3B0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3D64 802CF3B4 03E00008 */  jr    $ra
/* 0F3D68 802CF3B8 27BD0018 */   addiu $sp, $sp, 0x18

NpcSetHomePosToCurrent:
/* 0F3D6C 802CF3BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3D70 802CF3C0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3D74 802CF3C4 0080802D */  daddu $s0, $a0, $zero
/* 0F3D78 802CF3C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F3D7C 802CF3CC 8E02000C */  lw    $v0, 0xc($s0)
/* 0F3D80 802CF3D0 0C0B1EAF */  jal   get_variable
/* 0F3D84 802CF3D4 8C450000 */   lw    $a1, ($v0)
/* 0F3D88 802CF3D8 0200202D */  daddu $a0, $s0, $zero
/* 0F3D8C 802CF3DC 0C0B36B0 */  jal   func_802CDAC0
/* 0F3D90 802CF3E0 0040282D */   daddu $a1, $v0, $zero
/* 0F3D94 802CF3E4 0040202D */  daddu $a0, $v0, $zero
/* 0F3D98 802CF3E8 1080000F */  beqz  $a0, .L802CF428
/* 0F3D9C 802CF3EC 24020002 */   addiu $v0, $zero, 2
/* 0F3DA0 802CF3F0 C4800038 */  lwc1  $f0, 0x38($a0)
/* 0F3DA4 802CF3F4 C4820040 */  lwc1  $f2, 0x40($a0)
/* 0F3DA8 802CF3F8 4600010D */  trunc.w.s $f4, $f0
/* 0F3DAC 802CF3FC 44032000 */  mfc1  $v1, $f4
/* 0F3DB0 802CF400 C480003C */  lwc1  $f0, 0x3c($a0)
/* 0F3DB4 802CF404 A4830090 */  sh    $v1, 0x90($a0)
/* 0F3DB8 802CF408 4600010D */  trunc.w.s $f4, $f0
/* 0F3DBC 802CF40C 44032000 */  mfc1  $v1, $f4
/* 0F3DC0 802CF410 00000000 */  nop   
/* 0F3DC4 802CF414 A4830092 */  sh    $v1, 0x92($a0)
/* 0F3DC8 802CF418 4600110D */  trunc.w.s $f4, $f2
/* 0F3DCC 802CF41C 44032000 */  mfc1  $v1, $f4
/* 0F3DD0 802CF420 00000000 */  nop   
/* 0F3DD4 802CF424 A4830094 */  sh    $v1, 0x94($a0)
.L802CF428:
/* 0F3DD8 802CF428 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F3DDC 802CF42C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3DE0 802CF430 03E00008 */  jr    $ra
/* 0F3DE4 802CF434 27BD0018 */   addiu $sp, $sp, 0x18

GetPartnerPos:
/* 0F3DE8 802CF438 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F3DEC 802CF43C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3DF0 802CF440 0080882D */  daddu $s1, $a0, $zero
/* 0F3DF4 802CF444 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0F3DF8 802CF448 AFB40020 */  sw    $s4, 0x20($sp)
/* 0F3DFC 802CF44C AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F3E00 802CF450 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F3E04 802CF454 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F3E08 802CF458 8E22000C */  lw    $v0, 0xc($s1)
/* 0F3E0C 802CF45C 8C520000 */  lw    $s2, ($v0)
/* 0F3E10 802CF460 24420004 */  addiu $v0, $v0, 4
/* 0F3E14 802CF464 8C530000 */  lw    $s3, ($v0)
/* 0F3E18 802CF468 8C540004 */  lw    $s4, 4($v0)
/* 0F3E1C 802CF46C 0C00EABB */  jal   get_npc_unsafe
/* 0F3E20 802CF470 2404FFFC */   addiu $a0, $zero, -4
/* 0F3E24 802CF474 0040802D */  daddu $s0, $v0, $zero
/* 0F3E28 802CF478 12000012 */  beqz  $s0, .L802CF4C4
/* 0F3E2C 802CF47C 0220202D */   daddu $a0, $s1, $zero
/* 0F3E30 802CF480 C6000038 */  lwc1  $f0, 0x38($s0)
/* 0F3E34 802CF484 4600008D */  trunc.w.s $f2, $f0
/* 0F3E38 802CF488 44061000 */  mfc1  $a2, $f2
/* 0F3E3C 802CF48C 0C0B2026 */  jal   set_variable
/* 0F3E40 802CF490 0240282D */   daddu $a1, $s2, $zero
/* 0F3E44 802CF494 0220202D */  daddu $a0, $s1, $zero
/* 0F3E48 802CF498 C600003C */  lwc1  $f0, 0x3c($s0)
/* 0F3E4C 802CF49C 4600008D */  trunc.w.s $f2, $f0
/* 0F3E50 802CF4A0 44061000 */  mfc1  $a2, $f2
/* 0F3E54 802CF4A4 0C0B2026 */  jal   set_variable
/* 0F3E58 802CF4A8 0260282D */   daddu $a1, $s3, $zero
/* 0F3E5C 802CF4AC 0220202D */  daddu $a0, $s1, $zero
/* 0F3E60 802CF4B0 C6000040 */  lwc1  $f0, 0x40($s0)
/* 0F3E64 802CF4B4 4600008D */  trunc.w.s $f2, $f0
/* 0F3E68 802CF4B8 44061000 */  mfc1  $a2, $f2
/* 0F3E6C 802CF4BC 0C0B2026 */  jal   set_variable
/* 0F3E70 802CF4C0 0280282D */   daddu $a1, $s4, $zero
.L802CF4C4:
/* 0F3E74 802CF4C4 24020002 */  addiu $v0, $zero, 2
/* 0F3E78 802CF4C8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0F3E7C 802CF4CC 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F3E80 802CF4D0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F3E84 802CF4D4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3E88 802CF4D8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3E8C 802CF4DC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3E90 802CF4E0 03E00008 */  jr    $ra
/* 0F3E94 802CF4E4 27BD0028 */   addiu $sp, $sp, 0x28

DisablePartnerAI:
/* 0F3E98 802CF4E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3E9C 802CF4EC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F3EA0 802CF4F0 8C82000C */  lw    $v0, 0xc($a0)
/* 0F3EA4 802CF4F4 0C0B1EAF */  jal   get_variable
/* 0F3EA8 802CF4F8 8C450000 */   lw    $a1, ($v0)
/* 0F3EAC 802CF4FC 14400005 */  bnez  $v0, .L802CF514
/* 0F3EB0 802CF500 00000000 */   nop   
/* 0F3EB4 802CF504 0C03BCC5 */  jal   func_800EF314
/* 0F3EB8 802CF508 00000000 */   nop   
/* 0F3EBC 802CF50C 080B3D47 */  j     func_802CF51C
/* 0F3EC0 802CF510 00000000 */   nop   

.L802CF514:
/* 0F3EC4 802CF514 0C03BCC0 */  jal   func_800EF300
/* 0F3EC8 802CF518 00000000 */   nop   
func_802CF51C:
/* 0F3ECC 802CF51C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F3ED0 802CF520 24020002 */  addiu $v0, $zero, 2
/* 0F3ED4 802CF524 03E00008 */  jr    $ra
/* 0F3ED8 802CF528 27BD0018 */   addiu $sp, $sp, 0x18

EnablePartnerAI:
/* 0F3EDC 802CF52C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3EE0 802CF530 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F3EE4 802CF534 0C03BCCA */  jal   enable_partner_ai
/* 0F3EE8 802CF538 00000000 */   nop   
/* 0F3EEC 802CF53C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F3EF0 802CF540 24020002 */  addiu $v0, $zero, 2
/* 0F3EF4 802CF544 03E00008 */  jr    $ra
/* 0F3EF8 802CF548 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F3EFC 802CF54C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3F00 802CF550 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F3F04 802CF554 0C03BD0F */  jal   func_800EF43C
/* 0F3F08 802CF558 00000000 */   nop   
/* 0F3F0C 802CF55C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F3F10 802CF560 24020002 */  addiu $v0, $zero, 2
/* 0F3F14 802CF564 03E00008 */  jr    $ra
/* 0F3F18 802CF568 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F3F1C 802CF56C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F3F20 802CF570 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F3F24 802CF574 8C82000C */  lw    $v0, 0xc($a0)
/* 0F3F28 802CF578 0C0B1EAF */  jal   get_variable
/* 0F3F2C 802CF57C 8C450000 */   lw    $a1, ($v0)
/* 0F3F30 802CF580 0040202D */  daddu $a0, $v0, $zero
/* 0F3F34 802CF584 24020002 */  addiu $v0, $zero, 2
/* 0F3F38 802CF588 14820005 */  bne   $a0, $v0, .L802CF5A0
/* 0F3F3C 802CF58C 00000000 */   nop   
/* 0F3F40 802CF590 0C03BCF9 */  jal   func_800EF3E4
/* 0F3F44 802CF594 00000000 */   nop   
/* 0F3F48 802CF598 080B3D6A */  j     func_802CF5A8
/* 0F3F4C 802CF59C 00000000 */   nop   

.L802CF5A0:
/* 0F3F50 802CF5A0 0C03BCF5 */  jal   func_800EF3D4
/* 0F3F54 802CF5A4 00000000 */   nop   
func_802CF5A8:
/* 0F3F58 802CF5A8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F3F5C 802CF5AC 24020002 */  addiu $v0, $zero, 2
/* 0F3F60 802CF5B0 03E00008 */  jr    $ra
/* 0F3F64 802CF5B4 27BD0018 */   addiu $sp, $sp, 0x18

BringPartnerOut:
/* 0F3F68 802CF5B8 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0F3F6C 802CF5BC AFB10024 */  sw    $s1, 0x24($sp)
/* 0F3F70 802CF5C0 AFB20028 */  sw    $s2, 0x28($sp)
/* 0F3F74 802CF5C4 3C128011 */  lui   $s2, 0x8011
/* 0F3F78 802CF5C8 2652EFC8 */  addiu $s2, $s2, -0x1038
/* 0F3F7C 802CF5CC AFBF0034 */  sw    $ra, 0x34($sp)
/* 0F3F80 802CF5D0 AFB40030 */  sw    $s4, 0x30($sp)
/* 0F3F84 802CF5D4 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0F3F88 802CF5D8 AFB00020 */  sw    $s0, 0x20($sp)
/* 0F3F8C 802CF5DC F7BE0060 */  sdc1  $f30, 0x60($sp)
/* 0F3F90 802CF5E0 F7BC0058 */  sdc1  $f28, 0x58($sp)
/* 0F3F94 802CF5E4 F7BA0050 */  sdc1  $f26, 0x50($sp)
/* 0F3F98 802CF5E8 F7B80048 */  sdc1  $f24, 0x48($sp)
/* 0F3F9C 802CF5EC F7B60040 */  sdc1  $f22, 0x40($sp)
/* 0F3FA0 802CF5F0 F7B40038 */  sdc1  $f20, 0x38($sp)
/* 0F3FA4 802CF5F4 8C82000C */  lw    $v0, 0xc($a0)
/* 0F3FA8 802CF5F8 10A00089 */  beqz  $a1, .L802CF820
/* 0F3FAC 802CF5FC 27B10010 */   addiu $s1, $sp, 0x10
/* 0F3FB0 802CF600 8C450000 */  lw    $a1, ($v0)
/* 0F3FB4 802CF604 0C0B1EAF */  jal   get_variable
/* 0F3FB8 802CF608 00000000 */   nop   
/* 0F3FBC 802CF60C 3C038011 */  lui   $v1, 0x8011
/* 0F3FC0 802CF610 2463F290 */  addiu $v1, $v1, -0xd70
/* 0F3FC4 802CF614 80630012 */  lb    $v1, 0x12($v1)
/* 0F3FC8 802CF618 3C14802E */  lui   $s4, 0x802e
/* 0F3FCC 802CF61C 2694AE40 */  addiu $s4, $s4, -0x51c0
/* 0F3FD0 802CF620 14620004 */  bne   $v1, $v0, .L802CF634
/* 0F3FD4 802CF624 AE820000 */   sw    $v0, ($s4)
/* 0F3FD8 802CF628 AE800000 */  sw    $zero, ($s4)
/* 0F3FDC 802CF62C 080B3E54 */  j     func_802CF950
/* 0F3FE0 802CF630 24020002 */   addiu $v0, $zero, 2

.L802CF634:
/* 0F3FE4 802CF634 0C00EABB */  jal   get_npc_unsafe
/* 0F3FE8 802CF638 2404FFFC */   addiu $a0, $zero, -4
/* 0F3FEC 802CF63C 0040802D */  daddu $s0, $v0, $zero
/* 0F3FF0 802CF640 2402FFFB */  addiu $v0, $zero, -5
/* 0F3FF4 802CF644 A20200A4 */  sb    $v0, 0xa4($s0)
/* 0F3FF8 802CF648 8E830000 */  lw    $v1, ($s4)
/* 0F3FFC 802CF64C 24020100 */  addiu $v0, $zero, 0x100
/* 0F4000 802CF650 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F4004 802CF654 000310C0 */  sll   $v0, $v1, 3
/* 0F4008 802CF658 00431021 */  addu  $v0, $v0, $v1
/* 0F400C 802CF65C 00021080 */  sll   $v0, $v0, 2
/* 0F4010 802CF660 3C018010 */  lui   $at, 0x8010
/* 0F4014 802CF664 00220821 */  addu  $at, $at, $v0
/* 0F4018 802CF668 8C228358 */  lw    $v0, -0x7ca8($at)
/* 0F401C 802CF66C 0220202D */  daddu $a0, $s1, $zero
/* 0F4020 802CF670 AFA00018 */  sw    $zero, 0x18($sp)
/* 0F4024 802CF674 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0F4028 802CF678 0C00E211 */  jal   func_80038844
/* 0F402C 802CF67C AFA20014 */   sw    $v0, 0x14($sp)
/* 0F4030 802CF680 0040202D */  daddu $a0, $v0, $zero
/* 0F4034 802CF684 3C01802E */  lui   $at, 0x802e
/* 0F4038 802CF688 AC24AE44 */  sw    $a0, -0x51bc($at)
/* 0F403C 802CF68C 0C00E2B7 */  jal   get_npc_by_index
/* 0F4040 802CF690 2413000A */   addiu $s3, $zero, 0xa
/* 0F4044 802CF694 0040882D */  daddu $s1, $v0, $zero
/* 0F4048 802CF698 2402FFFC */  addiu $v0, $zero, -4
/* 0F404C 802CF69C A63300A6 */  sh    $s3, 0xa6($s1)
/* 0F4050 802CF6A0 A63300A8 */  sh    $s3, 0xa8($s1)
/* 0F4054 802CF6A4 A22200A4 */  sb    $v0, 0xa4($s1)
/* 0F4058 802CF6A8 AE200054 */  sw    $zero, 0x54($s1)
/* 0F405C 802CF6AC AE200058 */  sw    $zero, 0x58($s1)
/* 0F4060 802CF6B0 AE20005C */  sw    $zero, 0x5c($s1)
/* 0F4064 802CF6B4 C61A0038 */  lwc1  $f26, 0x38($s0)
/* 0F4068 802CF6B8 3C0141F0 */  lui   $at, 0x41f0
/* 0F406C 802CF6BC 44810000 */  mtc1  $at, $f0
/* 0F4070 802CF6C0 E63A0060 */  swc1  $f26, 0x60($s1)
/* 0F4074 802CF6C4 C65E002C */  lwc1  $f30, 0x2c($s2)
/* 0F4078 802CF6C8 E63E0064 */  swc1  $f30, 0x64($s1)
/* 0F407C 802CF6CC C6160040 */  lwc1  $f22, 0x40($s0)
/* 0F4080 802CF6D0 4600B580 */  add.s $f22, $f22, $f0
/* 0F4084 802CF6D4 4406D000 */  mfc1  $a2, $f26
/* 0F4088 802CF6D8 E6360068 */  swc1  $f22, 0x68($s1)
/* 0F408C 802CF6DC C6580028 */  lwc1  $f24, 0x28($s2)
/* 0F4090 802CF6E0 4407B000 */  mfc1  $a3, $f22
/* 0F4094 802CF6E4 E6380038 */  swc1  $f24, 0x38($s1)
/* 0F4098 802CF6E8 964200B0 */  lhu   $v0, 0xb0($s2)
/* 0F409C 802CF6EC C642002C */  lwc1  $f2, 0x2c($s2)
/* 0F40A0 802CF6F0 00021400 */  sll   $v0, $v0, 0x10
/* 0F40A4 802CF6F4 00021C03 */  sra   $v1, $v0, 0x10
/* 0F40A8 802CF6F8 000217C2 */  srl   $v0, $v0, 0x1f
/* 0F40AC 802CF6FC 00621821 */  addu  $v1, $v1, $v0
/* 0F40B0 802CF700 00031843 */  sra   $v1, $v1, 1
/* 0F40B4 802CF704 44830000 */  mtc1  $v1, $f0
/* 0F40B8 802CF708 00000000 */  nop   
/* 0F40BC 802CF70C 46800020 */  cvt.s.w $f0, $f0
/* 0F40C0 802CF710 46001700 */  add.s $f28, $f2, $f0
/* 0F40C4 802CF714 3C014080 */  lui   $at, 0x4080
/* 0F40C8 802CF718 44810000 */  mtc1  $at, $f0
/* 0F40CC 802CF71C 3C013FCC */  lui   $at, 0x3fcc
/* 0F40D0 802CF720 3421CCCD */  ori   $at, $at, 0xcccd
/* 0F40D4 802CF724 44811000 */  mtc1  $at, $f2
/* 0F40D8 802CF728 E63C003C */  swc1  $f28, 0x3c($s1)
/* 0F40DC 802CF72C C6540030 */  lwc1  $f20, 0x30($s2)
/* 0F40E0 802CF730 4600C306 */  mov.s $f12, $f24
/* 0F40E4 802CF734 E6200018 */  swc1  $f0, 0x18($s1)
/* 0F40E8 802CF738 E6220014 */  swc1  $f2, 0x14($s1)
/* 0F40EC 802CF73C 4600A386 */  mov.s $f14, $f20
/* 0F40F0 802CF740 0C00A7B5 */  jal   dist2D
/* 0F40F4 802CF744 E6340040 */   swc1  $f20, 0x40($s1)
/* 0F40F8 802CF748 4600C306 */  mov.s $f12, $f24
/* 0F40FC 802CF74C 4406D000 */  mfc1  $a2, $f26
/* 0F4100 802CF750 4407B000 */  mfc1  $a3, $f22
/* 0F4104 802CF754 4600A386 */  mov.s $f14, $f20
/* 0F4108 802CF758 0C00A720 */  jal   atan2
/* 0F410C 802CF75C E6200010 */   swc1  $f0, 0x10($s1)
/* 0F4110 802CF760 C6220010 */  lwc1  $f2, 0x10($s1)
/* 0F4114 802CF764 C6240018 */  lwc1  $f4, 0x18($s1)
/* 0F4118 802CF768 3C108010 */  lui   $s0, 0x8010
/* 0F411C 802CF76C 26108348 */  addiu $s0, $s0, -0x7cb8
/* 0F4120 802CF770 E620000C */  swc1  $f0, 0xc($s1)
/* 0F4124 802CF774 46041083 */  div.s $f2, $f2, $f4
/* 0F4128 802CF778 4600118D */  trunc.w.s $f6, $f2
/* 0F412C 802CF77C 44023000 */  mfc1  $v0, $f6
/* 0F4130 802CF780 00000000 */  nop   
/* 0F4134 802CF784 A622008E */  sh    $v0, 0x8e($s1)
/* 0F4138 802CF788 00021400 */  sll   $v0, $v0, 0x10
/* 0F413C 802CF78C 00021403 */  sra   $v0, $v0, 0x10
/* 0F4140 802CF790 2842000A */  slti  $v0, $v0, 0xa
/* 0F4144 802CF794 10400007 */  beqz  $v0, .L802CF7B4
/* 0F4148 802CF798 00000000 */   nop   
/* 0F414C 802CF79C 3C014120 */  lui   $at, 0x4120
/* 0F4150 802CF7A0 44811000 */  mtc1  $at, $f2
/* 0F4154 802CF7A4 C6200010 */  lwc1  $f0, 0x10($s1)
/* 0F4158 802CF7A8 A633008E */  sh    $s3, 0x8e($s1)
/* 0F415C 802CF7AC 46020003 */  div.s $f0, $f0, $f2
/* 0F4160 802CF7B0 E6200018 */  swc1  $f0, 0x18($s1)
.L802CF7B4:
/* 0F4164 802CF7B4 8622008E */  lh    $v0, 0x8e($s1)
/* 0F4168 802CF7B8 C6200014 */  lwc1  $f0, 0x14($s1)
/* 0F416C 802CF7BC 44822000 */  mtc1  $v0, $f4
/* 0F4170 802CF7C0 00000000 */  nop   
/* 0F4174 802CF7C4 46802120 */  cvt.s.w $f4, $f4
/* 0F4178 802CF7C8 46040002 */  mul.s $f0, $f0, $f4
/* 0F417C 802CF7CC 00000000 */  nop   
/* 0F4180 802CF7D0 46040002 */  mul.s $f0, $f0, $f4
/* 0F4184 802CF7D4 00000000 */  nop   
/* 0F4188 802CF7D8 3C013F00 */  lui   $at, 0x3f00
/* 0F418C 802CF7DC 44811000 */  mtc1  $at, $f2
/* 0F4190 802CF7E0 00000000 */  nop   
/* 0F4194 802CF7E4 46020002 */  mul.s $f0, $f0, $f2
/* 0F4198 802CF7E8 00000000 */  nop   
/* 0F419C 802CF7EC 8E830000 */  lw    $v1, ($s4)
/* 0F41A0 802CF7F0 461CF081 */  sub.s $f2, $f30, $f28
/* 0F41A4 802CF7F4 000310C0 */  sll   $v0, $v1, 3
/* 0F41A8 802CF7F8 00431021 */  addu  $v0, $v0, $v1
/* 0F41AC 802CF7FC 46001080 */  add.s $f2, $f2, $f0
/* 0F41B0 802CF800 00021080 */  sll   $v0, $v0, 2
/* 0F41B4 802CF804 00501021 */  addu  $v0, $v0, $s0
/* 0F41B8 802CF808 46041083 */  div.s $f2, $f2, $f4
/* 0F41BC 802CF80C E622001C */  swc1  $f2, 0x1c($s1)
/* 0F41C0 802CF810 8C430004 */  lw    $v1, 4($v0)
/* 0F41C4 802CF814 0000102D */  daddu $v0, $zero, $zero
/* 0F41C8 802CF818 080B3E54 */  j     func_802CF950
/* 0F41CC 802CF81C AE230028 */   sw    $v1, 0x28($s1)

.L802CF820:
/* 0F41D0 802CF820 3C04802E */  lui   $a0, 0x802e
/* 0F41D4 802CF824 8C84AE44 */  lw    $a0, -0x51bc($a0)
/* 0F41D8 802CF828 0C00E2B7 */  jal   get_npc_by_index
/* 0F41DC 802CF82C 00000000 */   nop   
/* 0F41E0 802CF830 0040882D */  daddu $s1, $v0, $zero
/* 0F41E4 802CF834 C620001C */  lwc1  $f0, 0x1c($s1)
/* 0F41E8 802CF838 C6220014 */  lwc1  $f2, 0x14($s1)
/* 0F41EC 802CF83C 46020001 */  sub.s $f0, $f0, $f2
/* 0F41F0 802CF840 C622003C */  lwc1  $f2, 0x3c($s1)
/* 0F41F4 802CF844 46001080 */  add.s $f2, $f2, $f0
/* 0F41F8 802CF848 4480A000 */  mtc1  $zero, $f20
/* 0F41FC 802CF84C 00000000 */  nop   
/* 0F4200 802CF850 4614003E */  c.le.s $f0, $f20
/* 0F4204 802CF854 E620001C */  swc1  $f0, 0x1c($s1)
/* 0F4208 802CF858 4500000A */  bc1f  .L802CF884
/* 0F420C 802CF85C E622003C */   swc1  $f2, 0x3c($s1)
/* 0F4210 802CF860 3C02802E */  lui   $v0, 0x802e
/* 0F4214 802CF864 8C42AE40 */  lw    $v0, -0x51c0($v0)
/* 0F4218 802CF868 000218C0 */  sll   $v1, $v0, 3
/* 0F421C 802CF86C 00621821 */  addu  $v1, $v1, $v0
/* 0F4220 802CF870 00031880 */  sll   $v1, $v1, 2
/* 0F4224 802CF874 3C028010 */  lui   $v0, 0x8010
/* 0F4228 802CF878 00431021 */  addu  $v0, $v0, $v1
/* 0F422C 802CF87C 8C428350 */  lw    $v0, -0x7cb0($v0)
/* 0F4230 802CF880 AE220028 */  sw    $v0, 0x28($s1)
.L802CF884:
/* 0F4234 802CF884 8E250018 */  lw    $a1, 0x18($s1)
/* 0F4238 802CF888 8E26000C */  lw    $a2, 0xc($s1)
/* 0F423C 802CF88C 0C00EA95 */  jal   npc_move_heading
/* 0F4240 802CF890 0220202D */   daddu $a0, $s1, $zero
/* 0F4244 802CF894 8622008E */  lh    $v0, 0x8e($s1)
/* 0F4248 802CF898 3C014120 */  lui   $at, 0x4120
/* 0F424C 802CF89C 44811000 */  mtc1  $at, $f2
/* 0F4250 802CF8A0 44820000 */  mtc1  $v0, $f0
/* 0F4254 802CF8A4 00000000 */  nop   
/* 0F4258 802CF8A8 46800020 */  cvt.s.w $f0, $f0
/* 0F425C 802CF8AC 4600103C */  c.lt.s $f2, $f0
/* 0F4260 802CF8B0 00000000 */  nop   
/* 0F4264 802CF8B4 45030001 */  bc1tl .L802CF8BC
/* 0F4268 802CF8B8 46001006 */   mov.s $f0, $f2
.L802CF8BC:
/* 0F426C 802CF8BC 9622008E */  lhu   $v0, 0x8e($s1)
/* 0F4270 802CF8C0 46001001 */  sub.s $f0, $f2, $f0
/* 0F4274 802CF8C4 2442FFFF */  addiu $v0, $v0, -1
/* 0F4278 802CF8C8 A622008E */  sh    $v0, 0x8e($s1)
/* 0F427C 802CF8CC 00021400 */  sll   $v0, $v0, 0x10
/* 0F4280 802CF8D0 46020003 */  div.s $f0, $f0, $f2
/* 0F4284 802CF8D4 E6200054 */  swc1  $f0, 0x54($s1)
/* 0F4288 802CF8D8 46000086 */  mov.s $f2, $f0
/* 0F428C 802CF8DC E6200058 */  swc1  $f0, 0x58($s1)
/* 0F4290 802CF8E0 04400003 */  bltz  $v0, .L802CF8F0
/* 0F4294 802CF8E4 E622005C */   swc1  $f2, 0x5c($s1)
/* 0F4298 802CF8E8 080B3E54 */  j     func_802CF950
/* 0F429C 802CF8EC 0000102D */   daddu $v0, $zero, $zero

.L802CF8F0:
/* 0F42A0 802CF8F0 3C03802E */  lui   $v1, 0x802e
/* 0F42A4 802CF8F4 8C63AE40 */  lw    $v1, -0x51c0($v1)
/* 0F42A8 802CF8F8 C6240064 */  lwc1  $f4, 0x64($s1)
/* 0F42AC 802CF8FC C622000C */  lwc1  $f2, 0xc($s1)
/* 0F42B0 802CF900 3C014334 */  lui   $at, 0x4334
/* 0F42B4 802CF904 44816000 */  mtc1  $at, $f12
/* 0F42B8 802CF908 3C013F80 */  lui   $at, 0x3f80
/* 0F42BC 802CF90C 44810000 */  mtc1  $at, $f0
/* 0F42C0 802CF910 000310C0 */  sll   $v0, $v1, 3
/* 0F42C4 802CF914 00431021 */  addu  $v0, $v0, $v1
/* 0F42C8 802CF918 00021080 */  sll   $v0, $v0, 2
/* 0F42CC 802CF91C 3C018010 */  lui   $at, 0x8010
/* 0F42D0 802CF920 00220821 */  addu  $at, $at, $v0
/* 0F42D4 802CF924 8C22835C */  lw    $v0, -0x7ca4($at)
/* 0F42D8 802CF928 460C1300 */  add.s $f12, $f2, $f12
/* 0F42DC 802CF92C E634001C */  swc1  $f20, 0x1c($s1)
/* 0F42E0 802CF930 E624003C */  swc1  $f4, 0x3c($s1)
/* 0F42E4 802CF934 E6200054 */  swc1  $f0, 0x54($s1)
/* 0F42E8 802CF938 E6200058 */  swc1  $f0, 0x58($s1)
/* 0F42EC 802CF93C E620005C */  swc1  $f0, 0x5c($s1)
/* 0F42F0 802CF940 0C00A6C9 */  jal   clamp_angle
/* 0F42F4 802CF944 AE220028 */   sw    $v0, 0x28($s1)
/* 0F42F8 802CF948 24020002 */  addiu $v0, $zero, 2
/* 0F42FC 802CF94C E620000C */  swc1  $f0, 0xc($s1)
func_802CF950:
/* 0F4300 802CF950 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0F4304 802CF954 8FB40030 */  lw    $s4, 0x30($sp)
/* 0F4308 802CF958 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0F430C 802CF95C 8FB20028 */  lw    $s2, 0x28($sp)
/* 0F4310 802CF960 8FB10024 */  lw    $s1, 0x24($sp)
/* 0F4314 802CF964 8FB00020 */  lw    $s0, 0x20($sp)
/* 0F4318 802CF968 D7BE0060 */  ldc1  $f30, 0x60($sp)
/* 0F431C 802CF96C D7BC0058 */  ldc1  $f28, 0x58($sp)
/* 0F4320 802CF970 D7BA0050 */  ldc1  $f26, 0x50($sp)
/* 0F4324 802CF974 D7B80048 */  ldc1  $f24, 0x48($sp)
/* 0F4328 802CF978 D7B60040 */  ldc1  $f22, 0x40($sp)
/* 0F432C 802CF97C D7B40038 */  ldc1  $f20, 0x38($sp)
/* 0F4330 802CF980 03E00008 */  jr    $ra
/* 0F4334 802CF984 27BD0068 */   addiu $sp, $sp, 0x68

PutPartnerAway:
/* 0F4338 802CF988 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0F433C 802CF98C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F4340 802CF990 00A0802D */  daddu $s0, $a1, $zero
/* 0F4344 802CF994 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F4348 802CF998 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F434C 802CF99C F7BE0048 */  sdc1  $f30, 0x48($sp)
/* 0F4350 802CF9A0 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* 0F4354 802CF9A4 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 0F4358 802CF9A8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F435C 802CF9AC F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F4360 802CF9B0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F4364 802CF9B4 0C00EABB */  jal   get_npc_unsafe
/* 0F4368 802CF9B8 2404FFFC */   addiu $a0, $zero, -4
/* 0F436C 802CF9BC 3C048011 */  lui   $a0, 0x8011
/* 0F4370 802CF9C0 2484EFC8 */  addiu $a0, $a0, -0x1038
/* 0F4374 802CF9C4 1200005F */  beqz  $s0, .L802CFB44
/* 0F4378 802CF9C8 0040882D */   daddu $s1, $v0, $zero
/* 0F437C 802CF9CC 3C10802E */  lui   $s0, 0x802e
/* 0F4380 802CF9D0 2610AE40 */  addiu $s0, $s0, -0x51c0
/* 0F4384 802CF9D4 8E020000 */  lw    $v0, ($s0)
/* 0F4388 802CF9D8 1040009A */  beqz  $v0, .L802CFC44
/* 0F438C 802CF9DC 2403FDFF */   addiu $v1, $zero, -0x201
/* 0F4390 802CF9E0 8E220000 */  lw    $v0, ($s1)
/* 0F4394 802CF9E4 C63A0038 */  lwc1  $f26, 0x38($s1)
/* 0F4398 802CF9E8 C63C003C */  lwc1  $f28, 0x3c($s1)
/* 0F439C 802CF9EC C6380040 */  lwc1  $f24, 0x40($s1)
/* 0F43A0 802CF9F0 00431024 */  and   $v0, $v0, $v1
/* 0F43A4 802CF9F4 2403FFF7 */  addiu $v1, $zero, -9
/* 0F43A8 802CF9F8 00431024 */  and   $v0, $v0, $v1
/* 0F43AC 802CF9FC AE220000 */  sw    $v0, ($s1)
/* 0F43B0 802CFA00 C4960028 */  lwc1  $f22, 0x28($a0)
/* 0F43B4 802CFA04 E6360060 */  swc1  $f22, 0x60($s1)
/* 0F43B8 802CFA08 948200B0 */  lhu   $v0, 0xb0($a0)
/* 0F43BC 802CFA0C C482002C */  lwc1  $f2, 0x2c($a0)
/* 0F43C0 802CFA10 4406B000 */  mfc1  $a2, $f22
/* 0F43C4 802CFA14 00021400 */  sll   $v0, $v0, 0x10
/* 0F43C8 802CFA18 00021C03 */  sra   $v1, $v0, 0x10
/* 0F43CC 802CFA1C 000217C2 */  srl   $v0, $v0, 0x1f
/* 0F43D0 802CFA20 00621821 */  addu  $v1, $v1, $v0
/* 0F43D4 802CFA24 00031843 */  sra   $v1, $v1, 1
/* 0F43D8 802CFA28 44830000 */  mtc1  $v1, $f0
/* 0F43DC 802CFA2C 00000000 */  nop   
/* 0F43E0 802CFA30 46800020 */  cvt.s.w $f0, $f0
/* 0F43E4 802CFA34 46001780 */  add.s $f30, $f2, $f0
/* 0F43E8 802CFA38 3C014080 */  lui   $at, 0x4080
/* 0F43EC 802CFA3C 44810000 */  mtc1  $at, $f0
/* 0F43F0 802CFA40 4600D306 */  mov.s $f12, $f26
/* 0F43F4 802CFA44 E63E0064 */  swc1  $f30, 0x64($s1)
/* 0F43F8 802CFA48 C4940030 */  lwc1  $f20, 0x30($a0)
/* 0F43FC 802CFA4C 3C014026 */  lui   $at, 0x4026
/* 0F4400 802CFA50 34216666 */  ori   $at, $at, 0x6666
/* 0F4404 802CFA54 44811000 */  mtc1  $at, $f2
/* 0F4408 802CFA58 4407A000 */  mfc1  $a3, $f20
/* 0F440C 802CFA5C 4600C386 */  mov.s $f14, $f24
/* 0F4410 802CFA60 E6200018 */  swc1  $f0, 0x18($s1)
/* 0F4414 802CFA64 E6220014 */  swc1  $f2, 0x14($s1)
/* 0F4418 802CFA68 0C00A7B5 */  jal   dist2D
/* 0F441C 802CFA6C E6340068 */   swc1  $f20, 0x68($s1)
/* 0F4420 802CFA70 4600D306 */  mov.s $f12, $f26
/* 0F4424 802CFA74 4406B000 */  mfc1  $a2, $f22
/* 0F4428 802CFA78 4407A000 */  mfc1  $a3, $f20
/* 0F442C 802CFA7C 4600C386 */  mov.s $f14, $f24
/* 0F4430 802CFA80 0C00A720 */  jal   atan2
/* 0F4434 802CFA84 E6200010 */   swc1  $f0, 0x10($s1)
/* 0F4438 802CFA88 C6220010 */  lwc1  $f2, 0x10($s1)
/* 0F443C 802CFA8C C6240018 */  lwc1  $f4, 0x18($s1)
/* 0F4440 802CFA90 E620000C */  swc1  $f0, 0xc($s1)
/* 0F4444 802CFA94 46041083 */  div.s $f2, $f2, $f4
/* 0F4448 802CFA98 4600118D */  trunc.w.s $f6, $f2
/* 0F444C 802CFA9C 44023000 */  mfc1  $v0, $f6
/* 0F4450 802CFAA0 00000000 */  nop   
/* 0F4454 802CFAA4 A622008E */  sh    $v0, 0x8e($s1)
/* 0F4458 802CFAA8 00021400 */  sll   $v0, $v0, 0x10
/* 0F445C 802CFAAC 00021403 */  sra   $v0, $v0, 0x10
/* 0F4460 802CFAB0 2842000A */  slti  $v0, $v0, 0xa
/* 0F4464 802CFAB4 10400007 */  beqz  $v0, .L802CFAD4
/* 0F4468 802CFAB8 2402000A */   addiu $v0, $zero, 0xa
/* 0F446C 802CFABC 3C014120 */  lui   $at, 0x4120
/* 0F4470 802CFAC0 44810000 */  mtc1  $at, $f0
/* 0F4474 802CFAC4 C6220010 */  lwc1  $f2, 0x10($s1)
/* 0F4478 802CFAC8 A622008E */  sh    $v0, 0x8e($s1)
/* 0F447C 802CFACC 46001083 */  div.s $f2, $f2, $f0
/* 0F4480 802CFAD0 E6220018 */  swc1  $f2, 0x18($s1)
.L802CFAD4:
/* 0F4484 802CFAD4 8622008E */  lh    $v0, 0x8e($s1)
/* 0F4488 802CFAD8 C6200014 */  lwc1  $f0, 0x14($s1)
/* 0F448C 802CFADC 44822000 */  mtc1  $v0, $f4
/* 0F4490 802CFAE0 00000000 */  nop   
/* 0F4494 802CFAE4 46802120 */  cvt.s.w $f4, $f4
/* 0F4498 802CFAE8 46040002 */  mul.s $f0, $f0, $f4
/* 0F449C 802CFAEC 00000000 */  nop   
/* 0F44A0 802CFAF0 46040002 */  mul.s $f0, $f0, $f4
/* 0F44A4 802CFAF4 00000000 */  nop   
/* 0F44A8 802CFAF8 3C013F00 */  lui   $at, 0x3f00
/* 0F44AC 802CFAFC 44811000 */  mtc1  $at, $f2
/* 0F44B0 802CFB00 00000000 */  nop   
/* 0F44B4 802CFB04 46020002 */  mul.s $f0, $f0, $f2
/* 0F44B8 802CFB08 00000000 */  nop   
/* 0F44BC 802CFB0C 8E030000 */  lw    $v1, ($s0)
/* 0F44C0 802CFB10 461CF701 */  sub.s $f28, $f30, $f28
/* 0F44C4 802CFB14 000310C0 */  sll   $v0, $v1, 3
/* 0F44C8 802CFB18 4600E000 */  add.s $f0, $f28, $f0
/* 0F44CC 802CFB1C 00431021 */  addu  $v0, $v0, $v1
/* 0F44D0 802CFB20 00021080 */  sll   $v0, $v0, 2
/* 0F44D4 802CFB24 46040003 */  div.s $f0, $f0, $f4
/* 0F44D8 802CFB28 E620001C */  swc1  $f0, 0x1c($s1)
/* 0F44DC 802CFB2C 3C038010 */  lui   $v1, 0x8010
/* 0F44E0 802CFB30 00621821 */  addu  $v1, $v1, $v0
/* 0F44E4 802CFB34 8C63834C */  lw    $v1, -0x7cb4($v1)
/* 0F44E8 802CFB38 0000102D */  daddu $v0, $zero, $zero
/* 0F44EC 802CFB3C 080B3F12 */  j     func_802CFC48
/* 0F44F0 802CFB40 AE230028 */   sw    $v1, 0x28($s1)

.L802CFB44:
/* 0F44F4 802CFB44 C620001C */  lwc1  $f0, 0x1c($s1)
/* 0F44F8 802CFB48 C6220014 */  lwc1  $f2, 0x14($s1)
/* 0F44FC 802CFB4C 46020001 */  sub.s $f0, $f0, $f2
/* 0F4500 802CFB50 C622003C */  lwc1  $f2, 0x3c($s1)
/* 0F4504 802CFB54 46001080 */  add.s $f2, $f2, $f0
/* 0F4508 802CFB58 4480A000 */  mtc1  $zero, $f20
/* 0F450C 802CFB5C 00000000 */  nop   
/* 0F4510 802CFB60 4614003E */  c.le.s $f0, $f20
/* 0F4514 802CFB64 E620001C */  swc1  $f0, 0x1c($s1)
/* 0F4518 802CFB68 4500000A */  bc1f  .L802CFB94
/* 0F451C 802CFB6C E622003C */   swc1  $f2, 0x3c($s1)
/* 0F4520 802CFB70 3C02802E */  lui   $v0, 0x802e
/* 0F4524 802CFB74 8C42AE40 */  lw    $v0, -0x51c0($v0)
/* 0F4528 802CFB78 000218C0 */  sll   $v1, $v0, 3
/* 0F452C 802CFB7C 00621821 */  addu  $v1, $v1, $v0
/* 0F4530 802CFB80 00031880 */  sll   $v1, $v1, 2
/* 0F4534 802CFB84 3C028010 */  lui   $v0, 0x8010
/* 0F4538 802CFB88 00431021 */  addu  $v0, $v0, $v1
/* 0F453C 802CFB8C 8C428350 */  lw    $v0, -0x7cb0($v0)
/* 0F4540 802CFB90 AE220028 */  sw    $v0, 0x28($s1)
.L802CFB94:
/* 0F4544 802CFB94 8E26000C */  lw    $a2, 0xc($s1)
/* 0F4548 802CFB98 8E250018 */  lw    $a1, 0x18($s1)
/* 0F454C 802CFB9C 0C00EA95 */  jal   npc_move_heading
/* 0F4550 802CFBA0 0220202D */   daddu $a0, $s1, $zero
/* 0F4554 802CFBA4 8622008E */  lh    $v0, 0x8e($s1)
/* 0F4558 802CFBA8 3C014120 */  lui   $at, 0x4120
/* 0F455C 802CFBAC 44811000 */  mtc1  $at, $f2
/* 0F4560 802CFBB0 44820000 */  mtc1  $v0, $f0
/* 0F4564 802CFBB4 00000000 */  nop   
/* 0F4568 802CFBB8 46800020 */  cvt.s.w $f0, $f0
/* 0F456C 802CFBBC 4600103C */  c.lt.s $f2, $f0
/* 0F4570 802CFBC0 00000000 */  nop   
/* 0F4574 802CFBC4 45030001 */  bc1tl .L802CFBCC
/* 0F4578 802CFBC8 46001006 */   mov.s $f0, $f2
.L802CFBCC:
/* 0F457C 802CFBCC 9622008E */  lhu   $v0, 0x8e($s1)
/* 0F4580 802CFBD0 46020003 */  div.s $f0, $f0, $f2
/* 0F4584 802CFBD4 E6200054 */  swc1  $f0, 0x54($s1)
/* 0F4588 802CFBD8 46000086 */  mov.s $f2, $f0
/* 0F458C 802CFBDC E6200058 */  swc1  $f0, 0x58($s1)
/* 0F4590 802CFBE0 E622005C */  swc1  $f2, 0x5c($s1)
/* 0F4594 802CFBE4 2442FFFF */  addiu $v0, $v0, -1
/* 0F4598 802CFBE8 A622008E */  sh    $v0, 0x8e($s1)
/* 0F459C 802CFBEC 00021400 */  sll   $v0, $v0, 0x10
/* 0F45A0 802CFBF0 04410015 */  bgez  $v0, .L802CFC48
/* 0F45A4 802CFBF4 0000102D */   daddu $v0, $zero, $zero
/* 0F45A8 802CFBF8 3C03802E */  lui   $v1, 0x802e
/* 0F45AC 802CFBFC 8C63AE40 */  lw    $v1, -0x51c0($v1)
/* 0F45B0 802CFC00 3C04802E */  lui   $a0, 0x802e
/* 0F45B4 802CFC04 8C84AE44 */  lw    $a0, -0x51bc($a0)
/* 0F45B8 802CFC08 C6200064 */  lwc1  $f0, 0x64($s1)
/* 0F45BC 802CFC0C 000310C0 */  sll   $v0, $v1, 3
/* 0F45C0 802CFC10 00431021 */  addu  $v0, $v0, $v1
/* 0F45C4 802CFC14 00021080 */  sll   $v0, $v0, 2
/* 0F45C8 802CFC18 3C018010 */  lui   $at, 0x8010
/* 0F45CC 802CFC1C 00220821 */  addu  $at, $at, $v0
/* 0F45D0 802CFC20 8C228354 */  lw    $v0, -0x7cac($at)
/* 0F45D4 802CFC24 E634001C */  swc1  $f20, 0x1c($s1)
/* 0F45D8 802CFC28 E620003C */  swc1  $f0, 0x3c($s1)
/* 0F45DC 802CFC2C 0C00E228 */  jal   func_800388A0
/* 0F45E0 802CFC30 AE220028 */   sw    $v0, 0x28($s1)
/* 0F45E4 802CFC34 0C00EABB */  jal   get_npc_unsafe
/* 0F45E8 802CFC38 2404FFFB */   addiu $a0, $zero, -5
/* 0F45EC 802CFC3C 2403FFFC */  addiu $v1, $zero, -4
/* 0F45F0 802CFC40 A04300A4 */  sb    $v1, 0xa4($v0)
.L802CFC44:
/* 0F45F4 802CFC44 24020002 */  addiu $v0, $zero, 2
func_802CFC48:
.L802CFC48:
/* 0F45F8 802CFC48 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F45FC 802CFC4C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F4600 802CFC50 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F4604 802CFC54 D7BE0048 */  ldc1  $f30, 0x48($sp)
/* 0F4608 802CFC58 D7BC0040 */  ldc1  $f28, 0x40($sp)
/* 0F460C 802CFC5C D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 0F4610 802CFC60 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F4614 802CFC64 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F4618 802CFC68 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F461C 802CFC6C 03E00008 */  jr    $ra
/* 0F4620 802CFC70 27BD0050 */   addiu $sp, $sp, 0x50

GetCurrentPartnerID:
/* 0F4624 802CFC74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F4628 802CFC78 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F462C 802CFC7C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F4630 802CFC80 3C068011 */  lui   $a2, 0x8011
/* 0F4634 802CFC84 80C6F2A2 */  lb    $a2, -0xd5e($a2)
/* 0F4638 802CFC88 0C0B2026 */  jal   set_variable
/* 0F463C 802CFC8C 8C450000 */   lw    $a1, ($v0)
/* 0F4640 802CFC90 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F4644 802CFC94 24020002 */  addiu $v0, $zero, 2
/* 0F4648 802CFC98 03E00008 */  jr    $ra
/* 0F464C 802CFC9C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F4650 802CFCA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F4654 802CFCA4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F4658 802CFCA8 0080802D */  daddu $s0, $a0, $zero
/* 0F465C 802CFCAC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F4660 802CFCB0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F4664 802CFCB4 8E02000C */  lw    $v0, 0xc($s0)
/* 0F4668 802CFCB8 0C03AD0B */  jal   func_800EB42C
/* 0F466C 802CFCBC 8C510000 */   lw    $s1, ($v0)
/* 0F4670 802CFCC0 0200202D */  daddu $a0, $s0, $zero
/* 0F4674 802CFCC4 0040302D */  daddu $a2, $v0, $zero
/* 0F4678 802CFCC8 0C0B2026 */  jal   set_variable
/* 0F467C 802CFCCC 0220282D */   daddu $a1, $s1, $zero
/* 0F4680 802CFCD0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F4684 802CFCD4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F4688 802CFCD8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F468C 802CFCDC 24020002 */  addiu $v0, $zero, 2
/* 0F4690 802CFCE0 03E00008 */  jr    $ra
/* 0F4694 802CFCE4 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F4698 802CFCE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F469C 802CFCEC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F46A0 802CFCF0 0080802D */  daddu $s0, $a0, $zero
/* 0F46A4 802CFCF4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F46A8 802CFCF8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F46AC 802CFCFC 8E02000C */  lw    $v0, 0xc($s0)
/* 0F46B0 802CFD00 0C03A969 */  jal   func_800EA5A4
/* 0F46B4 802CFD04 8C510000 */   lw    $s1, ($v0)
/* 0F46B8 802CFD08 0200202D */  daddu $a0, $s0, $zero
/* 0F46BC 802CFD0C 0040302D */  daddu $a2, $v0, $zero
/* 0F46C0 802CFD10 0C0B2026 */  jal   set_variable
/* 0F46C4 802CFD14 0220282D */   daddu $a1, $s1, $zero
/* 0F46C8 802CFD18 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F46CC 802CFD1C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F46D0 802CFD20 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F46D4 802CFD24 24020002 */  addiu $v0, $zero, 2
/* 0F46D8 802CFD28 03E00008 */  jr    $ra
/* 0F46DC 802CFD2C 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F46E0 802CFD30 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0F46E4 802CFD34 AFB10024 */  sw    $s1, 0x24($sp)
/* 0F46E8 802CFD38 0080882D */  daddu $s1, $a0, $zero
/* 0F46EC 802CFD3C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0F46F0 802CFD40 AFB60038 */  sw    $s6, 0x38($sp)
/* 0F46F4 802CFD44 AFB50034 */  sw    $s5, 0x34($sp)
/* 0F46F8 802CFD48 AFB40030 */  sw    $s4, 0x30($sp)
/* 0F46FC 802CFD4C AFB3002C */  sw    $s3, 0x2c($sp)
/* 0F4700 802CFD50 AFB20028 */  sw    $s2, 0x28($sp)
/* 0F4704 802CFD54 AFB00020 */  sw    $s0, 0x20($sp)
/* 0F4708 802CFD58 8E30000C */  lw    $s0, 0xc($s1)
/* 0F470C 802CFD5C 8E050000 */  lw    $a1, ($s0)
/* 0F4710 802CFD60 0C0B1EAF */  jal   get_variable
/* 0F4714 802CFD64 26100004 */   addiu $s0, $s0, 4
/* 0F4718 802CFD68 8E050000 */  lw    $a1, ($s0)
/* 0F471C 802CFD6C 26100004 */  addiu $s0, $s0, 4
/* 0F4720 802CFD70 0220202D */  daddu $a0, $s1, $zero
/* 0F4724 802CFD74 0C0B1EAF */  jal   get_variable
/* 0F4728 802CFD78 0040902D */   daddu $s2, $v0, $zero
/* 0F472C 802CFD7C 8E050000 */  lw    $a1, ($s0)
/* 0F4730 802CFD80 26100004 */  addiu $s0, $s0, 4
/* 0F4734 802CFD84 0220202D */  daddu $a0, $s1, $zero
/* 0F4738 802CFD88 0C0B1EAF */  jal   get_variable
/* 0F473C 802CFD8C 0040B02D */   daddu $s6, $v0, $zero
/* 0F4740 802CFD90 8E050000 */  lw    $a1, ($s0)
/* 0F4744 802CFD94 26100004 */  addiu $s0, $s0, 4
/* 0F4748 802CFD98 0220202D */  daddu $a0, $s1, $zero
/* 0F474C 802CFD9C 0C0B1EAF */  jal   get_variable
/* 0F4750 802CFDA0 0040A82D */   daddu $s5, $v0, $zero
/* 0F4754 802CFDA4 8E050000 */  lw    $a1, ($s0)
/* 0F4758 802CFDA8 26100004 */  addiu $s0, $s0, 4
/* 0F475C 802CFDAC 0220202D */  daddu $a0, $s1, $zero
/* 0F4760 802CFDB0 0C0B1EAF */  jal   get_variable
/* 0F4764 802CFDB4 0040A02D */   daddu $s4, $v0, $zero
/* 0F4768 802CFDB8 0220202D */  daddu $a0, $s1, $zero
/* 0F476C 802CFDBC 8E050000 */  lw    $a1, ($s0)
/* 0F4770 802CFDC0 0C0B1EAF */  jal   get_variable
/* 0F4774 802CFDC4 0040982D */   daddu $s3, $v0, $zero
/* 0F4778 802CFDC8 0220202D */  daddu $a0, $s1, $zero
/* 0F477C 802CFDCC 0240282D */  daddu $a1, $s2, $zero
/* 0F4780 802CFDD0 0C0B36B0 */  jal   func_802CDAC0
/* 0F4784 802CFDD4 0040802D */   daddu $s0, $v0, $zero
/* 0F4788 802CFDD8 10400009 */  beqz  $v0, .L802CFE00
/* 0F478C 802CFDDC 0040202D */   daddu $a0, $v0, $zero
/* 0F4790 802CFDE0 02C0282D */  daddu $a1, $s6, $zero
/* 0F4794 802CFDE4 02A0302D */  daddu $a2, $s5, $zero
/* 0F4798 802CFDE8 AFB30010 */  sw    $s3, 0x10($sp)
/* 0F479C 802CFDEC AFB00014 */  sw    $s0, 0x14($sp)
/* 0F47A0 802CFDF0 948200A2 */  lhu   $v0, 0xa2($a0)
/* 0F47A4 802CFDF4 0280382D */  daddu $a3, $s4, $zero
/* 0F47A8 802CFDF8 0C00F589 */  jal   func_8003D624
/* 0F47AC 802CFDFC AFA20018 */   sw    $v0, 0x18($sp)
.L802CFE00:
/* 0F47B0 802CFE00 24020002 */  addiu $v0, $zero, 2
/* 0F47B4 802CFE04 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0F47B8 802CFE08 8FB60038 */  lw    $s6, 0x38($sp)
/* 0F47BC 802CFE0C 8FB50034 */  lw    $s5, 0x34($sp)
/* 0F47C0 802CFE10 8FB40030 */  lw    $s4, 0x30($sp)
/* 0F47C4 802CFE14 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0F47C8 802CFE18 8FB20028 */  lw    $s2, 0x28($sp)
/* 0F47CC 802CFE1C 8FB10024 */  lw    $s1, 0x24($sp)
/* 0F47D0 802CFE20 8FB00020 */  lw    $s0, 0x20($sp)
/* 0F47D4 802CFE24 03E00008 */  jr    $ra
/* 0F47D8 802CFE28 27BD0040 */   addiu $sp, $sp, 0x40

/* 0F47DC 802CFE2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F47E0 802CFE30 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F47E4 802CFE34 0080802D */  daddu $s0, $a0, $zero
/* 0F47E8 802CFE38 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F47EC 802CFE3C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F47F0 802CFE40 8E11000C */  lw    $s1, 0xc($s0)
/* 0F47F4 802CFE44 8E250000 */  lw    $a1, ($s1)
/* 0F47F8 802CFE48 0C0B1EAF */  jal   get_variable
/* 0F47FC 802CFE4C 26310004 */   addiu $s1, $s1, 4
/* 0F4800 802CFE50 0200202D */  daddu $a0, $s0, $zero
/* 0F4804 802CFE54 8E310000 */  lw    $s1, ($s1)
/* 0F4808 802CFE58 0C0B36B0 */  jal   func_802CDAC0
/* 0F480C 802CFE5C 0040282D */   daddu $a1, $v0, $zero
/* 0F4810 802CFE60 54400001 */  bnezl $v0, .L802CFE68
/* 0F4814 802CFE64 A45100A2 */   sh    $s1, 0xa2($v0)
.L802CFE68:
/* 0F4818 802CFE68 24020002 */  addiu $v0, $zero, 2
/* 0F481C 802CFE6C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F4820 802CFE70 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F4824 802CFE74 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F4828 802CFE78 03E00008 */  jr    $ra
/* 0F482C 802CFE7C 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F4830 802CFE80 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F4834 802CFE84 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F4838 802CFE88 0080882D */  daddu $s1, $a0, $zero
/* 0F483C 802CFE8C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F4840 802CFE90 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F4844 802CFE94 8E30000C */  lw    $s0, 0xc($s1)
/* 0F4848 802CFE98 8E050000 */  lw    $a1, ($s0)
/* 0F484C 802CFE9C 0C0B1EAF */  jal   get_variable
/* 0F4850 802CFEA0 26100004 */   addiu $s0, $s0, 4
/* 0F4854 802CFEA4 0220202D */  daddu $a0, $s1, $zero
/* 0F4858 802CFEA8 8E050000 */  lw    $a1, ($s0)
/* 0F485C 802CFEAC 0C0B1EAF */  jal   get_variable
/* 0F4860 802CFEB0 0040802D */   daddu $s0, $v0, $zero
/* 0F4864 802CFEB4 0220202D */  daddu $a0, $s1, $zero
/* 0F4868 802CFEB8 0200282D */  daddu $a1, $s0, $zero
/* 0F486C 802CFEBC 0C0B36B0 */  jal   func_802CDAC0
/* 0F4870 802CFEC0 0040802D */   daddu $s0, $v0, $zero
/* 0F4874 802CFEC4 10400003 */  beqz  $v0, .L802CFED4
/* 0F4878 802CFEC8 0040202D */   daddu $a0, $v0, $zero
/* 0F487C 802CFECC 0C00ECF4 */  jal   func_8003B3D0
/* 0F4880 802CFED0 0200282D */   daddu $a1, $s0, $zero
.L802CFED4:
/* 0F4884 802CFED4 24020002 */  addiu $v0, $zero, 2
/* 0F4888 802CFED8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F488C 802CFEDC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F4890 802CFEE0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F4894 802CFEE4 03E00008 */  jr    $ra
/* 0F4898 802CFEE8 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F489C 802CFEEC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0F48A0 802CFEF0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F48A4 802CFEF4 0080882D */  daddu $s1, $a0, $zero
/* 0F48A8 802CFEF8 AFBF0030 */  sw    $ra, 0x30($sp)
/* 0F48AC 802CFEFC AFB5002C */  sw    $s5, 0x2c($sp)
/* 0F48B0 802CFF00 AFB40028 */  sw    $s4, 0x28($sp)
/* 0F48B4 802CFF04 AFB30024 */  sw    $s3, 0x24($sp)
/* 0F48B8 802CFF08 AFB20020 */  sw    $s2, 0x20($sp)
/* 0F48BC 802CFF0C AFB00018 */  sw    $s0, 0x18($sp)
/* 0F48C0 802CFF10 8E30000C */  lw    $s0, 0xc($s1)
/* 0F48C4 802CFF14 8E050000 */  lw    $a1, ($s0)
/* 0F48C8 802CFF18 0C0B1EAF */  jal   get_variable
/* 0F48CC 802CFF1C 26100004 */   addiu $s0, $s0, 4
/* 0F48D0 802CFF20 8E050000 */  lw    $a1, ($s0)
/* 0F48D4 802CFF24 26100004 */  addiu $s0, $s0, 4
/* 0F48D8 802CFF28 0220202D */  daddu $a0, $s1, $zero
/* 0F48DC 802CFF2C 0C0B1EAF */  jal   get_variable
/* 0F48E0 802CFF30 0040902D */   daddu $s2, $v0, $zero
/* 0F48E4 802CFF34 8E050000 */  lw    $a1, ($s0)
/* 0F48E8 802CFF38 26100004 */  addiu $s0, $s0, 4
/* 0F48EC 802CFF3C 0220202D */  daddu $a0, $s1, $zero
/* 0F48F0 802CFF40 0C0B1EAF */  jal   get_variable
/* 0F48F4 802CFF44 0040A82D */   daddu $s5, $v0, $zero
/* 0F48F8 802CFF48 8E050000 */  lw    $a1, ($s0)
/* 0F48FC 802CFF4C 26100004 */  addiu $s0, $s0, 4
/* 0F4900 802CFF50 0220202D */  daddu $a0, $s1, $zero
/* 0F4904 802CFF54 0C0B1EAF */  jal   get_variable
/* 0F4908 802CFF58 0040A02D */   daddu $s4, $v0, $zero
/* 0F490C 802CFF5C 0220202D */  daddu $a0, $s1, $zero
/* 0F4910 802CFF60 8E050000 */  lw    $a1, ($s0)
/* 0F4914 802CFF64 0C0B1EAF */  jal   get_variable
/* 0F4918 802CFF68 0040982D */   daddu $s3, $v0, $zero
/* 0F491C 802CFF6C 0220202D */  daddu $a0, $s1, $zero
/* 0F4920 802CFF70 0240282D */  daddu $a1, $s2, $zero
/* 0F4924 802CFF74 0C0B36B0 */  jal   func_802CDAC0
/* 0F4928 802CFF78 0040802D */   daddu $s0, $v0, $zero
/* 0F492C 802CFF7C 10400006 */  beqz  $v0, .L802CFF98
/* 0F4930 802CFF80 0040202D */   daddu $a0, $v0, $zero
/* 0F4934 802CFF84 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F4938 802CFF88 02A0282D */  daddu $a1, $s5, $zero
/* 0F493C 802CFF8C 0280302D */  daddu $a2, $s4, $zero
/* 0F4940 802CFF90 0C00ED13 */  jal   func_8003B44C
/* 0F4944 802CFF94 0260382D */   daddu $a3, $s3, $zero
.L802CFF98:
/* 0F4948 802CFF98 24020002 */  addiu $v0, $zero, 2
/* 0F494C 802CFF9C 8FBF0030 */  lw    $ra, 0x30($sp)
/* 0F4950 802CFFA0 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0F4954 802CFFA4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0F4958 802CFFA8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0F495C 802CFFAC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F4960 802CFFB0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F4964 802CFFB4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F4968 802CFFB8 03E00008 */  jr    $ra
/* 0F496C 802CFFBC 27BD0038 */   addiu $sp, $sp, 0x38

/* 0F4970 802CFFC0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0F4974 802CFFC4 AFB10024 */  sw    $s1, 0x24($sp)
/* 0F4978 802CFFC8 0080882D */  daddu $s1, $a0, $zero
/* 0F497C 802CFFCC AFBF0044 */  sw    $ra, 0x44($sp)
/* 0F4980 802CFFD0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0F4984 802CFFD4 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0F4988 802CFFD8 AFB60038 */  sw    $s6, 0x38($sp)
/* 0F498C 802CFFDC AFB50034 */  sw    $s5, 0x34($sp)
/* 0F4990 802CFFE0 AFB40030 */  sw    $s4, 0x30($sp)
/* 0F4994 802CFFE4 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0F4998 802CFFE8 AFB20028 */  sw    $s2, 0x28($sp)
/* 0F499C 802CFFEC AFB00020 */  sw    $s0, 0x20($sp)
/* 0F49A0 802CFFF0 8E30000C */  lw    $s0, 0xc($s1)
/* 0F49A4 802CFFF4 8E050000 */  lw    $a1, ($s0)
/* 0F49A8 802CFFF8 0C0B1EAF */  jal   get_variable
/* 0F49AC 802CFFFC 26100004 */   addiu $s0, $s0, 4
/* 0F49B0 802D0000 8E050000 */  lw    $a1, ($s0)
/* 0F49B4 802D0004 26100004 */  addiu $s0, $s0, 4
/* 0F49B8 802D0008 0220202D */  daddu $a0, $s1, $zero
/* 0F49BC 802D000C 0C0B1EAF */  jal   get_variable
/* 0F49C0 802D0010 0040902D */   daddu $s2, $v0, $zero
/* 0F49C4 802D0014 8E050000 */  lw    $a1, ($s0)
/* 0F49C8 802D0018 26100004 */  addiu $s0, $s0, 4
/* 0F49CC 802D001C 0220202D */  daddu $a0, $s1, $zero
/* 0F49D0 802D0020 0C0B1EAF */  jal   get_variable
/* 0F49D4 802D0024 AFA20018 */   sw    $v0, 0x18($sp)
/* 0F49D8 802D0028 8E050000 */  lw    $a1, ($s0)
/* 0F49DC 802D002C 26100004 */  addiu $s0, $s0, 4
/* 0F49E0 802D0030 0220202D */  daddu $a0, $s1, $zero
/* 0F49E4 802D0034 0C0B1EAF */  jal   get_variable
/* 0F49E8 802D0038 0040F02D */   daddu $fp, $v0, $zero
/* 0F49EC 802D003C 8E050000 */  lw    $a1, ($s0)
/* 0F49F0 802D0040 26100004 */  addiu $s0, $s0, 4
/* 0F49F4 802D0044 0220202D */  daddu $a0, $s1, $zero
/* 0F49F8 802D0048 0C0B1EAF */  jal   get_variable
/* 0F49FC 802D004C 0040B82D */   daddu $s7, $v0, $zero
/* 0F4A00 802D0050 8E050000 */  lw    $a1, ($s0)
/* 0F4A04 802D0054 26100004 */  addiu $s0, $s0, 4
/* 0F4A08 802D0058 0220202D */  daddu $a0, $s1, $zero
/* 0F4A0C 802D005C 0C0B1EAF */  jal   get_variable
/* 0F4A10 802D0060 0040B02D */   daddu $s6, $v0, $zero
/* 0F4A14 802D0064 8E050000 */  lw    $a1, ($s0)
/* 0F4A18 802D0068 26100004 */  addiu $s0, $s0, 4
/* 0F4A1C 802D006C 0220202D */  daddu $a0, $s1, $zero
/* 0F4A20 802D0070 0C0B1EAF */  jal   get_variable
/* 0F4A24 802D0074 0040A82D */   daddu $s5, $v0, $zero
/* 0F4A28 802D0078 8E050000 */  lw    $a1, ($s0)
/* 0F4A2C 802D007C 26100004 */  addiu $s0, $s0, 4
/* 0F4A30 802D0080 0220202D */  daddu $a0, $s1, $zero
/* 0F4A34 802D0084 0C0B1EAF */  jal   get_variable
/* 0F4A38 802D0088 0040A02D */   daddu $s4, $v0, $zero
/* 0F4A3C 802D008C 0220202D */  daddu $a0, $s1, $zero
/* 0F4A40 802D0090 8E050000 */  lw    $a1, ($s0)
/* 0F4A44 802D0094 0C0B1EAF */  jal   get_variable
/* 0F4A48 802D0098 0040982D */   daddu $s3, $v0, $zero
/* 0F4A4C 802D009C 0220202D */  daddu $a0, $s1, $zero
/* 0F4A50 802D00A0 0240282D */  daddu $a1, $s2, $zero
/* 0F4A54 802D00A4 0C0B36B0 */  jal   func_802CDAC0
/* 0F4A58 802D00A8 0040882D */   daddu $s1, $v0, $zero
/* 0F4A5C 802D00AC 0040802D */  daddu $s0, $v0, $zero
/* 0F4A60 802D00B0 1200000C */  beqz  $s0, .L802D00E4
/* 0F4A64 802D00B4 0200202D */   daddu $a0, $s0, $zero
/* 0F4A68 802D00B8 03C0302D */  daddu $a2, $fp, $zero
/* 0F4A6C 802D00BC 8FA50018 */  lw    $a1, 0x18($sp)
/* 0F4A70 802D00C0 02E0382D */  daddu $a3, $s7, $zero
/* 0F4A74 802D00C4 0C00ED13 */  jal   func_8003B44C
/* 0F4A78 802D00C8 AFB60010 */   sw    $s6, 0x10($sp)
/* 0F4A7C 802D00CC 0200202D */  daddu $a0, $s0, $zero
/* 0F4A80 802D00D0 02A0282D */  daddu $a1, $s5, $zero
/* 0F4A84 802D00D4 0280302D */  daddu $a2, $s4, $zero
/* 0F4A88 802D00D8 0260382D */  daddu $a3, $s3, $zero
/* 0F4A8C 802D00DC 0C00ED19 */  jal   func_8003B464
/* 0F4A90 802D00E0 AFB10010 */   sw    $s1, 0x10($sp)
.L802D00E4:
/* 0F4A94 802D00E4 24020002 */  addiu $v0, $zero, 2
/* 0F4A98 802D00E8 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0F4A9C 802D00EC 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0F4AA0 802D00F0 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0F4AA4 802D00F4 8FB60038 */  lw    $s6, 0x38($sp)
/* 0F4AA8 802D00F8 8FB50034 */  lw    $s5, 0x34($sp)
/* 0F4AAC 802D00FC 8FB40030 */  lw    $s4, 0x30($sp)
/* 0F4AB0 802D0100 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0F4AB4 802D0104 8FB20028 */  lw    $s2, 0x28($sp)
/* 0F4AB8 802D0108 8FB10024 */  lw    $s1, 0x24($sp)
/* 0F4ABC 802D010C 8FB00020 */  lw    $s0, 0x20($sp)
/* 0F4AC0 802D0110 03E00008 */  jr    $ra
/* 0F4AC4 802D0114 27BD0048 */   addiu $sp, $sp, 0x48

SetNpcEffect:
/* 0F4AC8 802D0118 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F4ACC 802D011C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F4AD0 802D0120 0080882D */  daddu $s1, $a0, $zero
/* 0F4AD4 802D0124 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F4AD8 802D0128 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F4ADC 802D012C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F4AE0 802D0130 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F4AE4 802D0134 8E30000C */  lw    $s0, 0xc($s1)
/* 0F4AE8 802D0138 8E050000 */  lw    $a1, ($s0)
/* 0F4AEC 802D013C 0C0B1EAF */  jal   get_variable
/* 0F4AF0 802D0140 26100004 */   addiu $s0, $s0, 4
/* 0F4AF4 802D0144 8E050000 */  lw    $a1, ($s0)
/* 0F4AF8 802D0148 26100004 */  addiu $s0, $s0, 4
/* 0F4AFC 802D014C 0220202D */  daddu $a0, $s1, $zero
/* 0F4B00 802D0150 0C0B1EAF */  jal   get_variable
/* 0F4B04 802D0154 0040902D */   daddu $s2, $v0, $zero
/* 0F4B08 802D0158 0220202D */  daddu $a0, $s1, $zero
/* 0F4B0C 802D015C 8E050000 */  lw    $a1, ($s0)
/* 0F4B10 802D0160 0C0B1EAF */  jal   get_variable
/* 0F4B14 802D0164 0040982D */   daddu $s3, $v0, $zero
/* 0F4B18 802D0168 0220202D */  daddu $a0, $s1, $zero
/* 0F4B1C 802D016C 0240282D */  daddu $a1, $s2, $zero
/* 0F4B20 802D0170 0C0B36B0 */  jal   func_802CDAC0
/* 0F4B24 802D0174 0040802D */   daddu $s0, $v0, $zero
/* 0F4B28 802D0178 10400004 */  beqz  $v0, .L802D018C
/* 0F4B2C 802D017C 0040202D */   daddu $a0, $v0, $zero
/* 0F4B30 802D0180 0260282D */  daddu $a1, $s3, $zero
/* 0F4B34 802D0184 0C00F0F6 */  jal   func_8003C3D8
/* 0F4B38 802D0188 0200302D */   daddu $a2, $s0, $zero
.L802D018C:
/* 0F4B3C 802D018C 24020002 */  addiu $v0, $zero, 2
/* 0F4B40 802D0190 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F4B44 802D0194 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F4B48 802D0198 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F4B4C 802D019C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F4B50 802D01A0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F4B54 802D01A4 03E00008 */  jr    $ra
/* 0F4B58 802D01A8 27BD0028 */   addiu $sp, $sp, 0x28

PlaySoundAtNpc:
/* 0F4B5C 802D01AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F4B60 802D01B0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F4B64 802D01B4 0080882D */  daddu $s1, $a0, $zero
/* 0F4B68 802D01B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0F4B6C 802D01BC AFB20020 */  sw    $s2, 0x20($sp)
/* 0F4B70 802D01C0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0F4B74 802D01C4 8E30000C */  lw    $s0, 0xc($s1)
/* 0F4B78 802D01C8 8E050000 */  lw    $a1, ($s0)
/* 0F4B7C 802D01CC 0C0B1EAF */  jal   get_variable
/* 0F4B80 802D01D0 26100004 */   addiu $s0, $s0, 4
/* 0F4B84 802D01D4 8E050000 */  lw    $a1, ($s0)
/* 0F4B88 802D01D8 26100004 */  addiu $s0, $s0, 4
/* 0F4B8C 802D01DC 0220202D */  daddu $a0, $s1, $zero
/* 0F4B90 802D01E0 0C0B1EAF */  jal   get_variable
/* 0F4B94 802D01E4 0040902D */   daddu $s2, $v0, $zero
/* 0F4B98 802D01E8 0220202D */  daddu $a0, $s1, $zero
/* 0F4B9C 802D01EC 8E050000 */  lw    $a1, ($s0)
/* 0F4BA0 802D01F0 0C0B1EAF */  jal   get_variable
/* 0F4BA4 802D01F4 0040802D */   daddu $s0, $v0, $zero
/* 0F4BA8 802D01F8 0220202D */  daddu $a0, $s1, $zero
/* 0F4BAC 802D01FC 0240282D */  daddu $a1, $s2, $zero
/* 0F4BB0 802D0200 0C0B36B0 */  jal   func_802CDAC0
/* 0F4BB4 802D0204 0040882D */   daddu $s1, $v0, $zero
/* 0F4BB8 802D0208 10400007 */  beqz  $v0, .L802D0228
/* 0F4BBC 802D020C 0200202D */   daddu $a0, $s0, $zero
/* 0F4BC0 802D0210 C4400040 */  lwc1  $f0, 0x40($v0)
/* 0F4BC4 802D0214 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0F4BC8 802D0218 8C460038 */  lw    $a2, 0x38($v0)
/* 0F4BCC 802D021C 8C47003C */  lw    $a3, 0x3c($v0)
/* 0F4BD0 802D0220 0C052757 */  jal   play_sound_at_position
/* 0F4BD4 802D0224 0220282D */   daddu $a1, $s1, $zero
.L802D0228:
/* 0F4BD8 802D0228 24020002 */  addiu $v0, $zero, 2
/* 0F4BDC 802D022C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0F4BE0 802D0230 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F4BE4 802D0234 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F4BE8 802D0238 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F4BEC 802D023C 03E00008 */  jr    $ra
/* 0F4BF0 802D0240 27BD0028 */   addiu $sp, $sp, 0x28

/* 0F4BF4 802D0244 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F4BF8 802D0248 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F4BFC 802D024C 0080882D */  daddu $s1, $a0, $zero
/* 0F4C00 802D0250 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F4C04 802D0254 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F4C08 802D0258 8E30000C */  lw    $s0, 0xc($s1)
/* 0F4C0C 802D025C 8E050000 */  lw    $a1, ($s0)
/* 0F4C10 802D0260 0C0B1EAF */  jal   get_variable
/* 0F4C14 802D0264 26100004 */   addiu $s0, $s0, 4
/* 0F4C18 802D0268 0220202D */  daddu $a0, $s1, $zero
/* 0F4C1C 802D026C 8E050000 */  lw    $a1, ($s0)
/* 0F4C20 802D0270 0C0B1EAF */  jal   get_variable
/* 0F4C24 802D0274 0040802D */   daddu $s0, $v0, $zero
/* 0F4C28 802D0278 0220202D */  daddu $a0, $s1, $zero
/* 0F4C2C 802D027C 0200282D */  daddu $a1, $s0, $zero
/* 0F4C30 802D0280 0C0B36B0 */  jal   func_802CDAC0
/* 0F4C34 802D0284 0040802D */   daddu $s0, $v0, $zero
/* 0F4C38 802D0288 A05000AA */  sb    $s0, 0xaa($v0)
/* 0F4C3C 802D028C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F4C40 802D0290 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F4C44 802D0294 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F4C48 802D0298 24020002 */  addiu $v0, $zero, 2
/* 0F4C4C 802D029C 03E00008 */  jr    $ra
/* 0F4C50 802D02A0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F4C54 802D02A4 00000000 */  nop   
/* 0F4C58 802D02A8 00000000 */  nop   
/* 0F4C5C 802D02AC 00000000 */  nop   