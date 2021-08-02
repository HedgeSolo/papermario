.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_802453B0_EF79C0
.double 32767.0

.section .text

glabel func_80240070_EF2680
/* EF2680 80240070 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* EF2684 80240074 AFB3002C */  sw        $s3, 0x2c($sp)
/* EF2688 80240078 0080982D */  daddu     $s3, $a0, $zero
/* EF268C 8024007C AFBF0030 */  sw        $ra, 0x30($sp)
/* EF2690 80240080 AFB20028 */  sw        $s2, 0x28($sp)
/* EF2694 80240084 AFB10024 */  sw        $s1, 0x24($sp)
/* EF2698 80240088 AFB00020 */  sw        $s0, 0x20($sp)
/* EF269C 8024008C 8E710148 */  lw        $s1, 0x148($s3)
/* EF26A0 80240090 86240008 */  lh        $a0, 8($s1)
/* EF26A4 80240094 0C00F92F */  jal       dead_get_npc_unsafe
/* EF26A8 80240098 00A0902D */   daddu    $s2, $a1, $zero
/* EF26AC 8024009C 8E440004 */  lw        $a0, 4($s2)
/* EF26B0 802400A0 0040802D */  daddu     $s0, $v0, $zero
/* EF26B4 802400A4 00041FC2 */  srl       $v1, $a0, 0x1f
/* EF26B8 802400A8 00832021 */  addu      $a0, $a0, $v1
/* EF26BC 802400AC 00042043 */  sra       $a0, $a0, 1
/* EF26C0 802400B0 0C00AB3B */  jal       dead_rand_int
/* EF26C4 802400B4 24840001 */   addiu    $a0, $a0, 1
/* EF26C8 802400B8 8E430004 */  lw        $v1, 4($s2)
/* EF26CC 802400BC 000327C2 */  srl       $a0, $v1, 0x1f
/* EF26D0 802400C0 00641821 */  addu      $v1, $v1, $a0
/* EF26D4 802400C4 00031843 */  sra       $v1, $v1, 1
/* EF26D8 802400C8 00621821 */  addu      $v1, $v1, $v0
/* EF26DC 802400CC A603008E */  sh        $v1, 0x8e($s0)
/* EF26E0 802400D0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* EF26E4 802400D4 C6000040 */  lwc1      $f0, 0x40($s0)
/* EF26E8 802400D8 C4640000 */  lwc1      $f4, ($v1)
/* EF26EC 802400DC 46802120 */  cvt.s.w   $f4, $f4
/* EF26F0 802400E0 C4620008 */  lwc1      $f2, 8($v1)
/* EF26F4 802400E4 468010A0 */  cvt.s.w   $f2, $f2
/* EF26F8 802400E8 E7A00010 */  swc1      $f0, 0x10($sp)
/* EF26FC 802400EC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2700 802400F0 44061000 */  mfc1      $a2, $f2
/* EF2704 802400F4 C440000C */  lwc1      $f0, 0xc($v0)
/* EF2708 802400F8 46800020 */  cvt.s.w   $f0, $f0
/* EF270C 802400FC E7A00014 */  swc1      $f0, 0x14($sp)
/* EF2710 80240100 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF2714 80240104 44052000 */  mfc1      $a1, $f4
/* EF2718 80240108 C4400010 */  lwc1      $f0, 0x10($v0)
/* EF271C 8024010C 46800020 */  cvt.s.w   $f0, $f0
/* EF2720 80240110 E7A00018 */  swc1      $f0, 0x18($sp)
/* EF2724 80240114 8C640018 */  lw        $a0, 0x18($v1)
/* EF2728 80240118 0C013431 */  jal       func_8004D0C4
/* EF272C 8024011C 8E070038 */   lw       $a3, 0x38($s0)
/* EF2730 80240120 1040000E */  beqz      $v0, .L8024015C
/* EF2734 80240124 00000000 */   nop
/* EF2738 80240128 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF273C 8024012C C60C0038 */  lwc1      $f12, 0x38($s0)
/* EF2740 80240130 C60E0040 */  lwc1      $f14, 0x40($s0)
/* EF2744 80240134 C4460000 */  lwc1      $f6, ($v0)
/* EF2748 80240138 468031A0 */  cvt.s.w   $f6, $f6
/* EF274C 8024013C 44063000 */  mfc1      $a2, $f6
/* EF2750 80240140 C4460008 */  lwc1      $f6, 8($v0)
/* EF2754 80240144 468031A0 */  cvt.s.w   $f6, $f6
/* EF2758 80240148 44073000 */  mfc1      $a3, $f6
/* EF275C 8024014C 0C00ABDC */  jal       fio_validate_header_checksums
/* EF2760 80240150 00000000 */   nop
/* EF2764 80240154 08090063 */  j         .L8024018C
/* EF2768 80240158 E600000C */   swc1     $f0, 0xc($s0)
.L8024015C:
/* EF276C 8024015C 0C00AB3B */  jal       dead_rand_int
/* EF2770 80240160 2404003C */   addiu    $a0, $zero, 0x3c
/* EF2774 80240164 C60C000C */  lwc1      $f12, 0xc($s0)
/* EF2778 80240168 44820000 */  mtc1      $v0, $f0
/* EF277C 8024016C 00000000 */  nop
/* EF2780 80240170 46800020 */  cvt.s.w   $f0, $f0
/* EF2784 80240174 46006300 */  add.s     $f12, $f12, $f0
/* EF2788 80240178 3C0141F0 */  lui       $at, 0x41f0
/* EF278C 8024017C 44810000 */  mtc1      $at, $f0
/* EF2790 80240180 0C00AB85 */  jal       dead_clamp_angle
/* EF2794 80240184 46006301 */   sub.s    $f12, $f12, $f0
/* EF2798 80240188 E600000C */  swc1      $f0, 0xc($s0)
.L8024018C:
/* EF279C 8024018C 8E2200CC */  lw        $v0, 0xcc($s1)
/* EF27A0 80240190 8C420004 */  lw        $v0, 4($v0)
/* EF27A4 80240194 AE020028 */  sw        $v0, 0x28($s0)
/* EF27A8 80240198 AE600074 */  sw        $zero, 0x74($s3)
/* EF27AC 8024019C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EF27B0 802401A0 8C420014 */  lw        $v0, 0x14($v0)
/* EF27B4 802401A4 04410004 */  bgez      $v0, .L802401B8
/* EF27B8 802401A8 00000000 */   nop
/* EF27BC 802401AC C6400000 */  lwc1      $f0, ($s2)
/* EF27C0 802401B0 08090076 */  j         .L802401D8
/* EF27C4 802401B4 E6000018 */   swc1     $f0, 0x18($s0)
.L802401B8:
/* EF27C8 802401B8 3C018024 */  lui       $at, %hi(D_802453B0_EF79C0)
/* EF27CC 802401BC D42253B0 */  ldc1      $f2, %lo(D_802453B0_EF79C0)($at)
/* EF27D0 802401C0 44820000 */  mtc1      $v0, $f0
/* EF27D4 802401C4 00000000 */  nop
/* EF27D8 802401C8 46800021 */  cvt.d.w   $f0, $f0
/* EF27DC 802401CC 46220003 */  div.d     $f0, $f0, $f2
/* EF27E0 802401D0 46200020 */  cvt.s.d   $f0, $f0
/* EF27E4 802401D4 E6000018 */  swc1      $f0, 0x18($s0)
.L802401D8:
/* EF27E8 802401D8 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF27EC 802401DC 3C014059 */  lui       $at, 0x4059
/* EF27F0 802401E0 44811800 */  mtc1      $at, $f3
/* EF27F4 802401E4 44801000 */  mtc1      $zero, $f2
/* EF27F8 802401E8 46000021 */  cvt.d.s   $f0, $f0
/* EF27FC 802401EC 46220002 */  mul.d     $f0, $f0, $f2
/* EF2800 802401F0 00000000 */  nop
/* EF2804 802401F4 24020001 */  addiu     $v0, $zero, 1
/* EF2808 802401F8 4620018D */  trunc.w.d $f6, $f0
/* EF280C 802401FC E626007C */  swc1      $f6, 0x7c($s1)
/* EF2810 80240200 AE620070 */  sw        $v0, 0x70($s3)
/* EF2814 80240204 8FBF0030 */  lw        $ra, 0x30($sp)
/* EF2818 80240208 8FB3002C */  lw        $s3, 0x2c($sp)
/* EF281C 8024020C 8FB20028 */  lw        $s2, 0x28($sp)
/* EF2820 80240210 8FB10024 */  lw        $s1, 0x24($sp)
/* EF2824 80240214 8FB00020 */  lw        $s0, 0x20($sp)
/* EF2828 80240218 03E00008 */  jr        $ra
/* EF282C 8024021C 27BD0038 */   addiu    $sp, $sp, 0x38
