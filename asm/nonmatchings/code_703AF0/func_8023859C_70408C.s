.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8023859C_70408C
/* 70408C 8023859C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 704090 802385A0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 704094 802385A4 0080882D */  daddu     $s1, $a0, $zero
/* 704098 802385A8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 70409C 802385AC AFB20020 */  sw        $s2, 0x20($sp)
/* 7040A0 802385B0 AFB00018 */  sw        $s0, 0x18($sp)
/* 7040A4 802385B4 8E30000C */  lw        $s0, 0xc($s1)
/* 7040A8 802385B8 8E050000 */  lw        $a1, ($s0)
/* 7040AC 802385BC 0C0B1EAF */  jal       get_variable
/* 7040B0 802385C0 26100004 */   addiu    $s0, $s0, 4
/* 7040B4 802385C4 8E050000 */  lw        $a1, ($s0)
/* 7040B8 802385C8 26100004 */  addiu     $s0, $s0, 4
/* 7040BC 802385CC 0220202D */  daddu     $a0, $s1, $zero
/* 7040C0 802385D0 0C0B1EAF */  jal       get_variable
/* 7040C4 802385D4 0040902D */   daddu    $s2, $v0, $zero
/* 7040C8 802385D8 0220202D */  daddu     $a0, $s1, $zero
/* 7040CC 802385DC 8E050000 */  lw        $a1, ($s0)
/* 7040D0 802385E0 0C0B1EAF */  jal       get_variable
/* 7040D4 802385E4 0040802D */   daddu    $s0, $v0, $zero
/* 7040D8 802385E8 0000202D */  daddu     $a0, $zero, $zero
/* 7040DC 802385EC 44921000 */  mtc1      $s2, $f2
/* 7040E0 802385F0 00000000 */  nop       
/* 7040E4 802385F4 468010A0 */  cvt.s.w   $f2, $f2
/* 7040E8 802385F8 44051000 */  mfc1      $a1, $f2
/* 7040EC 802385FC 44901000 */  mtc1      $s0, $f2
/* 7040F0 80238600 00000000 */  nop       
/* 7040F4 80238604 468010A0 */  cvt.s.w   $f2, $f2
/* 7040F8 80238608 44061000 */  mfc1      $a2, $f2
/* 7040FC 8023860C 44821000 */  mtc1      $v0, $f2
/* 704100 80238610 00000000 */  nop       
/* 704104 80238614 468010A0 */  cvt.s.w   $f2, $f2
/* 704108 80238618 3C013F80 */  lui       $at, 0x3f80
/* 70410C 8023861C 44810000 */  mtc1      $at, $f0
/* 704110 80238620 44071000 */  mfc1      $a3, $f2
/* 704114 80238624 2403000A */  addiu     $v1, $zero, 0xa
/* 704118 80238628 AFA30014 */  sw        $v1, 0x14($sp)
/* 70411C 8023862C 0C01C664 */  jal       func_80071990
/* 704120 80238630 E7A00010 */   swc1     $f0, 0x10($sp)
/* 704124 80238634 0040182D */  daddu     $v1, $v0, $zero
/* 704128 80238638 8C64000C */  lw        $a0, 0xc($v1)
/* 70412C 8023863C 3C018024 */  lui       $at, %hi(D_8023C1B4)
/* 704130 80238640 AC23C1B4 */  sw        $v1, %lo(D_8023C1B4)($at)
/* 704134 80238644 24030003 */  addiu     $v1, $zero, 3
/* 704138 80238648 AC830030 */  sw        $v1, 0x30($a0)
/* 70413C 8023864C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 704140 80238650 8FB20020 */  lw        $s2, 0x20($sp)
/* 704144 80238654 8FB1001C */  lw        $s1, 0x1c($sp)
/* 704148 80238658 8FB00018 */  lw        $s0, 0x18($sp)
/* 70414C 8023865C 24020002 */  addiu     $v0, $zero, 2
/* 704150 80238660 03E00008 */  jr        $ra
/* 704154 80238664 27BD0028 */   addiu    $sp, $sp, 0x28
