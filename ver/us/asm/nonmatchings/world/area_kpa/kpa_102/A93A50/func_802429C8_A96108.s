.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802429C8_A96108
/* A96108 802429C8 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* A9610C 802429CC AFB20018 */  sw        $s2, 0x18($sp)
/* A96110 802429D0 0080902D */  daddu     $s2, $a0, $zero
/* A96114 802429D4 AFBF001C */  sw        $ra, 0x1c($sp)
/* A96118 802429D8 AFB10014 */  sw        $s1, 0x14($sp)
/* A9611C 802429DC AFB00010 */  sw        $s0, 0x10($sp)
/* A96120 802429E0 F7B60028 */  sdc1      $f22, 0x28($sp)
/* A96124 802429E4 F7B40020 */  sdc1      $f20, 0x20($sp)
/* A96128 802429E8 8E510148 */  lw        $s1, 0x148($s2)
/* A9612C 802429EC 0C00EABB */  jal       get_npc_unsafe
/* A96130 802429F0 86240008 */   lh       $a0, 8($s1)
/* A96134 802429F4 0040802D */  daddu     $s0, $v0, $zero
/* A96138 802429F8 C6340070 */  lwc1      $f20, 0x70($s1)
/* A9613C 802429FC 4680A520 */  cvt.s.w   $f20, $f20
/* A96140 80242A00 4600A521 */  cvt.d.s   $f20, $f20
/* A96144 80242A04 8E23006C */  lw        $v1, 0x6c($s1)
/* A96148 80242A08 3C014059 */  lui       $at, 0x4059
/* A9614C 80242A0C 4481B800 */  mtc1      $at, $f23
/* A96150 80242A10 4480B000 */  mtc1      $zero, $f22
/* A96154 80242A14 2463000A */  addiu     $v1, $v1, 0xa
/* A96158 80242A18 44836000 */  mtc1      $v1, $f12
/* A9615C 80242A1C 00000000 */  nop
/* A96160 80242A20 46806320 */  cvt.s.w   $f12, $f12
/* A96164 80242A24 4636A503 */  div.d     $f20, $f20, $f22
/* A96168 80242A28 0C00A6C9 */  jal       clamp_angle
/* A9616C 80242A2C 4620A520 */   cvt.s.d  $f20, $f20
/* A96170 80242A30 4600010D */  trunc.w.s $f4, $f0
/* A96174 80242A34 44022000 */  mfc1      $v0, $f4
/* A96178 80242A38 00000000 */  nop
/* A9617C 80242A3C 44826000 */  mtc1      $v0, $f12
/* A96180 80242A40 00000000 */  nop
/* A96184 80242A44 46806320 */  cvt.s.w   $f12, $f12
/* A96188 80242A48 0C00A8BB */  jal       sin_deg
/* A9618C 80242A4C AE22006C */   sw       $v0, 0x6c($s1)
/* A96190 80242A50 3C014018 */  lui       $at, 0x4018
/* A96194 80242A54 44811800 */  mtc1      $at, $f3
/* A96198 80242A58 44801000 */  mtc1      $zero, $f2
/* A9619C 80242A5C 46000021 */  cvt.d.s   $f0, $f0
/* A961A0 80242A60 46220002 */  mul.d     $f0, $f0, $f2
/* A961A4 80242A64 00000000 */  nop
/* A961A8 80242A68 4600A0A1 */  cvt.d.s   $f2, $f20
/* A961AC 80242A6C 46201080 */  add.d     $f2, $f2, $f0
/* A961B0 80242A70 8602008C */  lh        $v0, 0x8c($s0)
/* A961B4 80242A74 46201020 */  cvt.s.d   $f0, $f2
/* A961B8 80242A78 14400008 */  bnez      $v0, .L80242A9C
/* A961BC 80242A7C E600003C */   swc1     $f0, 0x3c($s0)
/* A961C0 80242A80 46000021 */  cvt.d.s   $f0, $f0
/* A961C4 80242A84 46360002 */  mul.d     $f0, $f0, $f22
/* A961C8 80242A88 00000000 */  nop
/* A961CC 80242A8C 24020011 */  addiu     $v0, $zero, 0x11
/* A961D0 80242A90 4620010D */  trunc.w.d $f4, $f0
/* A961D4 80242A94 E6240080 */  swc1      $f4, 0x80($s1)
/* A961D8 80242A98 AE420070 */  sw        $v0, 0x70($s2)
.L80242A9C:
/* A961DC 80242A9C 8FBF001C */  lw        $ra, 0x1c($sp)
/* A961E0 80242AA0 8FB20018 */  lw        $s2, 0x18($sp)
/* A961E4 80242AA4 8FB10014 */  lw        $s1, 0x14($sp)
/* A961E8 80242AA8 8FB00010 */  lw        $s0, 0x10($sp)
/* A961EC 80242AAC D7B60028 */  ldc1      $f22, 0x28($sp)
/* A961F0 80242AB0 D7B40020 */  ldc1      $f20, 0x20($sp)
/* A961F4 80242AB4 03E00008 */  jr        $ra
/* A961F8 80242AB8 27BD0030 */   addiu    $sp, $sp, 0x30