
.section .text802D02B0, "ax"

SpeakToPlayer:
/* 0F4C60 802D02B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F4C64 802D02B4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F4C68 802D02B8 0C0B40C8 */  jal   _show_message
/* 0F4C6C 802D02BC 0000302D */   daddu $a2, $zero, $zero
/* 0F4C70 802D02C0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F4C74 802D02C4 03E00008 */  jr    $ra
/* 0F4C78 802D02C8 27BD0018 */   addiu $sp, $sp, 0x18

EndSpeech:
/* 0F4C7C 802D02CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F4C80 802D02D0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F4C84 802D02D4 0C0B40C8 */  jal   _show_message
/* 0F4C88 802D02D8 24060001 */   addiu $a2, $zero, 1
/* 0F4C8C 802D02DC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F4C90 802D02E0 03E00008 */  jr    $ra
/* 0F4C94 802D02E4 27BD0018 */   addiu $sp, $sp, 0x18

ContinueSpeech:
/* 0F4C98 802D02E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F4C9C 802D02EC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F4CA0 802D02F0 0C0B40C8 */  jal   _show_message
/* 0F4CA4 802D02F4 24060002 */   addiu $a2, $zero, 2
/* 0F4CA8 802D02F8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F4CAC 802D02FC 03E00008 */  jr    $ra
/* 0F4CB0 802D0300 27BD0018 */   addiu $sp, $sp, 0x18

SpeakToNpc:
/* 0F4CB4 802D0304 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F4CB8 802D0308 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F4CBC 802D030C 0C0B40C8 */  jal   _show_message
/* 0F4CC0 802D0310 24060003 */   addiu $a2, $zero, 3
/* 0F4CC4 802D0314 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F4CC8 802D0318 03E00008 */  jr    $ra
/* 0F4CCC 802D031C 27BD0018 */   addiu $sp, $sp, 0x18

_show_message:
/* 0F4CD0 802D0320 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0F4CD4 802D0324 AFB20038 */  sw    $s2, 0x38($sp)
/* 0F4CD8 802D0328 0080902D */  daddu $s2, $a0, $zero
/* 0F4CDC 802D032C AFB50044 */  sw    $s5, 0x44($sp)
/* 0F4CE0 802D0330 0000A82D */  daddu $s5, $zero, $zero
/* 0F4CE4 802D0334 AFB7004C */  sw    $s7, 0x4c($sp)
/* 0F4CE8 802D0338 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0F4CEC 802D033C 3C138011 */  lui   $s3, 0x8011
/* 0F4CF0 802D0340 2673EFC8 */  addiu $s3, $s3, -0x1038
/* 0F4CF4 802D0344 AFBF0054 */  sw    $ra, 0x54($sp)
/* 0F4CF8 802D0348 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0F4CFC 802D034C AFB60048 */  sw    $s6, 0x48($sp)
/* 0F4D00 802D0350 AFB40040 */  sw    $s4, 0x40($sp)
/* 0F4D04 802D0354 AFB10034 */  sw    $s1, 0x34($sp)
/* 0F4D08 802D0358 AFB00030 */  sw    $s0, 0x30($sp)
/* 0F4D0C 802D035C F7B40058 */  sdc1  $f20, 0x58($sp)
/* 0F4D10 802D0360 8E50000C */  lw    $s0, 0xc($s2)
/* 0F4D14 802D0364 10A000CD */  beqz  $a1, .L802D069C
/* 0F4D18 802D0368 00C0B82D */   daddu $s7, $a2, $zero
/* 0F4D1C 802D036C 3C16802E */  lui   $s6, 0x802e
/* 0F4D20 802D0370 26D6B264 */  addiu $s6, $s6, -0x4d9c
/* 0F4D24 802D0374 AEC00000 */  sw    $zero, ($s6)
/* 0F4D28 802D0378 8E050000 */  lw    $a1, ($s0)
/* 0F4D2C 802D037C 0C0B1EAF */  jal   get_variable
/* 0F4D30 802D0380 26100004 */   addiu $s0, $s0, 4
/* 0F4D34 802D0384 8E050000 */  lw    $a1, ($s0)
/* 0F4D38 802D0388 26100004 */  addiu $s0, $s0, 4
/* 0F4D3C 802D038C 0240202D */  daddu $a0, $s2, $zero
/* 0F4D40 802D0390 0C0B1EAF */  jal   get_variable
/* 0F4D44 802D0394 0040F02D */   daddu $fp, $v0, $zero
/* 0F4D48 802D0398 AE4200B8 */  sw    $v0, 0xb8($s2)
/* 0F4D4C 802D039C 8E050000 */  lw    $a1, ($s0)
/* 0F4D50 802D03A0 26100004 */  addiu $s0, $s0, 4
/* 0F4D54 802D03A4 0C0B1EAF */  jal   get_variable
/* 0F4D58 802D03A8 0240202D */   daddu $a0, $s2, $zero
/* 0F4D5C 802D03AC AE4200BC */  sw    $v0, 0xbc($s2)
/* 0F4D60 802D03B0 8E050000 */  lw    $a1, ($s0)
/* 0F4D64 802D03B4 26100004 */  addiu $s0, $s0, 4
/* 0F4D68 802D03B8 0C0B1EAF */  jal   get_variable
/* 0F4D6C 802D03BC 0240202D */   daddu $a0, $s2, $zero
/* 0F4D70 802D03C0 3C14802E */  lui   $s4, 0x802e
/* 0F4D74 802D03C4 2694AE54 */  addiu $s4, $s4, -0x51ac
/* 0F4D78 802D03C8 AE420074 */  sw    $v0, 0x74($s2)
/* 0F4D7C 802D03CC AE800000 */  sw    $zero, ($s4)
/* 0F4D80 802D03D0 8E420074 */  lw    $v0, 0x74($s2)
/* 0F4D84 802D03D4 3C11802E */  lui   $s1, 0x802e
/* 0F4D88 802D03D8 2631AE50 */  addiu $s1, $s1, -0x51b0
/* 0F4D8C 802D03DC 30420100 */  andi  $v0, $v0, 0x100
/* 0F4D90 802D03E0 1040000B */  beqz  $v0, .L802D0410
/* 0F4D94 802D03E4 AE200000 */   sw    $zero, ($s1)
/* 0F4D98 802D03E8 8E050000 */  lw    $a1, ($s0)
/* 0F4D9C 802D03EC 26100004 */  addiu $s0, $s0, 4
/* 0F4DA0 802D03F0 0C0B1EAF */  jal   get_variable
/* 0F4DA4 802D03F4 0240202D */   daddu $a0, $s2, $zero
/* 0F4DA8 802D03F8 AE220000 */  sw    $v0, ($s1)
/* 0F4DAC 802D03FC 8E050000 */  lw    $a1, ($s0)
/* 0F4DB0 802D0400 26100004 */  addiu $s0, $s0, 4
/* 0F4DB4 802D0404 0C0B1EAF */  jal   get_variable
/* 0F4DB8 802D0408 0240202D */   daddu $a0, $s2, $zero
/* 0F4DBC 802D040C AE820000 */  sw    $v0, ($s4)
.L802D0410:
/* 0F4DC0 802D0410 24020001 */  addiu $v0, $zero, 1
/* 0F4DC4 802D0414 12E20012 */  beq   $s7, $v0, .L802D0460
/* 0F4DC8 802D0418 2AE20002 */   slti  $v0, $s7, 2
/* 0F4DCC 802D041C 10400005 */  beqz  $v0, .L802D0434
/* 0F4DD0 802D0420 24020002 */   addiu $v0, $zero, 2
/* 0F4DD4 802D0424 12E00009 */  beqz  $s7, .L802D044C
/* 0F4DD8 802D0428 2402FFFE */   addiu $v0, $zero, -2
/* 0F4DDC 802D042C 080B413A */  j     func_802D04E8
/* 0F4DE0 802D0430 00000000 */   nop   

.L802D0434:
/* 0F4DE4 802D0434 12E20010 */  beq   $s7, $v0, .L802D0478
/* 0F4DE8 802D0438 24020003 */   addiu $v0, $zero, 3
/* 0F4DEC 802D043C 12E20017 */  beq   $s7, $v0, .L802D049C
/* 0F4DF0 802D0440 2402FFFE */   addiu $v0, $zero, -2
/* 0F4DF4 802D0444 080B413A */  j     func_802D04E8
/* 0F4DF8 802D0448 00000000 */   nop   

.L802D044C:
/* 0F4DFC 802D044C 8E050000 */  lw    $a1, ($s0)
/* 0F4E00 802D0450 0C0B1EAF */  jal   get_variable
/* 0F4E04 802D0454 0240202D */   daddu $a0, $s2, $zero
/* 0F4E08 802D0458 080B4135 */  j     func_802D04D4
/* 0F4E0C 802D045C 0040202D */   daddu $a0, $v0, $zero

.L802D0460:
/* 0F4E10 802D0460 3C04802E */  lui   $a0, 0x802e
/* 0F4E14 802D0464 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F4E18 802D0468 0C04971C */  jal   close_message
/* 0F4E1C 802D046C 00000000 */   nop   
/* 0F4E20 802D0470 080B413A */  j     func_802D04E8
/* 0F4E24 802D0474 2402FFFE */   addiu $v0, $zero, -2

.L802D0478:
/* 0F4E28 802D0478 8E050000 */  lw    $a1, ($s0)
/* 0F4E2C 802D047C 0C0B1EAF */  jal   get_variable
/* 0F4E30 802D0480 0240202D */   daddu $a0, $s2, $zero
/* 0F4E34 802D0484 3C05802E */  lui   $a1, 0x802e
/* 0F4E38 802D0488 8CA5B260 */  lw    $a1, -0x4da0($a1)
/* 0F4E3C 802D048C 0C04969A */  jal   load_message_to_printer
/* 0F4E40 802D0490 0040202D */   daddu $a0, $v0, $zero
/* 0F4E44 802D0494 080B413A */  j     func_802D04E8
/* 0F4E48 802D0498 2402FFFE */   addiu $v0, $zero, -2

.L802D049C:
/* 0F4E4C 802D049C 8E050000 */  lw    $a1, ($s0)
/* 0F4E50 802D04A0 26100004 */  addiu $s0, $s0, 4
/* 0F4E54 802D04A4 0C0B1EAF */  jal   get_variable
/* 0F4E58 802D04A8 0240202D */   daddu $a0, $s2, $zero
/* 0F4E5C 802D04AC 0240202D */  daddu $a0, $s2, $zero
/* 0F4E60 802D04B0 8E050000 */  lw    $a1, ($s0)
/* 0F4E64 802D04B4 0C0B1EAF */  jal   get_variable
/* 0F4E68 802D04B8 0040802D */   daddu $s0, $v0, $zero
/* 0F4E6C 802D04BC 0240202D */  daddu $a0, $s2, $zero
/* 0F4E70 802D04C0 0200282D */  daddu $a1, $s0, $zero
/* 0F4E74 802D04C4 0C0B36B0 */  jal   func_802CDAC0
/* 0F4E78 802D04C8 0040802D */   daddu $s0, $v0, $zero
/* 0F4E7C 802D04CC 0040A82D */  daddu $s5, $v0, $zero
/* 0F4E80 802D04D0 0200202D */  daddu $a0, $s0, $zero
func_802D04D4:
/* 0F4E84 802D04D4 0C049640 */  jal   load_string
/* 0F4E88 802D04D8 02C0282D */   daddu $a1, $s6, $zero
/* 0F4E8C 802D04DC 3C01802E */  lui   $at, 0x802e
/* 0F4E90 802D04E0 AC22B260 */  sw    $v0, -0x4da0($at)
/* 0F4E94 802D04E4 2402FFFE */  addiu $v0, $zero, -2
func_802D04E8:
/* 0F4E98 802D04E8 17C20018 */  bne   $fp, $v0, .L802D054C
/* 0F4E9C 802D04EC 0240202D */   daddu $a0, $s2, $zero
/* 0F4EA0 802D04F0 8E650028 */  lw    $a1, 0x28($s3)
/* 0F4EA4 802D04F4 8E670030 */  lw    $a3, 0x30($s3)
/* 0F4EA8 802D04F8 27A20020 */  addiu $v0, $sp, 0x20
/* 0F4EAC 802D04FC AFA20010 */  sw    $v0, 0x10($sp)
/* 0F4EB0 802D0500 27A20024 */  addiu $v0, $sp, 0x24
/* 0F4EB4 802D0504 AFA20014 */  sw    $v0, 0x14($sp)
/* 0F4EB8 802D0508 866200B0 */  lh    $v0, 0xb0($s3)
/* 0F4EBC 802D050C C662002C */  lwc1  $f2, 0x2c($s3)
/* 0F4EC0 802D0510 44820000 */  mtc1  $v0, $f0
/* 0F4EC4 802D0514 00000000 */  nop   
/* 0F4EC8 802D0518 46800020 */  cvt.s.w $f0, $f0
/* 0F4ECC 802D051C 46001080 */  add.s $f2, $f2, $f0
/* 0F4ED0 802D0520 3C048007 */  lui   $a0, 0x8007
/* 0F4ED4 802D0524 8C847410 */  lw    $a0, 0x7410($a0)
/* 0F4ED8 802D0528 44061000 */  mfc1  $a2, $f2
/* 0F4EDC 802D052C 27A20028 */  addiu $v0, $sp, 0x28
/* 0F4EE0 802D0530 0C00B94E */  jal   get_screen_coords
/* 0F4EE4 802D0534 AFA20018 */   sw    $v0, 0x18($sp)
/* 0F4EE8 802D0538 8E6200B8 */  lw    $v0, 0xb8($s3)
/* 0F4EEC 802D053C AE42007C */  sw    $v0, 0x7c($s2)
/* 0F4EF0 802D0540 C6600080 */  lwc1  $f0, 0x80($s3)
/* 0F4EF4 802D0544 080B416C */  j     func_802D05B0
/* 0F4EF8 802D0548 2410FFFE */   addiu $s0, $zero, -2

.L802D054C:
/* 0F4EFC 802D054C 0C0B36B0 */  jal   func_802CDAC0
/* 0F4F00 802D0550 03C0282D */   daddu $a1, $fp, $zero
/* 0F4F04 802D0554 0040802D */  daddu $s0, $v0, $zero
/* 0F4F08 802D0558 3C048007 */  lui   $a0, 0x8007
/* 0F4F0C 802D055C 8C847410 */  lw    $a0, 0x7410($a0)
/* 0F4F10 802D0560 860300A8 */  lh    $v1, 0xa8($s0)
/* 0F4F14 802D0564 C602003C */  lwc1  $f2, 0x3c($s0)
/* 0F4F18 802D0568 27A20020 */  addiu $v0, $sp, 0x20
/* 0F4F1C 802D056C AFA20010 */  sw    $v0, 0x10($sp)
/* 0F4F20 802D0570 27A20024 */  addiu $v0, $sp, 0x24
/* 0F4F24 802D0574 AFA20014 */  sw    $v0, 0x14($sp)
/* 0F4F28 802D0578 27A20028 */  addiu $v0, $sp, 0x28
/* 0F4F2C 802D057C AFA20018 */  sw    $v0, 0x18($sp)
/* 0F4F30 802D0580 44830000 */  mtc1  $v1, $f0
/* 0F4F34 802D0584 00000000 */  nop   
/* 0F4F38 802D0588 46800020 */  cvt.s.w $f0, $f0
/* 0F4F3C 802D058C 46001080 */  add.s $f2, $f2, $f0
/* 0F4F40 802D0590 8E050038 */  lw    $a1, 0x38($s0)
/* 0F4F44 802D0594 8E070040 */  lw    $a3, 0x40($s0)
/* 0F4F48 802D0598 44061000 */  mfc1  $a2, $f2
/* 0F4F4C 802D059C 0C00B94E */  jal   get_screen_coords
/* 0F4F50 802D05A0 00000000 */   nop   
/* 0F4F54 802D05A4 8E020028 */  lw    $v0, 0x28($s0)
/* 0F4F58 802D05A8 AE42007C */  sw    $v0, 0x7c($s2)
/* 0F4F5C 802D05AC C600000C */  lwc1  $f0, 0xc($s0)
func_802D05B0:
/* 0F4F60 802D05B0 4600010D */  trunc.w.s $f4, $f0
/* 0F4F64 802D05B4 E64400C0 */  swc1  $f4, 0xc0($s2)
/* 0F4F68 802D05B8 3C04802E */  lui   $a0, 0x802e
/* 0F4F6C 802D05BC 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F4F70 802D05C0 8FA30020 */  lw    $v1, 0x20($sp)
/* 0F4F74 802D05C4 3C05802E */  lui   $a1, 0x802e
/* 0F4F78 802D05C8 8CA5AE50 */  lw    $a1, -0x51b0($a1)
/* 0F4F7C 802D05CC 8FA20024 */  lw    $v0, 0x24($sp)
/* 0F4F80 802D05D0 3C06802E */  lui   $a2, 0x802e
/* 0F4F84 802D05D4 8CC6AE54 */  lw    $a2, -0x51ac($a2)
/* 0F4F88 802D05D8 00652821 */  addu  $a1, $v1, $a1
/* 0F4F8C 802D05DC 0C0496AE */  jal   clamp_printer_coords
/* 0F4F90 802D05E0 00463021 */   addu  $a2, $v0, $a2
/* 0F4F94 802D05E4 2402FFFE */  addiu $v0, $zero, -2
/* 0F4F98 802D05E8 1202002C */  beq   $s0, $v0, .L802D069C
/* 0F4F9C 802D05EC AE5000B4 */   sw    $s0, 0xb4($s2)
/* 0F4FA0 802D05F0 24020003 */  addiu $v0, $zero, 3
/* 0F4FA4 802D05F4 16E20007 */  bne   $s7, $v0, .L802D0614
/* 0F4FA8 802D05F8 26710080 */   addiu $s1, $s3, 0x80
/* 0F4FAC 802D05FC C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F4FB0 802D0600 C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F4FB4 802D0604 8EA60038 */  lw    $a2, 0x38($s5)
/* 0F4FB8 802D0608 8EA70040 */  lw    $a3, 0x40($s5)
/* 0F4FBC 802D060C 080B4189 */  j     func_802D0624
/* 0F4FC0 802D0610 26B1000C */   addiu $s1, $s5, 0xc

.L802D0614:
/* 0F4FC4 802D0614 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F4FC8 802D0618 C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F4FCC 802D061C 8E660028 */  lw    $a2, 0x28($s3)
/* 0F4FD0 802D0620 8E670030 */  lw    $a3, 0x30($s3)
func_802D0624:
/* 0F4FD4 802D0624 0C00A720 */  jal   atan2
/* 0F4FD8 802D0628 00000000 */   nop   
/* 0F4FDC 802D062C 46000506 */  mov.s $f20, $f0
/* 0F4FE0 802D0630 3C014334 */  lui   $at, 0x4334
/* 0F4FE4 802D0634 44816000 */  mtc1  $at, $f12
/* 0F4FE8 802D0638 0C00A6C9 */  jal   clamp_angle
/* 0F4FEC 802D063C 460CA300 */   add.s $f12, $f20, $f12
/* 0F4FF0 802D0640 8E420074 */  lw    $v0, 0x74($s2)
/* 0F4FF4 802D0644 3043000F */  andi  $v1, $v0, 0xf
/* 0F4FF8 802D0648 2C620006 */  sltiu $v0, $v1, 6
/* 0F4FFC 802D064C 10400013 */  beqz  $v0, .L802D069C
/* 0F5000 802D0650 00031080 */   sll   $v0, $v1, 2
/* 0F5004 802D0654 3C01802E */  lui   $at, 0x802e
/* 0F5008 802D0658 00220821 */  addu  $at, $at, $v0
/* 0F500C 802D065C 8C22A1F0 */  lw    $v0, -0x5e10($at)
/* 0F5010 802D0660 00400008 */  jr    $v0
/* 0F5014 802D0664 00000000 */   nop   
/* 0F5018 802D0668 E614000C */  swc1  $f20, 0xc($s0)
/* 0F501C 802D066C 080B41A7 */  j     func_802D069C
/* 0F5020 802D0670 E6200000 */   swc1  $f0, ($s1)

/* 0F5024 802D0674 E600000C */  swc1  $f0, 0xc($s0)
/* 0F5028 802D0678 080B41A7 */  j     func_802D069C
/* 0F502C 802D067C E6200000 */   swc1  $f0, ($s1)

/* 0F5030 802D0680 E614000C */  swc1  $f20, 0xc($s0)
/* 0F5034 802D0684 080B41A7 */  j     func_802D069C
/* 0F5038 802D0688 E6340000 */   swc1  $f20, ($s1)

/* 0F503C 802D068C E600000C */  swc1  $f0, 0xc($s0)
/* 0F5040 802D0690 080B41A7 */  j     func_802D069C
/* 0F5044 802D0694 E6340000 */   swc1  $f20, ($s1)

/* 0F5048 802D0698 E614000C */  swc1  $f20, 0xc($s0)
func_802D069C:
.L802D069C:
/* 0F504C 802D069C 8E5000B4 */  lw    $s0, 0xb4($s2)
/* 0F5050 802D06A0 2402FFFE */  addiu $v0, $zero, -2
/* 0F5054 802D06A4 12020022 */  beq   $s0, $v0, .L802D0730
/* 0F5058 802D06A8 27A20020 */   addiu $v0, $sp, 0x20
/* 0F505C 802D06AC 3C048007 */  lui   $a0, 0x8007
/* 0F5060 802D06B0 8C847410 */  lw    $a0, 0x7410($a0)
/* 0F5064 802D06B4 860300A8 */  lh    $v1, 0xa8($s0)
/* 0F5068 802D06B8 C602003C */  lwc1  $f2, 0x3c($s0)
/* 0F506C 802D06BC AFA20010 */  sw    $v0, 0x10($sp)
/* 0F5070 802D06C0 27A20024 */  addiu $v0, $sp, 0x24
/* 0F5074 802D06C4 AFA20014 */  sw    $v0, 0x14($sp)
/* 0F5078 802D06C8 27A20028 */  addiu $v0, $sp, 0x28
/* 0F507C 802D06CC AFA20018 */  sw    $v0, 0x18($sp)
/* 0F5080 802D06D0 44830000 */  mtc1  $v1, $f0
/* 0F5084 802D06D4 00000000 */  nop   
/* 0F5088 802D06D8 46800020 */  cvt.s.w $f0, $f0
/* 0F508C 802D06DC 46001080 */  add.s $f2, $f2, $f0
/* 0F5090 802D06E0 8E050038 */  lw    $a1, 0x38($s0)
/* 0F5094 802D06E4 8E070040 */  lw    $a3, 0x40($s0)
/* 0F5098 802D06E8 44061000 */  mfc1  $a2, $f2
/* 0F509C 802D06EC 0C00B94E */  jal   get_screen_coords
/* 0F50A0 802D06F0 00000000 */   nop   
/* 0F50A4 802D06F4 8E4500B8 */  lw    $a1, 0xb8($s2)
/* 0F50A8 802D06F8 2402FFFF */  addiu $v0, $zero, -1
/* 0F50AC 802D06FC 10A2002B */  beq   $a1, $v0, .L802D07AC
/* 0F50B0 802D0700 00000000 */   nop   
/* 0F50B4 802D0704 3C02802E */  lui   $v0, 0x802e
/* 0F50B8 802D0708 8C42B260 */  lw    $v0, -0x4da0($v0)
/* 0F50BC 802D070C 8C4204FC */  lw    $v0, 0x4fc($v0)
/* 0F50C0 802D0710 30420080 */  andi  $v0, $v0, 0x80
/* 0F50C4 802D0714 14400002 */  bnez  $v0, .L802D0720
/* 0F50C8 802D0718 00000000 */   nop   
/* 0F50CC 802D071C 8E4500BC */  lw    $a1, 0xbc($s2)
.L802D0720:
/* 0F50D0 802D0720 0C0B36C3 */  jal   set_npc_animation
/* 0F50D4 802D0724 0200202D */   daddu $a0, $s0, $zero
/* 0F50D8 802D0728 080B41EB */  j     func_802D07AC
/* 0F50DC 802D072C 00000000 */   nop   

.L802D0730:
/* 0F50E0 802D0730 8E650028 */  lw    $a1, 0x28($s3)
/* 0F50E4 802D0734 8E670030 */  lw    $a3, 0x30($s3)
/* 0F50E8 802D0738 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F50EC 802D073C 27A20024 */  addiu $v0, $sp, 0x24
/* 0F50F0 802D0740 AFA20014 */  sw    $v0, 0x14($sp)
/* 0F50F4 802D0744 866200B0 */  lh    $v0, 0xb0($s3)
/* 0F50F8 802D0748 C662002C */  lwc1  $f2, 0x2c($s3)
/* 0F50FC 802D074C 44820000 */  mtc1  $v0, $f0
/* 0F5100 802D0750 00000000 */  nop   
/* 0F5104 802D0754 46800020 */  cvt.s.w $f0, $f0
/* 0F5108 802D0758 46001080 */  add.s $f2, $f2, $f0
/* 0F510C 802D075C 3C048007 */  lui   $a0, 0x8007
/* 0F5110 802D0760 8C847410 */  lw    $a0, 0x7410($a0)
/* 0F5114 802D0764 44061000 */  mfc1  $a2, $f2
/* 0F5118 802D0768 27A20028 */  addiu $v0, $sp, 0x28
/* 0F511C 802D076C 0C00B94E */  jal   get_screen_coords
/* 0F5120 802D0770 AFA20018 */   sw    $v0, 0x18($sp)
/* 0F5124 802D0774 8E4300B8 */  lw    $v1, 0xb8($s2)
/* 0F5128 802D0778 2402FFFF */  addiu $v0, $zero, -1
/* 0F512C 802D077C 1062000B */  beq   $v1, $v0, .L802D07AC
/* 0F5130 802D0780 00000000 */   nop   
/* 0F5134 802D0784 3C02802E */  lui   $v0, 0x802e
/* 0F5138 802D0788 8C42B260 */  lw    $v0, -0x4da0($v0)
/* 0F513C 802D078C 8C4204FC */  lw    $v0, 0x4fc($v0)
/* 0F5140 802D0790 30420080 */  andi  $v0, $v0, 0x80
/* 0F5144 802D0794 10400003 */  beqz  $v0, .L802D07A4
/* 0F5148 802D0798 00000000 */   nop   
/* 0F514C 802D079C 080B41EB */  j     func_802D07AC
/* 0F5150 802D07A0 AE6300B8 */   sw    $v1, 0xb8($s3)

.L802D07A4:
/* 0F5154 802D07A4 8E4200BC */  lw    $v0, 0xbc($s2)
/* 0F5158 802D07A8 AE6200B8 */  sw    $v0, 0xb8($s3)
func_802D07AC:
.L802D07AC:
/* 0F515C 802D07AC 8E420074 */  lw    $v0, 0x74($s2)
/* 0F5160 802D07B0 30420200 */  andi  $v0, $v0, 0x200
/* 0F5164 802D07B4 1440000C */  bnez  $v0, .L802D07E8
/* 0F5168 802D07B8 00000000 */   nop   
/* 0F516C 802D07BC 3C04802E */  lui   $a0, 0x802e
/* 0F5170 802D07C0 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F5174 802D07C4 8FA30020 */  lw    $v1, 0x20($sp)
/* 0F5178 802D07C8 3C05802E */  lui   $a1, 0x802e
/* 0F517C 802D07CC 8CA5AE50 */  lw    $a1, -0x51b0($a1)
/* 0F5180 802D07D0 8FA20024 */  lw    $v0, 0x24($sp)
/* 0F5184 802D07D4 3C06802E */  lui   $a2, 0x802e
/* 0F5188 802D07D8 8CC6AE54 */  lw    $a2, -0x51ac($a2)
/* 0F518C 802D07DC 00652821 */  addu  $a1, $v1, $a1
/* 0F5190 802D07E0 0C0496AE */  jal   clamp_printer_coords
/* 0F5194 802D07E4 00463021 */   addu  $a2, $v0, $a2
.L802D07E8:
/* 0F5198 802D07E8 3C02802E */  lui   $v0, 0x802e
/* 0F519C 802D07EC 8C42B260 */  lw    $v0, -0x4da0($v0)
/* 0F51A0 802D07F0 8C4204FC */  lw    $v0, 0x4fc($v0)
/* 0F51A4 802D07F4 30420040 */  andi  $v0, $v0, 0x40
/* 0F51A8 802D07F8 14400019 */  bnez  $v0, .L802D0860
/* 0F51AC 802D07FC 24020001 */   addiu $v0, $zero, 1
/* 0F51B0 802D0800 3C03802E */  lui   $v1, 0x802e
/* 0F51B4 802D0804 8C63B264 */  lw    $v1, -0x4d9c($v1)
/* 0F51B8 802D0808 14620015 */  bne   $v1, $v0, .L802D0860
/* 0F51BC 802D080C 0000102D */   daddu $v0, $zero, $zero
/* 0F51C0 802D0810 8E4300B8 */  lw    $v1, 0xb8($s2)
/* 0F51C4 802D0814 2402FFFF */  addiu $v0, $zero, -1
/* 0F51C8 802D0818 1062000A */  beq   $v1, $v0, .L802D0844
/* 0F51CC 802D081C 2402FFFE */   addiu $v0, $zero, -2
/* 0F51D0 802D0820 12020006 */  beq   $s0, $v0, .L802D083C
/* 0F51D4 802D0824 00000000 */   nop   
/* 0F51D8 802D0828 8E45007C */  lw    $a1, 0x7c($s2)
/* 0F51DC 802D082C 0C0B36C3 */  jal   set_npc_animation
/* 0F51E0 802D0830 0200202D */   daddu $a0, $s0, $zero
/* 0F51E4 802D0834 080B4211 */  j     func_802D0844
/* 0F51E8 802D0838 00000000 */   nop   

.L802D083C:
/* 0F51EC 802D083C 8E42007C */  lw    $v0, 0x7c($s2)
/* 0F51F0 802D0840 AE6200B8 */  sw    $v0, 0xb8($s3)
func_802D0844:
.L802D0844:
/* 0F51F4 802D0844 8E420074 */  lw    $v0, 0x74($s2)
/* 0F51F8 802D0848 30420010 */  andi  $v0, $v0, 0x10
/* 0F51FC 802D084C 10400004 */  beqz  $v0, .L802D0860
/* 0F5200 802D0850 24020001 */   addiu $v0, $zero, 1
/* 0F5204 802D0854 C64000C0 */  lwc1  $f0, 0xc0($s2)
/* 0F5208 802D0858 46800020 */  cvt.s.w $f0, $f0
/* 0F520C 802D085C E600000C */  swc1  $f0, 0xc($s0)
.L802D0860:
/* 0F5210 802D0860 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0F5214 802D0864 8FBE0050 */  lw    $fp, 0x50($sp)
/* 0F5218 802D0868 8FB7004C */  lw    $s7, 0x4c($sp)
/* 0F521C 802D086C 8FB60048 */  lw    $s6, 0x48($sp)
/* 0F5220 802D0870 8FB50044 */  lw    $s5, 0x44($sp)
/* 0F5224 802D0874 8FB40040 */  lw    $s4, 0x40($sp)
/* 0F5228 802D0878 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0F522C 802D087C 8FB20038 */  lw    $s2, 0x38($sp)
/* 0F5230 802D0880 8FB10034 */  lw    $s1, 0x34($sp)
/* 0F5234 802D0884 8FB00030 */  lw    $s0, 0x30($sp)
/* 0F5238 802D0888 D7B40058 */  ldc1  $f20, 0x58($sp)
/* 0F523C 802D088C 03E00008 */  jr    $ra
/* 0F5240 802D0890 27BD0060 */   addiu $sp, $sp, 0x60

ShowMessageAtScreenPos:
/* 0F5244 802D0894 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F5248 802D0898 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F524C 802D089C 0080902D */  daddu $s2, $a0, $zero
/* 0F5250 802D08A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F5254 802D08A4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F5258 802D08A8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F525C 802D08AC 10A00019 */  beqz  $a1, .L802D0914
/* 0F5260 802D08B0 8E51000C */   lw    $s1, 0xc($s2)
/* 0F5264 802D08B4 8E250000 */  lw    $a1, ($s1)
/* 0F5268 802D08B8 0C0B1EAF */  jal   get_variable
/* 0F526C 802D08BC 26310004 */   addiu $s1, $s1, 4
/* 0F5270 802D08C0 8E250000 */  lw    $a1, ($s1)
/* 0F5274 802D08C4 26310004 */  addiu $s1, $s1, 4
/* 0F5278 802D08C8 0240202D */  daddu $a0, $s2, $zero
/* 0F527C 802D08CC 0C0B1EAF */  jal   get_variable
/* 0F5280 802D08D0 0040802D */   daddu $s0, $v0, $zero
/* 0F5284 802D08D4 0240202D */  daddu $a0, $s2, $zero
/* 0F5288 802D08D8 8E250000 */  lw    $a1, ($s1)
/* 0F528C 802D08DC 0C0B1EAF */  jal   get_variable
/* 0F5290 802D08E0 0040882D */   daddu $s1, $v0, $zero
/* 0F5294 802D08E4 0200202D */  daddu $a0, $s0, $zero
/* 0F5298 802D08E8 3C05802E */  lui   $a1, 0x802e
/* 0F529C 802D08EC 24A5B264 */  addiu $a1, $a1, -0x4d9c
/* 0F52A0 802D08F0 0040802D */  daddu $s0, $v0, $zero
/* 0F52A4 802D08F4 0C049640 */  jal   load_string
/* 0F52A8 802D08F8 ACA00000 */   sw    $zero, ($a1)
/* 0F52AC 802D08FC 0040202D */  daddu $a0, $v0, $zero
/* 0F52B0 802D0900 0220282D */  daddu $a1, $s1, $zero
/* 0F52B4 802D0904 3C01802E */  lui   $at, 0x802e
/* 0F52B8 802D0908 AC24B260 */  sw    $a0, -0x4da0($at)
/* 0F52BC 802D090C 0C0496AE */  jal   clamp_printer_coords
/* 0F52C0 802D0910 0200302D */   daddu $a2, $s0, $zero
.L802D0914:
/* 0F52C4 802D0914 3C04802E */  lui   $a0, 0x802e
/* 0F52C8 802D0918 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F52CC 802D091C 8C8204FC */  lw    $v0, 0x4fc($a0)
/* 0F52D0 802D0920 30420040 */  andi  $v0, $v0, 0x40
/* 0F52D4 802D0924 14400007 */  bnez  $v0, .L802D0944
/* 0F52D8 802D0928 24020001 */   addiu $v0, $zero, 1
/* 0F52DC 802D092C 3C03802E */  lui   $v1, 0x802e
/* 0F52E0 802D0930 8C63B264 */  lw    $v1, -0x4d9c($v1)
/* 0F52E4 802D0934 54620003 */  bnel  $v1, $v0, .L802D0944
/* 0F52E8 802D0938 0000102D */   daddu $v0, $zero, $zero
/* 0F52EC 802D093C 908304E8 */  lbu   $v1, 0x4e8($a0)
/* 0F52F0 802D0940 AE430084 */  sw    $v1, 0x84($s2)
.L802D0944:
/* 0F52F4 802D0944 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F52F8 802D0948 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F52FC 802D094C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F5300 802D0950 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5304 802D0954 03E00008 */  jr    $ra
/* 0F5308 802D0958 27BD0020 */   addiu $sp, $sp, 0x20

ShowMessageAtWorldPos:
/* 0F530C 802D095C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0F5310 802D0960 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0F5314 802D0964 0080982D */  daddu $s3, $a0, $zero
/* 0F5318 802D0968 AFBF0040 */  sw    $ra, 0x40($sp)
/* 0F531C 802D096C AFB20038 */  sw    $s2, 0x38($sp)
/* 0F5320 802D0970 AFB10034 */  sw    $s1, 0x34($sp)
/* 0F5324 802D0974 AFB00030 */  sw    $s0, 0x30($sp)
/* 0F5328 802D0978 10A00034 */  beqz  $a1, .L802D0A4C
/* 0F532C 802D097C 8E70000C */   lw    $s0, 0xc($s3)
/* 0F5330 802D0980 8E050000 */  lw    $a1, ($s0)
/* 0F5334 802D0984 0C0B1EAF */  jal   get_variable
/* 0F5338 802D0988 26100004 */   addiu $s0, $s0, 4
/* 0F533C 802D098C 8E050000 */  lw    $a1, ($s0)
/* 0F5340 802D0990 26100004 */  addiu $s0, $s0, 4
/* 0F5344 802D0994 0260202D */  daddu $a0, $s3, $zero
/* 0F5348 802D0998 0C0B1EAF */  jal   get_variable
/* 0F534C 802D099C 0040882D */   daddu $s1, $v0, $zero
/* 0F5350 802D09A0 8E050000 */  lw    $a1, ($s0)
/* 0F5354 802D09A4 26100004 */  addiu $s0, $s0, 4
/* 0F5358 802D09A8 0260202D */  daddu $a0, $s3, $zero
/* 0F535C 802D09AC 0C0B1EAF */  jal   get_variable
/* 0F5360 802D09B0 0040902D */   daddu $s2, $v0, $zero
/* 0F5364 802D09B4 0260202D */  daddu $a0, $s3, $zero
/* 0F5368 802D09B8 8E050000 */  lw    $a1, ($s0)
/* 0F536C 802D09BC 0C0B1EAF */  jal   get_variable
/* 0F5370 802D09C0 0040802D */   daddu $s0, $v0, $zero
/* 0F5374 802D09C4 0220202D */  daddu $a0, $s1, $zero
/* 0F5378 802D09C8 3C05802E */  lui   $a1, 0x802e
/* 0F537C 802D09CC 24A5B264 */  addiu $a1, $a1, -0x4d9c
/* 0F5380 802D09D0 0040882D */  daddu $s1, $v0, $zero
/* 0F5384 802D09D4 0C049640 */  jal   load_string
/* 0F5388 802D09D8 ACA00000 */   sw    $zero, ($a1)
/* 0F538C 802D09DC 44920000 */  mtc1  $s2, $f0
/* 0F5390 802D09E0 00000000 */  nop   
/* 0F5394 802D09E4 46800020 */  cvt.s.w $f0, $f0
/* 0F5398 802D09E8 44050000 */  mfc1  $a1, $f0
/* 0F539C 802D09EC 44900000 */  mtc1  $s0, $f0
/* 0F53A0 802D09F0 00000000 */  nop   
/* 0F53A4 802D09F4 46800020 */  cvt.s.w $f0, $f0
/* 0F53A8 802D09F8 44060000 */  mfc1  $a2, $f0
/* 0F53AC 802D09FC 44910000 */  mtc1  $s1, $f0
/* 0F53B0 802D0A00 00000000 */  nop   
/* 0F53B4 802D0A04 46800020 */  cvt.s.w $f0, $f0
/* 0F53B8 802D0A08 3C048007 */  lui   $a0, 0x8007
/* 0F53BC 802D0A0C 8C847410 */  lw    $a0, 0x7410($a0)
/* 0F53C0 802D0A10 44070000 */  mfc1  $a3, $f0
/* 0F53C4 802D0A14 3C10802E */  lui   $s0, 0x802e
/* 0F53C8 802D0A18 2610B260 */  addiu $s0, $s0, -0x4da0
/* 0F53CC 802D0A1C AE020000 */  sw    $v0, ($s0)
/* 0F53D0 802D0A20 27A20020 */  addiu $v0, $sp, 0x20
/* 0F53D4 802D0A24 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F53D8 802D0A28 27A20024 */  addiu $v0, $sp, 0x24
/* 0F53DC 802D0A2C AFA20014 */  sw    $v0, 0x14($sp)
/* 0F53E0 802D0A30 27A20028 */  addiu $v0, $sp, 0x28
/* 0F53E4 802D0A34 0C00B94E */  jal   get_screen_coords
/* 0F53E8 802D0A38 AFA20018 */   sw    $v0, 0x18($sp)
/* 0F53EC 802D0A3C 8E040000 */  lw    $a0, ($s0)
/* 0F53F0 802D0A40 8FA50020 */  lw    $a1, 0x20($sp)
/* 0F53F4 802D0A44 0C0496AE */  jal   clamp_printer_coords
/* 0F53F8 802D0A48 8FA60024 */   lw    $a2, 0x24($sp)
.L802D0A4C:
/* 0F53FC 802D0A4C 3C04802E */  lui   $a0, 0x802e
/* 0F5400 802D0A50 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F5404 802D0A54 8C8204FC */  lw    $v0, 0x4fc($a0)
/* 0F5408 802D0A58 30420040 */  andi  $v0, $v0, 0x40
/* 0F540C 802D0A5C 14400007 */  bnez  $v0, .L802D0A7C
/* 0F5410 802D0A60 24020001 */   addiu $v0, $zero, 1
/* 0F5414 802D0A64 3C03802E */  lui   $v1, 0x802e
/* 0F5418 802D0A68 8C63B264 */  lw    $v1, -0x4d9c($v1)
/* 0F541C 802D0A6C 54620003 */  bnel  $v1, $v0, .L802D0A7C
/* 0F5420 802D0A70 0000102D */   daddu $v0, $zero, $zero
/* 0F5424 802D0A74 908304E8 */  lbu   $v1, 0x4e8($a0)
/* 0F5428 802D0A78 AE630084 */  sw    $v1, 0x84($s3)
.L802D0A7C:
/* 0F542C 802D0A7C 8FBF0040 */  lw    $ra, 0x40($sp)
/* 0F5430 802D0A80 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0F5434 802D0A84 8FB20038 */  lw    $s2, 0x38($sp)
/* 0F5438 802D0A88 8FB10034 */  lw    $s1, 0x34($sp)
/* 0F543C 802D0A8C 8FB00030 */  lw    $s0, 0x30($sp)
/* 0F5440 802D0A90 03E00008 */  jr    $ra
/* 0F5444 802D0A94 27BD0048 */   addiu $sp, $sp, 0x48

CloseMessage:
/* 0F5448 802D0A98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F544C 802D0A9C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5450 802D0AA0 0080802D */  daddu $s0, $a0, $zero
/* 0F5454 802D0AA4 10A00005 */  beqz  $a1, .L802D0ABC
/* 0F5458 802D0AA8 AFBF0014 */   sw    $ra, 0x14($sp)
/* 0F545C 802D0AAC 3C04802E */  lui   $a0, 0x802e
/* 0F5460 802D0AB0 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F5464 802D0AB4 0C04971C */  jal   close_message
/* 0F5468 802D0AB8 00000000 */   nop   
.L802D0ABC:
/* 0F546C 802D0ABC 3C04802E */  lui   $a0, 0x802e
/* 0F5470 802D0AC0 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F5474 802D0AC4 8C8204FC */  lw    $v0, 0x4fc($a0)
/* 0F5478 802D0AC8 30420040 */  andi  $v0, $v0, 0x40
/* 0F547C 802D0ACC 14400007 */  bnez  $v0, .L802D0AEC
/* 0F5480 802D0AD0 24020001 */   addiu $v0, $zero, 1
/* 0F5484 802D0AD4 3C03802E */  lui   $v1, 0x802e
/* 0F5488 802D0AD8 8C63B264 */  lw    $v1, -0x4d9c($v1)
/* 0F548C 802D0ADC 54620003 */  bnel  $v1, $v0, .L802D0AEC
/* 0F5490 802D0AE0 0000102D */   daddu $v0, $zero, $zero
/* 0F5494 802D0AE4 908304E8 */  lbu   $v1, 0x4e8($a0)
/* 0F5498 802D0AE8 AE030084 */  sw    $v1, 0x84($s0)
.L802D0AEC:
/* 0F549C 802D0AEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F54A0 802D0AF0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F54A4 802D0AF4 03E00008 */  jr    $ra
/* 0F54A8 802D0AF8 27BD0018 */   addiu $sp, $sp, 0x18

SwitchMessage:
/* 0F54AC 802D0AFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F54B0 802D0B00 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F54B4 802D0B04 0080802D */  daddu $s0, $a0, $zero
/* 0F54B8 802D0B08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F54BC 802D0B0C 10A00007 */  beqz  $a1, .L802D0B2C
/* 0F54C0 802D0B10 8E02000C */   lw    $v0, 0xc($s0)
/* 0F54C4 802D0B14 0C0B1EAF */  jal   get_variable
/* 0F54C8 802D0B18 8C450000 */   lw    $a1, ($v0)
/* 0F54CC 802D0B1C 3C05802E */  lui   $a1, 0x802e
/* 0F54D0 802D0B20 8CA5B260 */  lw    $a1, -0x4da0($a1)
/* 0F54D4 802D0B24 0C04969A */  jal   load_message_to_printer
/* 0F54D8 802D0B28 0040202D */   daddu $a0, $v0, $zero
.L802D0B2C:
/* 0F54DC 802D0B2C 3C04802E */  lui   $a0, 0x802e
/* 0F54E0 802D0B30 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F54E4 802D0B34 8C8204FC */  lw    $v0, 0x4fc($a0)
/* 0F54E8 802D0B38 30420040 */  andi  $v0, $v0, 0x40
/* 0F54EC 802D0B3C 14400007 */  bnez  $v0, .L802D0B5C
/* 0F54F0 802D0B40 24020001 */   addiu $v0, $zero, 1
/* 0F54F4 802D0B44 3C03802E */  lui   $v1, 0x802e
/* 0F54F8 802D0B48 8C63B264 */  lw    $v1, -0x4d9c($v1)
/* 0F54FC 802D0B4C 54620003 */  bnel  $v1, $v0, .L802D0B5C
/* 0F5500 802D0B50 0000102D */   daddu $v0, $zero, $zero
/* 0F5504 802D0B54 908304E8 */  lbu   $v1, 0x4e8($a0)
/* 0F5508 802D0B58 AE030084 */  sw    $v1, 0x84($s0)
.L802D0B5C:
/* 0F550C 802D0B5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F5510 802D0B60 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5514 802D0B64 03E00008 */  jr    $ra
/* 0F5518 802D0B68 27BD0018 */   addiu $sp, $sp, 0x18

ShowChoice:
/* 0F551C 802D0B6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5520 802D0B70 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5524 802D0B74 0080802D */  daddu $s0, $a0, $zero
/* 0F5528 802D0B78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F552C 802D0B7C 10A00009 */  beqz  $a1, .L802D0BA4
/* 0F5530 802D0B80 8E02000C */   lw    $v0, 0xc($s0)
/* 0F5534 802D0B84 0C0B1EAF */  jal   get_variable
/* 0F5538 802D0B88 8C450000 */   lw    $a1, ($v0)
/* 0F553C 802D0B8C 0040202D */  daddu $a0, $v0, $zero
/* 0F5540 802D0B90 26050074 */  addiu $a1, $s0, 0x74
/* 0F5544 802D0B94 0C049640 */  jal   load_string
/* 0F5548 802D0B98 AE000074 */   sw    $zero, 0x74($s0)
/* 0F554C 802D0B9C 3C01802E */  lui   $at, 0x802e
/* 0F5550 802D0BA0 AC22B268 */  sw    $v0, -0x4d98($at)
.L802D0BA4:
/* 0F5554 802D0BA4 3C04802E */  lui   $a0, 0x802e
/* 0F5558 802D0BA8 2484B268 */  addiu $a0, $a0, -0x4d98
/* 0F555C 802D0BAC 8C820000 */  lw    $v0, ($a0)
/* 0F5560 802D0BB0 3C03802E */  lui   $v1, 0x802e
/* 0F5564 802D0BB4 8C63B260 */  lw    $v1, -0x4da0($v1)
/* 0F5568 802D0BB8 904204E8 */  lbu   $v0, 0x4e8($v0)
/* 0F556C 802D0BBC A06204E8 */  sb    $v0, 0x4e8($v1)
/* 0F5570 802D0BC0 8C830000 */  lw    $v1, ($a0)
/* 0F5574 802D0BC4 304200FF */  andi  $v0, $v0, 0xff
/* 0F5578 802D0BC8 AE020084 */  sw    $v0, 0x84($s0)
/* 0F557C 802D0BCC 8C6204FC */  lw    $v0, 0x4fc($v1)
/* 0F5580 802D0BD0 30420040 */  andi  $v0, $v0, 0x40
/* 0F5584 802D0BD4 54400004 */  bnezl $v0, .L802D0BE8
/* 0F5588 802D0BD8 24020001 */   addiu $v0, $zero, 1
/* 0F558C 802D0BDC 8E020074 */  lw    $v0, 0x74($s0)
/* 0F5590 802D0BE0 38420001 */  xori  $v0, $v0, 1
/* 0F5594 802D0BE4 2C420001 */  sltiu $v0, $v0, 1
.L802D0BE8:
/* 0F5598 802D0BE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F559C 802D0BEC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F55A0 802D0BF0 03E00008 */  jr    $ra
/* 0F55A4 802D0BF4 27BD0018 */   addiu $sp, $sp, 0x18

CloseChoice:
/* 0F55A8 802D0BF8 3C04802E */  lui   $a0, 0x802e
/* 0F55AC 802D0BFC 8C84B268 */  lw    $a0, -0x4d98($a0)
/* 0F55B0 802D0C00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F55B4 802D0C04 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F55B8 802D0C08 0C04971C */  jal   close_message
/* 0F55BC 802D0C0C 00000000 */   nop   
/* 0F55C0 802D0C10 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F55C4 802D0C14 24020001 */  addiu $v0, $zero, 1
/* 0F55C8 802D0C18 03E00008 */  jr    $ra
/* 0F55CC 802D0C1C 27BD0018 */   addiu $sp, $sp, 0x18

CancelMessage:
/* 0F55D0 802D0C20 3C04802E */  lui   $a0, 0x802e
/* 0F55D4 802D0C24 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F55D8 802D0C28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F55DC 802D0C2C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F55E0 802D0C30 0C0496C2 */  jal   cancel_message
/* 0F55E4 802D0C34 00000000 */   nop   
/* 0F55E8 802D0C38 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F55EC 802D0C3C 24020002 */  addiu $v0, $zero, 2
/* 0F55F0 802D0C40 03E00008 */  jr    $ra
/* 0F55F4 802D0C44 27BD0018 */   addiu $sp, $sp, 0x18

CancelMessageAndBlock:
/* 0F55F8 802D0C48 3C04802E */  lui   $a0, 0x802e
/* 0F55FC 802D0C4C 8C84B260 */  lw    $a0, -0x4da0($a0)
/* 0F5600 802D0C50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5604 802D0C54 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5608 802D0C58 0C0496C2 */  jal   cancel_message
/* 0F560C 802D0C5C 00000000 */   nop   
/* 0F5610 802D0C60 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5614 802D0C64 0000102D */  daddu $v0, $zero, $zero
/* 0F5618 802D0C68 03E00008 */  jr    $ra
/* 0F561C 802D0C6C 27BD0018 */   addiu $sp, $sp, 0x18

SetMessageImages:
/* 0F5620 802D0C70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5624 802D0C74 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5628 802D0C78 8C82000C */  lw    $v0, 0xc($a0)
/* 0F562C 802D0C7C 0C0496CB */  jal   set_message_images
/* 0F5630 802D0C80 8C440000 */   lw    $a0, ($v0)
/* 0F5634 802D0C84 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5638 802D0C88 24020002 */  addiu $v0, $zero, 2
/* 0F563C 802D0C8C 03E00008 */  jr    $ra
/* 0F5640 802D0C90 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F5644 802D0C94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5648 802D0C98 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F564C 802D0C9C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F5650 802D0CA0 0C0B1EAF */  jal   get_variable
/* 0F5654 802D0CA4 8C450000 */   lw    $a1, ($v0)
/* 0F5658 802D0CA8 14400007 */  bnez  $v0, .L802D0CC8
/* 0F565C 802D0CAC 2404FFEF */   addiu $a0, $zero, -0x11
/* 0F5660 802D0CB0 3C03800A */  lui   $v1, 0x800a
/* 0F5664 802D0CB4 2463A650 */  addiu $v1, $v1, -0x59b0
/* 0F5668 802D0CB8 8C620000 */  lw    $v0, ($v1)
/* 0F566C 802D0CBC 34420010 */  ori   $v0, $v0, 0x10
/* 0F5670 802D0CC0 080B4337 */  j     func_802D0CDC
/* 0F5674 802D0CC4 AC620000 */   sw    $v0, ($v1)

.L802D0CC8:
/* 0F5678 802D0CC8 3C02800A */  lui   $v0, 0x800a
/* 0F567C 802D0CCC 2442A650 */  addiu $v0, $v0, -0x59b0
/* 0F5680 802D0CD0 8C430000 */  lw    $v1, ($v0)
/* 0F5684 802D0CD4 00641824 */  and   $v1, $v1, $a0
/* 0F5688 802D0CD8 AC430000 */  sw    $v1, ($v0)
func_802D0CDC:
/* 0F568C 802D0CDC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5690 802D0CE0 24020002 */  addiu $v0, $zero, 2
/* 0F5694 802D0CE4 03E00008 */  jr    $ra
/* 0F5698 802D0CE8 27BD0018 */   addiu $sp, $sp, 0x18

SetMessageString:
/* 0F569C 802D0CEC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F56A0 802D0CF0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F56A4 802D0CF4 0080882D */  daddu $s1, $a0, $zero
/* 0F56A8 802D0CF8 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F56AC 802D0CFC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F56B0 802D0D00 8E30000C */  lw    $s0, 0xc($s1)
/* 0F56B4 802D0D04 8E050000 */  lw    $a1, ($s0)
/* 0F56B8 802D0D08 0C0B1EAF */  jal   get_variable
/* 0F56BC 802D0D0C 26100004 */   addiu $s0, $s0, 4
/* 0F56C0 802D0D10 0220202D */  daddu $a0, $s1, $zero
/* 0F56C4 802D0D14 8E050000 */  lw    $a1, ($s0)
/* 0F56C8 802D0D18 0C0B1EAF */  jal   get_variable
/* 0F56CC 802D0D1C 0040802D */   daddu $s0, $v0, $zero
/* 0F56D0 802D0D20 0200202D */  daddu $a0, $s0, $zero
/* 0F56D4 802D0D24 0C0496CF */  jal   set_message_string
/* 0F56D8 802D0D28 0040282D */   daddu $a1, $v0, $zero
/* 0F56DC 802D0D2C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F56E0 802D0D30 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F56E4 802D0D34 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F56E8 802D0D38 24020002 */  addiu $v0, $zero, 2
/* 0F56EC 802D0D3C 03E00008 */  jr    $ra
/* 0F56F0 802D0D40 27BD0020 */   addiu $sp, $sp, 0x20

SetMessageValue:
/* 0F56F4 802D0D44 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F56F8 802D0D48 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F56FC 802D0D4C 0080882D */  daddu $s1, $a0, $zero
/* 0F5700 802D0D50 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F5704 802D0D54 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5708 802D0D58 8E30000C */  lw    $s0, 0xc($s1)
/* 0F570C 802D0D5C 8E050000 */  lw    $a1, ($s0)
/* 0F5710 802D0D60 0C0B1EAF */  jal   get_variable
/* 0F5714 802D0D64 26100004 */   addiu $s0, $s0, 4
/* 0F5718 802D0D68 0220202D */  daddu $a0, $s1, $zero
/* 0F571C 802D0D6C 8E050000 */  lw    $a1, ($s0)
/* 0F5720 802D0D70 0C0B1EAF */  jal   get_variable
/* 0F5724 802D0D74 0040802D */   daddu $s0, $v0, $zero
/* 0F5728 802D0D78 0200202D */  daddu $a0, $s0, $zero
/* 0F572C 802D0D7C 0C0496FA */  jal   set_message_value
/* 0F5730 802D0D80 0040282D */   daddu $a1, $v0, $zero
/* 0F5734 802D0D84 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F5738 802D0D88 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F573C 802D0D8C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5740 802D0D90 24020002 */  addiu $v0, $zero, 2
/* 0F5744 802D0D94 03E00008 */  jr    $ra
/* 0F5748 802D0D98 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F574C 802D0D9C 00000000 */  nop   
HidePlayerShadow:
/* 0F5750 802D0DA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5754 802D0DA4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5758 802D0DA8 8C82000C */  lw    $v0, 0xc($a0)
/* 0F575C 802D0DAC 0C0B1EAF */  jal   get_variable
/* 0F5760 802D0DB0 8C450000 */   lw    $a1, ($v0)
/* 0F5764 802D0DB4 10400005 */  beqz  $v0, .L802D0DCC
/* 0F5768 802D0DB8 00000000 */   nop   
/* 0F576C 802D0DBC 0C038039 */  jal   disable_player_shadow
/* 0F5770 802D0DC0 00000000 */   nop   
/* 0F5774 802D0DC4 080B4375 */  j     func_802D0DD4
/* 0F5778 802D0DC8 00000000 */   nop   

.L802D0DCC:
/* 0F577C 802D0DCC 0C03802C */  jal   enable_player_shadow
/* 0F5780 802D0DD0 00000000 */   nop   
func_802D0DD4:
/* 0F5784 802D0DD4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5788 802D0DD8 24020002 */  addiu $v0, $zero, 2
/* 0F578C 802D0DDC 03E00008 */  jr    $ra
/* 0F5790 802D0DE0 27BD0018 */   addiu $sp, $sp, 0x18

DisablePlayerPhysics:
/* 0F5794 802D0DE4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5798 802D0DE8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F579C 802D0DEC 8C82000C */  lw    $v0, 0xc($a0)
/* 0F57A0 802D0DF0 0C0B1EAF */  jal   get_variable
/* 0F57A4 802D0DF4 8C450000 */   lw    $a1, ($v0)
/* 0F57A8 802D0DF8 10400005 */  beqz  $v0, .L802D0E10
/* 0F57AC 802D0DFC 00000000 */   nop   
/* 0F57B0 802D0E00 0C038045 */  jal   enable_player_physics
/* 0F57B4 802D0E04 00000000 */   nop   
/* 0F57B8 802D0E08 080B4386 */  j     func_802D0E18
/* 0F57BC 802D0E0C 00000000 */   nop   

.L802D0E10:
/* 0F57C0 802D0E10 0C038050 */  jal   disable_player_physics
/* 0F57C4 802D0E14 00000000 */   nop   
func_802D0E18:
/* 0F57C8 802D0E18 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F57CC 802D0E1C 24020002 */  addiu $v0, $zero, 2
/* 0F57D0 802D0E20 03E00008 */  jr    $ra
/* 0F57D4 802D0E24 27BD0018 */   addiu $sp, $sp, 0x18

DisablePlayerInput:
/* 0F57D8 802D0E28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F57DC 802D0E2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F57E0 802D0E30 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F57E4 802D0E34 8C82000C */  lw    $v0, 0xc($a0)
/* 0F57E8 802D0E38 8C450000 */  lw    $a1, ($v0)
/* 0F57EC 802D0E3C 3C108011 */  lui   $s0, 0x8011
/* 0F57F0 802D0E40 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 0F57F4 802D0E44 0C0B1EAF */  jal   get_variable
/* 0F57F8 802D0E48 00000000 */   nop   
/* 0F57FC 802D0E4C 10400016 */  beqz  $v0, .L802D0EA8
/* 0F5800 802D0E50 00000000 */   nop   
/* 0F5804 802D0E54 0C03805E */  jal   func_800E0178
/* 0F5808 802D0E58 00000000 */   nop   
/* 0F580C 802D0E5C 0C03BD8A */  jal   func_800EF628
/* 0F5810 802D0E60 00000000 */   nop   
/* 0F5814 802D0E64 0C03A5EE */  jal   func_800E97B8
/* 0F5818 802D0E68 00000000 */   nop   
/* 0F581C 802D0E6C 0C03A613 */  jal   func_800E984C
/* 0F5820 802D0E70 00000000 */   nop   
/* 0F5824 802D0E74 820300B4 */  lb    $v1, 0xb4($s0)
/* 0F5828 802D0E78 2402001A */  addiu $v0, $zero, 0x1a
/* 0F582C 802D0E7C 14620004 */  bne   $v1, $v0, .L802D0E90
/* 0F5830 802D0E80 3C030004 */   lui   $v1, 4
/* 0F5834 802D0E84 8E020004 */  lw    $v0, 4($s0)
/* 0F5838 802D0E88 00431025 */  or    $v0, $v0, $v1
/* 0F583C 802D0E8C AE020004 */  sw    $v0, 4($s0)
.L802D0E90:
/* 0F5840 802D0E90 3C03800A */  lui   $v1, 0x800a
/* 0F5844 802D0E94 2463A650 */  addiu $v1, $v1, -0x59b0
/* 0F5848 802D0E98 8C620000 */  lw    $v0, ($v1)
/* 0F584C 802D0E9C 34420040 */  ori   $v0, $v0, 0x40
/* 0F5850 802D0EA0 080B43B7 */  j     func_802D0EDC
/* 0F5854 802D0EA4 AC620000 */   sw    $v0, ($v1)

.L802D0EA8:
/* 0F5858 802D0EA8 0C038069 */  jal   func_800E01A4
/* 0F585C 802D0EAC 00000000 */   nop   
/* 0F5860 802D0EB0 0C03BD80 */  jal   func_800EF600
/* 0F5864 802D0EB4 00000000 */   nop   
/* 0F5868 802D0EB8 0C038077 */  jal   func_800E01DC
/* 0F586C 802D0EBC 00000000 */   nop   
/* 0F5870 802D0EC0 3C02800A */  lui   $v0, 0x800a
/* 0F5874 802D0EC4 2442A650 */  addiu $v0, $v0, -0x59b0
/* 0F5878 802D0EC8 8C430000 */  lw    $v1, ($v0)
/* 0F587C 802D0ECC 2404FFBF */  addiu $a0, $zero, -0x41
/* 0F5880 802D0ED0 00641824 */  and   $v1, $v1, $a0
/* 0F5884 802D0ED4 0C03A60F */  jal   func_800E983C
/* 0F5888 802D0ED8 AC430000 */   sw    $v1, ($v0)
func_802D0EDC:
/* 0F588C 802D0EDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F5890 802D0EE0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5894 802D0EE4 24020002 */  addiu $v0, $zero, 2
/* 0F5898 802D0EE8 03E00008 */  jr    $ra
/* 0F589C 802D0EEC 27BD0018 */   addiu $sp, $sp, 0x18

SetPlayerPos:
/* 0F58A0 802D0EF0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F58A4 802D0EF4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F58A8 802D0EF8 0080882D */  daddu $s1, $a0, $zero
/* 0F58AC 802D0EFC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F58B0 802D0F00 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F58B4 802D0F04 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F58B8 802D0F08 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F58BC 802D0F0C 8E30000C */  lw    $s0, 0xc($s1)
/* 0F58C0 802D0F10 8E050000 */  lw    $a1, ($s0)
/* 0F58C4 802D0F14 0C0B1EAF */  jal   get_variable
/* 0F58C8 802D0F18 26100004 */   addiu $s0, $s0, 4
/* 0F58CC 802D0F1C 8E050000 */  lw    $a1, ($s0)
/* 0F58D0 802D0F20 26100004 */  addiu $s0, $s0, 4
/* 0F58D4 802D0F24 4482B000 */  mtc1  $v0, $f22
/* 0F58D8 802D0F28 00000000 */  nop   
/* 0F58DC 802D0F2C 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F58E0 802D0F30 0C0B1EAF */  jal   get_variable
/* 0F58E4 802D0F34 0220202D */   daddu $a0, $s1, $zero
/* 0F58E8 802D0F38 8E050000 */  lw    $a1, ($s0)
/* 0F58EC 802D0F3C 4482A000 */  mtc1  $v0, $f20
/* 0F58F0 802D0F40 00000000 */  nop   
/* 0F58F4 802D0F44 4680A520 */  cvt.s.w $f20, $f20
/* 0F58F8 802D0F48 0C0B1EAF */  jal   get_variable
/* 0F58FC 802D0F4C 0220202D */   daddu $a0, $s1, $zero
/* 0F5900 802D0F50 44820000 */  mtc1  $v0, $f0
/* 0F5904 802D0F54 00000000 */  nop   
/* 0F5908 802D0F58 46800020 */  cvt.s.w $f0, $f0
/* 0F590C 802D0F5C 3C03802E */  lui   $v1, 0x802e
/* 0F5910 802D0F60 8C639D20 */  lw    $v1, -0x62e0($v1)
/* 0F5914 802D0F64 3C048011 */  lui   $a0, 0x8011
/* 0F5918 802D0F68 2484EFC8 */  addiu $a0, $a0, -0x1038
/* 0F591C 802D0F6C E4760038 */  swc1  $f22, 0x38($v1)
/* 0F5920 802D0F70 E4600040 */  swc1  $f0, 0x40($v1)
/* 0F5924 802D0F74 4600B006 */  mov.s $f0, $f22
/* 0F5928 802D0F78 E474003C */  swc1  $f20, 0x3c($v1)
/* 0F592C 802D0F7C E4800028 */  swc1  $f0, 0x28($a0)
/* 0F5930 802D0F80 C460003C */  lwc1  $f0, 0x3c($v1)
/* 0F5934 802D0F84 E480002C */  swc1  $f0, 0x2c($a0)
/* 0F5938 802D0F88 C4600040 */  lwc1  $f0, 0x40($v1)
/* 0F593C 802D0F8C E4800030 */  swc1  $f0, 0x30($a0)
/* 0F5940 802D0F90 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F5944 802D0F94 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F5948 802D0F98 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F594C 802D0F9C D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F5950 802D0FA0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F5954 802D0FA4 24020002 */  addiu $v0, $zero, 2
/* 0F5958 802D0FA8 03E00008 */  jr    $ra
/* 0F595C 802D0FAC 27BD0030 */   addiu $sp, $sp, 0x30

SetPlayerCollisionSize:
/* 0F5960 802D0FB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F5964 802D0FB4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F5968 802D0FB8 0080882D */  daddu $s1, $a0, $zero
/* 0F596C 802D0FBC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F5970 802D0FC0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5974 802D0FC4 8E30000C */  lw    $s0, 0xc($s1)
/* 0F5978 802D0FC8 8E050000 */  lw    $a1, ($s0)
/* 0F597C 802D0FCC 0C0B1EAF */  jal   get_variable
/* 0F5980 802D0FD0 26100004 */   addiu $s0, $s0, 4
/* 0F5984 802D0FD4 0220202D */  daddu $a0, $s1, $zero
/* 0F5988 802D0FD8 8E050000 */  lw    $a1, ($s0)
/* 0F598C 802D0FDC 0C0B1EAF */  jal   get_variable
/* 0F5990 802D0FE0 0040802D */   daddu $s0, $v0, $zero
/* 0F5994 802D0FE4 3C03802E */  lui   $v1, 0x802e
/* 0F5998 802D0FE8 8C639D20 */  lw    $v1, -0x62e0($v1)
/* 0F599C 802D0FEC 3C048011 */  lui   $a0, 0x8011
/* 0F59A0 802D0FF0 2484EFC8 */  addiu $a0, $a0, -0x1038
/* 0F59A4 802D0FF4 A47000A8 */  sh    $s0, 0xa8($v1)
/* 0F59A8 802D0FF8 A46200A6 */  sh    $v0, 0xa6($v1)
/* 0F59AC 802D0FFC 0200102D */  daddu $v0, $s0, $zero
/* 0F59B0 802D1000 A48200B0 */  sh    $v0, 0xb0($a0)
/* 0F59B4 802D1004 946300A6 */  lhu   $v1, 0xa6($v1)
/* 0F59B8 802D1008 A48300B2 */  sh    $v1, 0xb2($a0)
/* 0F59BC 802D100C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F59C0 802D1010 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F59C4 802D1014 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F59C8 802D1018 24020002 */  addiu $v0, $zero, 2
/* 0F59CC 802D101C 03E00008 */  jr    $ra
/* 0F59D0 802D1020 27BD0020 */   addiu $sp, $sp, 0x20

SetPlayerSpeed:
/* 0F59D4 802D1024 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F59D8 802D1028 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F59DC 802D102C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F59E0 802D1030 0C0B210B */  jal   get_float_variable
/* 0F59E4 802D1034 8C450000 */   lw    $a1, ($v0)
/* 0F59E8 802D1038 3C02802E */  lui   $v0, 0x802e
/* 0F59EC 802D103C 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F59F0 802D1040 E4400018 */  swc1  $f0, 0x18($v0)
/* 0F59F4 802D1044 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F59F8 802D1048 24020002 */  addiu $v0, $zero, 2
/* 0F59FC 802D104C 03E00008 */  jr    $ra
/* 0F5A00 802D1050 27BD0018 */   addiu $sp, $sp, 0x18

SetPlayerJumpscale:
/* 0F5A04 802D1054 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5A08 802D1058 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5A0C 802D105C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F5A10 802D1060 0C0B210B */  jal   get_float_variable
/* 0F5A14 802D1064 8C450000 */   lw    $a1, ($v0)
/* 0F5A18 802D1068 3C02802E */  lui   $v0, 0x802e
/* 0F5A1C 802D106C 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F5A20 802D1070 E4400014 */  swc1  $f0, 0x14($v0)
/* 0F5A24 802D1074 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5A28 802D1078 24020002 */  addiu $v0, $zero, 2
/* 0F5A2C 802D107C 03E00008 */  jr    $ra
/* 0F5A30 802D1080 27BD0018 */   addiu $sp, $sp, 0x18

SetPlayerAnimation:
/* 0F5A34 802D1084 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5A38 802D1088 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5A3C 802D108C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F5A40 802D1090 0C0B1EAF */  jal   get_variable
/* 0F5A44 802D1094 8C450000 */   lw    $a1, ($v0)
/* 0F5A48 802D1098 3C040008 */  lui   $a0, 8
/* 0F5A4C 802D109C 3C03802E */  lui   $v1, 0x802e
/* 0F5A50 802D10A0 8C639D20 */  lw    $v1, -0x62e0($v1)
/* 0F5A54 802D10A4 34840003 */  ori   $a0, $a0, 3
/* 0F5A58 802D10A8 AC620028 */  sw    $v0, 0x28($v1)
/* 0F5A5C 802D10AC 3C018011 */  lui   $at, 0x8011
/* 0F5A60 802D10B0 AC22F080 */  sw    $v0, -0xf80($at)
/* 0F5A64 802D10B4 14440004 */  bne   $v0, $a0, .L802D10C8
/* 0F5A68 802D10B8 0000202D */   daddu $a0, $zero, $zero
/* 0F5A6C 802D10BC 0080282D */  daddu $a1, $a0, $zero
/* 0F5A70 802D10C0 0C0B2D5B */  jal   exec_ShakeCam1
/* 0F5A74 802D10C4 24060002 */   addiu $a2, $zero, 2
.L802D10C8:
/* 0F5A78 802D10C8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5A7C 802D10CC 24020002 */  addiu $v0, $zero, 2
/* 0F5A80 802D10D0 03E00008 */  jr    $ra
/* 0F5A84 802D10D4 27BD0018 */   addiu $sp, $sp, 0x18

SetPlayerActionState:
/* 0F5A88 802D10D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5A8C 802D10DC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5A90 802D10E0 8C82000C */  lw    $v0, 0xc($a0)
/* 0F5A94 802D10E4 0C0B1EAF */  jal   get_variable
/* 0F5A98 802D10E8 8C450000 */   lw    $a1, ($v0)
/* 0F5A9C 802D10EC 0C039769 */  jal   set_action_state
/* 0F5AA0 802D10F0 0040202D */   daddu $a0, $v0, $zero
/* 0F5AA4 802D10F4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5AA8 802D10F8 24020002 */  addiu $v0, $zero, 2
/* 0F5AAC 802D10FC 03E00008 */  jr    $ra
/* 0F5AB0 802D1100 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F5AB4 802D1104 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F5AB8 802D1108 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F5ABC 802D110C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F5AC0 802D1110 0C0B210B */  jal   get_float_variable
/* 0F5AC4 802D1114 8C450000 */   lw    $a1, ($v0)
/* 0F5AC8 802D1118 3C02802E */  lui   $v0, 0x802e
/* 0F5ACC 802D111C 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F5AD0 802D1120 E4400030 */  swc1  $f0, 0x30($v0)
/* 0F5AD4 802D1124 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F5AD8 802D1128 24020002 */  addiu $v0, $zero, 2
/* 0F5ADC 802D112C 03E00008 */  jr    $ra
/* 0F5AE0 802D1130 27BD0018 */   addiu $sp, $sp, 0x18

MovePlayerTo:
/* 0F5AE4 802D1134 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F5AE8 802D1138 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F5AEC 802D113C 0080882D */  daddu $s1, $a0, $zero
/* 0F5AF0 802D1140 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F5AF4 802D1144 3C128011 */  lui   $s2, 0x8011
/* 0F5AF8 802D1148 2652EFC8 */  addiu $s2, $s2, -0x1038
/* 0F5AFC 802D114C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F5B00 802D1150 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5B04 802D1154 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F5B08 802D1158 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F5B0C 802D115C 10A00038 */  beqz  $a1, .L802D1240
/* 0F5B10 802D1160 8E30000C */   lw    $s0, 0xc($s1)
/* 0F5B14 802D1164 8E050000 */  lw    $a1, ($s0)
/* 0F5B18 802D1168 0C0B1EAF */  jal   get_variable
/* 0F5B1C 802D116C 26100004 */   addiu $s0, $s0, 4
/* 0F5B20 802D1170 8E050000 */  lw    $a1, ($s0)
/* 0F5B24 802D1174 26100004 */  addiu $s0, $s0, 4
/* 0F5B28 802D1178 4482B000 */  mtc1  $v0, $f22
/* 0F5B2C 802D117C 00000000 */  nop   
/* 0F5B30 802D1180 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F5B34 802D1184 0C0B1EAF */  jal   get_variable
/* 0F5B38 802D1188 0220202D */   daddu $a0, $s1, $zero
/* 0F5B3C 802D118C 8E050000 */  lw    $a1, ($s0)
/* 0F5B40 802D1190 4482A000 */  mtc1  $v0, $f20
/* 0F5B44 802D1194 00000000 */  nop   
/* 0F5B48 802D1198 4680A520 */  cvt.s.w $f20, $f20
/* 0F5B4C 802D119C 0C0B1EAF */  jal   get_variable
/* 0F5B50 802D11A0 0220202D */   daddu $a0, $s1, $zero
/* 0F5B54 802D11A4 AE220070 */  sw    $v0, 0x70($s1)
/* 0F5B58 802D11A8 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5B5C 802D11AC C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5B60 802D11B0 4406B000 */  mfc1  $a2, $f22
/* 0F5B64 802D11B4 4407A000 */  mfc1  $a3, $f20
/* 0F5B68 802D11B8 0C00A720 */  jal   atan2
/* 0F5B6C 802D11BC 00000000 */   nop   
/* 0F5B70 802D11C0 E6400080 */  swc1  $f0, 0x80($s2)
/* 0F5B74 802D11C4 8E220070 */  lw    $v0, 0x70($s1)
/* 0F5B78 802D11C8 1440000F */  bnez  $v0, .L802D1208
/* 0F5B7C 802D11CC 00000000 */   nop   
/* 0F5B80 802D11D0 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5B84 802D11D4 C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5B88 802D11D8 4406B000 */  mfc1  $a2, $f22
/* 0F5B8C 802D11DC 4407A000 */  mfc1  $a3, $f20
/* 0F5B90 802D11E0 0C00A7B5 */  jal   dist2D
/* 0F5B94 802D11E4 00000000 */   nop   
/* 0F5B98 802D11E8 3C02802E */  lui   $v0, 0x802e
/* 0F5B9C 802D11EC 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F5BA0 802D11F0 C4420018 */  lwc1  $f2, 0x18($v0)
/* 0F5BA4 802D11F4 46020003 */  div.s $f0, $f0, $f2
/* 0F5BA8 802D11F8 4600010D */  trunc.w.s $f4, $f0
/* 0F5BAC 802D11FC E6240070 */  swc1  $f4, 0x70($s1)
/* 0F5BB0 802D1200 080B448B */  j     func_802D122C
/* 0F5BB4 802D1204 C4400018 */   lwc1  $f0, 0x18($v0)

.L802D1208:
/* 0F5BB8 802D1208 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5BBC 802D120C C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5BC0 802D1210 4406B000 */  mfc1  $a2, $f22
/* 0F5BC4 802D1214 4407A000 */  mfc1  $a3, $f20
/* 0F5BC8 802D1218 0C00A7B5 */  jal   dist2D
/* 0F5BCC 802D121C 00000000 */   nop   
/* 0F5BD0 802D1220 C6220070 */  lwc1  $f2, 0x70($s1)
/* 0F5BD4 802D1224 468010A0 */  cvt.s.w $f2, $f2
/* 0F5BD8 802D1228 46020003 */  div.s $f0, $f0, $f2
func_802D122C:
/* 0F5BDC 802D122C 8E240070 */  lw    $a0, 0x70($s1)
/* 0F5BE0 802D1230 8E450080 */  lw    $a1, 0x80($s2)
/* 0F5BE4 802D1234 44060000 */  mfc1  $a2, $f0
/* 0F5BE8 802D1238 0C0389DE */  jal   move_player
/* 0F5BEC 802D123C 00000000 */   nop   
.L802D1240:
/* 0F5BF0 802D1240 8E230070 */  lw    $v1, 0x70($s1)
/* 0F5BF4 802D1244 2463FFFF */  addiu $v1, $v1, -1
/* 0F5BF8 802D1248 AE230070 */  sw    $v1, 0x70($s1)
/* 0F5BFC 802D124C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F5C00 802D1250 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F5C04 802D1254 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F5C08 802D1258 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5C0C 802D125C D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F5C10 802D1260 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F5C14 802D1264 000317C2 */  srl   $v0, $v1, 0x1f
/* 0F5C18 802D1268 03E00008 */  jr    $ra
/* 0F5C1C 802D126C 27BD0030 */   addiu $sp, $sp, 0x30

/* 0F5C20 802D1270 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0F5C24 802D1274 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F5C28 802D1278 0080882D */  daddu $s1, $a0, $zero
/* 0F5C2C 802D127C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F5C30 802D1280 3C128011 */  lui   $s2, 0x8011
/* 0F5C34 802D1284 2652EFC8 */  addiu $s2, $s2, -0x1038
/* 0F5C38 802D1288 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F5C3C 802D128C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5C40 802D1290 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F5C44 802D1294 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F5C48 802D1298 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F5C4C 802D129C 10A0002A */  beqz  $a1, .L802D1348
/* 0F5C50 802D12A0 8E30000C */   lw    $s0, 0xc($s1)
/* 0F5C54 802D12A4 8E050000 */  lw    $a1, ($s0)
/* 0F5C58 802D12A8 0C0B1EAF */  jal   get_variable
/* 0F5C5C 802D12AC 26100004 */   addiu $s0, $s0, 4
/* 0F5C60 802D12B0 8E050000 */  lw    $a1, ($s0)
/* 0F5C64 802D12B4 26100004 */  addiu $s0, $s0, 4
/* 0F5C68 802D12B8 4482C000 */  mtc1  $v0, $f24
/* 0F5C6C 802D12BC 00000000 */  nop   
/* 0F5C70 802D12C0 4680C620 */  cvt.s.w $f24, $f24
/* 0F5C74 802D12C4 0C0B1EAF */  jal   get_variable
/* 0F5C78 802D12C8 0220202D */   daddu $a0, $s1, $zero
/* 0F5C7C 802D12CC 8E050000 */  lw    $a1, ($s0)
/* 0F5C80 802D12D0 4482B000 */  mtc1  $v0, $f22
/* 0F5C84 802D12D4 00000000 */  nop   
/* 0F5C88 802D12D8 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F5C8C 802D12DC 0C0B210B */  jal   get_float_variable
/* 0F5C90 802D12E0 0220202D */   daddu $a0, $s1, $zero
/* 0F5C94 802D12E4 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5C98 802D12E8 C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5C9C 802D12EC 4406C000 */  mfc1  $a2, $f24
/* 0F5CA0 802D12F0 4407B000 */  mfc1  $a3, $f22
/* 0F5CA4 802D12F4 0C00A720 */  jal   atan2
/* 0F5CA8 802D12F8 46000506 */   mov.s $f20, $f0
/* 0F5CAC 802D12FC C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5CB0 802D1300 C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5CB4 802D1304 4406C000 */  mfc1  $a2, $f24
/* 0F5CB8 802D1308 4407B000 */  mfc1  $a3, $f22
/* 0F5CBC 802D130C 0C00A7B5 */  jal   dist2D
/* 0F5CC0 802D1310 E6400080 */   swc1  $f0, 0x80($s2)
/* 0F5CC4 802D1314 46140503 */  div.s $f20, $f0, $f20
/* 0F5CC8 802D1318 4600A10D */  trunc.w.s $f4, $f20
/* 0F5CCC 802D131C 44042000 */  mfc1  $a0, $f4
/* 0F5CD0 802D1320 00000000 */  nop   
/* 0F5CD4 802D1324 44841000 */  mtc1  $a0, $f2
/* 0F5CD8 802D1328 00000000 */  nop   
/* 0F5CDC 802D132C 468010A0 */  cvt.s.w $f2, $f2
/* 0F5CE0 802D1330 46020003 */  div.s $f0, $f0, $f2
/* 0F5CE4 802D1334 AE240070 */  sw    $a0, 0x70($s1)
/* 0F5CE8 802D1338 8E450080 */  lw    $a1, 0x80($s2)
/* 0F5CEC 802D133C 44060000 */  mfc1  $a2, $f0
/* 0F5CF0 802D1340 0C0389DE */  jal   move_player
/* 0F5CF4 802D1344 00000000 */   nop   
.L802D1348:
/* 0F5CF8 802D1348 8E230070 */  lw    $v1, 0x70($s1)
/* 0F5CFC 802D134C 2463FFFF */  addiu $v1, $v1, -1
/* 0F5D00 802D1350 000317C3 */  sra   $v0, $v1, 0x1f
/* 0F5D04 802D1354 AE230070 */  sw    $v1, 0x70($s1)
/* 0F5D08 802D1358 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F5D0C 802D135C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F5D10 802D1360 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F5D14 802D1364 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5D18 802D1368 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F5D1C 802D136C D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F5D20 802D1370 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F5D24 802D1374 30420002 */  andi  $v0, $v0, 2
/* 0F5D28 802D1378 03E00008 */  jr    $ra
/* 0F5D2C 802D137C 27BD0038 */   addiu $sp, $sp, 0x38

/* 0F5D30 802D1380 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F5D34 802D1384 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F5D38 802D1388 0080882D */  daddu $s1, $a0, $zero
/* 0F5D3C 802D138C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F5D40 802D1390 3C128011 */  lui   $s2, 0x8011
/* 0F5D44 802D1394 2652EFC8 */  addiu $s2, $s2, -0x1038
/* 0F5D48 802D1398 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F5D4C 802D139C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F5D50 802D13A0 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F5D54 802D13A4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F5D58 802D13A8 10A00044 */  beqz  $a1, .L802D14BC
/* 0F5D5C 802D13AC 8E30000C */   lw    $s0, 0xc($s1)
/* 0F5D60 802D13B0 8E050000 */  lw    $a1, ($s0)
/* 0F5D64 802D13B4 0C0B1EAF */  jal   get_variable
/* 0F5D68 802D13B8 26100004 */   addiu $s0, $s0, 4
/* 0F5D6C 802D13BC 8E050000 */  lw    $a1, ($s0)
/* 0F5D70 802D13C0 26100004 */  addiu $s0, $s0, 4
/* 0F5D74 802D13C4 4482B000 */  mtc1  $v0, $f22
/* 0F5D78 802D13C8 00000000 */  nop   
/* 0F5D7C 802D13CC 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F5D80 802D13D0 0C0B1EAF */  jal   get_variable
/* 0F5D84 802D13D4 0220202D */   daddu $a0, $s1, $zero
/* 0F5D88 802D13D8 8E050000 */  lw    $a1, ($s0)
/* 0F5D8C 802D13DC 4482A000 */  mtc1  $v0, $f20
/* 0F5D90 802D13E0 00000000 */  nop   
/* 0F5D94 802D13E4 4680A520 */  cvt.s.w $f20, $f20
/* 0F5D98 802D13E8 0C0B1EAF */  jal   get_variable
/* 0F5D9C 802D13EC 0220202D */   daddu $a0, $s1, $zero
/* 0F5DA0 802D13F0 3C10802E */  lui   $s0, 0x802e
/* 0F5DA4 802D13F4 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F5DA8 802D13F8 8E030000 */  lw    $v1, ($s0)
/* 0F5DAC 802D13FC 4406B000 */  mfc1  $a2, $f22
/* 0F5DB0 802D1400 4407A000 */  mfc1  $a3, $f20
/* 0F5DB4 802D1404 A462008E */  sh    $v0, 0x8e($v1)
/* 0F5DB8 802D1408 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5DBC 802D140C 0C00A720 */  jal   atan2
/* 0F5DC0 802D1410 C64E0030 */   lwc1  $f14, 0x30($s2)
/* 0F5DC4 802D1414 8E020000 */  lw    $v0, ($s0)
/* 0F5DC8 802D1418 E6400080 */  swc1  $f0, 0x80($s2)
/* 0F5DCC 802D141C 8442008E */  lh    $v0, 0x8e($v0)
/* 0F5DD0 802D1420 1040000F */  beqz  $v0, .L802D1460
/* 0F5DD4 802D1424 00000000 */   nop   
/* 0F5DD8 802D1428 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5DDC 802D142C C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5DE0 802D1430 4406B000 */  mfc1  $a2, $f22
/* 0F5DE4 802D1434 4407A000 */  mfc1  $a3, $f20
/* 0F5DE8 802D1438 0C00A7B5 */  jal   dist2D
/* 0F5DEC 802D143C 00000000 */   nop   
/* 0F5DF0 802D1440 8E030000 */  lw    $v1, ($s0)
/* 0F5DF4 802D1444 8462008E */  lh    $v0, 0x8e($v1)
/* 0F5DF8 802D1448 44821000 */  mtc1  $v0, $f2
/* 0F5DFC 802D144C 00000000 */  nop   
/* 0F5E00 802D1450 468010A0 */  cvt.s.w $f2, $f2
/* 0F5E04 802D1454 46020003 */  div.s $f0, $f0, $f2
/* 0F5E08 802D1458 080B4529 */  j     func_802D14A4
/* 0F5E0C 802D145C E4600018 */   swc1  $f0, 0x18($v1)

.L802D1460:
/* 0F5E10 802D1460 C64C0028 */  lwc1  $f12, 0x28($s2)
/* 0F5E14 802D1464 C64E0030 */  lwc1  $f14, 0x30($s2)
/* 0F5E18 802D1468 4406B000 */  mfc1  $a2, $f22
/* 0F5E1C 802D146C 4407A000 */  mfc1  $a3, $f20
/* 0F5E20 802D1470 0C00A7B5 */  jal   dist2D
/* 0F5E24 802D1474 00000000 */   nop   
/* 0F5E28 802D1478 8E030000 */  lw    $v1, ($s0)
/* 0F5E2C 802D147C C4620018 */  lwc1  $f2, 0x18($v1)
/* 0F5E30 802D1480 46020003 */  div.s $f0, $f0, $f2
/* 0F5E34 802D1484 4600010D */  trunc.w.s $f4, $f0
/* 0F5E38 802D1488 44022000 */  mfc1  $v0, $f4
/* 0F5E3C 802D148C 00000000 */  nop   
/* 0F5E40 802D1490 A462008E */  sh    $v0, 0x8e($v1)
/* 0F5E44 802D1494 00021400 */  sll   $v0, $v0, 0x10
/* 0F5E48 802D1498 14400002 */  bnez  $v0, .L802D14A4
/* 0F5E4C 802D149C 24020001 */   addiu $v0, $zero, 1
/* 0F5E50 802D14A0 A462008E */  sh    $v0, 0x8e($v1)
func_802D14A4:
.L802D14A4:
/* 0F5E54 802D14A4 3C02802E */  lui   $v0, 0x802e
/* 0F5E58 802D14A8 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F5E5C 802D14AC 8E450080 */  lw    $a1, 0x80($s2)
/* 0F5E60 802D14B0 8444008E */  lh    $a0, 0x8e($v0)
/* 0F5E64 802D14B4 0C0389DE */  jal   move_player
/* 0F5E68 802D14B8 8C460018 */   lw    $a2, 0x18($v0)
.L802D14BC:
/* 0F5E6C 802D14BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F5E70 802D14C0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F5E74 802D14C4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F5E78 802D14C8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F5E7C 802D14CC D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F5E80 802D14D0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F5E84 802D14D4 24020001 */  addiu $v0, $zero, 1
/* 0F5E88 802D14D8 03E00008 */  jr    $ra
/* 0F5E8C 802D14DC 27BD0030 */   addiu $sp, $sp, 0x30

player_jump:
/* 0F5E90 802D14E0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0F5E94 802D14E4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0F5E98 802D14E8 0080902D */  daddu $s2, $a0, $zero
/* 0F5E9C 802D14EC AFB30024 */  sw    $s3, 0x24($sp)
/* 0F5EA0 802D14F0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F5EA4 802D14F4 3C118011 */  lui   $s1, 0x8011
/* 0F5EA8 802D14F8 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 0F5EAC 802D14FC AFBF0028 */  sw    $ra, 0x28($sp)
/* 0F5EB0 802D1500 AFB00018 */  sw    $s0, 0x18($sp)
/* 0F5EB4 802D1504 F7B80040 */  sdc1  $f24, 0x40($sp)
/* 0F5EB8 802D1508 F7B60038 */  sdc1  $f22, 0x38($sp)
/* 0F5EBC 802D150C F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0F5EC0 802D1510 8E50000C */  lw    $s0, 0xc($s2)
/* 0F5EC4 802D1514 10A00002 */  beqz  $a1, .L802D1520
/* 0F5EC8 802D1518 00C0982D */   daddu $s3, $a2, $zero
/* 0F5ECC 802D151C AE400070 */  sw    $zero, 0x70($s2)
.L802D1520:
/* 0F5ED0 802D1520 8E420070 */  lw    $v0, 0x70($s2)
/* 0F5ED4 802D1524 1440007E */  bnez  $v0, .L802D1720
/* 0F5ED8 802D1528 00000000 */   nop   
/* 0F5EDC 802D152C 8E050000 */  lw    $a1, ($s0)
/* 0F5EE0 802D1530 26100004 */  addiu $s0, $s0, 4
/* 0F5EE4 802D1534 0C0B1EAF */  jal   get_variable
/* 0F5EE8 802D1538 0240202D */   daddu $a0, $s2, $zero
/* 0F5EEC 802D153C 8E050000 */  lw    $a1, ($s0)
/* 0F5EF0 802D1540 26100004 */  addiu $s0, $s0, 4
/* 0F5EF4 802D1544 4482B000 */  mtc1  $v0, $f22
/* 0F5EF8 802D1548 00000000 */  nop   
/* 0F5EFC 802D154C 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F5F00 802D1550 0C0B1EAF */  jal   get_variable
/* 0F5F04 802D1554 0240202D */   daddu $a0, $s2, $zero
/* 0F5F08 802D1558 4482C000 */  mtc1  $v0, $f24
/* 0F5F0C 802D155C 00000000 */  nop   
/* 0F5F10 802D1560 4680C620 */  cvt.s.w $f24, $f24
/* 0F5F14 802D1564 8E050000 */  lw    $a1, ($s0)
/* 0F5F18 802D1568 26100004 */  addiu $s0, $s0, 4
/* 0F5F1C 802D156C 0C0B1EAF */  jal   get_variable
/* 0F5F20 802D1570 0240202D */   daddu $a0, $s2, $zero
/* 0F5F24 802D1574 8E050000 */  lw    $a1, ($s0)
/* 0F5F28 802D1578 4482A000 */  mtc1  $v0, $f20
/* 0F5F2C 802D157C 00000000 */  nop   
/* 0F5F30 802D1580 4680A520 */  cvt.s.w $f20, $f20
/* 0F5F34 802D1584 0C0B1EAF */  jal   get_variable
/* 0F5F38 802D1588 0240202D */   daddu $a0, $s2, $zero
/* 0F5F3C 802D158C 3C10802E */  lui   $s0, 0x802e
/* 0F5F40 802D1590 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F5F44 802D1594 8E030000 */  lw    $v1, ($s0)
/* 0F5F48 802D1598 C6200028 */  lwc1  $f0, 0x28($s1)
/* 0F5F4C 802D159C E4600038 */  swc1  $f0, 0x38($v1)
/* 0F5F50 802D15A0 46000306 */  mov.s $f12, $f0
/* 0F5F54 802D15A4 C620002C */  lwc1  $f0, 0x2c($s1)
/* 0F5F58 802D15A8 E460003C */  swc1  $f0, 0x3c($v1)
/* 0F5F5C 802D15AC C6200030 */  lwc1  $f0, 0x30($s1)
/* 0F5F60 802D15B0 E4760060 */  swc1  $f22, 0x60($v1)
/* 0F5F64 802D15B4 4406B000 */  mfc1  $a2, $f22
/* 0F5F68 802D15B8 E4740068 */  swc1  $f20, 0x68($v1)
/* 0F5F6C 802D15BC 4407A000 */  mfc1  $a3, $f20
/* 0F5F70 802D15C0 E4780064 */  swc1  $f24, 0x64($v1)
/* 0F5F74 802D15C4 A462008E */  sh    $v0, 0x8e($v1)
/* 0F5F78 802D15C8 E4600040 */  swc1  $f0, 0x40($v1)
/* 0F5F7C 802D15CC 46000386 */  mov.s $f14, $f0
/* 0F5F80 802D15D0 C6200080 */  lwc1  $f0, 0x80($s1)
/* 0F5F84 802D15D4 0C00A7B5 */  jal   dist2D
/* 0F5F88 802D15D8 E460000C */   swc1  $f0, 0xc($v1)
/* 0F5F8C 802D15DC 46000506 */  mov.s $f20, $f0
/* 0F5F90 802D15E0 3C013FF0 */  lui   $at, 0x3ff0
/* 0F5F94 802D15E4 44811800 */  mtc1  $at, $f3
/* 0F5F98 802D15E8 44801000 */  mtc1  $zero, $f2
/* 0F5F9C 802D15EC 4600A021 */  cvt.d.s $f0, $f20
/* 0F5FA0 802D15F0 4620103C */  c.lt.d $f2, $f0
/* 0F5FA4 802D15F4 00000000 */  nop   
/* 0F5FA8 802D15F8 45000009 */  bc1f  .L802D1620
/* 0F5FAC 802D15FC 00000000 */   nop   
/* 0F5FB0 802D1600 8E020000 */  lw    $v0, ($s0)
/* 0F5FB4 802D1604 C44C0038 */  lwc1  $f12, 0x38($v0)
/* 0F5FB8 802D1608 C44E0040 */  lwc1  $f14, 0x40($v0)
/* 0F5FBC 802D160C 8C460060 */  lw    $a2, 0x60($v0)
/* 0F5FC0 802D1610 0C00A720 */  jal   atan2
/* 0F5FC4 802D1614 8C470068 */   lw    $a3, 0x68($v0)
/* 0F5FC8 802D1618 8E020000 */  lw    $v0, ($s0)
/* 0F5FCC 802D161C E440000C */  swc1  $f0, 0xc($v0)
.L802D1620:
/* 0F5FD0 802D1620 8E030000 */  lw    $v1, ($s0)
/* 0F5FD4 802D1624 C4620064 */  lwc1  $f2, 0x64($v1)
/* 0F5FD8 802D1628 C460003C */  lwc1  $f0, 0x3c($v1)
/* 0F5FDC 802D162C 8462008E */  lh    $v0, 0x8e($v1)
/* 0F5FE0 802D1630 14400007 */  bnez  $v0, .L802D1650
/* 0F5FE4 802D1634 46001601 */   sub.s $f24, $f2, $f0
/* 0F5FE8 802D1638 C4600018 */  lwc1  $f0, 0x18($v1)
/* 0F5FEC 802D163C 4600A003 */  div.s $f0, $f20, $f0
/* 0F5FF0 802D1640 4600018D */  trunc.w.s $f6, $f0
/* 0F5FF4 802D1644 44023000 */  mfc1  $v0, $f6
/* 0F5FF8 802D1648 080B4599 */  j     func_802D1664
/* 0F5FFC 802D164C A462008E */   sh    $v0, 0x8e($v1)

.L802D1650:
/* 0F6000 802D1650 44820000 */  mtc1  $v0, $f0
/* 0F6004 802D1654 00000000 */  nop   
/* 0F6008 802D1658 46800020 */  cvt.s.w $f0, $f0
/* 0F600C 802D165C 4600A003 */  div.s $f0, $f20, $f0
/* 0F6010 802D1660 E4600018 */  swc1  $f0, 0x18($v1)
func_802D1664:
/* 0F6014 802D1664 3C03802E */  lui   $v1, 0x802e
/* 0F6018 802D1668 8C639D20 */  lw    $v1, -0x62e0($v1)
/* 0F601C 802D166C 8464008E */  lh    $a0, 0x8e($v1)
/* 0F6020 802D1670 C4620014 */  lwc1  $f2, 0x14($v1)
/* 0F6024 802D1674 2482FFFF */  addiu $v0, $a0, -1
/* 0F6028 802D1678 44820000 */  mtc1  $v0, $f0
/* 0F602C 802D167C 00000000 */  nop   
/* 0F6030 802D1680 46800020 */  cvt.s.w $f0, $f0
/* 0F6034 802D1684 46001082 */  mul.s $f2, $f2, $f0
/* 0F6038 802D1688 00000000 */  nop   
/* 0F603C 802D168C 3C013F00 */  lui   $at, 0x3f00
/* 0F6040 802D1690 44810000 */  mtc1  $at, $f0
/* 0F6044 802D1694 00000000 */  nop   
/* 0F6048 802D1698 46001082 */  mul.s $f2, $f2, $f0
/* 0F604C 802D169C 00000000 */  nop   
/* 0F6050 802D16A0 44840000 */  mtc1  $a0, $f0
/* 0F6054 802D16A4 00000000 */  nop   
/* 0F6058 802D16A8 46800020 */  cvt.s.w $f0, $f0
/* 0F605C 802D16AC 4600C003 */  div.s $f0, $f24, $f0
/* 0F6060 802D16B0 46001080 */  add.s $f2, $f2, $f0
/* 0F6064 802D16B4 E462001C */  swc1  $f2, 0x1c($v1)
/* 0F6068 802D16B8 8E220000 */  lw    $v0, ($s1)
/* 0F606C 802D16BC 8E230004 */  lw    $v1, 4($s1)
/* 0F6070 802D16C0 34420008 */  ori   $v0, $v0, 8
/* 0F6074 802D16C4 AE220000 */  sw    $v0, ($s1)
/* 0F6078 802D16C8 3C021000 */  lui   $v0, 0x1000
/* 0F607C 802D16CC 00621825 */  or    $v1, $v1, $v0
/* 0F6080 802D16D0 16600011 */  bnez  $s3, .L802D1718
/* 0F6084 802D16D4 AE230004 */   sw    $v1, 4($s1)
/* 0F6088 802D16D8 30624000 */  andi  $v0, $v1, 0x4000
/* 0F608C 802D16DC 14400008 */  bnez  $v0, .L802D1700
/* 0F6090 802D16E0 3C040009 */   lui   $a0, 9
/* 0F6094 802D16E4 3C040006 */  lui   $a0, 6
/* 0F6098 802D16E8 30620001 */  andi  $v0, $v1, 1
/* 0F609C 802D16EC 14400005 */  bnez  $v0, .L802D1704
/* 0F60A0 802D16F0 34840009 */   ori   $a0, $a0, 9
/* 0F60A4 802D16F4 3C040001 */  lui   $a0, 1
/* 0F60A8 802D16F8 080B45C1 */  j     func_802D1704
/* 0F60AC 802D16FC 34840007 */   ori   $a0, $a0, 7

.L802D1700:
/* 0F60B0 802D1700 34840005 */  ori   $a0, $a0, 5
func_802D1704:
.L802D1704:
/* 0F60B4 802D1704 0C037FBF */  jal   func_800DFEFC
/* 0F60B8 802D1708 00000000 */   nop   
/* 0F60BC 802D170C 24042081 */  addiu $a0, $zero, 0x2081
/* 0F60C0 802D1710 0C052736 */  jal   play_sound_at_player
/* 0F60C4 802D1714 0000282D */   daddu $a1, $zero, $zero
.L802D1718:
/* 0F60C8 802D1718 24020001 */  addiu $v0, $zero, 1
/* 0F60CC 802D171C AE420070 */  sw    $v0, 0x70($s2)
.L802D1720:
/* 0F60D0 802D1720 3C10802E */  lui   $s0, 0x802e
/* 0F60D4 802D1724 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F60D8 802D1728 8E040000 */  lw    $a0, ($s0)
/* 0F60DC 802D172C 8C850018 */  lw    $a1, 0x18($a0)
/* 0F60E0 802D1730 0C00EA95 */  jal   npc_move_heading
/* 0F60E4 802D1734 8C86000C */   lw    $a2, 0xc($a0)
/* 0F60E8 802D1738 8E020000 */  lw    $v0, ($s0)
/* 0F60EC 802D173C C440001C */  lwc1  $f0, 0x1c($v0)
/* 0F60F0 802D1740 C442003C */  lwc1  $f2, 0x3c($v0)
/* 0F60F4 802D1744 46000106 */  mov.s $f4, $f0
/* 0F60F8 802D1748 46001080 */  add.s $f2, $f2, $f0
/* 0F60FC 802D174C C4400014 */  lwc1  $f0, 0x14($v0)
/* 0F6100 802D1750 46002001 */  sub.s $f0, $f4, $f0
/* 0F6104 802D1754 E442003C */  swc1  $f2, 0x3c($v0)
/* 0F6108 802D1758 16600019 */  bnez  $s3, .L802D17C0
/* 0F610C 802D175C E440001C */   swc1  $f0, 0x1c($v0)
/* 0F6110 802D1760 44801000 */  mtc1  $zero, $f2
/* 0F6114 802D1764 00000000 */  nop   
/* 0F6118 802D1768 4604103C */  c.lt.s $f2, $f4
/* 0F611C 802D176C 00000000 */  nop   
/* 0F6120 802D1770 45000013 */  bc1f  .L802D17C0
/* 0F6124 802D1774 00000000 */   nop   
/* 0F6128 802D1778 4602003E */  c.le.s $f0, $f2
/* 0F612C 802D177C 00000000 */  nop   
/* 0F6130 802D1780 4500000F */  bc1f  .L802D17C0
/* 0F6134 802D1784 00000000 */   nop   
/* 0F6138 802D1788 8E230004 */  lw    $v1, 4($s1)
/* 0F613C 802D178C 30624000 */  andi  $v0, $v1, 0x4000
/* 0F6140 802D1790 14400008 */  bnez  $v0, .L802D17B4
/* 0F6144 802D1794 3C040009 */   lui   $a0, 9
/* 0F6148 802D1798 3C040006 */  lui   $a0, 6
/* 0F614C 802D179C 30620001 */  andi  $v0, $v1, 1
/* 0F6150 802D17A0 14400005 */  bnez  $v0, .L802D17B8
/* 0F6154 802D17A4 3484000A */   ori   $a0, $a0, 0xa
/* 0F6158 802D17A8 3C040001 */  lui   $a0, 1
/* 0F615C 802D17AC 080B45EE */  j     func_802D17B8
/* 0F6160 802D17B0 34840008 */   ori   $a0, $a0, 8

.L802D17B4:
/* 0F6164 802D17B4 34840005 */  ori   $a0, $a0, 5
func_802D17B8:
.L802D17B8:
/* 0F6168 802D17B8 0C037FBF */  jal   func_800DFEFC
/* 0F616C 802D17BC 00000000 */   nop   
.L802D17C0:
/* 0F6170 802D17C0 3C03802E */  lui   $v1, 0x802e
/* 0F6174 802D17C4 24639D20 */  addiu $v1, $v1, -0x62e0
/* 0F6178 802D17C8 8C620000 */  lw    $v0, ($v1)
/* 0F617C 802D17CC C4400038 */  lwc1  $f0, 0x38($v0)
/* 0F6180 802D17D0 E6200028 */  swc1  $f0, 0x28($s1)
/* 0F6184 802D17D4 C440003C */  lwc1  $f0, 0x3c($v0)
/* 0F6188 802D17D8 E620002C */  swc1  $f0, 0x2c($s1)
/* 0F618C 802D17DC C4400040 */  lwc1  $f0, 0x40($v0)
/* 0F6190 802D17E0 16600003 */  bnez  $s3, .L802D17F0
/* 0F6194 802D17E4 E6200030 */   swc1  $f0, 0x30($s1)
/* 0F6198 802D17E8 C440000C */  lwc1  $f0, 0xc($v0)
/* 0F619C 802D17EC E6200080 */  swc1  $f0, 0x80($s1)
.L802D17F0:
/* 0F61A0 802D17F0 8C630000 */  lw    $v1, ($v1)
/* 0F61A4 802D17F4 9462008E */  lhu   $v0, 0x8e($v1)
/* 0F61A8 802D17F8 2442FFFF */  addiu $v0, $v0, -1
/* 0F61AC 802D17FC A462008E */  sh    $v0, 0x8e($v1)
/* 0F61B0 802D1800 00021400 */  sll   $v0, $v0, 0x10
/* 0F61B4 802D1804 1440002E */  bnez  $v0, .L802D18C0
/* 0F61B8 802D1808 0000102D */   daddu $v0, $zero, $zero
/* 0F61BC 802D180C 3C02EFFF */  lui   $v0, 0xefff
/* 0F61C0 802D1810 3442FFFF */  ori   $v0, $v0, 0xffff
/* 0F61C4 802D1814 2404FFF7 */  addiu $a0, $zero, -9
/* 0F61C8 802D1818 8E230000 */  lw    $v1, ($s1)
/* 0F61CC 802D181C 8E250004 */  lw    $a1, 4($s1)
/* 0F61D0 802D1820 00641824 */  and   $v1, $v1, $a0
/* 0F61D4 802D1824 00A21024 */  and   $v0, $a1, $v0
/* 0F61D8 802D1828 AE230000 */  sw    $v1, ($s1)
/* 0F61DC 802D182C 16600014 */  bnez  $s3, .L802D1880
/* 0F61E0 802D1830 AE220004 */   sw    $v0, 4($s1)
/* 0F61E4 802D1834 30A24000 */  andi  $v0, $a1, 0x4000
/* 0F61E8 802D1838 14400008 */  bnez  $v0, .L802D185C
/* 0F61EC 802D183C 3C040001 */   lui   $a0, 1
/* 0F61F0 802D1840 3C040006 */  lui   $a0, 6
/* 0F61F4 802D1844 30A20001 */  andi  $v0, $a1, 1
/* 0F61F8 802D1848 14400005 */  bnez  $v0, .L802D1860
/* 0F61FC 802D184C 3484000B */   ori   $a0, $a0, 0xb
/* 0F6200 802D1850 3C040001 */  lui   $a0, 1
/* 0F6204 802D1854 080B4618 */  j     func_802D1860
/* 0F6208 802D1858 34840009 */   ori   $a0, $a0, 9

.L802D185C:
/* 0F620C 802D185C 34840003 */  ori   $a0, $a0, 3
func_802D1860:
.L802D1860:
/* 0F6210 802D1860 0C037FBF */  jal   func_800DFEFC
/* 0F6214 802D1864 00000000 */   nop   
/* 0F6218 802D1868 3C04802E */  lui   $a0, 0x802e
/* 0F621C 802D186C 8C849D20 */  lw    $a0, -0x62e0($a0)
/* 0F6220 802D1870 0C00F598 */  jal   func_8003D660
/* 0F6224 802D1874 24050002 */   addiu $a1, $zero, 2
/* 0F6228 802D1878 12600004 */  beqz  $s3, .L802D188C
/* 0F622C 802D187C 00000000 */   nop   
.L802D1880:
/* 0F6230 802D1880 24020002 */  addiu $v0, $zero, 2
/* 0F6234 802D1884 1662000E */  bne   $s3, $v0, .L802D18C0
/* 0F6238 802D1888 24020001 */   addiu $v0, $zero, 1
.L802D188C:
/* 0F623C 802D188C 3C02802E */  lui   $v0, 0x802e
/* 0F6240 802D1890 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F6244 802D1894 C44C001C */  lwc1  $f12, 0x1c($v0)
/* 0F6248 802D1898 0C038D45 */  jal   func_800E3514
/* 0F624C 802D189C 27A50010 */   addiu $a1, $sp, 0x10
/* 0F6250 802D18A0 8FA40010 */  lw    $a0, 0x10($sp)
/* 0F6254 802D18A4 04800005 */  bltz  $a0, .L802D18BC
/* 0F6258 802D18A8 46000606 */   mov.s $f24, $f0
/* 0F625C 802D18AC 0C038C57 */  jal   func_800E315C
/* 0F6260 802D18B0 E638002C */   swc1  $f24, 0x2c($s1)
/* 0F6264 802D18B4 0C03BF42 */  jal   func_800EFD08
/* 0F6268 802D18B8 00000000 */   nop   
.L802D18BC:
/* 0F626C 802D18BC 24020001 */  addiu $v0, $zero, 1
.L802D18C0:
/* 0F6270 802D18C0 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0F6274 802D18C4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0F6278 802D18C8 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F627C 802D18CC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F6280 802D18D0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F6284 802D18D4 D7B80040 */  ldc1  $f24, 0x40($sp)
/* 0F6288 802D18D8 D7B60038 */  ldc1  $f22, 0x38($sp)
/* 0F628C 802D18DC D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0F6290 802D18E0 03E00008 */  jr    $ra
/* 0F6294 802D18E4 27BD0048 */   addiu $sp, $sp, 0x48

PlayerJump:
/* 0F6298 802D18E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F629C 802D18EC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F62A0 802D18F0 0C0B4538 */  jal   player_jump
/* 0F62A4 802D18F4 0000302D */   daddu $a2, $zero, $zero
/* 0F62A8 802D18F8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F62AC 802D18FC 03E00008 */  jr    $ra
/* 0F62B0 802D1900 27BD0018 */   addiu $sp, $sp, 0x18

PlayerJump1:
/* 0F62B4 802D1904 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F62B8 802D1908 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F62BC 802D190C 0C0B4538 */  jal   player_jump
/* 0F62C0 802D1910 24060001 */   addiu $a2, $zero, 1
/* 0F62C4 802D1914 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F62C8 802D1918 03E00008 */  jr    $ra
/* 0F62CC 802D191C 27BD0018 */   addiu $sp, $sp, 0x18

PlayerJump2:
/* 0F62D0 802D1920 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F62D4 802D1924 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F62D8 802D1928 0C0B4538 */  jal   player_jump
/* 0F62DC 802D192C 24060002 */   addiu $a2, $zero, 2
/* 0F62E0 802D1930 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F62E4 802D1934 03E00008 */  jr    $ra
/* 0F62E8 802D1938 27BD0018 */   addiu $sp, $sp, 0x18

InterpPlayerYaw:
/* 0F62EC 802D193C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F62F0 802D1940 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F62F4 802D1944 0080882D */  daddu $s1, $a0, $zero
/* 0F62F8 802D1948 AFB50024 */  sw    $s5, 0x24($sp)
/* 0F62FC 802D194C 3C158011 */  lui   $s5, 0x8011
/* 0F6300 802D1950 26B5EFC8 */  addiu $s5, $s5, -0x1038
/* 0F6304 802D1954 AFB60028 */  sw    $s6, 0x28($sp)
/* 0F6308 802D1958 26360074 */  addiu $s6, $s1, 0x74
/* 0F630C 802D195C AFB40020 */  sw    $s4, 0x20($sp)
/* 0F6310 802D1960 26340078 */  addiu $s4, $s1, 0x78
/* 0F6314 802D1964 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F6318 802D1968 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0F631C 802D196C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F6320 802D1970 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F6324 802D1974 8E32000C */  lw    $s2, 0xc($s1)
/* 0F6328 802D1978 10A0002C */  beqz  $a1, .L802D1A2C
/* 0F632C 802D197C 2633007C */   addiu $s3, $s1, 0x7c
/* 0F6330 802D1980 3C10802E */  lui   $s0, 0x802e
/* 0F6334 802D1984 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F6338 802D1988 8E020000 */  lw    $v0, ($s0)
/* 0F633C 802D198C C6A00080 */  lwc1  $f0, 0x80($s5)
/* 0F6340 802D1990 E440000C */  swc1  $f0, 0xc($v0)
/* 0F6344 802D1994 E6200074 */  swc1  $f0, 0x74($s1)
/* 0F6348 802D1998 8E450000 */  lw    $a1, ($s2)
/* 0F634C 802D199C 0C0B210B */  jal   get_float_variable
/* 0F6350 802D19A0 26520004 */   addiu $s2, $s2, 4
/* 0F6354 802D19A4 C6220074 */  lwc1  $f2, 0x74($s1)
/* 0F6358 802D19A8 46020001 */  sub.s $f0, $f0, $f2
/* 0F635C 802D19AC E6200078 */  swc1  $f0, 0x78($s1)
/* 0F6360 802D19B0 8E450000 */  lw    $a1, ($s2)
/* 0F6364 802D19B4 0C0B1EAF */  jal   get_variable
/* 0F6368 802D19B8 0220202D */   daddu $a0, $s1, $zero
/* 0F636C 802D19BC AE22007C */  sw    $v0, 0x7c($s1)
/* 0F6370 802D19C0 8E020000 */  lw    $v0, ($s0)
/* 0F6374 802D19C4 3C01C334 */  lui   $at, 0xc334
/* 0F6378 802D19C8 44810000 */  mtc1  $at, $f0
/* 0F637C 802D19CC A440008E */  sh    $zero, 0x8e($v0)
/* 0F6380 802D19D0 C6220078 */  lwc1  $f2, 0x78($s1)
/* 0F6384 802D19D4 4600103C */  c.lt.s $f2, $f0
/* 0F6388 802D19D8 00000000 */  nop   
/* 0F638C 802D19DC 45000007 */  bc1f  .L802D19FC
/* 0F6390 802D19E0 00000000 */   nop   
/* 0F6394 802D19E4 3C0143B4 */  lui   $at, 0x43b4
/* 0F6398 802D19E8 44810000 */  mtc1  $at, $f0
/* 0F639C 802D19EC 00000000 */  nop   
/* 0F63A0 802D19F0 46001000 */  add.s $f0, $f2, $f0
/* 0F63A4 802D19F4 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F63A8 802D19F8 C6220078 */  lwc1  $f2, 0x78($s1)
.L802D19FC:
/* 0F63AC 802D19FC 3C014334 */  lui   $at, 0x4334
/* 0F63B0 802D1A00 44810000 */  mtc1  $at, $f0
/* 0F63B4 802D1A04 00000000 */  nop   
/* 0F63B8 802D1A08 4602003C */  c.lt.s $f0, $f2
/* 0F63BC 802D1A0C 00000000 */  nop   
/* 0F63C0 802D1A10 45000006 */  bc1f  .L802D1A2C
/* 0F63C4 802D1A14 00000000 */   nop   
/* 0F63C8 802D1A18 3C0143B4 */  lui   $at, 0x43b4
/* 0F63CC 802D1A1C 44810000 */  mtc1  $at, $f0
/* 0F63D0 802D1A20 00000000 */  nop   
/* 0F63D4 802D1A24 46001001 */  sub.s $f0, $f2, $f0
/* 0F63D8 802D1A28 E6200078 */  swc1  $f0, 0x78($s1)
.L802D1A2C:
/* 0F63DC 802D1A2C 8E620000 */  lw    $v0, ($s3)
/* 0F63E0 802D1A30 1C40000E */  bgtz  $v0, .L802D1A6C
/* 0F63E4 802D1A34 00000000 */   nop   
/* 0F63E8 802D1A38 3C10802E */  lui   $s0, 0x802e
/* 0F63EC 802D1A3C 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F63F0 802D1A40 8E020000 */  lw    $v0, ($s0)
/* 0F63F4 802D1A44 C6800000 */  lwc1  $f0, ($s4)
/* 0F63F8 802D1A48 C44C000C */  lwc1  $f12, 0xc($v0)
/* 0F63FC 802D1A4C 46006300 */  add.s $f12, $f12, $f0
/* 0F6400 802D1A50 0C00A6C9 */  jal   clamp_angle
/* 0F6404 802D1A54 E44C000C */   swc1  $f12, 0xc($v0)
/* 0F6408 802D1A58 8E030000 */  lw    $v1, ($s0)
/* 0F640C 802D1A5C 24020002 */  addiu $v0, $zero, 2
/* 0F6410 802D1A60 E460000C */  swc1  $f0, 0xc($v1)
/* 0F6414 802D1A64 080B46B7 */  j     func_802D1ADC
/* 0F6418 802D1A68 E6A00080 */   swc1  $f0, 0x80($s5)

.L802D1A6C:
/* 0F641C 802D1A6C 3C10802E */  lui   $s0, 0x802e
/* 0F6420 802D1A70 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F6424 802D1A74 8E030000 */  lw    $v1, ($s0)
/* 0F6428 802D1A78 9462008E */  lhu   $v0, 0x8e($v1)
/* 0F642C 802D1A7C 24420001 */  addiu $v0, $v0, 1
/* 0F6430 802D1A80 A462008E */  sh    $v0, 0x8e($v1)
/* 0F6434 802D1A84 00021400 */  sll   $v0, $v0, 0x10
/* 0F6438 802D1A88 00021403 */  sra   $v0, $v0, 0x10
/* 0F643C 802D1A8C C6800000 */  lwc1  $f0, ($s4)
/* 0F6440 802D1A90 44821000 */  mtc1  $v0, $f2
/* 0F6444 802D1A94 00000000 */  nop   
/* 0F6448 802D1A98 468010A0 */  cvt.s.w $f2, $f2
/* 0F644C 802D1A9C 46020002 */  mul.s $f0, $f0, $f2
/* 0F6450 802D1AA0 00000000 */  nop   
/* 0F6454 802D1AA4 C6CC0000 */  lwc1  $f12, ($s6)
/* 0F6458 802D1AA8 C6620000 */  lwc1  $f2, ($s3)
/* 0F645C 802D1AAC 468010A0 */  cvt.s.w $f2, $f2
/* 0F6460 802D1AB0 46020003 */  div.s $f0, $f0, $f2
/* 0F6464 802D1AB4 46006300 */  add.s $f12, $f12, $f0
/* 0F6468 802D1AB8 0C00A6C9 */  jal   clamp_angle
/* 0F646C 802D1ABC E46C000C */   swc1  $f12, 0xc($v1)
/* 0F6470 802D1AC0 8E020000 */  lw    $v0, ($s0)
/* 0F6474 802D1AC4 E440000C */  swc1  $f0, 0xc($v0)
/* 0F6478 802D1AC8 E6A00080 */  swc1  $f0, 0x80($s5)
/* 0F647C 802D1ACC 8442008E */  lh    $v0, 0x8e($v0)
/* 0F6480 802D1AD0 8E630000 */  lw    $v1, ($s3)
/* 0F6484 802D1AD4 0043102A */  slt   $v0, $v0, $v1
/* 0F6488 802D1AD8 38420001 */  xori  $v0, $v0, 1
func_802D1ADC:
/* 0F648C 802D1ADC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0F6490 802D1AE0 8FB60028 */  lw    $s6, 0x28($sp)
/* 0F6494 802D1AE4 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F6498 802D1AE8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F649C 802D1AEC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F64A0 802D1AF0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F64A4 802D1AF4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F64A8 802D1AF8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F64AC 802D1AFC 03E00008 */  jr    $ra
/* 0F64B0 802D1B00 27BD0030 */   addiu $sp, $sp, 0x30

PlayerFaceNpc:
/* 0F64B4 802D1B04 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F64B8 802D1B08 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F64BC 802D1B0C 0080902D */  daddu $s2, $a0, $zero
/* 0F64C0 802D1B10 AFB60028 */  sw    $s6, 0x28($sp)
/* 0F64C4 802D1B14 3C168011 */  lui   $s6, 0x8011
/* 0F64C8 802D1B18 26D6EFC8 */  addiu $s6, $s6, -0x1038
/* 0F64CC 802D1B1C AFB50024 */  sw    $s5, 0x24($sp)
/* 0F64D0 802D1B20 26550074 */  addiu $s5, $s2, 0x74
/* 0F64D4 802D1B24 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F64D8 802D1B28 26510078 */  addiu $s1, $s2, 0x78
/* 0F64DC 802D1B2C AFB40020 */  sw    $s4, 0x20($sp)
/* 0F64E0 802D1B30 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0F64E4 802D1B34 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F64E8 802D1B38 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F64EC 802D1B3C 8E53000C */  lw    $s3, 0xc($s2)
/* 0F64F0 802D1B40 10A00043 */  beqz  $a1, .L802D1C50
/* 0F64F4 802D1B44 2654007C */   addiu $s4, $s2, 0x7c
/* 0F64F8 802D1B48 8E650000 */  lw    $a1, ($s3)
/* 0F64FC 802D1B4C 0C0B1EAF */  jal   get_variable
/* 0F6500 802D1B50 26730004 */   addiu $s3, $s3, 4
/* 0F6504 802D1B54 0040202D */  daddu $a0, $v0, $zero
/* 0F6508 802D1B58 2402FFFF */  addiu $v0, $zero, -1
/* 0F650C 802D1B5C 14820006 */  bne   $a0, $v0, .L802D1B78
/* 0F6510 802D1B60 3C02EFE8 */   lui   $v0, 0xefe8
/* 0F6514 802D1B64 8E44014C */  lw    $a0, 0x14c($s2)
/* 0F6518 802D1B68 0C00EAD2 */  jal   get_npc_safe
/* 0F651C 802D1B6C 00000000 */   nop   
/* 0F6520 802D1B70 080B46E7 */  j     func_802D1B9C
/* 0F6524 802D1B74 0040202D */   daddu $a0, $v0, $zero

.L802D1B78:
/* 0F6528 802D1B78 34422080 */  ori   $v0, $v0, 0x2080
/* 0F652C 802D1B7C 0082102A */  slt   $v0, $a0, $v0
/* 0F6530 802D1B80 14400006 */  bnez  $v0, .L802D1B9C
/* 0F6534 802D1B84 00000000 */   nop   
/* 0F6538 802D1B88 0C00EAD2 */  jal   get_npc_safe
/* 0F653C 802D1B8C 00000000 */   nop   
/* 0F6540 802D1B90 0040202D */  daddu $a0, $v0, $zero
/* 0F6544 802D1B94 1080005A */  beqz  $a0, .L802D1D00
/* 0F6548 802D1B98 24020002 */   addiu $v0, $zero, 2
func_802D1B9C:
.L802D1B9C:
/* 0F654C 802D1B9C 3C10802E */  lui   $s0, 0x802e
/* 0F6550 802D1BA0 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F6554 802D1BA4 8E020000 */  lw    $v0, ($s0)
/* 0F6558 802D1BA8 C6C00080 */  lwc1  $f0, 0x80($s6)
/* 0F655C 802D1BAC E440000C */  swc1  $f0, 0xc($v0)
/* 0F6560 802D1BB0 E6A00000 */  swc1  $f0, ($s5)
/* 0F6564 802D1BB4 C6CC0028 */  lwc1  $f12, 0x28($s6)
/* 0F6568 802D1BB8 C6CE0030 */  lwc1  $f14, 0x30($s6)
/* 0F656C 802D1BBC 8C860038 */  lw    $a2, 0x38($a0)
/* 0F6570 802D1BC0 0C00A720 */  jal   atan2
/* 0F6574 802D1BC4 8C870040 */   lw    $a3, 0x40($a0)
/* 0F6578 802D1BC8 C6A20000 */  lwc1  $f2, ($s5)
/* 0F657C 802D1BCC 46020001 */  sub.s $f0, $f0, $f2
/* 0F6580 802D1BD0 E6200000 */  swc1  $f0, ($s1)
/* 0F6584 802D1BD4 8E650000 */  lw    $a1, ($s3)
/* 0F6588 802D1BD8 0C0B1EAF */  jal   get_variable
/* 0F658C 802D1BDC 0240202D */   daddu $a0, $s2, $zero
/* 0F6590 802D1BE0 AE820000 */  sw    $v0, ($s4)
/* 0F6594 802D1BE4 8E020000 */  lw    $v0, ($s0)
/* 0F6598 802D1BE8 3C01C334 */  lui   $at, 0xc334
/* 0F659C 802D1BEC 44810000 */  mtc1  $at, $f0
/* 0F65A0 802D1BF0 A440008E */  sh    $zero, 0x8e($v0)
/* 0F65A4 802D1BF4 C6220000 */  lwc1  $f2, ($s1)
/* 0F65A8 802D1BF8 4600103C */  c.lt.s $f2, $f0
/* 0F65AC 802D1BFC 00000000 */  nop   
/* 0F65B0 802D1C00 45000007 */  bc1f  .L802D1C20
/* 0F65B4 802D1C04 00000000 */   nop   
/* 0F65B8 802D1C08 3C0143B4 */  lui   $at, 0x43b4
/* 0F65BC 802D1C0C 44810000 */  mtc1  $at, $f0
/* 0F65C0 802D1C10 00000000 */  nop   
/* 0F65C4 802D1C14 46001000 */  add.s $f0, $f2, $f0
/* 0F65C8 802D1C18 E6200000 */  swc1  $f0, ($s1)
/* 0F65CC 802D1C1C C6220000 */  lwc1  $f2, ($s1)
.L802D1C20:
/* 0F65D0 802D1C20 3C014334 */  lui   $at, 0x4334
/* 0F65D4 802D1C24 44810000 */  mtc1  $at, $f0
/* 0F65D8 802D1C28 00000000 */  nop   
/* 0F65DC 802D1C2C 4602003C */  c.lt.s $f0, $f2
/* 0F65E0 802D1C30 00000000 */  nop   
/* 0F65E4 802D1C34 45000006 */  bc1f  .L802D1C50
/* 0F65E8 802D1C38 00000000 */   nop   
/* 0F65EC 802D1C3C 3C0143B4 */  lui   $at, 0x43b4
/* 0F65F0 802D1C40 44810000 */  mtc1  $at, $f0
/* 0F65F4 802D1C44 00000000 */  nop   
/* 0F65F8 802D1C48 46001001 */  sub.s $f0, $f2, $f0
/* 0F65FC 802D1C4C E6200000 */  swc1  $f0, ($s1)
.L802D1C50:
/* 0F6600 802D1C50 8E820000 */  lw    $v0, ($s4)
/* 0F6604 802D1C54 1C40000E */  bgtz  $v0, .L802D1C90
/* 0F6608 802D1C58 00000000 */   nop   
/* 0F660C 802D1C5C 3C10802E */  lui   $s0, 0x802e
/* 0F6610 802D1C60 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F6614 802D1C64 8E020000 */  lw    $v0, ($s0)
/* 0F6618 802D1C68 C6200000 */  lwc1  $f0, ($s1)
/* 0F661C 802D1C6C C44C000C */  lwc1  $f12, 0xc($v0)
/* 0F6620 802D1C70 46006300 */  add.s $f12, $f12, $f0
/* 0F6624 802D1C74 0C00A6C9 */  jal   clamp_angle
/* 0F6628 802D1C78 E44C000C */   swc1  $f12, 0xc($v0)
/* 0F662C 802D1C7C 8E030000 */  lw    $v1, ($s0)
/* 0F6630 802D1C80 24020002 */  addiu $v0, $zero, 2
/* 0F6634 802D1C84 E460000C */  swc1  $f0, 0xc($v1)
/* 0F6638 802D1C88 080B4740 */  j     func_802D1D00
/* 0F663C 802D1C8C E6C00080 */   swc1  $f0, 0x80($s6)

.L802D1C90:
/* 0F6640 802D1C90 3C10802E */  lui   $s0, 0x802e
/* 0F6644 802D1C94 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F6648 802D1C98 8E030000 */  lw    $v1, ($s0)
/* 0F664C 802D1C9C 9462008E */  lhu   $v0, 0x8e($v1)
/* 0F6650 802D1CA0 24420001 */  addiu $v0, $v0, 1
/* 0F6654 802D1CA4 A462008E */  sh    $v0, 0x8e($v1)
/* 0F6658 802D1CA8 00021400 */  sll   $v0, $v0, 0x10
/* 0F665C 802D1CAC 00021403 */  sra   $v0, $v0, 0x10
/* 0F6660 802D1CB0 C6200000 */  lwc1  $f0, ($s1)
/* 0F6664 802D1CB4 44821000 */  mtc1  $v0, $f2
/* 0F6668 802D1CB8 00000000 */  nop   
/* 0F666C 802D1CBC 468010A0 */  cvt.s.w $f2, $f2
/* 0F6670 802D1CC0 46020002 */  mul.s $f0, $f0, $f2
/* 0F6674 802D1CC4 00000000 */  nop   
/* 0F6678 802D1CC8 C6AC0000 */  lwc1  $f12, ($s5)
/* 0F667C 802D1CCC C6820000 */  lwc1  $f2, ($s4)
/* 0F6680 802D1CD0 468010A0 */  cvt.s.w $f2, $f2
/* 0F6684 802D1CD4 46020003 */  div.s $f0, $f0, $f2
/* 0F6688 802D1CD8 46006300 */  add.s $f12, $f12, $f0
/* 0F668C 802D1CDC 0C00A6C9 */  jal   clamp_angle
/* 0F6690 802D1CE0 E46C000C */   swc1  $f12, 0xc($v1)
/* 0F6694 802D1CE4 8E020000 */  lw    $v0, ($s0)
/* 0F6698 802D1CE8 E440000C */  swc1  $f0, 0xc($v0)
/* 0F669C 802D1CEC E6C00080 */  swc1  $f0, 0x80($s6)
/* 0F66A0 802D1CF0 8442008E */  lh    $v0, 0x8e($v0)
/* 0F66A4 802D1CF4 8E830000 */  lw    $v1, ($s4)
/* 0F66A8 802D1CF8 0043102A */  slt   $v0, $v0, $v1
/* 0F66AC 802D1CFC 38420001 */  xori  $v0, $v0, 1
func_802D1D00:
.L802D1D00:
/* 0F66B0 802D1D00 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0F66B4 802D1D04 8FB60028 */  lw    $s6, 0x28($sp)
/* 0F66B8 802D1D08 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F66BC 802D1D0C 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F66C0 802D1D10 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F66C4 802D1D14 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F66C8 802D1D18 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F66CC 802D1D1C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F66D0 802D1D20 03E00008 */  jr    $ra
/* 0F66D4 802D1D24 27BD0030 */   addiu $sp, $sp, 0x30

GetPlayerTargetYaw:
/* 0F66D8 802D1D28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F66DC 802D1D2C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F66E0 802D1D30 8C82000C */  lw    $v0, 0xc($a0)
/* 0F66E4 802D1D34 3C018011 */  lui   $at, 0x8011
/* 0F66E8 802D1D38 C420F048 */  lwc1  $f0, -0xfb8($at)
/* 0F66EC 802D1D3C 8C450000 */  lw    $a1, ($v0)
/* 0F66F0 802D1D40 4600008D */  trunc.w.s $f2, $f0
/* 0F66F4 802D1D44 44061000 */  mfc1  $a2, $f2
/* 0F66F8 802D1D48 0C0B2026 */  jal   set_variable
/* 0F66FC 802D1D4C 00000000 */   nop   
/* 0F6700 802D1D50 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F6704 802D1D54 24020002 */  addiu $v0, $zero, 2
/* 0F6708 802D1D58 03E00008 */  jr    $ra
/* 0F670C 802D1D5C 27BD0018 */   addiu $sp, $sp, 0x18

SetPlayerFlagBits:
/* 0F6710 802D1D60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F6714 802D1D64 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F6718 802D1D68 3C118011 */  lui   $s1, 0x8011
/* 0F671C 802D1D6C 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 0F6720 802D1D70 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F6724 802D1D74 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F6728 802D1D78 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F672C 802D1D7C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F6730 802D1D80 8C450004 */  lw    $a1, 4($v0)
/* 0F6734 802D1D84 8C500000 */  lw    $s0, ($v0)
/* 0F6738 802D1D88 0C0B1EAF */  jal   get_variable
/* 0F673C 802D1D8C 0220902D */   daddu $s2, $s1, $zero
/* 0F6740 802D1D90 10400005 */  beqz  $v0, .L802D1DA8
/* 0F6744 802D1D94 00101827 */   nor   $v1, $zero, $s0
/* 0F6748 802D1D98 8E220000 */  lw    $v0, ($s1)
/* 0F674C 802D1D9C 00501025 */  or    $v0, $v0, $s0
/* 0F6750 802D1DA0 080B476D */  j     func_802D1DB4
/* 0F6754 802D1DA4 AE220000 */   sw    $v0, ($s1)

.L802D1DA8:
/* 0F6758 802D1DA8 8E420000 */  lw    $v0, ($s2)
/* 0F675C 802D1DAC 00431024 */  and   $v0, $v0, $v1
/* 0F6760 802D1DB0 AE420000 */  sw    $v0, ($s2)
func_802D1DB4:
/* 0F6764 802D1DB4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F6768 802D1DB8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F676C 802D1DBC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F6770 802D1DC0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F6774 802D1DC4 24020002 */  addiu $v0, $zero, 2
/* 0F6778 802D1DC8 03E00008 */  jr    $ra
/* 0F677C 802D1DCC 27BD0020 */   addiu $sp, $sp, 0x20

GetPlayerActionState:
/* 0F6780 802D1DD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F6784 802D1DD4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F6788 802D1DD8 8C82000C */  lw    $v0, 0xc($a0)
/* 0F678C 802D1DDC 3C068011 */  lui   $a2, 0x8011
/* 0F6790 802D1DE0 80C6F07C */  lb    $a2, -0xf84($a2)
/* 0F6794 802D1DE4 0C0B2026 */  jal   set_variable
/* 0F6798 802D1DE8 8C450000 */   lw    $a1, ($v0)
/* 0F679C 802D1DEC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F67A0 802D1DF0 24020002 */  addiu $v0, $zero, 2
/* 0F67A4 802D1DF4 03E00008 */  jr    $ra
/* 0F67A8 802D1DF8 27BD0018 */   addiu $sp, $sp, 0x18

GetPlayerPos:
/* 0F67AC 802D1DFC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F67B0 802D1E00 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F67B4 802D1E04 0080802D */  daddu $s0, $a0, $zero
/* 0F67B8 802D1E08 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F67BC 802D1E0C 3C118011 */  lui   $s1, 0x8011
/* 0F67C0 802D1E10 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 0F67C4 802D1E14 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F67C8 802D1E18 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F67CC 802D1E1C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F67D0 802D1E20 8E02000C */  lw    $v0, 0xc($s0)
/* 0F67D4 802D1E24 C6200028 */  lwc1  $f0, 0x28($s1)
/* 0F67D8 802D1E28 8C450000 */  lw    $a1, ($v0)
/* 0F67DC 802D1E2C 24420004 */  addiu $v0, $v0, 4
/* 0F67E0 802D1E30 4600008D */  trunc.w.s $f2, $f0
/* 0F67E4 802D1E34 44061000 */  mfc1  $a2, $f2
/* 0F67E8 802D1E38 8C520000 */  lw    $s2, ($v0)
/* 0F67EC 802D1E3C 0C0B2026 */  jal   set_variable
/* 0F67F0 802D1E40 8C530004 */   lw    $s3, 4($v0)
/* 0F67F4 802D1E44 0200202D */  daddu $a0, $s0, $zero
/* 0F67F8 802D1E48 C620002C */  lwc1  $f0, 0x2c($s1)
/* 0F67FC 802D1E4C 4600008D */  trunc.w.s $f2, $f0
/* 0F6800 802D1E50 44061000 */  mfc1  $a2, $f2
/* 0F6804 802D1E54 0C0B2026 */  jal   set_variable
/* 0F6808 802D1E58 0240282D */   daddu $a1, $s2, $zero
/* 0F680C 802D1E5C 0200202D */  daddu $a0, $s0, $zero
/* 0F6810 802D1E60 C6200030 */  lwc1  $f0, 0x30($s1)
/* 0F6814 802D1E64 4600008D */  trunc.w.s $f2, $f0
/* 0F6818 802D1E68 44061000 */  mfc1  $a2, $f2
/* 0F681C 802D1E6C 0C0B2026 */  jal   set_variable
/* 0F6820 802D1E70 0260282D */   daddu $a1, $s3, $zero
/* 0F6824 802D1E74 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F6828 802D1E78 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F682C 802D1E7C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F6830 802D1E80 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F6834 802D1E84 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F6838 802D1E88 24020002 */  addiu $v0, $zero, 2
/* 0F683C 802D1E8C 03E00008 */  jr    $ra
/* 0F6840 802D1E90 27BD0028 */   addiu $sp, $sp, 0x28

GetPlayerAnimation:
/* 0F6844 802D1E94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F6848 802D1E98 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F684C 802D1E9C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F6850 802D1EA0 3C068011 */  lui   $a2, 0x8011
/* 0F6854 802D1EA4 8CC6F080 */  lw    $a2, -0xf80($a2)
/* 0F6858 802D1EA8 0C0B2026 */  jal   set_variable
/* 0F685C 802D1EAC 8C450000 */   lw    $a1, ($v0)
/* 0F6860 802D1EB0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F6864 802D1EB4 24020002 */  addiu $v0, $zero, 2
/* 0F6868 802D1EB8 03E00008 */  jr    $ra
/* 0F686C 802D1EBC 27BD0018 */   addiu $sp, $sp, 0x18

FullyRestoreHPandFP:
/* 0F6870 802D1EC0 3C028011 */  lui   $v0, 0x8011
/* 0F6874 802D1EC4 2442F290 */  addiu $v0, $v0, -0xd70
/* 0F6878 802D1EC8 90430003 */  lbu   $v1, 3($v0)
/* 0F687C 802D1ECC 90440006 */  lbu   $a0, 6($v0)
/* 0F6880 802D1ED0 A0430002 */  sb    $v1, 2($v0)
/* 0F6884 802D1ED4 A0440005 */  sb    $a0, 5($v0)
/* 0F6888 802D1ED8 03E00008 */  jr    $ra
/* 0F688C 802D1EDC 24020002 */   addiu $v0, $zero, 2

FullyRestoreSP:
/* 0F6890 802D1EE0 3C038011 */  lui   $v1, 0x8011
/* 0F6894 802D1EE4 2463F290 */  addiu $v1, $v1, -0xd70
/* 0F6898 802D1EE8 8062028E */  lb    $v0, 0x28e($v1)
/* 0F689C 802D1EEC 00021200 */  sll   $v0, $v0, 8
/* 0F68A0 802D1EF0 A4620290 */  sh    $v0, 0x290($v1)
/* 0F68A4 802D1EF4 03E00008 */  jr    $ra
/* 0F68A8 802D1EF8 24020002 */   addiu $v0, $zero, 2

EnablePartner:
/* 0F68AC 802D1EFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F68B0 802D1F00 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F68B4 802D1F04 8C82000C */  lw    $v0, 0xc($a0)
/* 0F68B8 802D1F08 0C0B1EAF */  jal   get_variable
/* 0F68BC 802D1F0C 8C450000 */   lw    $a1, ($v0)
/* 0F68C0 802D1F10 2443FFFF */  addiu $v1, $v0, -1
/* 0F68C4 802D1F14 000318C0 */  sll   $v1, $v1, 3
/* 0F68C8 802D1F18 24040001 */  addiu $a0, $zero, 1
/* 0F68CC 802D1F1C 3C018011 */  lui   $at, 0x8011
/* 0F68D0 802D1F20 00230821 */  addu  $at, $at, $v1
/* 0F68D4 802D1F24 A024F2A4 */  sb    $a0, -0xd5c($at)
/* 0F68D8 802D1F28 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F68DC 802D1F2C 24020002 */  addiu $v0, $zero, 2
/* 0F68E0 802D1F30 03E00008 */  jr    $ra
/* 0F68E4 802D1F34 27BD0018 */   addiu $sp, $sp, 0x18

DisablePartner:
/* 0F68E8 802D1F38 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F68EC 802D1F3C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F68F0 802D1F40 8C82000C */  lw    $v0, 0xc($a0)
/* 0F68F4 802D1F44 0C0B1EAF */  jal   get_variable
/* 0F68F8 802D1F48 8C450000 */   lw    $a1, ($v0)
/* 0F68FC 802D1F4C 2443FFFF */  addiu $v1, $v0, -1
/* 0F6900 802D1F50 000318C0 */  sll   $v1, $v1, 3
/* 0F6904 802D1F54 3C018011 */  lui   $at, 0x8011
/* 0F6908 802D1F58 00230821 */  addu  $at, $at, $v1
/* 0F690C 802D1F5C A020F2A4 */  sb    $zero, -0xd5c($at)
/* 0F6910 802D1F60 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F6914 802D1F64 24020002 */  addiu $v0, $zero, 2
/* 0F6918 802D1F68 03E00008 */  jr    $ra
/* 0F691C 802D1F6C 27BD0018 */   addiu $sp, $sp, 0x18

ForceExitHeading:
/* 0F6920 802D1F70 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0F6924 802D1F74 AFB20020 */  sw    $s2, 0x20($sp)
/* 0F6928 802D1F78 0080902D */  daddu $s2, $a0, $zero
/* 0F692C 802D1F7C AFBF0028 */  sw    $ra, 0x28($sp)
/* 0F6930 802D1F80 AFB30024 */  sw    $s3, 0x24($sp)
/* 0F6934 802D1F84 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F6938 802D1F88 AFB00018 */  sw    $s0, 0x18($sp)
/* 0F693C 802D1F8C F7B60038 */  sdc1  $f22, 0x38($sp)
/* 0F6940 802D1F90 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0F6944 802D1F94 0C016AFA */  jal   get_current_map_header
/* 0F6948 802D1F98 8E50000C */   lw    $s0, 0xc($s2)
/* 0F694C 802D1F9C 0240202D */  daddu $a0, $s2, $zero
/* 0F6950 802D1FA0 0040882D */  daddu $s1, $v0, $zero
/* 0F6954 802D1FA4 8E050000 */  lw    $a1, ($s0)
/* 0F6958 802D1FA8 0C0B1EAF */  jal   get_variable
/* 0F695C 802D1FAC 26100004 */   addiu $s0, $s0, 4
/* 0F6960 802D1FB0 0240202D */  daddu $a0, $s2, $zero
/* 0F6964 802D1FB4 8E050000 */  lw    $a1, ($s0)
/* 0F6968 802D1FB8 0C0B1EAF */  jal   get_variable
/* 0F696C 802D1FBC 0040982D */   daddu $s3, $v0, $zero
/* 0F6970 802D1FC0 3C108007 */  lui   $s0, 0x8007
/* 0F6974 802D1FC4 2610419C */  addiu $s0, $s0, 0x419c
/* 0F6978 802D1FC8 8E050000 */  lw    $a1, ($s0)
/* 0F697C 802D1FCC 84A3008E */  lh    $v1, 0x8e($a1)
/* 0F6980 802D1FD0 8E240014 */  lw    $a0, 0x14($s1)
/* 0F6984 802D1FD4 00031900 */  sll   $v1, $v1, 4
/* 0F6988 802D1FD8 00641821 */  addu  $v1, $v1, $a0
/* 0F698C 802D1FDC C4600000 */  lwc1  $f0, ($v1)
/* 0F6990 802D1FE0 4600020D */  trunc.w.s $f8, $f0
/* 0F6994 802D1FE4 44074000 */  mfc1  $a3, $f8
/* 0F6998 802D1FE8 00000000 */  nop   
/* 0F699C 802D1FEC AE470088 */  sw    $a3, 0x88($s2)
/* 0F69A0 802D1FF0 84A3008E */  lh    $v1, 0x8e($a1)
/* 0F69A4 802D1FF4 8E240014 */  lw    $a0, 0x14($s1)
/* 0F69A8 802D1FF8 00031900 */  sll   $v1, $v1, 4
/* 0F69AC 802D1FFC 00641821 */  addu  $v1, $v1, $a0
/* 0F69B0 802D2000 C4600004 */  lwc1  $f0, 4($v1)
/* 0F69B4 802D2004 4600020D */  trunc.w.s $f8, $f0
/* 0F69B8 802D2008 E648008C */  swc1  $f8, 0x8c($s2)
/* 0F69BC 802D200C 84A3008E */  lh    $v1, 0x8e($a1)
/* 0F69C0 802D2010 8E240014 */  lw    $a0, 0x14($s1)
/* 0F69C4 802D2014 00031900 */  sll   $v1, $v1, 4
/* 0F69C8 802D2018 00641821 */  addu  $v1, $v1, $a0
/* 0F69CC 802D201C C4600008 */  lwc1  $f0, 8($v1)
/* 0F69D0 802D2020 3C014334 */  lui   $at, 0x4334
/* 0F69D4 802D2024 44816000 */  mtc1  $at, $f12
/* 0F69D8 802D2028 4600020D */  trunc.w.s $f8, $f0
/* 0F69DC 802D202C 44064000 */  mfc1  $a2, $f8
/* 0F69E0 802D2030 00000000 */  nop   
/* 0F69E4 802D2034 AE460090 */  sw    $a2, 0x90($s2)
/* 0F69E8 802D2038 84A3008E */  lh    $v1, 0x8e($a1)
/* 0F69EC 802D203C 8E240014 */  lw    $a0, 0x14($s1)
/* 0F69F0 802D2040 00031900 */  sll   $v1, $v1, 4
/* 0F69F4 802D2044 00641821 */  addu  $v1, $v1, $a0
/* 0F69F8 802D2048 C460000C */  lwc1  $f0, 0xc($v1)
/* 0F69FC 802D204C 4487A000 */  mtc1  $a3, $f20
/* 0F6A00 802D2050 00000000 */  nop   
/* 0F6A04 802D2054 4680A520 */  cvt.s.w $f20, $f20
/* 0F6A08 802D2058 460C0300 */  add.s $f12, $f0, $f12
/* 0F6A0C 802D205C 4486B000 */  mtc1  $a2, $f22
/* 0F6A10 802D2060 00000000 */  nop   
/* 0F6A14 802D2064 4680B5A0 */  cvt.s.w $f22, $f22
/* 0F6A18 802D2068 0C00A6C9 */  jal   clamp_angle
/* 0F6A1C 802D206C 0040882D */   daddu $s1, $v0, $zero
/* 0F6A20 802D2070 46000306 */  mov.s $f12, $f0
/* 0F6A24 802D2074 27A50010 */  addiu $a1, $sp, 0x10
/* 0F6A28 802D2078 0C00A88D */  jal   sin_cos_deg
/* 0F6A2C 802D207C 27A60014 */   addiu $a2, $sp, 0x14
/* 0F6A30 802D2080 C7A40010 */  lwc1  $f4, 0x10($sp)
/* 0F6A34 802D2084 44937000 */  mtc1  $s3, $f14
/* 0F6A38 802D2088 00000000 */  nop   
/* 0F6A3C 802D208C 468073A0 */  cvt.s.w $f14, $f14
/* 0F6A40 802D2090 46047302 */  mul.s $f12, $f14, $f4
/* 0F6A44 802D2094 00000000 */  nop   
/* 0F6A48 802D2098 8E020000 */  lw    $v0, ($s0)
/* 0F6A4C 802D209C 3C013E99 */  lui   $at, 0x3e99
/* 0F6A50 802D20A0 3421999A */  ori   $at, $at, 0x999a
/* 0F6A54 802D20A4 44810000 */  mtc1  $at, $f0
/* 0F6A58 802D20A8 C4420094 */  lwc1  $f2, 0x94($v0)
/* 0F6A5C 802D20AC 46001082 */  mul.s $f2, $f2, $f0
/* 0F6A60 802D20B0 00000000 */  nop   
/* 0F6A64 802D20B4 C7A00014 */  lwc1  $f0, 0x14($sp)
/* 0F6A68 802D20B8 46007382 */  mul.s $f14, $f14, $f0
/* 0F6A6C 802D20BC 00000000 */  nop   
/* 0F6A70 802D20C0 46001182 */  mul.s $f6, $f2, $f0
/* 0F6A74 802D20C4 00000000 */  nop   
/* 0F6A78 802D20C8 46041082 */  mul.s $f2, $f2, $f4
/* 0F6A7C 802D20CC 00000000 */  nop   
/* 0F6A80 802D20D0 460CA300 */  add.s $f12, $f20, $f12
/* 0F6A84 802D20D4 460EB381 */  sub.s $f14, $f22, $f14
/* 0F6A88 802D20D8 46066301 */  sub.s $f12, $f12, $f6
/* 0F6A8C 802D20DC 4406A000 */  mfc1  $a2, $f20
/* 0F6A90 802D20E0 4407B000 */  mfc1  $a3, $f22
/* 0F6A94 802D20E4 46027381 */  sub.s $f14, $f14, $f2
/* 0F6A98 802D20E8 3C108011 */  lui   $s0, 0x8011
/* 0F6A9C 802D20EC 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 0F6AA0 802D20F0 E60C0028 */  swc1  $f12, 0x28($s0)
/* 0F6AA4 802D20F4 0C00A7B5 */  jal   dist2D
/* 0F6AA8 802D20F8 E60E0030 */   swc1  $f14, 0x30($s0)
/* 0F6AAC 802D20FC 44911000 */  mtc1  $s1, $f2
/* 0F6AB0 802D2100 00000000 */  nop   
/* 0F6AB4 802D2104 468010A0 */  cvt.s.w $f2, $f2
/* 0F6AB8 802D2108 46020003 */  div.s $f0, $f0, $f2
/* 0F6ABC 802D210C E6400098 */  swc1  $f0, 0x98($s2)
/* 0F6AC0 802D2110 8E030000 */  lw    $v1, ($s0)
/* 0F6AC4 802D2114 3C040400 */  lui   $a0, 0x400
/* 0F6AC8 802D2118 00641825 */  or    $v1, $v1, $a0
/* 0F6ACC 802D211C AE030000 */  sw    $v1, ($s0)
/* 0F6AD0 802D2120 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0F6AD4 802D2124 8FB30024 */  lw    $s3, 0x24($sp)
/* 0F6AD8 802D2128 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F6ADC 802D212C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F6AE0 802D2130 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F6AE4 802D2134 D7B60038 */  ldc1  $f22, 0x38($sp)
/* 0F6AE8 802D2138 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0F6AEC 802D213C 24020002 */  addiu $v0, $zero, 2
/* 0F6AF0 802D2140 03E00008 */  jr    $ra
/* 0F6AF4 802D2144 27BD0040 */   addiu $sp, $sp, 0x40

/* 0F6AF8 802D2148 3C04FBFF */  lui   $a0, 0xfbff
/* 0F6AFC 802D214C 3C038011 */  lui   $v1, 0x8011
/* 0F6B00 802D2150 2463EFC8 */  addiu $v1, $v1, -0x1038
/* 0F6B04 802D2154 8C620000 */  lw    $v0, ($v1)
/* 0F6B08 802D2158 3484FFFF */  ori   $a0, $a0, 0xffff
/* 0F6B0C 802D215C 00441024 */  and   $v0, $v0, $a0
/* 0F6B10 802D2160 AC620000 */  sw    $v0, ($v1)
/* 0F6B14 802D2164 03E00008 */  jr    $ra
/* 0F6B18 802D2168 24020002 */   addiu $v0, $zero, 2

UseExitHeading:
/* 0F6B1C 802D216C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0F6B20 802D2170 AFB30024 */  sw    $s3, 0x24($sp)
/* 0F6B24 802D2174 0080982D */  daddu $s3, $a0, $zero
/* 0F6B28 802D2178 AFBF0030 */  sw    $ra, 0x30($sp)
/* 0F6B2C 802D217C AFB5002C */  sw    $s5, 0x2c($sp)
/* 0F6B30 802D2180 AFB40028 */  sw    $s4, 0x28($sp)
/* 0F6B34 802D2184 AFB20020 */  sw    $s2, 0x20($sp)
/* 0F6B38 802D2188 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0F6B3C 802D218C AFB00018 */  sw    $s0, 0x18($sp)
/* 0F6B40 802D2190 F7BE0060 */  sdc1  $f30, 0x60($sp)
/* 0F6B44 802D2194 F7BC0058 */  sdc1  $f28, 0x58($sp)
/* 0F6B48 802D2198 F7BA0050 */  sdc1  $f26, 0x50($sp)
/* 0F6B4C 802D219C F7B80048 */  sdc1  $f24, 0x48($sp)
/* 0F6B50 802D21A0 F7B60040 */  sdc1  $f22, 0x40($sp)
/* 0F6B54 802D21A4 F7B40038 */  sdc1  $f20, 0x38($sp)
/* 0F6B58 802D21A8 8E70000C */  lw    $s0, 0xc($s3)
/* 0F6B5C 802D21AC 0C016AFA */  jal   get_current_map_header
/* 0F6B60 802D21B0 26750098 */   addiu $s5, $s3, 0x98
/* 0F6B64 802D21B4 3C128011 */  lui   $s2, 0x8011
/* 0F6B68 802D21B8 2652EFC8 */  addiu $s2, $s2, -0x1038
/* 0F6B6C 802D21BC 0C0389B1 */  jal   func_800E26C4
/* 0F6B70 802D21C0 0040A02D */   daddu $s4, $v0, $zero
/* 0F6B74 802D21C4 1040007D */  beqz  $v0, .L802D23BC
/* 0F6B78 802D21C8 0000102D */   daddu $v0, $zero, $zero
/* 0F6B7C 802D21CC 8E050000 */  lw    $a1, ($s0)
/* 0F6B80 802D21D0 26100004 */  addiu $s0, $s0, 4
/* 0F6B84 802D21D4 0C0B1EAF */  jal   get_variable
/* 0F6B88 802D21D8 0260202D */   daddu $a0, $s3, $zero
/* 0F6B8C 802D21DC 0040882D */  daddu $s1, $v0, $zero
/* 0F6B90 802D21E0 8E050000 */  lw    $a1, ($s0)
/* 0F6B94 802D21E4 0C0B1EAF */  jal   get_variable
/* 0F6B98 802D21E8 0260202D */   daddu $a0, $s3, $zero
/* 0F6B9C 802D21EC 0040802D */  daddu $s0, $v0, $zero
/* 0F6BA0 802D21F0 00101100 */  sll   $v0, $s0, 4
/* 0F6BA4 802D21F4 4491C000 */  mtc1  $s1, $f24
/* 0F6BA8 802D21F8 00000000 */  nop   
/* 0F6BAC 802D21FC 4680C620 */  cvt.s.w $f24, $f24
/* 0F6BB0 802D2200 8E460028 */  lw    $a2, 0x28($s2)
/* 0F6BB4 802D2204 8E830014 */  lw    $v1, 0x14($s4)
/* 0F6BB8 802D2208 3C014120 */  lui   $at, 0x4120
/* 0F6BBC 802D220C 44810000 */  mtc1  $at, $f0
/* 0F6BC0 802D2210 3C013F00 */  lui   $at, 0x3f00
/* 0F6BC4 802D2214 4481D000 */  mtc1  $at, $f26
/* 0F6BC8 802D2218 8E470030 */  lw    $a3, 0x30($s2)
/* 0F6BCC 802D221C 4600C580 */  add.s $f22, $f24, $f0
/* 0F6BD0 802D2220 00431021 */  addu  $v0, $v0, $v1
/* 0F6BD4 802D2224 C45C0000 */  lwc1  $f28, ($v0)
/* 0F6BD8 802D2228 461AB502 */  mul.s $f20, $f22, $f26
/* 0F6BDC 802D222C 00000000 */  nop   
/* 0F6BE0 802D2230 C45E0008 */  lwc1  $f30, 8($v0)
/* 0F6BE4 802D2234 4600E306 */  mov.s $f12, $f28
/* 0F6BE8 802D2238 0C00A7B5 */  jal   dist2D
/* 0F6BEC 802D223C 4600F386 */   mov.s $f14, $f30
/* 0F6BF0 802D2240 46140081 */  sub.s $f2, $f0, $f20
/* 0F6BF4 802D2244 44800000 */  mtc1  $zero, $f0
/* 0F6BF8 802D2248 00000000 */  nop   
/* 0F6BFC 802D224C 4602003C */  c.lt.s $f0, $f2
/* 0F6C00 802D2250 00000000 */  nop   
/* 0F6C04 802D2254 4502000B */  bc1fl .L802D2284
/* 0F6C08 802D2258 00108100 */   sll   $s0, $s0, 4
/* 0F6C0C 802D225C 4602B03C */  c.lt.s $f22, $f2
/* 0F6C10 802D2260 00000000 */  nop   
/* 0F6C14 802D2264 45030001 */  bc1tl .L802D226C
/* 0F6C18 802D2268 4600B086 */   mov.s $f2, $f22
.L802D226C:
/* 0F6C1C 802D226C 461A1002 */  mul.s $f0, $f2, $f26
/* 0F6C20 802D2270 00000000 */  nop   
/* 0F6C24 802D2274 4600C001 */  sub.s $f0, $f24, $f0
/* 0F6C28 802D2278 4600040D */  trunc.w.s $f16, $f0
/* 0F6C2C 802D227C 44118000 */  mfc1  $s1, $f16
/* 0F6C30 802D2280 00108100 */  sll   $s0, $s0, 4
.L802D2284:
/* 0F6C34 802D2284 8E820014 */  lw    $v0, 0x14($s4)
/* 0F6C38 802D2288 3C014334 */  lui   $at, 0x4334
/* 0F6C3C 802D228C 44816000 */  mtc1  $at, $f12
/* 0F6C40 802D2290 02021021 */  addu  $v0, $s0, $v0
/* 0F6C44 802D2294 C440000C */  lwc1  $f0, 0xc($v0)
/* 0F6C48 802D2298 0C00A6C9 */  jal   clamp_angle
/* 0F6C4C 802D229C 460C0300 */   add.s $f12, $f0, $f12
/* 0F6C50 802D22A0 46000306 */  mov.s $f12, $f0
/* 0F6C54 802D22A4 27A50010 */  addiu $a1, $sp, 0x10
/* 0F6C58 802D22A8 0C00A88D */  jal   sin_cos_deg
/* 0F6C5C 802D22AC 27A60014 */   addiu $a2, $sp, 0x14
/* 0F6C60 802D22B0 C7AA0010 */  lwc1  $f10, 0x10($sp)
/* 0F6C64 802D22B4 44913000 */  mtc1  $s1, $f6
/* 0F6C68 802D22B8 00000000 */  nop   
/* 0F6C6C 802D22BC 468031A0 */  cvt.s.w $f6, $f6
/* 0F6C70 802D22C0 460A3302 */  mul.s $f12, $f6, $f10
/* 0F6C74 802D22C4 00000000 */  nop   
/* 0F6C78 802D22C8 C7A80014 */  lwc1  $f8, 0x14($sp)
/* 0F6C7C 802D22CC 46083182 */  mul.s $f6, $f6, $f8
/* 0F6C80 802D22D0 00000000 */  nop   
/* 0F6C84 802D22D4 C6420028 */  lwc1  $f2, 0x28($s2)
/* 0F6C88 802D22D8 461C1081 */  sub.s $f2, $f2, $f28
/* 0F6C8C 802D22DC 46024082 */  mul.s $f2, $f8, $f2
/* 0F6C90 802D22E0 00000000 */  nop   
/* 0F6C94 802D22E4 C6400030 */  lwc1  $f0, 0x30($s2)
/* 0F6C98 802D22E8 4600F001 */  sub.s $f0, $f30, $f0
/* 0F6C9C 802D22EC 46005002 */  mul.s $f0, $f10, $f0
/* 0F6CA0 802D22F0 00000000 */  nop   
/* 0F6CA4 802D22F4 46001081 */  sub.s $f2, $f2, $f0
/* 0F6CA8 802D22F8 3C013E99 */  lui   $at, 0x3e99
/* 0F6CAC 802D22FC 3421999A */  ori   $at, $at, 0x999a
/* 0F6CB0 802D2300 44812000 */  mtc1  $at, $f4
/* 0F6CB4 802D2304 00000000 */  nop   
/* 0F6CB8 802D2308 46041102 */  mul.s $f4, $f2, $f4
/* 0F6CBC 802D230C 00000000 */  nop   
/* 0F6CC0 802D2310 3C028007 */  lui   $v0, 0x8007
/* 0F6CC4 802D2314 8C42419C */  lw    $v0, 0x419c($v0)
/* 0F6CC8 802D2318 46082382 */  mul.s $f14, $f4, $f8
/* 0F6CCC 802D231C 00000000 */  nop   
/* 0F6CD0 802D2320 E4420094 */  swc1  $f2, 0x94($v0)
/* 0F6CD4 802D2324 C6400028 */  lwc1  $f0, 0x28($s2)
/* 0F6CD8 802D2328 460C0000 */  add.s $f0, $f0, $f12
/* 0F6CDC 802D232C 460E0001 */  sub.s $f0, $f0, $f14
/* 0F6CE0 802D2330 460A2102 */  mul.s $f4, $f4, $f10
/* 0F6CE4 802D2334 00000000 */  nop   
/* 0F6CE8 802D2338 4600040D */  trunc.w.s $f16, $f0
/* 0F6CEC 802D233C E6700088 */  swc1  $f16, 0x88($s3)
/* 0F6CF0 802D2340 C6400030 */  lwc1  $f0, 0x30($s2)
/* 0F6CF4 802D2344 46060001 */  sub.s $f0, $f0, $f6
/* 0F6CF8 802D2348 3C038888 */  lui   $v1, 0x8888
/* 0F6CFC 802D234C 46040001 */  sub.s $f0, $f0, $f4
/* 0F6D00 802D2350 34638889 */  ori   $v1, $v1, 0x8889
/* 0F6D04 802D2354 001127C3 */  sra   $a0, $s1, 0x1f
/* 0F6D08 802D2358 4600040D */  trunc.w.s $f16, $f0
/* 0F6D0C 802D235C E6700090 */  swc1  $f16, 0x90($s3)
/* 0F6D10 802D2360 8E820014 */  lw    $v0, 0x14($s4)
/* 0F6D14 802D2364 02230018 */  mult  $s1, $v1
/* 0F6D18 802D2368 02028021 */  addu  $s0, $s0, $v0
/* 0F6D1C 802D236C C6000004 */  lwc1  $f0, 4($s0)
/* 0F6D20 802D2370 24020002 */  addiu $v0, $zero, 2
/* 0F6D24 802D2374 4600040D */  trunc.w.s $f16, $f0
/* 0F6D28 802D2378 E670008C */  swc1  $f16, 0x8c($s3)
/* 0F6D2C 802D237C 00004010 */  mfhi  $t0
/* 0F6D30 802D2380 01111821 */  addu  $v1, $t0, $s1
/* 0F6D34 802D2384 000318C3 */  sra   $v1, $v1, 3
/* 0F6D38 802D2388 00641823 */  subu  $v1, $v1, $a0
/* 0F6D3C 802D238C 44830000 */  mtc1  $v1, $f0
/* 0F6D40 802D2390 00000000 */  nop   
/* 0F6D44 802D2394 46800020 */  cvt.s.w $f0, $f0
/* 0F6D48 802D2398 E6A00000 */  swc1  $f0, ($s5)
/* 0F6D4C 802D239C 8E430004 */  lw    $v1, 4($s2)
/* 0F6D50 802D23A0 3C040010 */  lui   $a0, 0x10
/* 0F6D54 802D23A4 00641825 */  or    $v1, $v1, $a0
/* 0F6D58 802D23A8 AE430004 */  sw    $v1, 4($s2)
/* 0F6D5C 802D23AC 8E430000 */  lw    $v1, ($s2)
/* 0F6D60 802D23B0 3C040400 */  lui   $a0, 0x400
/* 0F6D64 802D23B4 00641825 */  or    $v1, $v1, $a0
/* 0F6D68 802D23B8 AE430000 */  sw    $v1, ($s2)
.L802D23BC:
/* 0F6D6C 802D23BC 8FBF0030 */  lw    $ra, 0x30($sp)
/* 0F6D70 802D23C0 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0F6D74 802D23C4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0F6D78 802D23C8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0F6D7C 802D23CC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0F6D80 802D23D0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0F6D84 802D23D4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0F6D88 802D23D8 D7BE0060 */  ldc1  $f30, 0x60($sp)
/* 0F6D8C 802D23DC D7BC0058 */  ldc1  $f28, 0x58($sp)
/* 0F6D90 802D23E0 D7BA0050 */  ldc1  $f26, 0x50($sp)
/* 0F6D94 802D23E4 D7B80048 */  ldc1  $f24, 0x48($sp)
/* 0F6D98 802D23E8 D7B60040 */  ldc1  $f22, 0x40($sp)
/* 0F6D9C 802D23EC D7B40038 */  ldc1  $f20, 0x38($sp)
/* 0F6DA0 802D23F0 03E00008 */  jr    $ra
/* 0F6DA4 802D23F4 27BD0068 */   addiu $sp, $sp, 0x68

func_802D23F8:
/* 0F6DA8 802D23F8 3C038011 */  lui   $v1, 0x8011
/* 0F6DAC 802D23FC 9063F07C */  lbu   $v1, -0xf84($v1)
/* 0F6DB0 802D2400 2C620003 */  sltiu $v0, $v1, 3
/* 0F6DB4 802D2404 1440000D */  bnez  $v0, .L802D243C
/* 0F6DB8 802D2408 00031600 */   sll   $v0, $v1, 0x18
/* 0F6DBC 802D240C 00021E03 */  sra   $v1, $v0, 0x18
/* 0F6DC0 802D2410 2402000A */  addiu $v0, $zero, 0xa
/* 0F6DC4 802D2414 10620009 */  beq   $v1, $v0, .L802D243C
/* 0F6DC8 802D2418 2402000B */   addiu $v0, $zero, 0xb
/* 0F6DCC 802D241C 10620007 */  beq   $v1, $v0, .L802D243C
/* 0F6DD0 802D2420 2402000E */   addiu $v0, $zero, 0xe
/* 0F6DD4 802D2424 10620005 */  beq   $v1, $v0, .L802D243C
/* 0F6DD8 802D2428 24020010 */   addiu $v0, $zero, 0x10
/* 0F6DDC 802D242C 10620003 */  beq   $v1, $v0, .L802D243C
/* 0F6DE0 802D2430 2402001A */   addiu $v0, $zero, 0x1a
/* 0F6DE4 802D2434 14620003 */  bne   $v1, $v0, .L802D2444
/* 0F6DE8 802D2438 00000000 */   nop   
.L802D243C:
/* 0F6DEC 802D243C 03E00008 */  jr    $ra
/* 0F6DF0 802D2440 24020001 */   addiu $v0, $zero, 1

.L802D2444:
/* 0F6DF4 802D2444 03E00008 */  jr    $ra
/* 0F6DF8 802D2448 0000102D */   daddu $v0, $zero, $zero

/* 0F6DFC 802D244C 3C028016 */  lui   $v0, 0x8016
/* 0F6E00 802D2450 8442A552 */  lh    $v0, -0x5aae($v0)
/* 0F6E04 802D2454 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F6E08 802D2458 04400006 */  bltz  $v0, .L802D2474
/* 0F6E0C 802D245C AFBF0010 */   sw    $ra, 0x10($sp)
/* 0F6E10 802D2460 0C0B48FE */  jal   func_802D23F8
/* 0F6E14 802D2464 00000000 */   nop   
/* 0F6E18 802D2468 0040182D */  daddu $v1, $v0, $zero
/* 0F6E1C 802D246C 14600002 */  bnez  $v1, .L802D2478
/* 0F6E20 802D2470 24020002 */   addiu $v0, $zero, 2
.L802D2474:
/* 0F6E24 802D2474 0000102D */  daddu $v0, $zero, $zero
.L802D2478:
/* 0F6E28 802D2478 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F6E2C 802D247C 03E00008 */  jr    $ra
/* 0F6E30 802D2480 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F6E34 802D2484 3C028016 */  lui   $v0, 0x8016
/* 0F6E38 802D2488 8442A552 */  lh    $v0, -0x5aae($v0)
/* 0F6E3C 802D248C 00021027 */  nor   $v0, $zero, $v0
/* 0F6E40 802D2490 000217C3 */  sra   $v0, $v0, 0x1f
/* 0F6E44 802D2494 03E00008 */  jr    $ra
/* 0F6E48 802D2498 30420002 */   andi  $v0, $v0, 2

/* 0F6E4C 802D249C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F6E50 802D24A0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F6E54 802D24A4 0080882D */  daddu $s1, $a0, $zero
/* 0F6E58 802D24A8 3C028016 */  lui   $v0, 0x8016
/* 0F6E5C 802D24AC 8442A552 */  lh    $v0, -0x5aae($v0)
/* 0F6E60 802D24B0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F6E64 802D24B4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F6E68 802D24B8 8E30000C */  lw    $s0, 0xc($s1)
/* 0F6E6C 802D24BC 04400004 */  bltz  $v0, .L802D24D0
/* 0F6E70 802D24C0 0000302D */   daddu $a2, $zero, $zero
/* 0F6E74 802D24C4 0C0B48FE */  jal   func_802D23F8
/* 0F6E78 802D24C8 00000000 */   nop   
/* 0F6E7C 802D24CC 0002302B */  sltu  $a2, $zero, $v0
.L802D24D0:
/* 0F6E80 802D24D0 8E050000 */  lw    $a1, ($s0)
/* 0F6E84 802D24D4 0C0B2026 */  jal   set_variable
/* 0F6E88 802D24D8 0220202D */   daddu $a0, $s1, $zero
/* 0F6E8C 802D24DC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F6E90 802D24E0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F6E94 802D24E4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F6E98 802D24E8 24020002 */  addiu $v0, $zero, 2
/* 0F6E9C 802D24EC 03E00008 */  jr    $ra
/* 0F6EA0 802D24F0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F6EA4 802D24F4 3C028011 */  lui   $v0, 0x8011
/* 0F6EA8 802D24F8 8442EFDA */  lh    $v0, -0x1026($v0)
/* 0F6EAC 802D24FC 2C420001 */  sltiu $v0, $v0, 1
/* 0F6EB0 802D2500 03E00008 */  jr    $ra
/* 0F6EB4 802D2504 00021040 */   sll   $v0, $v0, 1

/* 0F6EB8 802D2508 3C028011 */  lui   $v0, 0x8011
/* 0F6EBC 802D250C 8C42EFC8 */  lw    $v0, -0x1038($v0)
/* 0F6EC0 802D2510 30422000 */  andi  $v0, $v0, 0x2000
/* 0F6EC4 802D2514 2C420001 */  sltiu $v0, $v0, 1
/* 0F6EC8 802D2518 03E00008 */  jr    $ra
/* 0F6ECC 802D251C 00021040 */   sll   $v0, $v0, 1

/* 0F6ED0 802D2520 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0F6ED4 802D2524 AFB40030 */  sw    $s4, 0x30($sp)
/* 0F6ED8 802D2528 0080A02D */  daddu $s4, $a0, $zero
/* 0F6EDC 802D252C AFBF0038 */  sw    $ra, 0x38($sp)
/* 0F6EE0 802D2530 AFB50034 */  sw    $s5, 0x34($sp)
/* 0F6EE4 802D2534 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0F6EE8 802D2538 AFB20028 */  sw    $s2, 0x28($sp)
/* 0F6EEC 802D253C AFB10024 */  sw    $s1, 0x24($sp)
/* 0F6EF0 802D2540 AFB00020 */  sw    $s0, 0x20($sp)
/* 0F6EF4 802D2544 8E90000C */  lw    $s0, 0xc($s4)
/* 0F6EF8 802D2548 8E150000 */  lw    $s5, ($s0)
/* 0F6EFC 802D254C 26100004 */  addiu $s0, $s0, 4
/* 0F6F00 802D2550 8E050000 */  lw    $a1, ($s0)
/* 0F6F04 802D2554 0C0B1EAF */  jal   get_variable
/* 0F6F08 802D2558 26100004 */   addiu $s0, $s0, 4
/* 0F6F0C 802D255C 02A0202D */  daddu $a0, $s5, $zero
/* 0F6F10 802D2560 0000282D */  daddu $a1, $zero, $zero
/* 0F6F14 802D2564 00A0302D */  daddu $a2, $a1, $zero
/* 0F6F18 802D2568 00A0382D */  daddu $a3, $a1, $zero
/* 0F6F1C 802D256C 0040882D */  daddu $s1, $v0, $zero
/* 0F6F20 802D2570 AFA00010 */  sw    $zero, 0x10($sp)
/* 0F6F24 802D2574 AFA00014 */  sw    $zero, 0x14($sp)
/* 0F6F28 802D2578 0C0B77FE */  jal   func_802DDFF8
/* 0F6F2C 802D257C AFA00018 */   sw    $zero, 0x18($sp)
/* 0F6F30 802D2580 3C128011 */  lui   $s2, 0x8011
/* 0F6F34 802D2584 2652EFC8 */  addiu $s2, $s2, -0x1038
/* 0F6F38 802D2588 2E22000E */  sltiu $v0, $s1, 0xe
/* 0F6F3C 802D258C 104000AB */  beqz  $v0, .L802D283C
/* 0F6F40 802D2590 00111080 */   sll   $v0, $s1, 2
/* 0F6F44 802D2594 3C01802E */  lui   $at, 0x802e
/* 0F6F48 802D2598 00220821 */  addu  $at, $at, $v0
/* 0F6F4C 802D259C 8C22A208 */  lw    $v0, -0x5df8($at)
/* 0F6F50 802D25A0 00400008 */  jr    $v0
/* 0F6F54 802D25A4 00000000 */   nop   
/* 0F6F58 802D25A8 02A0202D */  daddu $a0, $s5, $zero
/* 0F6F5C 802D25AC 0000282D */  daddu $a1, $zero, $zero
/* 0F6F60 802D25B0 00A0302D */  daddu $a2, $a1, $zero
/* 0F6F64 802D25B4 00A0382D */  daddu $a3, $a1, $zero
/* 0F6F68 802D25B8 3C03802E */  lui   $v1, 0x802e
/* 0F6F6C 802D25BC 9463B5B0 */  lhu   $v1, -0x4a50($v1)
/* 0F6F70 802D25C0 2402000D */  addiu $v0, $zero, 0xd
/* 0F6F74 802D25C4 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F6F78 802D25C8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0F6F7C 802D25CC 080B4A0C */  j     func_802D2830
/* 0F6F80 802D25D0 AFA00014 */   sw    $zero, 0x14($sp)

/* 0F6F84 802D25D4 2402000D */  addiu $v0, $zero, 0xd
/* 0F6F88 802D25D8 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F6F8C 802D25DC 02A0202D */  daddu $a0, $s5, $zero
/* 0F6F90 802D25E0 0220282D */  daddu $a1, $s1, $zero
/* 0F6F94 802D25E4 0000302D */  daddu $a2, $zero, $zero
/* 0F6F98 802D25E8 3C02802E */  lui   $v0, 0x802e
/* 0F6F9C 802D25EC 9442B5B0 */  lhu   $v0, -0x4a50($v0)
/* 0F6FA0 802D25F0 00C0382D */  daddu $a3, $a2, $zero
/* 0F6FA4 802D25F4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0F6FA8 802D25F8 AFA00014 */  sw    $zero, 0x14($sp)
/* 0F6FAC 802D25FC 080B4A0D */  j     func_802D2834
/* 0F6FB0 802D2600 AFA20018 */   sw    $v0, 0x18($sp)

/* 0F6FB4 802D2604 2402000D */  addiu $v0, $zero, 0xd
/* 0F6FB8 802D2608 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F6FBC 802D260C 8E050000 */  lw    $a1, ($s0)
/* 0F6FC0 802D2610 26100004 */  addiu $s0, $s0, 4
/* 0F6FC4 802D2614 0C0B1EAF */  jal   get_variable
/* 0F6FC8 802D2618 0280202D */   daddu $a0, $s4, $zero
/* 0F6FCC 802D261C 0040982D */  daddu $s3, $v0, $zero
/* 0F6FD0 802D2620 8E050000 */  lw    $a1, ($s0)
/* 0F6FD4 802D2624 26100004 */  addiu $s0, $s0, 4
/* 0F6FD8 802D2628 0C0B1EAF */  jal   get_variable
/* 0F6FDC 802D262C 0280202D */   daddu $a0, $s4, $zero
/* 0F6FE0 802D2630 0040902D */  daddu $s2, $v0, $zero
/* 0F6FE4 802D2634 8E050000 */  lw    $a1, ($s0)
/* 0F6FE8 802D2638 0C0B1EAF */  jal   get_variable
/* 0F6FEC 802D263C 0280202D */   daddu $a0, $s4, $zero
/* 0F6FF0 802D2640 02A0202D */  daddu $a0, $s5, $zero
/* 0F6FF4 802D2644 24050004 */  addiu $a1, $zero, 4
/* 0F6FF8 802D2648 0260302D */  daddu $a2, $s3, $zero
/* 0F6FFC 802D264C 3C03802E */  lui   $v1, 0x802e
/* 0F7000 802D2650 9463B5B0 */  lhu   $v1, -0x4a50($v1)
/* 0F7004 802D2654 0240382D */  daddu $a3, $s2, $zero
/* 0F7008 802D2658 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F700C 802D265C 080B4A0C */  j     func_802D2830
/* 0F7010 802D2660 AFA00014 */   sw    $zero, 0x14($sp)

/* 0F7014 802D2664 2402000D */  addiu $v0, $zero, 0xd
/* 0F7018 802D2668 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F701C 802D266C 8E050000 */  lw    $a1, ($s0)
/* 0F7020 802D2670 26100004 */  addiu $s0, $s0, 4
/* 0F7024 802D2674 0C0B1EAF */  jal   get_variable
/* 0F7028 802D2678 0280202D */   daddu $a0, $s4, $zero
/* 0F702C 802D267C 0040982D */  daddu $s3, $v0, $zero
/* 0F7030 802D2680 8E050000 */  lw    $a1, ($s0)
/* 0F7034 802D2684 26100004 */  addiu $s0, $s0, 4
/* 0F7038 802D2688 0C0B1EAF */  jal   get_variable
/* 0F703C 802D268C 0280202D */   daddu $a0, $s4, $zero
/* 0F7040 802D2690 0040902D */  daddu $s2, $v0, $zero
/* 0F7044 802D2694 8E050000 */  lw    $a1, ($s0)
/* 0F7048 802D2698 0C0B1EAF */  jal   get_variable
/* 0F704C 802D269C 0280202D */   daddu $a0, $s4, $zero
/* 0F7050 802D26A0 02A0202D */  daddu $a0, $s5, $zero
/* 0F7054 802D26A4 24050006 */  addiu $a1, $zero, 6
/* 0F7058 802D26A8 0260302D */  daddu $a2, $s3, $zero
/* 0F705C 802D26AC 3C03802E */  lui   $v1, 0x802e
/* 0F7060 802D26B0 9463B5B0 */  lhu   $v1, -0x4a50($v1)
/* 0F7064 802D26B4 0240382D */  daddu $a3, $s2, $zero
/* 0F7068 802D26B8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F706C 802D26BC 080B4A0B */  j     func_802D282C
/* 0F7070 802D26C0 240200FF */   addiu $v0, $zero, 0xff

/* 0F7074 802D26C4 24020016 */  addiu $v0, $zero, 0x16
/* 0F7078 802D26C8 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F707C 802D26CC 8E050000 */  lw    $a1, ($s0)
/* 0F7080 802D26D0 0C0B1EAF */  jal   get_variable
/* 0F7084 802D26D4 0280202D */   daddu $a0, $s4, $zero
/* 0F7088 802D26D8 02A0202D */  daddu $a0, $s5, $zero
/* 0F708C 802D26DC 24050007 */  addiu $a1, $zero, 7
/* 0F7090 802D26E0 240600FF */  addiu $a2, $zero, 0xff
/* 0F7094 802D26E4 00C0382D */  daddu $a3, $a2, $zero
/* 0F7098 802D26E8 3C08802E */  lui   $t0, 0x802e
/* 0F709C 802D26EC 9508B5B0 */  lhu   $t0, -0x4a50($t0)
/* 0F70A0 802D26F0 00C0182D */  daddu $v1, $a2, $zero
/* 0F70A4 802D26F4 AFA30010 */  sw    $v1, 0x10($sp)
/* 0F70A8 802D26F8 AFA20014 */  sw    $v0, 0x14($sp)
/* 0F70AC 802D26FC 080B4A0D */  j     func_802D2834
/* 0F70B0 802D2700 AFA80018 */   sw    $t0, 0x18($sp)

/* 0F70B4 802D2704 24020016 */  addiu $v0, $zero, 0x16
/* 0F70B8 802D2708 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F70BC 802D270C 8E050000 */  lw    $a1, ($s0)
/* 0F70C0 802D2710 26100004 */  addiu $s0, $s0, 4
/* 0F70C4 802D2714 0C0B1EAF */  jal   get_variable
/* 0F70C8 802D2718 0280202D */   daddu $a0, $s4, $zero
/* 0F70CC 802D271C 0040982D */  daddu $s3, $v0, $zero
/* 0F70D0 802D2720 8E050000 */  lw    $a1, ($s0)
/* 0F70D4 802D2724 26100004 */  addiu $s0, $s0, 4
/* 0F70D8 802D2728 0C0B1EAF */  jal   get_variable
/* 0F70DC 802D272C 0280202D */   daddu $a0, $s4, $zero
/* 0F70E0 802D2730 0040902D */  daddu $s2, $v0, $zero
/* 0F70E4 802D2734 8E050000 */  lw    $a1, ($s0)
/* 0F70E8 802D2738 26100004 */  addiu $s0, $s0, 4
/* 0F70EC 802D273C 0C0B1EAF */  jal   get_variable
/* 0F70F0 802D2740 0280202D */   daddu $a0, $s4, $zero
/* 0F70F4 802D2744 0040882D */  daddu $s1, $v0, $zero
/* 0F70F8 802D2748 8E050000 */  lw    $a1, ($s0)
/* 0F70FC 802D274C 0C0B1EAF */  jal   get_variable
/* 0F7100 802D2750 0280202D */   daddu $a0, $s4, $zero
/* 0F7104 802D2754 02A0202D */  daddu $a0, $s5, $zero
/* 0F7108 802D2758 080B4A06 */  j     func_802D2818
/* 0F710C 802D275C 24050008 */   addiu $a1, $zero, 8

/* 0F7110 802D2760 2402000D */  addiu $v0, $zero, 0xd
/* 0F7114 802D2764 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F7118 802D2768 8E050000 */  lw    $a1, ($s0)
/* 0F711C 802D276C 26100004 */  addiu $s0, $s0, 4
/* 0F7120 802D2770 0C0B1EAF */  jal   get_variable
/* 0F7124 802D2774 0280202D */   daddu $a0, $s4, $zero
/* 0F7128 802D2778 0040982D */  daddu $s3, $v0, $zero
/* 0F712C 802D277C 8E050000 */  lw    $a1, ($s0)
/* 0F7130 802D2780 26100004 */  addiu $s0, $s0, 4
/* 0F7134 802D2784 0C0B1EAF */  jal   get_variable
/* 0F7138 802D2788 0280202D */   daddu $a0, $s4, $zero
/* 0F713C 802D278C 0040902D */  daddu $s2, $v0, $zero
/* 0F7140 802D2790 8E050000 */  lw    $a1, ($s0)
/* 0F7144 802D2794 0C0B1EAF */  jal   get_variable
/* 0F7148 802D2798 0280202D */   daddu $a0, $s4, $zero
/* 0F714C 802D279C 02A0202D */  daddu $a0, $s5, $zero
/* 0F7150 802D27A0 24050005 */  addiu $a1, $zero, 5
/* 0F7154 802D27A4 0260302D */  daddu $a2, $s3, $zero
/* 0F7158 802D27A8 3C03802E */  lui   $v1, 0x802e
/* 0F715C 802D27AC 9463B5B0 */  lhu   $v1, -0x4a50($v1)
/* 0F7160 802D27B0 0240382D */  daddu $a3, $s2, $zero
/* 0F7164 802D27B4 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F7168 802D27B8 080B4A0C */  j     func_802D2830
/* 0F716C 802D27BC AFA00014 */   sw    $zero, 0x14($sp)

/* 0F7170 802D27C0 24020016 */  addiu $v0, $zero, 0x16
/* 0F7174 802D27C4 A24200BE */  sb    $v0, 0xbe($s2)
/* 0F7178 802D27C8 8E050000 */  lw    $a1, ($s0)
/* 0F717C 802D27CC 26100004 */  addiu $s0, $s0, 4
/* 0F7180 802D27D0 0C0B1EAF */  jal   get_variable
/* 0F7184 802D27D4 0280202D */   daddu $a0, $s4, $zero
/* 0F7188 802D27D8 0040982D */  daddu $s3, $v0, $zero
/* 0F718C 802D27DC 8E050000 */  lw    $a1, ($s0)
/* 0F7190 802D27E0 26100004 */  addiu $s0, $s0, 4
/* 0F7194 802D27E4 0C0B1EAF */  jal   get_variable
/* 0F7198 802D27E8 0280202D */   daddu $a0, $s4, $zero
/* 0F719C 802D27EC 0040902D */  daddu $s2, $v0, $zero
/* 0F71A0 802D27F0 8E050000 */  lw    $a1, ($s0)
/* 0F71A4 802D27F4 26100004 */  addiu $s0, $s0, 4
/* 0F71A8 802D27F8 0C0B1EAF */  jal   get_variable
/* 0F71AC 802D27FC 0280202D */   daddu $a0, $s4, $zero
/* 0F71B0 802D2800 0040882D */  daddu $s1, $v0, $zero
/* 0F71B4 802D2804 8E050000 */  lw    $a1, ($s0)
/* 0F71B8 802D2808 0C0B1EAF */  jal   get_variable
/* 0F71BC 802D280C 0280202D */   daddu $a0, $s4, $zero
/* 0F71C0 802D2810 02A0202D */  daddu $a0, $s5, $zero
/* 0F71C4 802D2814 2405000D */  addiu $a1, $zero, 0xd
func_802D2818:
/* 0F71C8 802D2818 0260302D */  daddu $a2, $s3, $zero
/* 0F71CC 802D281C 3C03802E */  lui   $v1, 0x802e
/* 0F71D0 802D2820 9463B5B0 */  lhu   $v1, -0x4a50($v1)
/* 0F71D4 802D2824 0240382D */  daddu $a3, $s2, $zero
/* 0F71D8 802D2828 AFB10010 */  sw    $s1, 0x10($sp)
func_802D282C:
/* 0F71DC 802D282C AFA20014 */  sw    $v0, 0x14($sp)
func_802D2830:
/* 0F71E0 802D2830 AFA30018 */  sw    $v1, 0x18($sp)
func_802D2834:
/* 0F71E4 802D2834 0C0B77FE */  jal   func_802DDFF8
/* 0F71E8 802D2838 00000000 */   nop   
.L802D283C:
/* 0F71EC 802D283C 8FBF0038 */  lw    $ra, 0x38($sp)
/* 0F71F0 802D2840 8FB50034 */  lw    $s5, 0x34($sp)
/* 0F71F4 802D2844 8FB40030 */  lw    $s4, 0x30($sp)
/* 0F71F8 802D2848 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0F71FC 802D284C 8FB20028 */  lw    $s2, 0x28($sp)
/* 0F7200 802D2850 8FB10024 */  lw    $s1, 0x24($sp)
/* 0F7204 802D2854 8FB00020 */  lw    $s0, 0x20($sp)
/* 0F7208 802D2858 24020002 */  addiu $v0, $zero, 2
/* 0F720C 802D285C 3C01802E */  lui   $at, 0x802e
/* 0F7210 802D2860 A420B5B0 */  sh    $zero, -0x4a50($at)
/* 0F7214 802D2864 03E00008 */  jr    $ra
/* 0F7218 802D2868 27BD0040 */   addiu $sp, $sp, 0x40

/* 0F721C 802D286C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F7220 802D2870 8C420000 */  lw    $v0, ($v0)
/* 0F7224 802D2874 3C01802E */  lui   $at, 0x802e
/* 0F7228 802D2878 A422B5B0 */  sh    $v0, -0x4a50($at)
/* 0F722C 802D287C 03E00008 */  jr    $ra
/* 0F7230 802D2880 24020002 */   addiu $v0, $zero, 2

/* 0F7234 802D2884 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0F7238 802D2888 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F723C 802D288C 0080902D */  daddu $s2, $a0, $zero
/* 0F7240 802D2890 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F7244 802D2894 3C138011 */  lui   $s3, 0x8011
/* 0F7248 802D2898 2673EFC8 */  addiu $s3, $s3, -0x1038
/* 0F724C 802D289C AFB50024 */  sw    $s5, 0x24($sp)
/* 0F7250 802D28A0 26550074 */  addiu $s5, $s2, 0x74
/* 0F7254 802D28A4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7258 802D28A8 26510078 */  addiu $s1, $s2, 0x78
/* 0F725C 802D28AC AFB40020 */  sw    $s4, 0x20($sp)
/* 0F7260 802D28B0 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0F7264 802D28B4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7268 802D28B8 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0F726C 802D28BC 8E50000C */  lw    $s0, 0xc($s2)
/* 0F7270 802D28C0 10A00043 */  beqz  $a1, .L802D29D0
/* 0F7274 802D28C4 2654007C */   addiu $s4, $s2, 0x7c
/* 0F7278 802D28C8 8E050000 */  lw    $a1, ($s0)
/* 0F727C 802D28CC 0C0B210B */  jal   get_float_variable
/* 0F7280 802D28D0 26100004 */   addiu $s0, $s0, 4
/* 0F7284 802D28D4 0240202D */  daddu $a0, $s2, $zero
/* 0F7288 802D28D8 8E050000 */  lw    $a1, ($s0)
/* 0F728C 802D28DC 0C0B210B */  jal   get_float_variable
/* 0F7290 802D28E0 46000506 */   mov.s $f20, $f0
/* 0F7294 802D28E4 3C02802E */  lui   $v0, 0x802e
/* 0F7298 802D28E8 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F729C 802D28EC C6620080 */  lwc1  $f2, 0x80($s3)
/* 0F72A0 802D28F0 26100004 */  addiu $s0, $s0, 4
/* 0F72A4 802D28F4 E442000C */  swc1  $f2, 0xc($v0)
/* 0F72A8 802D28F8 E6420074 */  swc1  $f2, 0x74($s2)
/* 0F72AC 802D28FC C66C0028 */  lwc1  $f12, 0x28($s3)
/* 0F72B0 802D2900 46146032 */  c.eq.s $f12, $f20
/* 0F72B4 802D2904 00000000 */  nop   
/* 0F72B8 802D2908 45000006 */  bc1f  .L802D2924
/* 0F72BC 802D290C 46000086 */   mov.s $f2, $f0
/* 0F72C0 802D2910 C6600030 */  lwc1  $f0, 0x30($s3)
/* 0F72C4 802D2914 46020032 */  c.eq.s $f0, $f2
/* 0F72C8 802D2918 00000000 */  nop   
/* 0F72CC 802D291C 45010008 */  bc1t  .L802D2940
/* 0F72D0 802D2920 00000000 */   nop   
.L802D2924:
/* 0F72D4 802D2924 C66E0030 */  lwc1  $f14, 0x30($s3)
/* 0F72D8 802D2928 4406A000 */  mfc1  $a2, $f20
/* 0F72DC 802D292C 44071000 */  mfc1  $a3, $f2
/* 0F72E0 802D2930 0C00A720 */  jal   atan2
/* 0F72E4 802D2934 00000000 */   nop   
/* 0F72E8 802D2938 080B4A51 */  j     func_802D2944
/* 0F72EC 802D293C 46000086 */   mov.s $f2, $f0

.L802D2940:
/* 0F72F0 802D2940 C6620080 */  lwc1  $f2, 0x80($s3)
func_802D2944:
/* 0F72F4 802D2944 C6A00000 */  lwc1  $f0, ($s5)
/* 0F72F8 802D2948 46001001 */  sub.s $f0, $f2, $f0
/* 0F72FC 802D294C E6200000 */  swc1  $f0, ($s1)
/* 0F7300 802D2950 8E050000 */  lw    $a1, ($s0)
/* 0F7304 802D2954 0C0B1EAF */  jal   get_variable
/* 0F7308 802D2958 0240202D */   daddu $a0, $s2, $zero
/* 0F730C 802D295C AE820000 */  sw    $v0, ($s4)
/* 0F7310 802D2960 3C02802E */  lui   $v0, 0x802e
/* 0F7314 802D2964 8C429D20 */  lw    $v0, -0x62e0($v0)
/* 0F7318 802D2968 3C01C334 */  lui   $at, 0xc334
/* 0F731C 802D296C 44810000 */  mtc1  $at, $f0
/* 0F7320 802D2970 A440008E */  sh    $zero, 0x8e($v0)
/* 0F7324 802D2974 C6220000 */  lwc1  $f2, ($s1)
/* 0F7328 802D2978 4600103C */  c.lt.s $f2, $f0
/* 0F732C 802D297C 00000000 */  nop   
/* 0F7330 802D2980 45000007 */  bc1f  .L802D29A0
/* 0F7334 802D2984 00000000 */   nop   
/* 0F7338 802D2988 3C0143B4 */  lui   $at, 0x43b4
/* 0F733C 802D298C 44810000 */  mtc1  $at, $f0
/* 0F7340 802D2990 00000000 */  nop   
/* 0F7344 802D2994 46001000 */  add.s $f0, $f2, $f0
/* 0F7348 802D2998 E6200000 */  swc1  $f0, ($s1)
/* 0F734C 802D299C C6220000 */  lwc1  $f2, ($s1)
.L802D29A0:
/* 0F7350 802D29A0 3C014334 */  lui   $at, 0x4334
/* 0F7354 802D29A4 44810000 */  mtc1  $at, $f0
/* 0F7358 802D29A8 00000000 */  nop   
/* 0F735C 802D29AC 4602003C */  c.lt.s $f0, $f2
/* 0F7360 802D29B0 00000000 */  nop   
/* 0F7364 802D29B4 45000006 */  bc1f  .L802D29D0
/* 0F7368 802D29B8 00000000 */   nop   
/* 0F736C 802D29BC 3C0143B4 */  lui   $at, 0x43b4
/* 0F7370 802D29C0 44810000 */  mtc1  $at, $f0
/* 0F7374 802D29C4 00000000 */  nop   
/* 0F7378 802D29C8 46001001 */  sub.s $f0, $f2, $f0
/* 0F737C 802D29CC E6200000 */  swc1  $f0, ($s1)
.L802D29D0:
/* 0F7380 802D29D0 8E820000 */  lw    $v0, ($s4)
/* 0F7384 802D29D4 1C40000E */  bgtz  $v0, .L802D2A10
/* 0F7388 802D29D8 00000000 */   nop   
/* 0F738C 802D29DC 3C10802E */  lui   $s0, 0x802e
/* 0F7390 802D29E0 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F7394 802D29E4 8E020000 */  lw    $v0, ($s0)
/* 0F7398 802D29E8 C6200000 */  lwc1  $f0, ($s1)
/* 0F739C 802D29EC C44C000C */  lwc1  $f12, 0xc($v0)
/* 0F73A0 802D29F0 46006300 */  add.s $f12, $f12, $f0
/* 0F73A4 802D29F4 0C00A6C9 */  jal   clamp_angle
/* 0F73A8 802D29F8 E44C000C */   swc1  $f12, 0xc($v0)
/* 0F73AC 802D29FC 8E030000 */  lw    $v1, ($s0)
/* 0F73B0 802D2A00 24020002 */  addiu $v0, $zero, 2
/* 0F73B4 802D2A04 E460000C */  swc1  $f0, 0xc($v1)
/* 0F73B8 802D2A08 080B4AA0 */  j     func_802D2A80
/* 0F73BC 802D2A0C E6600080 */   swc1  $f0, 0x80($s3)

.L802D2A10:
/* 0F73C0 802D2A10 3C10802E */  lui   $s0, 0x802e
/* 0F73C4 802D2A14 26109D20 */  addiu $s0, $s0, -0x62e0
/* 0F73C8 802D2A18 8E030000 */  lw    $v1, ($s0)
/* 0F73CC 802D2A1C 9462008E */  lhu   $v0, 0x8e($v1)
/* 0F73D0 802D2A20 24420001 */  addiu $v0, $v0, 1
/* 0F73D4 802D2A24 A462008E */  sh    $v0, 0x8e($v1)
/* 0F73D8 802D2A28 00021400 */  sll   $v0, $v0, 0x10
/* 0F73DC 802D2A2C 00021403 */  sra   $v0, $v0, 0x10
/* 0F73E0 802D2A30 C6200000 */  lwc1  $f0, ($s1)
/* 0F73E4 802D2A34 44821000 */  mtc1  $v0, $f2
/* 0F73E8 802D2A38 00000000 */  nop   
/* 0F73EC 802D2A3C 468010A0 */  cvt.s.w $f2, $f2
/* 0F73F0 802D2A40 46020002 */  mul.s $f0, $f0, $f2
/* 0F73F4 802D2A44 00000000 */  nop   
/* 0F73F8 802D2A48 C6AC0000 */  lwc1  $f12, ($s5)
/* 0F73FC 802D2A4C C6820000 */  lwc1  $f2, ($s4)
/* 0F7400 802D2A50 468010A0 */  cvt.s.w $f2, $f2
/* 0F7404 802D2A54 46020003 */  div.s $f0, $f0, $f2
/* 0F7408 802D2A58 46006300 */  add.s $f12, $f12, $f0
/* 0F740C 802D2A5C 0C00A6C9 */  jal   clamp_angle
/* 0F7410 802D2A60 E46C000C */   swc1  $f12, 0xc($v1)
/* 0F7414 802D2A64 8E020000 */  lw    $v0, ($s0)
/* 0F7418 802D2A68 E440000C */  swc1  $f0, 0xc($v0)
/* 0F741C 802D2A6C E6600080 */  swc1  $f0, 0x80($s3)
/* 0F7420 802D2A70 8442008E */  lh    $v0, 0x8e($v0)
/* 0F7424 802D2A74 8E830000 */  lw    $v1, ($s4)
/* 0F7428 802D2A78 0043102A */  slt   $v0, $v0, $v1
/* 0F742C 802D2A7C 38420001 */  xori  $v0, $v0, 1
func_802D2A80:
/* 0F7430 802D2A80 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0F7434 802D2A84 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F7438 802D2A88 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F743C 802D2A8C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F7440 802D2A90 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F7444 802D2A94 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F7448 802D2A98 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F744C 802D2A9C D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0F7450 802D2AA0 03E00008 */  jr    $ra
/* 0F7454 802D2AA4 27BD0038 */   addiu $sp, $sp, 0x38

DisablePulseStone:
/* 0F7458 802D2AA8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F745C 802D2AAC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F7460 802D2AB0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7464 802D2AB4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7468 802D2AB8 8C82000C */  lw    $v0, 0xc($a0)
/* 0F746C 802D2ABC 3C108011 */  lui   $s0, 0x8011
/* 0F7470 802D2AC0 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 0F7474 802D2AC4 8C450000 */  lw    $a1, ($v0)
/* 0F7478 802D2AC8 0C0B1EAF */  jal   get_variable
/* 0F747C 802D2ACC 0200882D */   daddu $s1, $s0, $zero
/* 0F7480 802D2AD0 10400005 */  beqz  $v0, .L802D2AE8
/* 0F7484 802D2AD4 2403FF7F */   addiu $v1, $zero, -0x81
/* 0F7488 802D2AD8 8E020004 */  lw    $v0, 4($s0)
/* 0F748C 802D2ADC 00431024 */  and   $v0, $v0, $v1
/* 0F7490 802D2AE0 080B4ABD */  j     func_802D2AF4
/* 0F7494 802D2AE4 AE020004 */   sw    $v0, 4($s0)

.L802D2AE8:
/* 0F7498 802D2AE8 8E220004 */  lw    $v0, 4($s1)
/* 0F749C 802D2AEC 34420080 */  ori   $v0, $v0, 0x80
/* 0F74A0 802D2AF0 AE220004 */  sw    $v0, 4($s1)
func_802D2AF4:
/* 0F74A4 802D2AF4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F74A8 802D2AF8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F74AC 802D2AFC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F74B0 802D2B00 24020002 */  addiu $v0, $zero, 2
/* 0F74B4 802D2B04 03E00008 */  jr    $ra
/* 0F74B8 802D2B08 27BD0020 */   addiu $sp, $sp, 0x20

GetCurrentPartner:
/* 0F74BC 802D2B0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F74C0 802D2B10 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F74C4 802D2B14 8C82000C */  lw    $v0, 0xc($a0)
/* 0F74C8 802D2B18 3C038011 */  lui   $v1, 0x8011
/* 0F74CC 802D2B1C 8063EBB0 */  lb    $v1, -0x1450($v1)
/* 0F74D0 802D2B20 8C450000 */  lw    $a1, ($v0)
/* 0F74D4 802D2B24 10600004 */  beqz  $v1, .L802D2B38
/* 0F74D8 802D2B28 0000302D */   daddu $a2, $zero, $zero
/* 0F74DC 802D2B2C 3C028011 */  lui   $v0, 0x8011
/* 0F74E0 802D2B30 2442F290 */  addiu $v0, $v0, -0xd70
/* 0F74E4 802D2B34 80460012 */  lb    $a2, 0x12($v0)
.L802D2B38:
/* 0F74E8 802D2B38 0C0B2026 */  jal   set_variable
/* 0F74EC 802D2B3C 00000000 */   nop   
/* 0F74F0 802D2B40 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F74F4 802D2B44 24020002 */  addiu $v0, $zero, 2
/* 0F74F8 802D2B48 03E00008 */  jr    $ra
/* 0F74FC 802D2B4C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F7500 802D2B50 3C038011 */  lui   $v1, 0x8011
/* 0F7504 802D2B54 2463EFC8 */  addiu $v1, $v1, -0x1038
/* 0F7508 802D2B58 8C620004 */  lw    $v0, 4($v1)
/* 0F750C 802D2B5C 34420008 */  ori   $v0, $v0, 8
/* 0F7510 802D2B60 AC620004 */  sw    $v0, 4($v1)
/* 0F7514 802D2B64 03E00008 */  jr    $ra
/* 0F7518 802D2B68 24020002 */   addiu $v0, $zero, 2

/* 0F751C 802D2B6C 3C038011 */  lui   $v1, 0x8011
/* 0F7520 802D2B70 2463EFC8 */  addiu $v1, $v1, -0x1038
/* 0F7524 802D2B74 8C620004 */  lw    $v0, 4($v1)
/* 0F7528 802D2B78 34420004 */  ori   $v0, $v0, 4
/* 0F752C 802D2B7C AC620004 */  sw    $v0, 4($v1)
/* 0F7530 802D2B80 03E00008 */  jr    $ra
/* 0F7534 802D2B84 24020002 */   addiu $v0, $zero, 2

Disable8bitMario:
/* 0F7538 802D2B88 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F753C 802D2B8C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F7540 802D2B90 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7544 802D2B94 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7548 802D2B98 8C82000C */  lw    $v0, 0xc($a0)
/* 0F754C 802D2B9C 3C108011 */  lui   $s0, 0x8011
/* 0F7550 802D2BA0 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 0F7554 802D2BA4 8C450000 */  lw    $a1, ($v0)
/* 0F7558 802D2BA8 0C0B1EAF */  jal   get_variable
/* 0F755C 802D2BAC 0200882D */   daddu $s1, $s0, $zero
/* 0F7560 802D2BB0 10400009 */  beqz  $v0, .L802D2BD8
/* 0F7564 802D2BB4 24020025 */   addiu $v0, $zero, 0x25
/* 0F7568 802D2BB8 A60200B0 */  sh    $v0, 0xb0($s0)
/* 0F756C 802D2BBC 2402001A */  addiu $v0, $zero, 0x1a
/* 0F7570 802D2BC0 A60200B2 */  sh    $v0, 0xb2($s0)
/* 0F7574 802D2BC4 8E020004 */  lw    $v0, 4($s0)
/* 0F7578 802D2BC8 2403BFFF */  addiu $v1, $zero, -0x4001
/* 0F757C 802D2BCC 00431024 */  and   $v0, $v0, $v1
/* 0F7580 802D2BD0 080B4AFF */  j     func_802D2BFC
/* 0F7584 802D2BD4 AE020004 */   sw    $v0, 4($s0)

.L802D2BD8:
/* 0F7588 802D2BD8 3C040004 */  lui   $a0, 4
/* 0F758C 802D2BDC 34844004 */  ori   $a0, $a0, 0x4004
/* 0F7590 802D2BE0 24020013 */  addiu $v0, $zero, 0x13
/* 0F7594 802D2BE4 A62200B0 */  sh    $v0, 0xb0($s1)
/* 0F7598 802D2BE8 8E220004 */  lw    $v0, 4($s1)
/* 0F759C 802D2BEC 2403001A */  addiu $v1, $zero, 0x1a
/* 0F75A0 802D2BF0 A62300B2 */  sh    $v1, 0xb2($s1)
/* 0F75A4 802D2BF4 00441025 */  or    $v0, $v0, $a0
/* 0F75A8 802D2BF8 AE220004 */  sw    $v0, 4($s1)
func_802D2BFC:
/* 0F75AC 802D2BFC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F75B0 802D2C00 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F75B4 802D2C04 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F75B8 802D2C08 24020002 */  addiu $v0, $zero, 2
/* 0F75BC 802D2C0C 03E00008 */  jr    $ra
/* 0F75C0 802D2C10 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F75C4 802D2C14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F75C8 802D2C18 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F75CC 802D2C1C 8C82000C */  lw    $v0, 0xc($a0)
/* 0F75D0 802D2C20 0C0B1EAF */  jal   get_variable
/* 0F75D4 802D2C24 8C450000 */   lw    $a1, ($v0)
/* 0F75D8 802D2C28 0C03BCF5 */  jal   func_800EF3D4
/* 0F75DC 802D2C2C 0040202D */   daddu $a0, $v0, $zero
/* 0F75E0 802D2C30 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F75E4 802D2C34 24020002 */  addiu $v0, $zero, 2
/* 0F75E8 802D2C38 03E00008 */  jr    $ra
/* 0F75EC 802D2C3C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F75F0 802D2C40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F75F4 802D2C44 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F75F8 802D2C48 0080902D */  daddu $s2, $a0, $zero
/* 0F75FC 802D2C4C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F7600 802D2C50 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7604 802D2C54 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7608 802D2C58 8E50000C */  lw    $s0, 0xc($s2)
/* 0F760C 802D2C5C 8E050000 */  lw    $a1, ($s0)
/* 0F7610 802D2C60 0C0B1EAF */  jal   get_variable
/* 0F7614 802D2C64 26100004 */   addiu $s0, $s0, 4
/* 0F7618 802D2C68 44820000 */  mtc1  $v0, $f0
/* 0F761C 802D2C6C 00000000 */  nop   
/* 0F7620 802D2C70 46800020 */  cvt.s.w $f0, $f0
/* 0F7624 802D2C74 3C118011 */  lui   $s1, 0x8011
/* 0F7628 802D2C78 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 0F762C 802D2C7C E620001C */  swc1  $f0, 0x1c($s1)
/* 0F7630 802D2C80 8E050000 */  lw    $a1, ($s0)
/* 0F7634 802D2C84 26100004 */  addiu $s0, $s0, 4
/* 0F7638 802D2C88 0C0B1EAF */  jal   get_variable
/* 0F763C 802D2C8C 0240202D */   daddu $a0, $s2, $zero
/* 0F7640 802D2C90 44820000 */  mtc1  $v0, $f0
/* 0F7644 802D2C94 00000000 */  nop   
/* 0F7648 802D2C98 46800020 */  cvt.s.w $f0, $f0
/* 0F764C 802D2C9C E6200020 */  swc1  $f0, 0x20($s1)
/* 0F7650 802D2CA0 8E050000 */  lw    $a1, ($s0)
/* 0F7654 802D2CA4 0C0B1EAF */  jal   get_variable
/* 0F7658 802D2CA8 0240202D */   daddu $a0, $s2, $zero
/* 0F765C 802D2CAC 44820000 */  mtc1  $v0, $f0
/* 0F7660 802D2CB0 00000000 */  nop   
/* 0F7664 802D2CB4 46800020 */  cvt.s.w $f0, $f0
/* 0F7668 802D2CB8 E6200024 */  swc1  $f0, 0x24($s1)
/* 0F766C 802D2CBC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F7670 802D2CC0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F7674 802D2CC4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F7678 802D2CC8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F767C 802D2CCC 24020002 */  addiu $v0, $zero, 2
/* 0F7680 802D2CD0 03E00008 */  jr    $ra
/* 0F7684 802D2CD4 27BD0020 */   addiu $sp, $sp, 0x20

PlaySoundAtPlayer:
/* 0F7688 802D2CD8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F768C 802D2CDC AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7690 802D2CE0 0080882D */  daddu $s1, $a0, $zero
/* 0F7694 802D2CE4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F7698 802D2CE8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F769C 802D2CEC 8E30000C */  lw    $s0, 0xc($s1)
/* 0F76A0 802D2CF0 8E050000 */  lw    $a1, ($s0)
/* 0F76A4 802D2CF4 0C0B1EAF */  jal   get_variable
/* 0F76A8 802D2CF8 26100004 */   addiu $s0, $s0, 4
/* 0F76AC 802D2CFC 0220202D */  daddu $a0, $s1, $zero
/* 0F76B0 802D2D00 8E050000 */  lw    $a1, ($s0)
/* 0F76B4 802D2D04 0C0B1EAF */  jal   get_variable
/* 0F76B8 802D2D08 0040802D */   daddu $s0, $v0, $zero
/* 0F76BC 802D2D0C 0200202D */  daddu $a0, $s0, $zero
/* 0F76C0 802D2D10 0C052736 */  jal   play_sound_at_player
/* 0F76C4 802D2D14 0040282D */   daddu $a1, $v0, $zero
/* 0F76C8 802D2D18 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F76CC 802D2D1C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F76D0 802D2D20 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F76D4 802D2D24 24020002 */  addiu $v0, $zero, 2
/* 0F76D8 802D2D28 03E00008 */  jr    $ra
/* 0F76DC 802D2D2C 27BD0020 */   addiu $sp, $sp, 0x20

func_802D2D30:
/* 0F76E0 802D2D30 27BDFFF8 */  addiu $sp, $sp, -8
/* 0F76E4 802D2D34 0080602D */  daddu $t4, $a0, $zero
/* 0F76E8 802D2D38 00A0682D */  daddu $t5, $a1, $zero
/* 0F76EC 802D2D3C 00E0582D */  daddu $t3, $a3, $zero
/* 0F76F0 802D2D40 3C08800A */  lui   $t0, 0x800a
/* 0F76F4 802D2D44 2508A66C */  addiu $t0, $t0, -0x5994
/* 0F76F8 802D2D48 3C02E700 */  lui   $v0, 0xe700
/* 0F76FC 802D2D4C AFB00000 */  sw    $s0, ($sp)
/* 0F7700 802D2D50 8D070000 */  lw    $a3, ($t0)
/* 0F7704 802D2D54 97B9001A */  lhu   $t9, 0x1a($sp)
/* 0F7708 802D2D58 97B0001E */  lhu   $s0, 0x1e($sp)
/* 0F770C 802D2D5C 97AF0022 */  lhu   $t7, 0x22($sp)
/* 0F7710 802D2D60 97B80026 */  lhu   $t8, 0x26($sp)
/* 0F7714 802D2D64 00E0182D */  daddu $v1, $a3, $zero
/* 0F7718 802D2D68 24E70008 */  addiu $a3, $a3, 8
/* 0F771C 802D2D6C AD070000 */  sw    $a3, ($t0)
/* 0F7720 802D2D70 AC620000 */  sw    $v0, ($v1)
/* 0F7724 802D2D74 AC600004 */  sw    $zero, 4($v1)
/* 0F7728 802D2D78 316300FF */  andi  $v1, $t3, 0xff
/* 0F772C 802D2D7C 240200FF */  addiu $v0, $zero, 0xff
/* 0F7730 802D2D80 1462000A */  bne   $v1, $v0, .L802D2DAC
/* 0F7734 802D2D84 00C0702D */   daddu $t6, $a2, $zero
/* 0F7738 802D2D88 3C04FCFF */  lui   $a0, 0xfcff
/* 0F773C 802D2D8C 3484FFFF */  ori   $a0, $a0, 0xffff
/* 0F7740 802D2D90 3C03FFFD */  lui   $v1, 0xfffd
/* 0F7744 802D2D94 3463FCFE */  ori   $v1, $v1, 0xfcfe
/* 0F7748 802D2D98 24E20008 */  addiu $v0, $a3, 8
/* 0F774C 802D2D9C AD020000 */  sw    $v0, ($t0)
/* 0F7750 802D2DA0 ACE40000 */  sw    $a0, ($a3)
/* 0F7754 802D2DA4 080B4B7B */  j     func_802D2DEC
/* 0F7758 802D2DA8 ACE30004 */   sw    $v1, 4($a3)

.L802D2DAC:
/* 0F775C 802D2DAC 3C05E200 */  lui   $a1, 0xe200
/* 0F7760 802D2DB0 34A5001C */  ori   $a1, $a1, 0x1c
/* 0F7764 802D2DB4 3C030050 */  lui   $v1, 0x50
/* 0F7768 802D2DB8 34634240 */  ori   $v1, $v1, 0x4240
/* 0F776C 802D2DBC 3C06FCFF */  lui   $a2, 0xfcff
/* 0F7770 802D2DC0 34C6FFFF */  ori   $a2, $a2, 0xffff
/* 0F7774 802D2DC4 3C04FFFD */  lui   $a0, 0xfffd
/* 0F7778 802D2DC8 3484F6FB */  ori   $a0, $a0, 0xf6fb
/* 0F777C 802D2DCC 24E20008 */  addiu $v0, $a3, 8
/* 0F7780 802D2DD0 AD020000 */  sw    $v0, ($t0)
/* 0F7784 802D2DD4 24E20010 */  addiu $v0, $a3, 0x10
/* 0F7788 802D2DD8 ACE50000 */  sw    $a1, ($a3)
/* 0F778C 802D2DDC ACE30004 */  sw    $v1, 4($a3)
/* 0F7790 802D2DE0 AD020000 */  sw    $v0, ($t0)
/* 0F7794 802D2DE4 ACE60008 */  sw    $a2, 8($a3)
/* 0F7798 802D2DE8 ACE4000C */  sw    $a0, 0xc($a3)
func_802D2DEC:
/* 0F779C 802D2DEC 3C09E200 */  lui   $t1, 0xe200
/* 0F77A0 802D2DF0 3529001C */  ori   $t1, $t1, 0x1c
/* 0F77A4 802D2DF4 3C070F0A */  lui   $a3, 0xf0a
/* 0F77A8 802D2DF8 34E77008 */  ori   $a3, $a3, 0x7008
/* 0F77AC 802D2DFC 3C0AFCFF */  lui   $t2, 0xfcff
/* 0F77B0 802D2E00 354AFFFF */  ori   $t2, $t2, 0xffff
/* 0F77B4 802D2E04 3C08FFFC */  lui   $t0, 0xfffc
/* 0F77B8 802D2E08 3C06800A */  lui   $a2, 0x800a
/* 0F77BC 802D2E0C 24C6A66C */  addiu $a2, $a2, -0x5994
/* 0F77C0 802D2E10 3508F279 */  ori   $t0, $t0, 0xf279
/* 0F77C4 802D2E14 3C02FA00 */  lui   $v0, 0xfa00
/* 0F77C8 802D2E18 8CC50000 */  lw    $a1, ($a2)
/* 0F77CC 802D2E1C 000C1E00 */  sll   $v1, $t4, 0x18
/* 0F77D0 802D2E20 00A0202D */  daddu $a0, $a1, $zero
/* 0F77D4 802D2E24 24A50008 */  addiu $a1, $a1, 8
/* 0F77D8 802D2E28 ACC50000 */  sw    $a1, ($a2)
/* 0F77DC 802D2E2C AC820000 */  sw    $v0, ($a0)
/* 0F77E0 802D2E30 31A200FF */  andi  $v0, $t5, 0xff
/* 0F77E4 802D2E34 00021400 */  sll   $v0, $v0, 0x10
/* 0F77E8 802D2E38 00621825 */  or    $v1, $v1, $v0
/* 0F77EC 802D2E3C 31C200FF */  andi  $v0, $t6, 0xff
/* 0F77F0 802D2E40 00021200 */  sll   $v0, $v0, 8
/* 0F77F4 802D2E44 00621825 */  or    $v1, $v1, $v0
/* 0F77F8 802D2E48 316200FF */  andi  $v0, $t3, 0xff
/* 0F77FC 802D2E4C 00621825 */  or    $v1, $v1, $v0
/* 0F7800 802D2E50 24A20008 */  addiu $v0, $a1, 8
/* 0F7804 802D2E54 AC830004 */  sw    $v1, 4($a0)
/* 0F7808 802D2E58 31E403FF */  andi  $a0, $t7, 0x3ff
/* 0F780C 802D2E5C 00042380 */  sll   $a0, $a0, 0xe
/* 0F7810 802D2E60 ACC20000 */  sw    $v0, ($a2)
/* 0F7814 802D2E64 330203FF */  andi  $v0, $t8, 0x3ff
/* 0F7818 802D2E68 00021080 */  sll   $v0, $v0, 2
/* 0F781C 802D2E6C 3C03F600 */  lui   $v1, 0xf600
/* 0F7820 802D2E70 00431025 */  or    $v0, $v0, $v1
/* 0F7824 802D2E74 00822025 */  or    $a0, $a0, $v0
/* 0F7828 802D2E78 332303FF */  andi  $v1, $t9, 0x3ff
/* 0F782C 802D2E7C 00031B80 */  sll   $v1, $v1, 0xe
/* 0F7830 802D2E80 320203FF */  andi  $v0, $s0, 0x3ff
/* 0F7834 802D2E84 00021080 */  sll   $v0, $v0, 2
/* 0F7838 802D2E88 00621825 */  or    $v1, $v1, $v0
/* 0F783C 802D2E8C 24A20010 */  addiu $v0, $a1, 0x10
/* 0F7840 802D2E90 ACA40000 */  sw    $a0, ($a1)
/* 0F7844 802D2E94 ACA30004 */  sw    $v1, 4($a1)
/* 0F7848 802D2E98 ACC20000 */  sw    $v0, ($a2)
/* 0F784C 802D2E9C 3C02E700 */  lui   $v0, 0xe700
/* 0F7850 802D2EA0 ACA20008 */  sw    $v0, 8($a1)
/* 0F7854 802D2EA4 24A20018 */  addiu $v0, $a1, 0x18
/* 0F7858 802D2EA8 ACA0000C */  sw    $zero, 0xc($a1)
/* 0F785C 802D2EAC ACC20000 */  sw    $v0, ($a2)
/* 0F7860 802D2EB0 24A20020 */  addiu $v0, $a1, 0x20
/* 0F7864 802D2EB4 ACA90010 */  sw    $t1, 0x10($a1)
/* 0F7868 802D2EB8 ACA70014 */  sw    $a3, 0x14($a1)
/* 0F786C 802D2EBC ACC20000 */  sw    $v0, ($a2)
/* 0F7870 802D2EC0 ACAA0018 */  sw    $t2, 0x18($a1)
/* 0F7874 802D2EC4 ACA8001C */  sw    $t0, 0x1c($a1)
/* 0F7878 802D2EC8 8FB00000 */  lw    $s0, ($sp)
/* 0F787C 802D2ECC 03E00008 */  jr    $ra
/* 0F7880 802D2ED0 27BD0008 */   addiu $sp, $sp, 8

/* 0F7884 802D2ED4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F7888 802D2ED8 308400FF */  andi  $a0, $a0, 0xff
/* 0F788C 802D2EDC 30A500FF */  andi  $a1, $a1, 0xff
/* 0F7890 802D2EE0 30C600FF */  andi  $a2, $a2, 0xff
/* 0F7894 802D2EE4 8FA20038 */  lw    $v0, 0x38($sp)
/* 0F7898 802D2EE8 8FA8003C */  lw    $t0, 0x3c($sp)
/* 0F789C 802D2EEC 8FA30040 */  lw    $v1, 0x40($sp)
/* 0F78A0 802D2EF0 8FA90044 */  lw    $t1, 0x44($sp)
/* 0F78A4 802D2EF4 30E700FF */  andi  $a3, $a3, 0xff
/* 0F78A8 802D2EF8 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F78AC 802D2EFC 00431821 */  addu  $v1, $v0, $v1
/* 0F78B0 802D2F00 01094821 */  addu  $t1, $t0, $t1
/* 0F78B4 802D2F04 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0F78B8 802D2F08 3108FFFF */  andi  $t0, $t0, 0xffff
/* 0F78BC 802D2F0C 3063FFFF */  andi  $v1, $v1, 0xffff
/* 0F78C0 802D2F10 3129FFFF */  andi  $t1, $t1, 0xffff
/* 0F78C4 802D2F14 AFA20010 */  sw    $v0, 0x10($sp)
/* 0F78C8 802D2F18 AFA80014 */  sw    $t0, 0x14($sp)
/* 0F78CC 802D2F1C AFA30018 */  sw    $v1, 0x18($sp)
/* 0F78D0 802D2F20 0C0B4B4C */  jal   func_802D2D30
/* 0F78D4 802D2F24 AFA9001C */   sw    $t1, 0x1c($sp)
/* 0F78D8 802D2F28 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F78DC 802D2F2C 03E00008 */  jr    $ra
/* 0F78E0 802D2F30 27BD0028 */   addiu $sp, $sp, 0x28

func_802D2F34:
/* 0F78E4 802D2F34 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F78E8 802D2F38 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0F78EC 802D2F3C 4485B000 */  mtc1  $a1, $f22
/* 0F78F0 802D2F40 3C0140C9 */  lui   $at, 0x40c9
/* 0F78F4 802D2F44 34210FD0 */  ori   $at, $at, 0xfd0
/* 0F78F8 802D2F48 44810000 */  mtc1  $at, $f0
/* 0F78FC 802D2F4C 44862000 */  mtc1  $a2, $f4
/* 0F7900 802D2F50 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0F7904 802D2F54 46002502 */  mul.s $f20, $f4, $f0
/* 0F7908 802D2F58 00000000 */  nop   
/* 0F790C 802D2F5C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7910 802D2F60 3C0143B4 */  lui   $at, 0x43b4
/* 0F7914 802D2F64 44810000 */  mtc1  $at, $f0
/* 0F7918 802D2F68 0080802D */  daddu $s0, $a0, $zero
/* 0F791C 802D2F6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F7920 802D2F70 4600A503 */  div.s $f20, $f20, $f0
/* 0F7924 802D2F74 0C00A85B */  jal   sin_rad
/* 0F7928 802D2F78 4600A306 */   mov.s $f12, $f20
/* 0F792C 802D2F7C 4600A306 */  mov.s $f12, $f20
/* 0F7930 802D2F80 0C00A874 */  jal   cos_rad
/* 0F7934 802D2F84 46000506 */   mov.s $f20, $f0
/* 0F7938 802D2F88 4614B502 */  mul.s $f20, $f22, $f20
/* 0F793C 802D2F8C 00000000 */  nop   
/* 0F7940 802D2F90 4600B587 */  neg.s $f22, $f22
/* 0F7944 802D2F94 4600B582 */  mul.s $f22, $f22, $f0
/* 0F7948 802D2F98 00000000 */  nop   
/* 0F794C 802D2F9C C6020004 */  lwc1  $f2, 4($s0)
/* 0F7950 802D2FA0 46141080 */  add.s $f2, $f2, $f20
/* 0F7954 802D2FA4 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F7958 802D2FA8 46160000 */  add.s $f0, $f0, $f22
/* 0F795C 802D2FAC E6020004 */  swc1  $f2, 4($s0)
/* 0F7960 802D2FB0 E600000C */  swc1  $f0, 0xc($s0)
/* 0F7964 802D2FB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F7968 802D2FB8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F796C 802D2FBC D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0F7970 802D2FC0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0F7974 802D2FC4 03E00008 */  jr    $ra
/* 0F7978 802D2FC8 27BD0028 */   addiu $sp, $sp, 0x28

/* 0F797C 802D2FCC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F7980 802D2FD0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7984 802D2FD4 0000802D */  daddu $s0, $zero, $zero
/* 0F7988 802D2FD8 AFBF0014 */  sw    $ra, 0x14($sp)
.L802D2FDC:
/* 0F798C 802D2FDC 3C03802E */  lui   $v1, 0x802e
/* 0F7990 802D2FE0 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F7994 802D2FE4 00101080 */  sll   $v0, $s0, 2
/* 0F7998 802D2FE8 00431021 */  addu  $v0, $v0, $v1
/* 0F799C 802D2FEC 8C420000 */  lw    $v0, ($v0)
/* 0F79A0 802D2FF0 10400006 */  beqz  $v0, .L802D300C
/* 0F79A4 802D2FF4 26100001 */   addiu $s0, $s0, 1
/* 0F79A8 802D2FF8 8C440000 */  lw    $a0, ($v0)
/* 0F79AC 802D2FFC 04800003 */  bltz  $a0, .L802D300C
/* 0F79B0 802D3000 00000000 */   nop   
/* 0F79B4 802D3004 0C0483C1 */  jal   func_80120F04
/* 0F79B8 802D3008 00000000 */   nop   
.L802D300C:
/* 0F79BC 802D300C 2A020040 */  slti  $v0, $s0, 0x40
/* 0F79C0 802D3010 1440FFF2 */  bnez  $v0, .L802D2FDC
/* 0F79C4 802D3014 00000000 */   nop   
/* 0F79C8 802D3018 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F79CC 802D301C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F79D0 802D3020 03E00008 */  jr    $ra
/* 0F79D4 802D3024 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F79D8 802D3028 27BDFD68 */  addiu $sp, $sp, -0x298
/* 0F79DC 802D302C F7B60290 */  sdc1  $f22, 0x290($sp)
/* 0F79E0 802D3030 3C013F80 */  lui   $at, 0x3f80
/* 0F79E4 802D3034 4481B000 */  mtc1  $at, $f22
/* 0F79E8 802D3038 AFB20268 */  sw    $s2, 0x268($sp)
/* 0F79EC 802D303C 0000902D */  daddu $s2, $zero, $zero
/* 0F79F0 802D3040 F7B40288 */  sdc1  $f20, 0x288($sp)
/* 0F79F4 802D3044 4480A000 */  mtc1  $zero, $f20
/* 0F79F8 802D3048 27A80058 */  addiu $t0, $sp, 0x58
/* 0F79FC 802D304C AFBE0280 */  sw    $fp, 0x280($sp)
/* 0F7A00 802D3050 27BE0098 */  addiu $fp, $sp, 0x98
/* 0F7A04 802D3054 AFB7027C */  sw    $s7, 0x27c($sp)
/* 0F7A08 802D3058 27B700D8 */  addiu $s7, $sp, 0xd8
/* 0F7A0C 802D305C AFB60278 */  sw    $s6, 0x278($sp)
/* 0F7A10 802D3060 27B601D8 */  addiu $s6, $sp, 0x1d8
/* 0F7A14 802D3064 AFB10264 */  sw    $s1, 0x264($sp)
/* 0F7A18 802D3068 27B10158 */  addiu $s1, $sp, 0x158
/* 0F7A1C 802D306C AFB50274 */  sw    $s5, 0x274($sp)
/* 0F7A20 802D3070 27B50118 */  addiu $s5, $sp, 0x118
/* 0F7A24 802D3074 AFB40270 */  sw    $s4, 0x270($sp)
/* 0F7A28 802D3078 27B40198 */  addiu $s4, $sp, 0x198
/* 0F7A2C 802D307C AFB3026C */  sw    $s3, 0x26c($sp)
/* 0F7A30 802D3080 27B30218 */  addiu $s3, $sp, 0x218
/* 0F7A34 802D3084 AFBF0284 */  sw    $ra, 0x284($sp)
/* 0F7A38 802D3088 AFB00260 */  sw    $s0, 0x260($sp)
/* 0F7A3C 802D308C AFA80258 */  sw    $t0, 0x258($sp)
.L802D3090:
/* 0F7A40 802D3090 3C03802E */  lui   $v1, 0x802e
/* 0F7A44 802D3094 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F7A48 802D3098 00121080 */  sll   $v0, $s2, 2
/* 0F7A4C 802D309C 00431021 */  addu  $v0, $v0, $v1
/* 0F7A50 802D30A0 8C500000 */  lw    $s0, ($v0)
/* 0F7A54 802D30A4 5200003D */  beql  $s0, $zero, .L802D319C
/* 0F7A58 802D30A8 26520001 */   addiu $s2, $s2, 1
/* 0F7A5C 802D30AC 8E040000 */  lw    $a0, ($s0)
/* 0F7A60 802D30B0 0482003A */  bltzl $a0, .L802D319C
/* 0F7A64 802D30B4 26520001 */   addiu $s2, $s2, 1
/* 0F7A68 802D30B8 0C048B77 */  jal   func_80122DDC
/* 0F7A6C 802D30BC 00000000 */   nop   
/* 0F7A70 802D30C0 8C420000 */  lw    $v0, ($v0)
/* 0F7A74 802D30C4 30420008 */  andi  $v0, $v0, 8
/* 0F7A78 802D30C8 54400034 */  bnezl $v0, .L802D319C
/* 0F7A7C 802D30CC 26520001 */   addiu $s2, $s2, 1
/* 0F7A80 802D30D0 8E050004 */  lw    $a1, 4($s0)
/* 0F7A84 802D30D4 8E060008 */  lw    $a2, 8($s0)
/* 0F7A88 802D30D8 8E07000C */  lw    $a3, 0xc($s0)
/* 0F7A8C 802D30DC 0C019E40 */  jal   guTranslateF
/* 0F7A90 802D30E0 27A40018 */   addiu $a0, $sp, 0x18
/* 0F7A94 802D30E4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0F7A98 802D30E8 8E050010 */  lw    $a1, 0x10($s0)
/* 0F7A9C 802D30EC 4406B000 */  mfc1  $a2, $f22
/* 0F7AA0 802D30F0 4407A000 */  mfc1  $a3, $f20
/* 0F7AA4 802D30F4 8FA40258 */  lw    $a0, 0x258($sp)
/* 0F7AA8 802D30F8 0C019EC8 */  jal   guRotateF
/* 0F7AAC 802D30FC 26520001 */   addiu $s2, $s2, 1
/* 0F7AB0 802D3100 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0F7AB4 802D3104 8E050014 */  lw    $a1, 0x14($s0)
/* 0F7AB8 802D3108 4406A000 */  mfc1  $a2, $f20
/* 0F7ABC 802D310C 4407B000 */  mfc1  $a3, $f22
/* 0F7AC0 802D3110 0C019EC8 */  jal   guRotateF
/* 0F7AC4 802D3114 03C0202D */   daddu $a0, $fp, $zero
/* 0F7AC8 802D3118 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0F7ACC 802D311C 8E050018 */  lw    $a1, 0x18($s0)
/* 0F7AD0 802D3120 4406A000 */  mfc1  $a2, $f20
/* 0F7AD4 802D3124 4407A000 */  mfc1  $a3, $f20
/* 0F7AD8 802D3128 0C019EC8 */  jal   guRotateF
/* 0F7ADC 802D312C 02E0202D */   daddu $a0, $s7, $zero
/* 0F7AE0 802D3130 8E05001C */  lw    $a1, 0x1c($s0)
/* 0F7AE4 802D3134 8E060020 */  lw    $a2, 0x20($s0)
/* 0F7AE8 802D3138 8E070024 */  lw    $a3, 0x24($s0)
/* 0F7AEC 802D313C 0C019DF0 */  jal   guScaleF
/* 0F7AF0 802D3140 02C0202D */   daddu $a0, $s6, $zero
/* 0F7AF4 802D3144 02E0202D */  daddu $a0, $s7, $zero
/* 0F7AF8 802D3148 8FA50258 */  lw    $a1, 0x258($sp)
/* 0F7AFC 802D314C 0C019D80 */  jal   guMtxCatF
/* 0F7B00 802D3150 0220302D */   daddu $a2, $s1, $zero
/* 0F7B04 802D3154 0220202D */  daddu $a0, $s1, $zero
/* 0F7B08 802D3158 03C0282D */  daddu $a1, $fp, $zero
/* 0F7B0C 802D315C 0C019D80 */  jal   guMtxCatF
/* 0F7B10 802D3160 02A0302D */   daddu $a2, $s5, $zero
/* 0F7B14 802D3164 02C0202D */  daddu $a0, $s6, $zero
/* 0F7B18 802D3168 02A0282D */  daddu $a1, $s5, $zero
/* 0F7B1C 802D316C 0C019D80 */  jal   guMtxCatF
/* 0F7B20 802D3170 0220302D */   daddu $a2, $s1, $zero
/* 0F7B24 802D3174 0220202D */  daddu $a0, $s1, $zero
/* 0F7B28 802D3178 27A50018 */  addiu $a1, $sp, 0x18
/* 0F7B2C 802D317C 0C019D80 */  jal   guMtxCatF
/* 0F7B30 802D3180 0280302D */   daddu $a2, $s4, $zero
/* 0F7B34 802D3184 0280202D */  daddu $a0, $s4, $zero
/* 0F7B38 802D3188 0C019D40 */  jal   guMtxF2L
/* 0F7B3C 802D318C 0260282D */   daddu $a1, $s3, $zero
/* 0F7B40 802D3190 8E040000 */  lw    $a0, ($s0)
/* 0F7B44 802D3194 0C04873A */  jal   func_80121CE8
/* 0F7B48 802D3198 0260282D */   daddu $a1, $s3, $zero
.L802D319C:
/* 0F7B4C 802D319C 2A420040 */  slti  $v0, $s2, 0x40
/* 0F7B50 802D31A0 1440FFBB */  bnez  $v0, .L802D3090
/* 0F7B54 802D31A4 00000000 */   nop   
/* 0F7B58 802D31A8 8FBF0284 */  lw    $ra, 0x284($sp)
/* 0F7B5C 802D31AC 8FBE0280 */  lw    $fp, 0x280($sp)
/* 0F7B60 802D31B0 8FB7027C */  lw    $s7, 0x27c($sp)
/* 0F7B64 802D31B4 8FB60278 */  lw    $s6, 0x278($sp)
/* 0F7B68 802D31B8 8FB50274 */  lw    $s5, 0x274($sp)
/* 0F7B6C 802D31BC 8FB40270 */  lw    $s4, 0x270($sp)
/* 0F7B70 802D31C0 8FB3026C */  lw    $s3, 0x26c($sp)
/* 0F7B74 802D31C4 8FB20268 */  lw    $s2, 0x268($sp)
/* 0F7B78 802D31C8 8FB10264 */  lw    $s1, 0x264($sp)
/* 0F7B7C 802D31CC 8FB00260 */  lw    $s0, 0x260($sp)
/* 0F7B80 802D31D0 D7B60290 */  ldc1  $f22, 0x290($sp)
/* 0F7B84 802D31D4 D7B40288 */  ldc1  $f20, 0x288($sp)
/* 0F7B88 802D31D8 03E00008 */  jr    $ra
/* 0F7B8C 802D31DC 27BD0298 */   addiu $sp, $sp, 0x298

/* 0F7B90 802D31E0 27BDFD68 */  addiu $sp, $sp, -0x298
/* 0F7B94 802D31E4 F7B60290 */  sdc1  $f22, 0x290($sp)
/* 0F7B98 802D31E8 3C013F80 */  lui   $at, 0x3f80
/* 0F7B9C 802D31EC 4481B000 */  mtc1  $at, $f22
/* 0F7BA0 802D31F0 AFB20268 */  sw    $s2, 0x268($sp)
/* 0F7BA4 802D31F4 0000902D */  daddu $s2, $zero, $zero
/* 0F7BA8 802D31F8 F7B40288 */  sdc1  $f20, 0x288($sp)
/* 0F7BAC 802D31FC 4480A000 */  mtc1  $zero, $f20
/* 0F7BB0 802D3200 27A80058 */  addiu $t0, $sp, 0x58
/* 0F7BB4 802D3204 AFBE0280 */  sw    $fp, 0x280($sp)
/* 0F7BB8 802D3208 27BE0098 */  addiu $fp, $sp, 0x98
/* 0F7BBC 802D320C AFB7027C */  sw    $s7, 0x27c($sp)
/* 0F7BC0 802D3210 27B700D8 */  addiu $s7, $sp, 0xd8
/* 0F7BC4 802D3214 AFB60278 */  sw    $s6, 0x278($sp)
/* 0F7BC8 802D3218 27B601D8 */  addiu $s6, $sp, 0x1d8
/* 0F7BCC 802D321C AFB10264 */  sw    $s1, 0x264($sp)
/* 0F7BD0 802D3220 27B10158 */  addiu $s1, $sp, 0x158
/* 0F7BD4 802D3224 AFB50274 */  sw    $s5, 0x274($sp)
/* 0F7BD8 802D3228 27B50118 */  addiu $s5, $sp, 0x118
/* 0F7BDC 802D322C AFB40270 */  sw    $s4, 0x270($sp)
/* 0F7BE0 802D3230 27B40198 */  addiu $s4, $sp, 0x198
/* 0F7BE4 802D3234 AFB3026C */  sw    $s3, 0x26c($sp)
/* 0F7BE8 802D3238 27B30218 */  addiu $s3, $sp, 0x218
/* 0F7BEC 802D323C AFBF0284 */  sw    $ra, 0x284($sp)
/* 0F7BF0 802D3240 AFB00260 */  sw    $s0, 0x260($sp)
/* 0F7BF4 802D3244 AFA80258 */  sw    $t0, 0x258($sp)
.L802D3248:
/* 0F7BF8 802D3248 3C03802E */  lui   $v1, 0x802e
/* 0F7BFC 802D324C 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F7C00 802D3250 00121080 */  sll   $v0, $s2, 2
/* 0F7C04 802D3254 00431021 */  addu  $v0, $v0, $v1
/* 0F7C08 802D3258 8C500000 */  lw    $s0, ($v0)
/* 0F7C0C 802D325C 5200003D */  beql  $s0, $zero, .L802D3354
/* 0F7C10 802D3260 26520001 */   addiu $s2, $s2, 1
/* 0F7C14 802D3264 8E040000 */  lw    $a0, ($s0)
/* 0F7C18 802D3268 0482003A */  bltzl $a0, .L802D3354
/* 0F7C1C 802D326C 26520001 */   addiu $s2, $s2, 1
/* 0F7C20 802D3270 0C048B77 */  jal   func_80122DDC
/* 0F7C24 802D3274 00000000 */   nop   
/* 0F7C28 802D3278 8C420000 */  lw    $v0, ($v0)
/* 0F7C2C 802D327C 30420008 */  andi  $v0, $v0, 8
/* 0F7C30 802D3280 50400034 */  beql  $v0, $zero, .L802D3354
/* 0F7C34 802D3284 26520001 */   addiu $s2, $s2, 1
/* 0F7C38 802D3288 8E050004 */  lw    $a1, 4($s0)
/* 0F7C3C 802D328C 8E060008 */  lw    $a2, 8($s0)
/* 0F7C40 802D3290 8E07000C */  lw    $a3, 0xc($s0)
/* 0F7C44 802D3294 0C019E40 */  jal   guTranslateF
/* 0F7C48 802D3298 27A40018 */   addiu $a0, $sp, 0x18
/* 0F7C4C 802D329C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0F7C50 802D32A0 8E050010 */  lw    $a1, 0x10($s0)
/* 0F7C54 802D32A4 4406B000 */  mfc1  $a2, $f22
/* 0F7C58 802D32A8 4407A000 */  mfc1  $a3, $f20
/* 0F7C5C 802D32AC 8FA40258 */  lw    $a0, 0x258($sp)
/* 0F7C60 802D32B0 0C019EC8 */  jal   guRotateF
/* 0F7C64 802D32B4 26520001 */   addiu $s2, $s2, 1
/* 0F7C68 802D32B8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0F7C6C 802D32BC 8E050014 */  lw    $a1, 0x14($s0)
/* 0F7C70 802D32C0 4406A000 */  mfc1  $a2, $f20
/* 0F7C74 802D32C4 4407B000 */  mfc1  $a3, $f22
/* 0F7C78 802D32C8 0C019EC8 */  jal   guRotateF
/* 0F7C7C 802D32CC 03C0202D */   daddu $a0, $fp, $zero
/* 0F7C80 802D32D0 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0F7C84 802D32D4 8E050018 */  lw    $a1, 0x18($s0)
/* 0F7C88 802D32D8 4406A000 */  mfc1  $a2, $f20
/* 0F7C8C 802D32DC 4407A000 */  mfc1  $a3, $f20
/* 0F7C90 802D32E0 0C019EC8 */  jal   guRotateF
/* 0F7C94 802D32E4 02E0202D */   daddu $a0, $s7, $zero
/* 0F7C98 802D32E8 8E05001C */  lw    $a1, 0x1c($s0)
/* 0F7C9C 802D32EC 8E060020 */  lw    $a2, 0x20($s0)
/* 0F7CA0 802D32F0 8E070024 */  lw    $a3, 0x24($s0)
/* 0F7CA4 802D32F4 0C019DF0 */  jal   guScaleF
/* 0F7CA8 802D32F8 02C0202D */   daddu $a0, $s6, $zero
/* 0F7CAC 802D32FC 02E0202D */  daddu $a0, $s7, $zero
/* 0F7CB0 802D3300 8FA50258 */  lw    $a1, 0x258($sp)
/* 0F7CB4 802D3304 0C019D80 */  jal   guMtxCatF
/* 0F7CB8 802D3308 0220302D */   daddu $a2, $s1, $zero
/* 0F7CBC 802D330C 0220202D */  daddu $a0, $s1, $zero
/* 0F7CC0 802D3310 03C0282D */  daddu $a1, $fp, $zero
/* 0F7CC4 802D3314 0C019D80 */  jal   guMtxCatF
/* 0F7CC8 802D3318 02A0302D */   daddu $a2, $s5, $zero
/* 0F7CCC 802D331C 02C0202D */  daddu $a0, $s6, $zero
/* 0F7CD0 802D3320 02A0282D */  daddu $a1, $s5, $zero
/* 0F7CD4 802D3324 0C019D80 */  jal   guMtxCatF
/* 0F7CD8 802D3328 0220302D */   daddu $a2, $s1, $zero
/* 0F7CDC 802D332C 0220202D */  daddu $a0, $s1, $zero
/* 0F7CE0 802D3330 27A50018 */  addiu $a1, $sp, 0x18
/* 0F7CE4 802D3334 0C019D80 */  jal   guMtxCatF
/* 0F7CE8 802D3338 0280302D */   daddu $a2, $s4, $zero
/* 0F7CEC 802D333C 0280202D */  daddu $a0, $s4, $zero
/* 0F7CF0 802D3340 0C019D40 */  jal   guMtxF2L
/* 0F7CF4 802D3344 0260282D */   daddu $a1, $s3, $zero
/* 0F7CF8 802D3348 8E040000 */  lw    $a0, ($s0)
/* 0F7CFC 802D334C 0C0488A2 */  jal   func_80122288
/* 0F7D00 802D3350 0260282D */   daddu $a1, $s3, $zero
.L802D3354:
/* 0F7D04 802D3354 2A420040 */  slti  $v0, $s2, 0x40
/* 0F7D08 802D3358 1440FFBB */  bnez  $v0, .L802D3248
/* 0F7D0C 802D335C 00000000 */   nop   
/* 0F7D10 802D3360 8FBF0284 */  lw    $ra, 0x284($sp)
/* 0F7D14 802D3364 8FBE0280 */  lw    $fp, 0x280($sp)
/* 0F7D18 802D3368 8FB7027C */  lw    $s7, 0x27c($sp)
/* 0F7D1C 802D336C 8FB60278 */  lw    $s6, 0x278($sp)
/* 0F7D20 802D3370 8FB50274 */  lw    $s5, 0x274($sp)
/* 0F7D24 802D3374 8FB40270 */  lw    $s4, 0x270($sp)
/* 0F7D28 802D3378 8FB3026C */  lw    $s3, 0x26c($sp)
/* 0F7D2C 802D337C 8FB20268 */  lw    $s2, 0x268($sp)
/* 0F7D30 802D3380 8FB10264 */  lw    $s1, 0x264($sp)
/* 0F7D34 802D3384 8FB00260 */  lw    $s0, 0x260($sp)
/* 0F7D38 802D3388 D7B60290 */  ldc1  $f22, 0x290($sp)
/* 0F7D3C 802D338C D7B40288 */  ldc1  $f20, 0x288($sp)
/* 0F7D40 802D3390 03E00008 */  jr    $ra
/* 0F7D44 802D3394 27BD0298 */   addiu $sp, $sp, 0x298

/* 0F7D48 802D3398 3C028007 */  lui   $v0, 0x8007
/* 0F7D4C 802D339C 8C42419C */  lw    $v0, 0x419c($v0)
/* 0F7D50 802D33A0 80420070 */  lb    $v0, 0x70($v0)
/* 0F7D54 802D33A4 14400005 */  bnez  $v0, .L802D33BC
/* 0F7D58 802D33A8 00000000 */   nop   
/* 0F7D5C 802D33AC 3C02802E */  lui   $v0, 0x802e
/* 0F7D60 802D33B0 2442B6C0 */  addiu $v0, $v0, -0x4940
/* 0F7D64 802D33B4 080B4CF1 */  j     func_802D33C4
/* 0F7D68 802D33B8 00000000 */   nop   

.L802D33BC:
/* 0F7D6C 802D33BC 3C02802E */  lui   $v0, 0x802e
/* 0F7D70 802D33C0 2442B5C0 */  addiu $v0, $v0, -0x4a40
func_802D33C4:
/* 0F7D74 802D33C4 3C01802E */  lui   $at, 0x802e
/* 0F7D78 802D33C8 AC22B7C0 */  sw    $v0, -0x4840($at)
/* 0F7D7C 802D33CC 03E00008 */  jr    $ra
/* 0F7D80 802D33D0 24020002 */   addiu $v0, $zero, 2

/* 0F7D84 802D33D4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F7D88 802D33D8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7D8C 802D33DC 0080882D */  daddu $s1, $a0, $zero
/* 0F7D90 802D33E0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F7D94 802D33E4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7D98 802D33E8 8E30000C */  lw    $s0, 0xc($s1)
/* 0F7D9C 802D33EC 8E050000 */  lw    $a1, ($s0)
/* 0F7DA0 802D33F0 0C0B1EAF */  jal   get_variable
/* 0F7DA4 802D33F4 26100004 */   addiu $s0, $s0, 4
/* 0F7DA8 802D33F8 0220202D */  daddu $a0, $s1, $zero
/* 0F7DAC 802D33FC 8E050000 */  lw    $a1, ($s0)
/* 0F7DB0 802D3400 0C0B1EAF */  jal   get_variable
/* 0F7DB4 802D3404 0040802D */   daddu $s0, $v0, $zero
/* 0F7DB8 802D3408 0040202D */  daddu $a0, $v0, $zero
/* 0F7DBC 802D340C 3C02802E */  lui   $v0, 0x802e
/* 0F7DC0 802D3410 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F7DC4 802D3414 00108080 */  sll   $s0, $s0, 2
/* 0F7DC8 802D3418 02028021 */  addu  $s0, $s0, $v0
/* 0F7DCC 802D341C 0C048338 */  jal   func_80120CE0
/* 0F7DD0 802D3420 8E100000 */   lw    $s0, ($s0)
/* 0F7DD4 802D3424 3C013F80 */  lui   $at, 0x3f80
/* 0F7DD8 802D3428 44810000 */  mtc1  $at, $f0
/* 0F7DDC 802D342C AE020000 */  sw    $v0, ($s0)
/* 0F7DE0 802D3430 0040202D */  daddu $a0, $v0, $zero
/* 0F7DE4 802D3434 AE000004 */  sw    $zero, 4($s0)
/* 0F7DE8 802D3438 AE000008 */  sw    $zero, 8($s0)
/* 0F7DEC 802D343C AE00000C */  sw    $zero, 0xc($s0)
/* 0F7DF0 802D3440 AE000010 */  sw    $zero, 0x10($s0)
/* 0F7DF4 802D3444 AE000014 */  sw    $zero, 0x14($s0)
/* 0F7DF8 802D3448 AE000018 */  sw    $zero, 0x18($s0)
/* 0F7DFC 802D344C E600001C */  swc1  $f0, 0x1c($s0)
/* 0F7E00 802D3450 E6000020 */  swc1  $f0, 0x20($s0)
/* 0F7E04 802D3454 0C0483C1 */  jal   func_80120F04
/* 0F7E08 802D3458 E6000024 */   swc1  $f0, 0x24($s0)
/* 0F7E0C 802D345C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F7E10 802D3460 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F7E14 802D3464 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F7E18 802D3468 24020002 */  addiu $v0, $zero, 2
/* 0F7E1C 802D346C 03E00008 */  jr    $ra
/* 0F7E20 802D3470 27BD0020 */   addiu $sp, $sp, 0x20

CreateImageObj:
/* 0F7E24 802D3474 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F7E28 802D3478 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F7E2C 802D347C 0080902D */  daddu $s2, $a0, $zero
/* 0F7E30 802D3480 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F7E34 802D3484 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F7E38 802D3488 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7E3C 802D348C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7E40 802D3490 8E42000C */  lw    $v0, 0xc($s2)
/* 0F7E44 802D3494 8C450004 */  lw    $a1, 4($v0)
/* 0F7E48 802D3498 8C530000 */  lw    $s3, ($v0)
/* 0F7E4C 802D349C 0C0B1EAF */  jal   get_variable
/* 0F7E50 802D34A0 0000882D */   daddu $s1, $zero, $zero
/* 0F7E54 802D34A4 0040202D */  daddu $a0, $v0, $zero
/* 0F7E58 802D34A8 3C03802E */  lui   $v1, 0x802e
/* 0F7E5C 802D34AC 8C63B7C0 */  lw    $v1, -0x4840($v1)
.L802D34B0:
/* 0F7E60 802D34B0 8C700000 */  lw    $s0, ($v1)
/* 0F7E64 802D34B4 8E020000 */  lw    $v0, ($s0)
/* 0F7E68 802D34B8 04400006 */  bltz  $v0, .L802D34D4
/* 0F7E6C 802D34BC 2A220040 */   slti  $v0, $s1, 0x40
/* 0F7E70 802D34C0 26310001 */  addiu $s1, $s1, 1
/* 0F7E74 802D34C4 2A220040 */  slti  $v0, $s1, 0x40
/* 0F7E78 802D34C8 1440FFF9 */  bnez  $v0, .L802D34B0
/* 0F7E7C 802D34CC 24630004 */   addiu $v1, $v1, 4
/* 0F7E80 802D34D0 2A220040 */  slti  $v0, $s1, 0x40
.L802D34D4:
/* 0F7E84 802D34D4 10400016 */  beqz  $v0, .L802D3530
/* 0F7E88 802D34D8 24020002 */   addiu $v0, $zero, 2
/* 0F7E8C 802D34DC 0C048338 */  jal   func_80120CE0
/* 0F7E90 802D34E0 00000000 */   nop   
/* 0F7E94 802D34E4 3C013F80 */  lui   $at, 0x3f80
/* 0F7E98 802D34E8 44810000 */  mtc1  $at, $f0
/* 0F7E9C 802D34EC AE020000 */  sw    $v0, ($s0)
/* 0F7EA0 802D34F0 0040202D */  daddu $a0, $v0, $zero
/* 0F7EA4 802D34F4 AE000004 */  sw    $zero, 4($s0)
/* 0F7EA8 802D34F8 AE000008 */  sw    $zero, 8($s0)
/* 0F7EAC 802D34FC AE00000C */  sw    $zero, 0xc($s0)
/* 0F7EB0 802D3500 AE000010 */  sw    $zero, 0x10($s0)
/* 0F7EB4 802D3504 AE000014 */  sw    $zero, 0x14($s0)
/* 0F7EB8 802D3508 AE000018 */  sw    $zero, 0x18($s0)
/* 0F7EBC 802D350C E600001C */  swc1  $f0, 0x1c($s0)
/* 0F7EC0 802D3510 E6000020 */  swc1  $f0, 0x20($s0)
/* 0F7EC4 802D3514 0C0483C1 */  jal   func_80120F04
/* 0F7EC8 802D3518 E6000024 */   swc1  $f0, 0x24($s0)
/* 0F7ECC 802D351C 0240202D */  daddu $a0, $s2, $zero
/* 0F7ED0 802D3520 0260282D */  daddu $a1, $s3, $zero
/* 0F7ED4 802D3524 0C0B2026 */  jal   set_variable
/* 0F7ED8 802D3528 0220302D */   daddu $a2, $s1, $zero
/* 0F7EDC 802D352C 24020002 */  addiu $v0, $zero, 2
.L802D3530:
/* 0F7EE0 802D3530 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F7EE4 802D3534 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F7EE8 802D3538 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F7EEC 802D353C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F7EF0 802D3540 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F7EF4 802D3544 03E00008 */  jr    $ra
/* 0F7EF8 802D3548 27BD0028 */   addiu $sp, $sp, 0x28

/* 0F7EFC 802D354C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F7F00 802D3550 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F7F04 802D3554 0080902D */  daddu $s2, $a0, $zero
/* 0F7F08 802D3558 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F7F0C 802D355C AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F7F10 802D3560 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F7F14 802D3564 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7F18 802D3568 8E42000C */  lw    $v0, 0xc($s2)
/* 0F7F1C 802D356C 8C450004 */  lw    $a1, 4($v0)
/* 0F7F20 802D3570 8C530000 */  lw    $s3, ($v0)
/* 0F7F24 802D3574 0C0B1EAF */  jal   get_variable
/* 0F7F28 802D3578 0000882D */   daddu $s1, $zero, $zero
/* 0F7F2C 802D357C 0040202D */  daddu $a0, $v0, $zero
/* 0F7F30 802D3580 3C03802E */  lui   $v1, 0x802e
/* 0F7F34 802D3584 8C63B7C0 */  lw    $v1, -0x4840($v1)
.L802D3588:
/* 0F7F38 802D3588 8C700000 */  lw    $s0, ($v1)
/* 0F7F3C 802D358C 8E020000 */  lw    $v0, ($s0)
/* 0F7F40 802D3590 04400006 */  bltz  $v0, .L802D35AC
/* 0F7F44 802D3594 2A220040 */   slti  $v0, $s1, 0x40
/* 0F7F48 802D3598 26310001 */  addiu $s1, $s1, 1
/* 0F7F4C 802D359C 2A220040 */  slti  $v0, $s1, 0x40
/* 0F7F50 802D35A0 1440FFF9 */  bnez  $v0, .L802D3588
/* 0F7F54 802D35A4 24630004 */   addiu $v1, $v1, 4
/* 0F7F58 802D35A8 2A220040 */  slti  $v0, $s1, 0x40
.L802D35AC:
/* 0F7F5C 802D35AC 10400016 */  beqz  $v0, .L802D3608
/* 0F7F60 802D35B0 24020002 */   addiu $v0, $zero, 2
/* 0F7F64 802D35B4 0C048379 */  jal   func_80120DE4
/* 0F7F68 802D35B8 00000000 */   nop   
/* 0F7F6C 802D35BC 3C013F80 */  lui   $at, 0x3f80
/* 0F7F70 802D35C0 44810000 */  mtc1  $at, $f0
/* 0F7F74 802D35C4 AE020000 */  sw    $v0, ($s0)
/* 0F7F78 802D35C8 0040202D */  daddu $a0, $v0, $zero
/* 0F7F7C 802D35CC AE000004 */  sw    $zero, 4($s0)
/* 0F7F80 802D35D0 AE000008 */  sw    $zero, 8($s0)
/* 0F7F84 802D35D4 AE00000C */  sw    $zero, 0xc($s0)
/* 0F7F88 802D35D8 AE000010 */  sw    $zero, 0x10($s0)
/* 0F7F8C 802D35DC AE000014 */  sw    $zero, 0x14($s0)
/* 0F7F90 802D35E0 AE000018 */  sw    $zero, 0x18($s0)
/* 0F7F94 802D35E4 E600001C */  swc1  $f0, 0x1c($s0)
/* 0F7F98 802D35E8 E6000020 */  swc1  $f0, 0x20($s0)
/* 0F7F9C 802D35EC 0C0483C1 */  jal   func_80120F04
/* 0F7FA0 802D35F0 E6000024 */   swc1  $f0, 0x24($s0)
/* 0F7FA4 802D35F4 0240202D */  daddu $a0, $s2, $zero
/* 0F7FA8 802D35F8 0260282D */  daddu $a1, $s3, $zero
/* 0F7FAC 802D35FC 0C0B2026 */  jal   set_variable
/* 0F7FB0 802D3600 0220302D */   daddu $a2, $s1, $zero
/* 0F7FB4 802D3604 24020002 */  addiu $v0, $zero, 2
.L802D3608:
/* 0F7FB8 802D3608 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F7FBC 802D360C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F7FC0 802D3610 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F7FC4 802D3614 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F7FC8 802D3618 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F7FCC 802D361C 03E00008 */  jr    $ra
/* 0F7FD0 802D3620 27BD0028 */   addiu $sp, $sp, 0x28

RemoveImageObj:
/* 0F7FD4 802D3624 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F7FD8 802D3628 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F7FDC 802D362C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F7FE0 802D3630 8C82000C */  lw    $v0, 0xc($a0)
/* 0F7FE4 802D3634 0C0B1EAF */  jal   get_variable
/* 0F7FE8 802D3638 8C450000 */   lw    $a1, ($v0)
/* 0F7FEC 802D363C 3C03802E */  lui   $v1, 0x802e
/* 0F7FF0 802D3640 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F7FF4 802D3644 00021080 */  sll   $v0, $v0, 2
/* 0F7FF8 802D3648 00431021 */  addu  $v0, $v0, $v1
/* 0F7FFC 802D364C 8C500000 */  lw    $s0, ($v0)
/* 0F8000 802D3650 0C048B7F */  jal   func_80122DFC
/* 0F8004 802D3654 8E040000 */   lw    $a0, ($s0)
/* 0F8008 802D3658 2403FFFF */  addiu $v1, $zero, -1
/* 0F800C 802D365C AE030000 */  sw    $v1, ($s0)
/* 0F8010 802D3660 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F8014 802D3664 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8018 802D3668 24020002 */  addiu $v0, $zero, 2
/* 0F801C 802D366C 03E00008 */  jr    $ra
/* 0F8020 802D3670 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F8024 802D3674 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F8028 802D3678 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F802C 802D367C 0080882D */  daddu $s1, $a0, $zero
/* 0F8030 802D3680 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F8034 802D3684 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8038 802D3688 8E30000C */  lw    $s0, 0xc($s1)
/* 0F803C 802D368C 8E050000 */  lw    $a1, ($s0)
/* 0F8040 802D3690 0C0B1EAF */  jal   get_variable
/* 0F8044 802D3694 26100004 */   addiu $s0, $s0, 4
/* 0F8048 802D3698 0220202D */  daddu $a0, $s1, $zero
/* 0F804C 802D369C 8E050000 */  lw    $a1, ($s0)
/* 0F8050 802D36A0 0C0B1EAF */  jal   get_variable
/* 0F8054 802D36A4 0040802D */   daddu $s0, $v0, $zero
/* 0F8058 802D36A8 3C03802E */  lui   $v1, 0x802e
/* 0F805C 802D36AC 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F8060 802D36B0 00108080 */  sll   $s0, $s0, 2
/* 0F8064 802D36B4 02038021 */  addu  $s0, $s0, $v1
/* 0F8068 802D36B8 8E030000 */  lw    $v1, ($s0)
/* 0F806C 802D36BC 8C640000 */  lw    $a0, ($v1)
/* 0F8070 802D36C0 0C048B5F */  jal   func_80122D7C
/* 0F8074 802D36C4 0040282D */   daddu $a1, $v0, $zero
/* 0F8078 802D36C8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F807C 802D36CC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8080 802D36D0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8084 802D36D4 24020002 */  addiu $v0, $zero, 2
/* 0F8088 802D36D8 03E00008 */  jr    $ra
/* 0F808C 802D36DC 27BD0020 */   addiu $sp, $sp, 0x20

SetObjPosition:
/* 0F8090 802D36E0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F8094 802D36E4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8098 802D36E8 0080902D */  daddu $s2, $a0, $zero
/* 0F809C 802D36EC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F80A0 802D36F0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F80A4 802D36F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F80A8 802D36F8 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F80AC 802D36FC F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F80B0 802D3700 8E50000C */  lw    $s0, 0xc($s2)
/* 0F80B4 802D3704 8E050000 */  lw    $a1, ($s0)
/* 0F80B8 802D3708 0C0B1EAF */  jal   get_variable
/* 0F80BC 802D370C 26100004 */   addiu $s0, $s0, 4
/* 0F80C0 802D3710 8E050000 */  lw    $a1, ($s0)
/* 0F80C4 802D3714 26100004 */  addiu $s0, $s0, 4
/* 0F80C8 802D3718 0240202D */  daddu $a0, $s2, $zero
/* 0F80CC 802D371C 0C0B210B */  jal   get_float_variable
/* 0F80D0 802D3720 0040882D */   daddu $s1, $v0, $zero
/* 0F80D4 802D3724 8E050000 */  lw    $a1, ($s0)
/* 0F80D8 802D3728 26100004 */  addiu $s0, $s0, 4
/* 0F80DC 802D372C 0240202D */  daddu $a0, $s2, $zero
/* 0F80E0 802D3730 0C0B210B */  jal   get_float_variable
/* 0F80E4 802D3734 46000586 */   mov.s $f22, $f0
/* 0F80E8 802D3738 0240202D */  daddu $a0, $s2, $zero
/* 0F80EC 802D373C 8E050000 */  lw    $a1, ($s0)
/* 0F80F0 802D3740 0C0B210B */  jal   get_float_variable
/* 0F80F4 802D3744 46000506 */   mov.s $f20, $f0
/* 0F80F8 802D3748 3C02802E */  lui   $v0, 0x802e
/* 0F80FC 802D374C 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8100 802D3750 00118880 */  sll   $s1, $s1, 2
/* 0F8104 802D3754 02228821 */  addu  $s1, $s1, $v0
/* 0F8108 802D3758 8E230000 */  lw    $v1, ($s1)
/* 0F810C 802D375C E4760004 */  swc1  $f22, 4($v1)
/* 0F8110 802D3760 E4740008 */  swc1  $f20, 8($v1)
/* 0F8114 802D3764 E460000C */  swc1  $f0, 0xc($v1)
/* 0F8118 802D3768 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F811C 802D376C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8120 802D3770 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8124 802D3774 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8128 802D3778 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F812C 802D377C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F8130 802D3780 24020002 */  addiu $v0, $zero, 2
/* 0F8134 802D3784 03E00008 */  jr    $ra
/* 0F8138 802D3788 27BD0030 */   addiu $sp, $sp, 0x30

/* 0F813C 802D378C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F8140 802D3790 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8144 802D3794 0080902D */  daddu $s2, $a0, $zero
/* 0F8148 802D3798 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0F814C 802D379C AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F8150 802D37A0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8154 802D37A4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8158 802D37A8 8E50000C */  lw    $s0, 0xc($s2)
/* 0F815C 802D37AC 8E050000 */  lw    $a1, ($s0)
/* 0F8160 802D37B0 0C0B1EAF */  jal   get_variable
/* 0F8164 802D37B4 26100004 */   addiu $s0, $s0, 4
/* 0F8168 802D37B8 8E050000 */  lw    $a1, ($s0)
/* 0F816C 802D37BC 26100004 */  addiu $s0, $s0, 4
/* 0F8170 802D37C0 00021080 */  sll   $v0, $v0, 2
/* 0F8174 802D37C4 3C03802E */  lui   $v1, 0x802e
/* 0F8178 802D37C8 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F817C 802D37CC 00431021 */  addu  $v0, $v0, $v1
/* 0F8180 802D37D0 8C510000 */  lw    $s1, ($v0)
/* 0F8184 802D37D4 8E130000 */  lw    $s3, ($s0)
/* 0F8188 802D37D8 C6200004 */  lwc1  $f0, 4($s1)
/* 0F818C 802D37DC 8E100004 */  lw    $s0, 4($s0)
/* 0F8190 802D37E0 4600008D */  trunc.w.s $f2, $f0
/* 0F8194 802D37E4 44061000 */  mfc1  $a2, $f2
/* 0F8198 802D37E8 0C0B2026 */  jal   set_variable
/* 0F819C 802D37EC 0240202D */   daddu $a0, $s2, $zero
/* 0F81A0 802D37F0 0240202D */  daddu $a0, $s2, $zero
/* 0F81A4 802D37F4 C6200008 */  lwc1  $f0, 8($s1)
/* 0F81A8 802D37F8 4600008D */  trunc.w.s $f2, $f0
/* 0F81AC 802D37FC 44061000 */  mfc1  $a2, $f2
/* 0F81B0 802D3800 0C0B2026 */  jal   set_variable
/* 0F81B4 802D3804 0260282D */   daddu $a1, $s3, $zero
/* 0F81B8 802D3808 0240202D */  daddu $a0, $s2, $zero
/* 0F81BC 802D380C C620000C */  lwc1  $f0, 0xc($s1)
/* 0F81C0 802D3810 4600008D */  trunc.w.s $f2, $f0
/* 0F81C4 802D3814 44061000 */  mfc1  $a2, $f2
/* 0F81C8 802D3818 0C0B2026 */  jal   set_variable
/* 0F81CC 802D381C 0200282D */   daddu $a1, $s0, $zero
/* 0F81D0 802D3820 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0F81D4 802D3824 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F81D8 802D3828 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F81DC 802D382C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F81E0 802D3830 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F81E4 802D3834 24020002 */  addiu $v0, $zero, 2
/* 0F81E8 802D3838 03E00008 */  jr    $ra
/* 0F81EC 802D383C 27BD0028 */   addiu $sp, $sp, 0x28

SetObjRotation:
/* 0F81F0 802D3840 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F81F4 802D3844 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F81F8 802D3848 0080902D */  daddu $s2, $a0, $zero
/* 0F81FC 802D384C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8200 802D3850 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8204 802D3854 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8208 802D3858 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F820C 802D385C F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F8210 802D3860 8E50000C */  lw    $s0, 0xc($s2)
/* 0F8214 802D3864 8E050000 */  lw    $a1, ($s0)
/* 0F8218 802D3868 0C0B1EAF */  jal   get_variable
/* 0F821C 802D386C 26100004 */   addiu $s0, $s0, 4
/* 0F8220 802D3870 8E050000 */  lw    $a1, ($s0)
/* 0F8224 802D3874 26100004 */  addiu $s0, $s0, 4
/* 0F8228 802D3878 0240202D */  daddu $a0, $s2, $zero
/* 0F822C 802D387C 0C0B210B */  jal   get_float_variable
/* 0F8230 802D3880 0040882D */   daddu $s1, $v0, $zero
/* 0F8234 802D3884 8E050000 */  lw    $a1, ($s0)
/* 0F8238 802D3888 26100004 */  addiu $s0, $s0, 4
/* 0F823C 802D388C 0240202D */  daddu $a0, $s2, $zero
/* 0F8240 802D3890 0C0B210B */  jal   get_float_variable
/* 0F8244 802D3894 46000586 */   mov.s $f22, $f0
/* 0F8248 802D3898 0240202D */  daddu $a0, $s2, $zero
/* 0F824C 802D389C 8E050000 */  lw    $a1, ($s0)
/* 0F8250 802D38A0 0C0B210B */  jal   get_float_variable
/* 0F8254 802D38A4 46000506 */   mov.s $f20, $f0
/* 0F8258 802D38A8 3C02802E */  lui   $v0, 0x802e
/* 0F825C 802D38AC 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8260 802D38B0 00118880 */  sll   $s1, $s1, 2
/* 0F8264 802D38B4 02228821 */  addu  $s1, $s1, $v0
/* 0F8268 802D38B8 8E230000 */  lw    $v1, ($s1)
/* 0F826C 802D38BC E4760010 */  swc1  $f22, 0x10($v1)
/* 0F8270 802D38C0 E4740014 */  swc1  $f20, 0x14($v1)
/* 0F8274 802D38C4 E4600018 */  swc1  $f0, 0x18($v1)
/* 0F8278 802D38C8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F827C 802D38CC 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8280 802D38D0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8284 802D38D4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8288 802D38D8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F828C 802D38DC D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F8290 802D38E0 24020002 */  addiu $v0, $zero, 2
/* 0F8294 802D38E4 03E00008 */  jr    $ra
/* 0F8298 802D38E8 27BD0030 */   addiu $sp, $sp, 0x30

SetObjScale:
/* 0F829C 802D38EC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F82A0 802D38F0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F82A4 802D38F4 0080902D */  daddu $s2, $a0, $zero
/* 0F82A8 802D38F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F82AC 802D38FC AFB10014 */  sw    $s1, 0x14($sp)
/* 0F82B0 802D3900 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F82B4 802D3904 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F82B8 802D3908 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F82BC 802D390C 8E50000C */  lw    $s0, 0xc($s2)
/* 0F82C0 802D3910 8E050000 */  lw    $a1, ($s0)
/* 0F82C4 802D3914 0C0B1EAF */  jal   get_variable
/* 0F82C8 802D3918 26100004 */   addiu $s0, $s0, 4
/* 0F82CC 802D391C 8E050000 */  lw    $a1, ($s0)
/* 0F82D0 802D3920 26100004 */  addiu $s0, $s0, 4
/* 0F82D4 802D3924 0240202D */  daddu $a0, $s2, $zero
/* 0F82D8 802D3928 0C0B210B */  jal   get_float_variable
/* 0F82DC 802D392C 0040882D */   daddu $s1, $v0, $zero
/* 0F82E0 802D3930 8E050000 */  lw    $a1, ($s0)
/* 0F82E4 802D3934 26100004 */  addiu $s0, $s0, 4
/* 0F82E8 802D3938 0240202D */  daddu $a0, $s2, $zero
/* 0F82EC 802D393C 0C0B210B */  jal   get_float_variable
/* 0F82F0 802D3940 46000586 */   mov.s $f22, $f0
/* 0F82F4 802D3944 0240202D */  daddu $a0, $s2, $zero
/* 0F82F8 802D3948 8E050000 */  lw    $a1, ($s0)
/* 0F82FC 802D394C 0C0B210B */  jal   get_float_variable
/* 0F8300 802D3950 46000506 */   mov.s $f20, $f0
/* 0F8304 802D3954 3C02802E */  lui   $v0, 0x802e
/* 0F8308 802D3958 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F830C 802D395C 00118880 */  sll   $s1, $s1, 2
/* 0F8310 802D3960 02228821 */  addu  $s1, $s1, $v0
/* 0F8314 802D3964 8E230000 */  lw    $v1, ($s1)
/* 0F8318 802D3968 E476001C */  swc1  $f22, 0x1c($v1)
/* 0F831C 802D396C E4740020 */  swc1  $f20, 0x20($v1)
/* 0F8320 802D3970 E4600024 */  swc1  $f0, 0x24($v1)
/* 0F8324 802D3974 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F8328 802D3978 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F832C 802D397C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8330 802D3980 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8334 802D3984 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F8338 802D3988 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F833C 802D398C 24020002 */  addiu $v0, $zero, 2
/* 0F8340 802D3990 03E00008 */  jr    $ra
/* 0F8344 802D3994 27BD0030 */   addiu $sp, $sp, 0x30

/* 0F8348 802D3998 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F834C 802D399C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8350 802D39A0 0080882D */  daddu $s1, $a0, $zero
/* 0F8354 802D39A4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F8358 802D39A8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F835C 802D39AC 8E30000C */  lw    $s0, 0xc($s1)
/* 0F8360 802D39B0 8E050000 */  lw    $a1, ($s0)
/* 0F8364 802D39B4 0C0B1EAF */  jal   get_variable
/* 0F8368 802D39B8 26100004 */   addiu $s0, $s0, 4
/* 0F836C 802D39BC 0220202D */  daddu $a0, $s1, $zero
/* 0F8370 802D39C0 8E050000 */  lw    $a1, ($s0)
/* 0F8374 802D39C4 0C0B210B */  jal   get_float_variable
/* 0F8378 802D39C8 0040802D */   daddu $s0, $v0, $zero
/* 0F837C 802D39CC 3C02802E */  lui   $v0, 0x802e
/* 0F8380 802D39D0 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8384 802D39D4 00108080 */  sll   $s0, $s0, 2
/* 0F8388 802D39D8 02028021 */  addu  $s0, $s0, $v0
/* 0F838C 802D39DC 8E030000 */  lw    $v1, ($s0)
/* 0F8390 802D39E0 E460003C */  swc1  $f0, 0x3c($v1)
/* 0F8394 802D39E4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F8398 802D39E8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F839C 802D39EC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F83A0 802D39F0 24020002 */  addiu $v0, $zero, 2
/* 0F83A4 802D39F4 03E00008 */  jr    $ra
/* 0F83A8 802D39F8 27BD0020 */   addiu $sp, $sp, 0x20

SetObjJumpScale:
/* 0F83AC 802D39FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F83B0 802D3A00 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F83B4 802D3A04 0080882D */  daddu $s1, $a0, $zero
/* 0F83B8 802D3A08 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F83BC 802D3A0C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F83C0 802D3A10 8E30000C */  lw    $s0, 0xc($s1)
/* 0F83C4 802D3A14 8E050000 */  lw    $a1, ($s0)
/* 0F83C8 802D3A18 0C0B1EAF */  jal   get_variable
/* 0F83CC 802D3A1C 26100004 */   addiu $s0, $s0, 4
/* 0F83D0 802D3A20 0220202D */  daddu $a0, $s1, $zero
/* 0F83D4 802D3A24 8E050000 */  lw    $a1, ($s0)
/* 0F83D8 802D3A28 0C0B210B */  jal   get_float_variable
/* 0F83DC 802D3A2C 0040802D */   daddu $s0, $v0, $zero
/* 0F83E0 802D3A30 3C02802E */  lui   $v0, 0x802e
/* 0F83E4 802D3A34 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F83E8 802D3A38 00108080 */  sll   $s0, $s0, 2
/* 0F83EC 802D3A3C 02028021 */  addu  $s0, $s0, $v0
/* 0F83F0 802D3A40 8E030000 */  lw    $v1, ($s0)
/* 0F83F4 802D3A44 E4600040 */  swc1  $f0, 0x40($v1)
/* 0F83F8 802D3A48 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F83FC 802D3A4C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8400 802D3A50 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8404 802D3A54 24020002 */  addiu $v0, $zero, 2
/* 0F8408 802D3A58 03E00008 */  jr    $ra
/* 0F840C 802D3A5C 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F8410 802D3A60 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0F8414 802D3A64 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8418 802D3A68 0080902D */  daddu $s2, $a0, $zero
/* 0F841C 802D3A6C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8420 802D3A70 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8424 802D3A74 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8428 802D3A78 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 0F842C 802D3A7C F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F8430 802D3A80 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F8434 802D3A84 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F8438 802D3A88 8E51000C */  lw    $s1, 0xc($s2)
/* 0F843C 802D3A8C 54A00001 */  bnezl $a1, .L802D3A94
/* 0F8440 802D3A90 AE400070 */   sw    $zero, 0x70($s2)
.L802D3A94:
/* 0F8444 802D3A94 8E420070 */  lw    $v0, 0x70($s2)
/* 0F8448 802D3A98 14400049 */  bnez  $v0, .L802D3BC0
/* 0F844C 802D3A9C 00000000 */   nop   
/* 0F8450 802D3AA0 8E250000 */  lw    $a1, ($s1)
/* 0F8454 802D3AA4 26310004 */  addiu $s1, $s1, 4
/* 0F8458 802D3AA8 0C0B1EAF */  jal   get_variable
/* 0F845C 802D3AAC 0240202D */   daddu $a0, $s2, $zero
/* 0F8460 802D3AB0 8E250000 */  lw    $a1, ($s1)
/* 0F8464 802D3AB4 26310004 */  addiu $s1, $s1, 4
/* 0F8468 802D3AB8 0240202D */  daddu $a0, $s2, $zero
/* 0F846C 802D3ABC 0C0B1EAF */  jal   get_variable
/* 0F8470 802D3AC0 0040802D */   daddu $s0, $v0, $zero
/* 0F8474 802D3AC4 4482D000 */  mtc1  $v0, $f26
/* 0F8478 802D3AC8 00000000 */  nop   
/* 0F847C 802D3ACC 4680D6A0 */  cvt.s.w $f26, $f26
/* 0F8480 802D3AD0 8E250000 */  lw    $a1, ($s1)
/* 0F8484 802D3AD4 26310004 */  addiu $s1, $s1, 4
/* 0F8488 802D3AD8 0C0B1EAF */  jal   get_variable
/* 0F848C 802D3ADC 0240202D */   daddu $a0, $s2, $zero
/* 0F8490 802D3AE0 8E250000 */  lw    $a1, ($s1)
/* 0F8494 802D3AE4 26310004 */  addiu $s1, $s1, 4
/* 0F8498 802D3AE8 4482A000 */  mtc1  $v0, $f20
/* 0F849C 802D3AEC 00000000 */  nop   
/* 0F84A0 802D3AF0 4680A520 */  cvt.s.w $f20, $f20
/* 0F84A4 802D3AF4 0C0B1EAF */  jal   get_variable
/* 0F84A8 802D3AF8 0240202D */   daddu $a0, $s2, $zero
/* 0F84AC 802D3AFC 4482C000 */  mtc1  $v0, $f24
/* 0F84B0 802D3B00 00000000 */  nop   
/* 0F84B4 802D3B04 4680C620 */  cvt.s.w $f24, $f24
/* 0F84B8 802D3B08 8E250000 */  lw    $a1, ($s1)
/* 0F84BC 802D3B0C 0C0B1EAF */  jal   get_variable
/* 0F84C0 802D3B10 0240202D */   daddu $a0, $s2, $zero
/* 0F84C4 802D3B14 3C04802E */  lui   $a0, 0x802e
/* 0F84C8 802D3B18 8C84B7C0 */  lw    $a0, -0x4840($a0)
/* 0F84CC 802D3B1C 00101880 */  sll   $v1, $s0, 2
/* 0F84D0 802D3B20 00641821 */  addu  $v1, $v1, $a0
/* 0F84D4 802D3B24 8C710000 */  lw    $s1, ($v1)
/* 0F84D8 802D3B28 AE500074 */  sw    $s0, 0x74($s2)
/* 0F84DC 802D3B2C E63A0028 */  swc1  $f26, 0x28($s1)
/* 0F84E0 802D3B30 C63A0004 */  lwc1  $f26, 4($s1)
/* 0F84E4 802D3B34 E6380030 */  swc1  $f24, 0x30($s1)
/* 0F84E8 802D3B38 C638000C */  lwc1  $f24, 0xc($s1)
/* 0F84EC 802D3B3C E634002C */  swc1  $f20, 0x2c($s1)
/* 0F84F0 802D3B40 C6340028 */  lwc1  $f20, 0x28($s1)
/* 0F84F4 802D3B44 C6360030 */  lwc1  $f22, 0x30($s1)
/* 0F84F8 802D3B48 44820000 */  mtc1  $v0, $f0
/* 0F84FC 802D3B4C 00000000 */  nop   
/* 0F8500 802D3B50 46800020 */  cvt.s.w $f0, $f0
/* 0F8504 802D3B54 E6200048 */  swc1  $f0, 0x48($s1)
/* 0F8508 802D3B58 4600D306 */  mov.s $f12, $f26
/* 0F850C 802D3B5C 4406A000 */  mfc1  $a2, $f20
/* 0F8510 802D3B60 4407B000 */  mfc1  $a3, $f22
/* 0F8514 802D3B64 0C00A720 */  jal   atan2
/* 0F8518 802D3B68 4600C386 */   mov.s $f14, $f24
/* 0F851C 802D3B6C 4600D306 */  mov.s $f12, $f26
/* 0F8520 802D3B70 4406A000 */  mfc1  $a2, $f20
/* 0F8524 802D3B74 4407B000 */  mfc1  $a3, $f22
/* 0F8528 802D3B78 4600C386 */  mov.s $f14, $f24
/* 0F852C 802D3B7C 0C00A7B5 */  jal   dist2D
/* 0F8530 802D3B80 E6200038 */   swc1  $f0, 0x38($s1)
/* 0F8534 802D3B84 C6260048 */  lwc1  $f6, 0x48($s1)
/* 0F8538 802D3B88 44801000 */  mtc1  $zero, $f2
/* 0F853C 802D3B8C 46000106 */  mov.s $f4, $f0
/* 0F8540 802D3B90 46023032 */  c.eq.s $f6, $f2
/* 0F8544 802D3B94 00000000 */  nop   
/* 0F8548 802D3B98 45000005 */  bc1f  .L802D3BB0
/* 0F854C 802D3B9C E6240034 */   swc1  $f4, 0x34($s1)
/* 0F8550 802D3BA0 C620003C */  lwc1  $f0, 0x3c($s1)
/* 0F8554 802D3BA4 46002003 */  div.s $f0, $f4, $f0
/* 0F8558 802D3BA8 080B4EEE */  j     func_802D3BB8
/* 0F855C 802D3BAC E6200048 */   swc1  $f0, 0x48($s1)

.L802D3BB0:
/* 0F8560 802D3BB0 46062003 */  div.s $f0, $f4, $f6
/* 0F8564 802D3BB4 E620003C */  swc1  $f0, 0x3c($s1)
func_802D3BB8:
/* 0F8568 802D3BB8 24020001 */  addiu $v0, $zero, 1
/* 0F856C 802D3BBC AE420070 */  sw    $v0, 0x70($s2)
.L802D3BC0:
/* 0F8570 802D3BC0 8E420074 */  lw    $v0, 0x74($s2)
/* 0F8574 802D3BC4 3C03802E */  lui   $v1, 0x802e
/* 0F8578 802D3BC8 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F857C 802D3BCC 00021080 */  sll   $v0, $v0, 2
/* 0F8580 802D3BD0 00431021 */  addu  $v0, $v0, $v1
/* 0F8584 802D3BD4 8C510000 */  lw    $s1, ($v0)
/* 0F8588 802D3BD8 8E25003C */  lw    $a1, 0x3c($s1)
/* 0F858C 802D3BDC 8E260038 */  lw    $a2, 0x38($s1)
/* 0F8590 802D3BE0 0C0B4BCD */  jal   func_802D2F34
/* 0F8594 802D3BE4 0220202D */   daddu $a0, $s1, $zero
/* 0F8598 802D3BE8 C6200048 */  lwc1  $f0, 0x48($s1)
/* 0F859C 802D3BEC 3C013F80 */  lui   $at, 0x3f80
/* 0F85A0 802D3BF0 44811000 */  mtc1  $at, $f2
/* 0F85A4 802D3BF4 00000000 */  nop   
/* 0F85A8 802D3BF8 46020001 */  sub.s $f0, $f0, $f2
/* 0F85AC 802D3BFC 44801000 */  mtc1  $zero, $f2
/* 0F85B0 802D3C00 00000000 */  nop   
/* 0F85B4 802D3C04 4602003E */  c.le.s $f0, $f2
/* 0F85B8 802D3C08 00000000 */  nop   
/* 0F85BC 802D3C0C 45010003 */  bc1t  .L802D3C1C
/* 0F85C0 802D3C10 E6200048 */   swc1  $f0, 0x48($s1)
/* 0F85C4 802D3C14 080B4F0C */  j     func_802D3C30
/* 0F85C8 802D3C18 0000102D */   daddu $v0, $zero, $zero

.L802D3C1C:
/* 0F85CC 802D3C1C C6200028 */  lwc1  $f0, 0x28($s1)
/* 0F85D0 802D3C20 C6220030 */  lwc1  $f2, 0x30($s1)
/* 0F85D4 802D3C24 24020001 */  addiu $v0, $zero, 1
/* 0F85D8 802D3C28 E6200004 */  swc1  $f0, 4($s1)
/* 0F85DC 802D3C2C E622000C */  swc1  $f2, 0xc($s1)
func_802D3C30:
/* 0F85E0 802D3C30 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F85E4 802D3C34 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F85E8 802D3C38 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F85EC 802D3C3C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F85F0 802D3C40 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 0F85F4 802D3C44 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F85F8 802D3C48 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F85FC 802D3C4C D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F8600 802D3C50 03E00008 */  jr    $ra
/* 0F8604 802D3C54 27BD0040 */   addiu $sp, $sp, 0x40

JumpObj:
/* 0F8608 802D3C58 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0F860C 802D3C5C AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8610 802D3C60 0080902D */  daddu $s2, $a0, $zero
/* 0F8614 802D3C64 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8618 802D3C68 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F861C 802D3C6C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8620 802D3C70 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* 0F8624 802D3C74 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 0F8628 802D3C78 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 0F862C 802D3C7C F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0F8630 802D3C80 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0F8634 802D3C84 8E51000C */  lw    $s1, 0xc($s2)
/* 0F8638 802D3C88 54A00001 */  bnezl $a1, .L802D3C90
/* 0F863C 802D3C8C AE400070 */   sw    $zero, 0x70($s2)
.L802D3C90:
/* 0F8640 802D3C90 8E420070 */  lw    $v0, 0x70($s2)
/* 0F8644 802D3C94 14400058 */  bnez  $v0, .L802D3DF8
/* 0F8648 802D3C98 00000000 */   nop   
/* 0F864C 802D3C9C 8E250000 */  lw    $a1, ($s1)
/* 0F8650 802D3CA0 26310004 */  addiu $s1, $s1, 4
/* 0F8654 802D3CA4 0C0B1EAF */  jal   get_variable
/* 0F8658 802D3CA8 0240202D */   daddu $a0, $s2, $zero
/* 0F865C 802D3CAC 8E250000 */  lw    $a1, ($s1)
/* 0F8660 802D3CB0 26310004 */  addiu $s1, $s1, 4
/* 0F8664 802D3CB4 0240202D */  daddu $a0, $s2, $zero
/* 0F8668 802D3CB8 0C0B1EAF */  jal   get_variable
/* 0F866C 802D3CBC 0040802D */   daddu $s0, $v0, $zero
/* 0F8670 802D3CC0 4482D000 */  mtc1  $v0, $f26
/* 0F8674 802D3CC4 00000000 */  nop   
/* 0F8678 802D3CC8 4680D6A0 */  cvt.s.w $f26, $f26
/* 0F867C 802D3CCC 8E250000 */  lw    $a1, ($s1)
/* 0F8680 802D3CD0 26310004 */  addiu $s1, $s1, 4
/* 0F8684 802D3CD4 0C0B1EAF */  jal   get_variable
/* 0F8688 802D3CD8 0240202D */   daddu $a0, $s2, $zero
/* 0F868C 802D3CDC 4482E000 */  mtc1  $v0, $f28
/* 0F8690 802D3CE0 00000000 */  nop   
/* 0F8694 802D3CE4 4680E720 */  cvt.s.w $f28, $f28
/* 0F8698 802D3CE8 8E250000 */  lw    $a1, ($s1)
/* 0F869C 802D3CEC 26310004 */  addiu $s1, $s1, 4
/* 0F86A0 802D3CF0 0C0B1EAF */  jal   get_variable
/* 0F86A4 802D3CF4 0240202D */   daddu $a0, $s2, $zero
/* 0F86A8 802D3CF8 4482C000 */  mtc1  $v0, $f24
/* 0F86AC 802D3CFC 00000000 */  nop   
/* 0F86B0 802D3D00 4680C620 */  cvt.s.w $f24, $f24
/* 0F86B4 802D3D04 8E250000 */  lw    $a1, ($s1)
/* 0F86B8 802D3D08 0C0B1EAF */  jal   get_variable
/* 0F86BC 802D3D0C 0240202D */   daddu $a0, $s2, $zero
/* 0F86C0 802D3D10 3C04802E */  lui   $a0, 0x802e
/* 0F86C4 802D3D14 8C84B7C0 */  lw    $a0, -0x4840($a0)
/* 0F86C8 802D3D18 00101880 */  sll   $v1, $s0, 2
/* 0F86CC 802D3D1C 00641821 */  addu  $v1, $v1, $a0
/* 0F86D0 802D3D20 8C710000 */  lw    $s1, ($v1)
/* 0F86D4 802D3D24 AE500074 */  sw    $s0, 0x74($s2)
/* 0F86D8 802D3D28 E63A0028 */  swc1  $f26, 0x28($s1)
/* 0F86DC 802D3D2C C63A0004 */  lwc1  $f26, 4($s1)
/* 0F86E0 802D3D30 E63C002C */  swc1  $f28, 0x2c($s1)
/* 0F86E4 802D3D34 C63C0008 */  lwc1  $f28, 8($s1)
/* 0F86E8 802D3D38 E6380030 */  swc1  $f24, 0x30($s1)
/* 0F86EC 802D3D3C C638000C */  lwc1  $f24, 0xc($s1)
/* 0F86F0 802D3D40 C6360028 */  lwc1  $f22, 0x28($s1)
/* 0F86F4 802D3D44 C6340030 */  lwc1  $f20, 0x30($s1)
/* 0F86F8 802D3D48 44820000 */  mtc1  $v0, $f0
/* 0F86FC 802D3D4C 00000000 */  nop   
/* 0F8700 802D3D50 46800020 */  cvt.s.w $f0, $f0
/* 0F8704 802D3D54 E6200048 */  swc1  $f0, 0x48($s1)
/* 0F8708 802D3D58 C620002C */  lwc1  $f0, 0x2c($s1)
/* 0F870C 802D3D5C 4600D306 */  mov.s $f12, $f26
/* 0F8710 802D3D60 4600C386 */  mov.s $f14, $f24
/* 0F8714 802D3D64 4406B000 */  mfc1  $a2, $f22
/* 0F8718 802D3D68 4407A000 */  mfc1  $a3, $f20
/* 0F871C 802D3D6C 0C00A720 */  jal   atan2
/* 0F8720 802D3D70 461C0701 */   sub.s $f28, $f0, $f28
/* 0F8724 802D3D74 4600D306 */  mov.s $f12, $f26
/* 0F8728 802D3D78 4406B000 */  mfc1  $a2, $f22
/* 0F872C 802D3D7C 4407A000 */  mfc1  $a3, $f20
/* 0F8730 802D3D80 4600C386 */  mov.s $f14, $f24
/* 0F8734 802D3D84 0C00A7B5 */  jal   dist2D
/* 0F8738 802D3D88 E6200038 */   swc1  $f0, 0x38($s1)
/* 0F873C 802D3D8C C6260048 */  lwc1  $f6, 0x48($s1)
/* 0F8740 802D3D90 44801000 */  mtc1  $zero, $f2
/* 0F8744 802D3D94 46000106 */  mov.s $f4, $f0
/* 0F8748 802D3D98 46023032 */  c.eq.s $f6, $f2
/* 0F874C 802D3D9C 00000000 */  nop   
/* 0F8750 802D3DA0 45000005 */  bc1f  .L802D3DB8
/* 0F8754 802D3DA4 E6240034 */   swc1  $f4, 0x34($s1)
/* 0F8758 802D3DA8 C620003C */  lwc1  $f0, 0x3c($s1)
/* 0F875C 802D3DAC 46002003 */  div.s $f0, $f4, $f0
/* 0F8760 802D3DB0 080B4F70 */  j     func_802D3DC0
/* 0F8764 802D3DB4 E6200048 */   swc1  $f0, 0x48($s1)

.L802D3DB8:
/* 0F8768 802D3DB8 46062003 */  div.s $f0, $f4, $f6
/* 0F876C 802D3DBC E620003C */  swc1  $f0, 0x3c($s1)
func_802D3DC0:
/* 0F8770 802D3DC0 C6200040 */  lwc1  $f0, 0x40($s1)
/* 0F8774 802D3DC4 C6220048 */  lwc1  $f2, 0x48($s1)
/* 0F8778 802D3DC8 46020002 */  mul.s $f0, $f0, $f2
/* 0F877C 802D3DCC 00000000 */  nop   
/* 0F8780 802D3DD0 3C013F00 */  lui   $at, 0x3f00
/* 0F8784 802D3DD4 44812000 */  mtc1  $at, $f4
/* 0F8788 802D3DD8 00000000 */  nop   
/* 0F878C 802D3DDC 46040002 */  mul.s $f0, $f0, $f4
/* 0F8790 802D3DE0 00000000 */  nop   
/* 0F8794 802D3DE4 4602E083 */  div.s $f2, $f28, $f2
/* 0F8798 802D3DE8 46020000 */  add.s $f0, $f0, $f2
/* 0F879C 802D3DEC 24020001 */  addiu $v0, $zero, 1
/* 0F87A0 802D3DF0 E6200044 */  swc1  $f0, 0x44($s1)
/* 0F87A4 802D3DF4 AE420070 */  sw    $v0, 0x70($s2)
.L802D3DF8:
/* 0F87A8 802D3DF8 8E420074 */  lw    $v0, 0x74($s2)
/* 0F87AC 802D3DFC 3C03802E */  lui   $v1, 0x802e
/* 0F87B0 802D3E00 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F87B4 802D3E04 00021080 */  sll   $v0, $v0, 2
/* 0F87B8 802D3E08 00431021 */  addu  $v0, $v0, $v1
/* 0F87BC 802D3E0C 8C510000 */  lw    $s1, ($v0)
/* 0F87C0 802D3E10 C6240008 */  lwc1  $f4, 8($s1)
/* 0F87C4 802D3E14 C6200044 */  lwc1  $f0, 0x44($s1)
/* 0F87C8 802D3E18 8E25003C */  lw    $a1, 0x3c($s1)
/* 0F87CC 802D3E1C 46002100 */  add.s $f4, $f4, $f0
/* 0F87D0 802D3E20 C6220040 */  lwc1  $f2, 0x40($s1)
/* 0F87D4 802D3E24 8E260038 */  lw    $a2, 0x38($s1)
/* 0F87D8 802D3E28 46020001 */  sub.s $f0, $f0, $f2
/* 0F87DC 802D3E2C 0220202D */  daddu $a0, $s1, $zero
/* 0F87E0 802D3E30 E6240008 */  swc1  $f4, 8($s1)
/* 0F87E4 802D3E34 0C0B4BCD */  jal   func_802D2F34
/* 0F87E8 802D3E38 E6200044 */   swc1  $f0, 0x44($s1)
/* 0F87EC 802D3E3C C6200048 */  lwc1  $f0, 0x48($s1)
/* 0F87F0 802D3E40 3C013F80 */  lui   $at, 0x3f80
/* 0F87F4 802D3E44 44811000 */  mtc1  $at, $f2
/* 0F87F8 802D3E48 00000000 */  nop   
/* 0F87FC 802D3E4C 46020001 */  sub.s $f0, $f0, $f2
/* 0F8800 802D3E50 44801000 */  mtc1  $zero, $f2
/* 0F8804 802D3E54 00000000 */  nop   
/* 0F8808 802D3E58 4602003E */  c.le.s $f0, $f2
/* 0F880C 802D3E5C 00000000 */  nop   
/* 0F8810 802D3E60 45010003 */  bc1t  .L802D3E70
/* 0F8814 802D3E64 E6200048 */   swc1  $f0, 0x48($s1)
/* 0F8818 802D3E68 080B4FA3 */  j     func_802D3E8C
/* 0F881C 802D3E6C 0000102D */   daddu $v0, $zero, $zero

.L802D3E70:
/* 0F8820 802D3E70 C6200028 */  lwc1  $f0, 0x28($s1)
/* 0F8824 802D3E74 C622002C */  lwc1  $f2, 0x2c($s1)
/* 0F8828 802D3E78 C6240030 */  lwc1  $f4, 0x30($s1)
/* 0F882C 802D3E7C 24020001 */  addiu $v0, $zero, 1
/* 0F8830 802D3E80 E6200004 */  swc1  $f0, 4($s1)
/* 0F8834 802D3E84 E6220008 */  swc1  $f2, 8($s1)
/* 0F8838 802D3E88 E624000C */  swc1  $f4, 0xc($s1)
func_802D3E8C:
/* 0F883C 802D3E8C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F8840 802D3E90 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8844 802D3E94 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8848 802D3E98 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F884C 802D3E9C D7BC0040 */  ldc1  $f28, 0x40($sp)
/* 0F8850 802D3EA0 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 0F8854 802D3EA4 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 0F8858 802D3EA8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0F885C 802D3EAC D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0F8860 802D3EB0 03E00008 */  jr    $ra
/* 0F8864 802D3EB4 27BD0048 */   addiu $sp, $sp, 0x48

/* 0F8868 802D3EB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F886C 802D3EBC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8870 802D3EC0 0080802D */  daddu $s0, $a0, $zero
/* 0F8874 802D3EC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F8878 802D3EC8 8E03000C */  lw    $v1, 0xc($s0)
/* 0F887C 802D3ECC 54A00001 */  bnezl $a1, .L802D3ED4
/* 0F8880 802D3ED0 AE000070 */   sw    $zero, 0x70($s0)
.L802D3ED4:
/* 0F8884 802D3ED4 8E020070 */  lw    $v0, 0x70($s0)
/* 0F8888 802D3ED8 14400007 */  bnez  $v0, .L802D3EF8
/* 0F888C 802D3EDC 00000000 */   nop   
/* 0F8890 802D3EE0 8C650000 */  lw    $a1, ($v1)
/* 0F8894 802D3EE4 0C0B1EAF */  jal   get_variable
/* 0F8898 802D3EE8 0200202D */   daddu $a0, $s0, $zero
/* 0F889C 802D3EEC AE020074 */  sw    $v0, 0x74($s0)
/* 0F88A0 802D3EF0 24020001 */  addiu $v0, $zero, 1
/* 0F88A4 802D3EF4 AE020070 */  sw    $v0, 0x70($s0)
.L802D3EF8:
/* 0F88A8 802D3EF8 8E020074 */  lw    $v0, 0x74($s0)
/* 0F88AC 802D3EFC 3C03802E */  lui   $v1, 0x802e
/* 0F88B0 802D3F00 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F88B4 802D3F04 00021080 */  sll   $v0, $v0, 2
/* 0F88B8 802D3F08 00431021 */  addu  $v0, $v0, $v1
/* 0F88BC 802D3F0C 8C500000 */  lw    $s0, ($v0)
/* 0F88C0 802D3F10 C6040008 */  lwc1  $f4, 8($s0)
/* 0F88C4 802D3F14 C6000044 */  lwc1  $f0, 0x44($s0)
/* 0F88C8 802D3F18 C6020040 */  lwc1  $f2, 0x40($s0)
/* 0F88CC 802D3F1C 46002100 */  add.s $f4, $f4, $f0
/* 0F88D0 802D3F20 8E05003C */  lw    $a1, 0x3c($s0)
/* 0F88D4 802D3F24 8E060038 */  lw    $a2, 0x38($s0)
/* 0F88D8 802D3F28 46020001 */  sub.s $f0, $f0, $f2
/* 0F88DC 802D3F2C 0200202D */  daddu $a0, $s0, $zero
/* 0F88E0 802D3F30 E6040008 */  swc1  $f4, 8($s0)
/* 0F88E4 802D3F34 0C0B4BCD */  jal   func_802D2F34
/* 0F88E8 802D3F38 E6000044 */   swc1  $f0, 0x44($s0)
/* 0F88EC 802D3F3C C6000008 */  lwc1  $f0, 8($s0)
/* 0F88F0 802D3F40 44801000 */  mtc1  $zero, $f2
/* 0F88F4 802D3F44 00000000 */  nop   
/* 0F88F8 802D3F48 4602003C */  c.lt.s $f0, $f2
/* 0F88FC 802D3F4C 00000000 */  nop   
/* 0F8900 802D3F50 45030003 */  bc1tl .L802D3F60
/* 0F8904 802D3F54 E6020008 */   swc1  $f2, 8($s0)
/* 0F8908 802D3F58 080B4FD9 */  j     func_802D3F64
/* 0F890C 802D3F5C 0000102D */   daddu $v0, $zero, $zero

.L802D3F60:
/* 0F8910 802D3F60 24020001 */  addiu $v0, $zero, 1
func_802D3F64:
/* 0F8914 802D3F64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F8918 802D3F68 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F891C 802D3F6C 03E00008 */  jr    $ra
/* 0F8920 802D3F70 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F8924 802D3F74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F8928 802D3F78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F892C 802D3F7C AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8930 802D3F80 8C90000C */  lw    $s0, 0xc($a0)
/* 0F8934 802D3F84 8E050000 */  lw    $a1, ($s0)
/* 0F8938 802D3F88 0C0B1EAF */  jal   get_variable
/* 0F893C 802D3F8C 26100004 */   addiu $s0, $s0, 4
/* 0F8940 802D3F90 3C03802E */  lui   $v1, 0x802e
/* 0F8944 802D3F94 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F8948 802D3F98 00021080 */  sll   $v0, $v0, 2
/* 0F894C 802D3F9C 00431021 */  addu  $v0, $v0, $v1
/* 0F8950 802D3FA0 8C420000 */  lw    $v0, ($v0)
/* 0F8954 802D3FA4 8C440000 */  lw    $a0, ($v0)
/* 0F8958 802D3FA8 0C048B77 */  jal   func_80122DDC
/* 0F895C 802D3FAC 8E100000 */   lw    $s0, ($s0)
/* 0F8960 802D3FB0 AC500000 */  sw    $s0, ($v0)
/* 0F8964 802D3FB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F8968 802D3FB8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F896C 802D3FBC 24020002 */  addiu $v0, $zero, 2
/* 0F8970 802D3FC0 03E00008 */  jr    $ra
/* 0F8974 802D3FC4 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F8978 802D3FC8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F897C 802D3FCC AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8980 802D3FD0 0080882D */  daddu $s1, $a0, $zero
/* 0F8984 802D3FD4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F8988 802D3FD8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F898C 802D3FDC 8E30000C */  lw    $s0, 0xc($s1)
/* 0F8990 802D3FE0 8E050000 */  lw    $a1, ($s0)
/* 0F8994 802D3FE4 0C0B1EAF */  jal   get_variable
/* 0F8998 802D3FE8 26100004 */   addiu $s0, $s0, 4
/* 0F899C 802D3FEC 0220202D */  daddu $a0, $s1, $zero
/* 0F89A0 802D3FF0 8E050004 */  lw    $a1, 4($s0)
/* 0F89A4 802D3FF4 8E100000 */  lw    $s0, ($s0)
/* 0F89A8 802D3FF8 0C0B1EAF */  jal   get_variable
/* 0F89AC 802D3FFC 0040882D */   daddu $s1, $v0, $zero
/* 0F89B0 802D4000 3C03802E */  lui   $v1, 0x802e
/* 0F89B4 802D4004 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F89B8 802D4008 00118880 */  sll   $s1, $s1, 2
/* 0F89BC 802D400C 02238821 */  addu  $s1, $s1, $v1
/* 0F89C0 802D4010 10400006 */  beqz  $v0, .L802D402C
/* 0F89C4 802D4014 8E240000 */   lw    $a0, ($s1)
/* 0F89C8 802D4018 8C840000 */  lw    $a0, ($a0)
/* 0F89CC 802D401C 0C048BBA */  jal   func_80122EE8
/* 0F89D0 802D4020 0200282D */   daddu $a1, $s0, $zero
/* 0F89D4 802D4024 080B500E */  j     func_802D4038
/* 0F89D8 802D4028 00000000 */   nop   

.L802D402C:
/* 0F89DC 802D402C 8C840000 */  lw    $a0, ($a0)
/* 0F89E0 802D4030 0C048BC9 */  jal   func_80122F24
/* 0F89E4 802D4034 0200282D */   daddu $a1, $s0, $zero
func_802D4038:
/* 0F89E8 802D4038 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F89EC 802D403C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F89F0 802D4040 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F89F4 802D4044 24020002 */  addiu $v0, $zero, 2
/* 0F89F8 802D4048 03E00008 */  jr    $ra
/* 0F89FC 802D404C 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F8A00 802D4050 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F8A04 802D4054 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8A08 802D4058 0080902D */  daddu $s2, $a0, $zero
/* 0F8A0C 802D405C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8A10 802D4060 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8A14 802D4064 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8A18 802D4068 8E51000C */  lw    $s1, 0xc($s2)
/* 0F8A1C 802D406C 8E250000 */  lw    $a1, ($s1)
/* 0F8A20 802D4070 0C0B1EAF */  jal   get_variable
/* 0F8A24 802D4074 26310004 */   addiu $s1, $s1, 4
/* 0F8A28 802D4078 0240202D */  daddu $a0, $s2, $zero
/* 0F8A2C 802D407C 8E250000 */  lw    $a1, ($s1)
/* 0F8A30 802D4080 0C0B1EAF */  jal   get_variable
/* 0F8A34 802D4084 0040802D */   daddu $s0, $v0, $zero
/* 0F8A38 802D4088 3C03802E */  lui   $v1, 0x802e
/* 0F8A3C 802D408C 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F8A40 802D4090 00108080 */  sll   $s0, $s0, 2
/* 0F8A44 802D4094 02038021 */  addu  $s0, $s0, $v1
/* 0F8A48 802D4098 8E030000 */  lw    $v1, ($s0)
/* 0F8A4C 802D409C 26310004 */  addiu $s1, $s1, 4
/* 0F8A50 802D40A0 8C640000 */  lw    $a0, ($v1)
/* 0F8A54 802D40A4 0C048B77 */  jal   func_80122DDC
/* 0F8A58 802D40A8 0040802D */   daddu $s0, $v0, $zero
/* 0F8A5C 802D40AC 0040182D */  daddu $v1, $v0, $zero
/* 0F8A60 802D40B0 26100001 */  addiu $s0, $s0, 1
/* 0F8A64 802D40B4 2E020006 */  sltiu $v0, $s0, 6
/* 0F8A68 802D40B8 10400023 */  beqz  $v0, .L802D4148
/* 0F8A6C 802D40BC 00101080 */   sll   $v0, $s0, 2
/* 0F8A70 802D40C0 3C01802E */  lui   $at, 0x802e
/* 0F8A74 802D40C4 00220821 */  addu  $at, $at, $v0
/* 0F8A78 802D40C8 8C22A240 */  lw    $v0, -0x5dc0($at)
/* 0F8A7C 802D40CC 00400008 */  jr    $v0
/* 0F8A80 802D40D0 00000000 */   nop   
/* 0F8A84 802D40D4 24020001 */  addiu $v0, $zero, 1
/* 0F8A88 802D40D8 080B5052 */  j     func_802D4148
/* 0F8A8C 802D40DC A0620004 */   sb    $v0, 4($v1)

/* 0F8A90 802D40E0 24020001 */  addiu $v0, $zero, 1
/* 0F8A94 802D40E4 080B5047 */  j     func_802D411C
/* 0F8A98 802D40E8 A0620004 */   sb    $v0, 4($v1)

/* 0F8A9C 802D40EC 2402000D */  addiu $v0, $zero, 0xd
/* 0F8AA0 802D40F0 080B5047 */  j     func_802D411C
/* 0F8AA4 802D40F4 A0620004 */   sb    $v0, 4($v1)

/* 0F8AA8 802D40F8 24020016 */  addiu $v0, $zero, 0x16
/* 0F8AAC 802D40FC 080B504F */  j     func_802D413C
/* 0F8AB0 802D4100 A0620004 */   sb    $v0, 4($v1)

/* 0F8AB4 802D4104 24020016 */  addiu $v0, $zero, 0x16
/* 0F8AB8 802D4108 A0620004 */  sb    $v0, 4($v1)
/* 0F8ABC 802D410C 8E250000 */  lw    $a1, ($s1)
/* 0F8AC0 802D4110 26310004 */  addiu $s1, $s1, 4
/* 0F8AC4 802D4114 0C0B1EAF */  jal   get_variable
/* 0F8AC8 802D4118 0240202D */   daddu $a0, $s2, $zero
func_802D411C:
/* 0F8ACC 802D411C 8E250000 */  lw    $a1, ($s1)
/* 0F8AD0 802D4120 26310004 */  addiu $s1, $s1, 4
/* 0F8AD4 802D4124 0C0B1EAF */  jal   get_variable
/* 0F8AD8 802D4128 0240202D */   daddu $a0, $s2, $zero
/* 0F8ADC 802D412C 8E250000 */  lw    $a1, ($s1)
/* 0F8AE0 802D4130 26310004 */  addiu $s1, $s1, 4
/* 0F8AE4 802D4134 0C0B1EAF */  jal   get_variable
/* 0F8AE8 802D4138 0240202D */   daddu $a0, $s2, $zero
func_802D413C:
/* 0F8AEC 802D413C 8E250000 */  lw    $a1, ($s1)
/* 0F8AF0 802D4140 0C0B1EAF */  jal   get_variable
/* 0F8AF4 802D4144 0240202D */   daddu $a0, $s2, $zero
func_802D4148:
.L802D4148:
/* 0F8AF8 802D4148 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F8AFC 802D414C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8B00 802D4150 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8B04 802D4154 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8B08 802D4158 24020002 */  addiu $v0, $zero, 2
/* 0F8B0C 802D415C 03E00008 */  jr    $ra
/* 0F8B10 802D4160 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F8B14 802D4164 3C02802E */  lui   $v0, 0x802e
/* 0F8B18 802D4168 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8B1C 802D416C 00042080 */  sll   $a0, $a0, 2
/* 0F8B20 802D4170 00822021 */  addu  $a0, $a0, $v0
/* 0F8B24 802D4174 03E00008 */  jr    $ra
/* 0F8B28 802D4178 8C820000 */   lw    $v0, ($a0)

/* 0F8B2C 802D417C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F8B30 802D4180 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8B34 802D4184 3C12802E */  lui   $s2, 0x802e
/* 0F8B38 802D4188 2652B7C0 */  addiu $s2, $s2, -0x4840
/* 0F8B3C 802D418C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8B40 802D4190 00048880 */  sll   $s1, $a0, 2
/* 0F8B44 802D4194 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8B48 802D4198 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8B4C 802D419C 8E420000 */  lw    $v0, ($s2)
/* 0F8B50 802D41A0 02221021 */  addu  $v0, $s1, $v0
/* 0F8B54 802D41A4 8C500000 */  lw    $s0, ($v0)
/* 0F8B58 802D41A8 0C048338 */  jal   func_80120CE0
/* 0F8B5C 802D41AC 00A0202D */   daddu $a0, $a1, $zero
/* 0F8B60 802D41B0 3C013F80 */  lui   $at, 0x3f80
/* 0F8B64 802D41B4 44810000 */  mtc1  $at, $f0
/* 0F8B68 802D41B8 AE020000 */  sw    $v0, ($s0)
/* 0F8B6C 802D41BC 0040202D */  daddu $a0, $v0, $zero
/* 0F8B70 802D41C0 AE000004 */  sw    $zero, 4($s0)
/* 0F8B74 802D41C4 AE000008 */  sw    $zero, 8($s0)
/* 0F8B78 802D41C8 AE00000C */  sw    $zero, 0xc($s0)
/* 0F8B7C 802D41CC AE000010 */  sw    $zero, 0x10($s0)
/* 0F8B80 802D41D0 AE000014 */  sw    $zero, 0x14($s0)
/* 0F8B84 802D41D4 AE000018 */  sw    $zero, 0x18($s0)
/* 0F8B88 802D41D8 E600001C */  swc1  $f0, 0x1c($s0)
/* 0F8B8C 802D41DC E6000020 */  swc1  $f0, 0x20($s0)
/* 0F8B90 802D41E0 0C0483C1 */  jal   func_80120F04
/* 0F8B94 802D41E4 E6000024 */   swc1  $f0, 0x24($s0)
/* 0F8B98 802D41E8 8E420000 */  lw    $v0, ($s2)
/* 0F8B9C 802D41EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F8BA0 802D41F0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8BA4 802D41F4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8BA8 802D41F8 02228821 */  addu  $s1, $s1, $v0
/* 0F8BAC 802D41FC 8E220000 */  lw    $v0, ($s1)
/* 0F8BB0 802D4200 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8BB4 802D4204 03E00008 */  jr    $ra
/* 0F8BB8 802D4208 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F8BBC 802D420C 3C03802E */  lui   $v1, 0x802e
/* 0F8BC0 802D4210 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F8BC4 802D4214 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F8BC8 802D4218 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8BCC 802D421C 0000882D */  daddu $s1, $zero, $zero
/* 0F8BD0 802D4220 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0F8BD4 802D4224 AFB00010 */  sw    $s0, 0x10($sp)
.L802D4228:
/* 0F8BD8 802D4228 8C700000 */  lw    $s0, ($v1)
/* 0F8BDC 802D422C 8E020000 */  lw    $v0, ($s0)
/* 0F8BE0 802D4230 04400006 */  bltz  $v0, .L802D424C
/* 0F8BE4 802D4234 2A220040 */   slti  $v0, $s1, 0x40
/* 0F8BE8 802D4238 26310001 */  addiu $s1, $s1, 1
/* 0F8BEC 802D423C 2A220040 */  slti  $v0, $s1, 0x40
/* 0F8BF0 802D4240 1440FFF9 */  bnez  $v0, .L802D4228
/* 0F8BF4 802D4244 24630004 */   addiu $v1, $v1, 4
/* 0F8BF8 802D4248 2A220040 */  slti  $v0, $s1, 0x40
.L802D424C:
/* 0F8BFC 802D424C 50400012 */  beql  $v0, $zero, .L802D4298
/* 0F8C00 802D4250 0000102D */   daddu $v0, $zero, $zero
/* 0F8C04 802D4254 0C048338 */  jal   func_80120CE0
/* 0F8C08 802D4258 00000000 */   nop   
/* 0F8C0C 802D425C 3C013F80 */  lui   $at, 0x3f80
/* 0F8C10 802D4260 44810000 */  mtc1  $at, $f0
/* 0F8C14 802D4264 AE020000 */  sw    $v0, ($s0)
/* 0F8C18 802D4268 0040202D */  daddu $a0, $v0, $zero
/* 0F8C1C 802D426C AE000004 */  sw    $zero, 4($s0)
/* 0F8C20 802D4270 AE000008 */  sw    $zero, 8($s0)
/* 0F8C24 802D4274 AE00000C */  sw    $zero, 0xc($s0)
/* 0F8C28 802D4278 AE000010 */  sw    $zero, 0x10($s0)
/* 0F8C2C 802D427C AE000014 */  sw    $zero, 0x14($s0)
/* 0F8C30 802D4280 AE000018 */  sw    $zero, 0x18($s0)
/* 0F8C34 802D4284 E600001C */  swc1  $f0, 0x1c($s0)
/* 0F8C38 802D4288 E6000020 */  swc1  $f0, 0x20($s0)
/* 0F8C3C 802D428C 0C0483C1 */  jal   func_80120F04
/* 0F8C40 802D4290 E6000024 */   swc1  $f0, 0x24($s0)
/* 0F8C44 802D4294 0220102D */  daddu $v0, $s1, $zero
.L802D4298:
/* 0F8C48 802D4298 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0F8C4C 802D429C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8C50 802D42A0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8C54 802D42A4 03E00008 */  jr    $ra
/* 0F8C58 802D42A8 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F8C5C 802D42AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F8C60 802D42B0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8C64 802D42B4 0000882D */  daddu $s1, $zero, $zero
/* 0F8C68 802D42B8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8C6C 802D42BC 3C12802E */  lui   $s2, 0x802e
/* 0F8C70 802D42C0 2652B7C0 */  addiu $s2, $s2, -0x4840
/* 0F8C74 802D42C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8C78 802D42C8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8C7C 802D42CC 8E430000 */  lw    $v1, ($s2)
.L802D42D0:
/* 0F8C80 802D42D0 8C700000 */  lw    $s0, ($v1)
/* 0F8C84 802D42D4 8E020000 */  lw    $v0, ($s0)
/* 0F8C88 802D42D8 04400006 */  bltz  $v0, .L802D42F4
/* 0F8C8C 802D42DC 2A220040 */   slti  $v0, $s1, 0x40
/* 0F8C90 802D42E0 26310001 */  addiu $s1, $s1, 1
/* 0F8C94 802D42E4 2A220040 */  slti  $v0, $s1, 0x40
/* 0F8C98 802D42E8 1440FFF9 */  bnez  $v0, .L802D42D0
/* 0F8C9C 802D42EC 24630004 */   addiu $v1, $v1, 4
/* 0F8CA0 802D42F0 2A220040 */  slti  $v0, $s1, 0x40
.L802D42F4:
/* 0F8CA4 802D42F4 10400015 */  beqz  $v0, .L802D434C
/* 0F8CA8 802D42F8 0000102D */   daddu $v0, $zero, $zero
/* 0F8CAC 802D42FC 0C048379 */  jal   func_80120DE4
/* 0F8CB0 802D4300 00000000 */   nop   
/* 0F8CB4 802D4304 3C013F80 */  lui   $at, 0x3f80
/* 0F8CB8 802D4308 44810000 */  mtc1  $at, $f0
/* 0F8CBC 802D430C AE020000 */  sw    $v0, ($s0)
/* 0F8CC0 802D4310 0040202D */  daddu $a0, $v0, $zero
/* 0F8CC4 802D4314 AE000004 */  sw    $zero, 4($s0)
/* 0F8CC8 802D4318 AE000008 */  sw    $zero, 8($s0)
/* 0F8CCC 802D431C AE00000C */  sw    $zero, 0xc($s0)
/* 0F8CD0 802D4320 AE000010 */  sw    $zero, 0x10($s0)
/* 0F8CD4 802D4324 AE000014 */  sw    $zero, 0x14($s0)
/* 0F8CD8 802D4328 AE000018 */  sw    $zero, 0x18($s0)
/* 0F8CDC 802D432C E600001C */  swc1  $f0, 0x1c($s0)
/* 0F8CE0 802D4330 E6000020 */  swc1  $f0, 0x20($s0)
/* 0F8CE4 802D4334 0C0483C1 */  jal   func_80120F04
/* 0F8CE8 802D4338 E6000024 */   swc1  $f0, 0x24($s0)
/* 0F8CEC 802D433C 8E430000 */  lw    $v1, ($s2)
/* 0F8CF0 802D4340 00111080 */  sll   $v0, $s1, 2
/* 0F8CF4 802D4344 00431021 */  addu  $v0, $v0, $v1
/* 0F8CF8 802D4348 8C420000 */  lw    $v0, ($v0)
.L802D434C:
/* 0F8CFC 802D434C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F8D00 802D4350 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8D04 802D4354 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8D08 802D4358 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8D0C 802D435C 03E00008 */  jr    $ra
/* 0F8D10 802D4360 27BD0020 */   addiu $sp, $sp, 0x20

/* 0F8D14 802D4364 3C02802E */  lui   $v0, 0x802e
/* 0F8D18 802D4368 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8D1C 802D436C 00042080 */  sll   $a0, $a0, 2
/* 0F8D20 802D4370 00822021 */  addu  $a0, $a0, $v0
/* 0F8D24 802D4374 8C820000 */  lw    $v0, ($a0)
/* 0F8D28 802D4378 44850000 */  mtc1  $a1, $f0
/* 0F8D2C 802D437C 00000000 */  nop   
/* 0F8D30 802D4380 46800020 */  cvt.s.w $f0, $f0
/* 0F8D34 802D4384 E4400004 */  swc1  $f0, 4($v0)
/* 0F8D38 802D4388 44860000 */  mtc1  $a2, $f0
/* 0F8D3C 802D438C 00000000 */  nop   
/* 0F8D40 802D4390 46800020 */  cvt.s.w $f0, $f0
/* 0F8D44 802D4394 E4400008 */  swc1  $f0, 8($v0)
/* 0F8D48 802D4398 44870000 */  mtc1  $a3, $f0
/* 0F8D4C 802D439C 00000000 */  nop   
/* 0F8D50 802D43A0 46800020 */  cvt.s.w $f0, $f0
/* 0F8D54 802D43A4 03E00008 */  jr    $ra
/* 0F8D58 802D43A8 E440000C */   swc1  $f0, 0xc($v0)

/* 0F8D5C 802D43AC 3C02802E */  lui   $v0, 0x802e
/* 0F8D60 802D43B0 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8D64 802D43B4 00042080 */  sll   $a0, $a0, 2
/* 0F8D68 802D43B8 00822021 */  addu  $a0, $a0, $v0
/* 0F8D6C 802D43BC 8C820000 */  lw    $v0, ($a0)
/* 0F8D70 802D43C0 AC45001C */  sw    $a1, 0x1c($v0)
/* 0F8D74 802D43C4 AC460020 */  sw    $a2, 0x20($v0)
/* 0F8D78 802D43C8 03E00008 */  jr    $ra
/* 0F8D7C 802D43CC AC470024 */   sw    $a3, 0x24($v0)

/* 0F8D80 802D43D0 3C02802E */  lui   $v0, 0x802e
/* 0F8D84 802D43D4 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8D88 802D43D8 00042080 */  sll   $a0, $a0, 2
/* 0F8D8C 802D43DC 00822021 */  addu  $a0, $a0, $v0
/* 0F8D90 802D43E0 8C820000 */  lw    $v0, ($a0)
/* 0F8D94 802D43E4 AC450010 */  sw    $a1, 0x10($v0)
/* 0F8D98 802D43E8 AC460014 */  sw    $a2, 0x14($v0)
/* 0F8D9C 802D43EC 03E00008 */  jr    $ra
/* 0F8DA0 802D43F0 AC470018 */   sw    $a3, 0x18($v0)

func_802D43F4:
/* 0F8DA4 802D43F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F8DA8 802D43F8 3C02802E */  lui   $v0, 0x802e
/* 0F8DAC 802D43FC 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8DB0 802D4400 00042080 */  sll   $a0, $a0, 2
/* 0F8DB4 802D4404 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F8DB8 802D4408 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8DBC 802D440C 00822021 */  addu  $a0, $a0, $v0
/* 0F8DC0 802D4410 8C900000 */  lw    $s0, ($a0)
/* 0F8DC4 802D4414 0C048B7F */  jal   func_80122DFC
/* 0F8DC8 802D4418 8E040000 */   lw    $a0, ($s0)
/* 0F8DCC 802D441C 2402FFFF */  addiu $v0, $zero, -1
/* 0F8DD0 802D4420 AE020000 */  sw    $v0, ($s0)
/* 0F8DD4 802D4424 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F8DD8 802D4428 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8DDC 802D442C 03E00008 */  jr    $ra
/* 0F8DE0 802D4430 27BD0018 */   addiu $sp, $sp, 0x18

/* 0F8DE4 802D4434 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F8DE8 802D4438 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0F8DEC 802D443C 0080282D */  daddu $a1, $a0, $zero
/* 0F8DF0 802D4440 0000202D */  daddu $a0, $zero, $zero
.L802D4444:
/* 0F8DF4 802D4444 3C02802E */  lui   $v0, 0x802e
/* 0F8DF8 802D4448 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8DFC 802D444C 00041880 */  sll   $v1, $a0, 2
/* 0F8E00 802D4450 00621821 */  addu  $v1, $v1, $v0
/* 0F8E04 802D4454 8C620000 */  lw    $v0, ($v1)
/* 0F8E08 802D4458 54450005 */  bnel  $v0, $a1, .L802D4470
/* 0F8E0C 802D445C 24840001 */   addiu $a0, $a0, 1
/* 0F8E10 802D4460 0C0B50FD */  jal   func_802D43F4
/* 0F8E14 802D4464 00000000 */   nop   
/* 0F8E18 802D4468 080B511F */  j     func_802D447C
/* 0F8E1C 802D446C 00000000 */   nop   

.L802D4470:
/* 0F8E20 802D4470 28820040 */  slti  $v0, $a0, 0x40
/* 0F8E24 802D4474 1440FFF3 */  bnez  $v0, .L802D4444
/* 0F8E28 802D4478 00000000 */   nop   
func_802D447C:
/* 0F8E2C 802D447C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0F8E30 802D4480 03E00008 */  jr    $ra
/* 0F8E34 802D4484 27BD0018 */   addiu $sp, $sp, 0x18

func_802D4488:
/* 0F8E38 802D4488 3C028007 */  lui   $v0, 0x8007
/* 0F8E3C 802D448C 8C42419C */  lw    $v0, 0x419c($v0)
/* 0F8E40 802D4490 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0F8E44 802D4494 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0F8E48 802D4498 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F8E4C 802D449C AFB10014 */  sw    $s1, 0x14($sp)
/* 0F8E50 802D44A0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0F8E54 802D44A4 80420070 */  lb    $v0, 0x70($v0)
/* 0F8E58 802D44A8 14400005 */  bnez  $v0, .L802D44C0
/* 0F8E5C 802D44AC 00000000 */   nop   
/* 0F8E60 802D44B0 3C02802E */  lui   $v0, 0x802e
/* 0F8E64 802D44B4 2442B6C0 */  addiu $v0, $v0, -0x4940
/* 0F8E68 802D44B8 080B5132 */  j     func_802D44C8
/* 0F8E6C 802D44BC 00000000 */   nop   

.L802D44C0:
/* 0F8E70 802D44C0 3C02802E */  lui   $v0, 0x802e
/* 0F8E74 802D44C4 2442B5C0 */  addiu $v0, $v0, -0x4a40
func_802D44C8:
/* 0F8E78 802D44C8 3C01802E */  lui   $at, 0x802e
/* 0F8E7C 802D44CC AC22B7C0 */  sw    $v0, -0x4840($at)
/* 0F8E80 802D44D0 0000882D */  daddu $s1, $zero, $zero
/* 0F8E84 802D44D4 2412FFFF */  addiu $s2, $zero, -1
/* 0F8E88 802D44D8 0220802D */  daddu $s0, $s1, $zero
.L802D44DC:
/* 0F8E8C 802D44DC 0C00AB39 */  jal   heap_malloc
/* 0F8E90 802D44E0 2404004C */   addiu $a0, $zero, 0x4c
/* 0F8E94 802D44E4 3C03802E */  lui   $v1, 0x802e
/* 0F8E98 802D44E8 8C63B7C0 */  lw    $v1, -0x4840($v1)
/* 0F8E9C 802D44EC 02031821 */  addu  $v1, $s0, $v1
/* 0F8EA0 802D44F0 14400003 */  bnez  $v0, .L802D4500
/* 0F8EA4 802D44F4 AC620000 */   sw    $v0, ($v1)
func_802D44F8:
/* 0F8EA8 802D44F8 080B513E */  j     func_802D44F8
/* 0F8EAC 802D44FC 00000000 */   nop   

.L802D4500:
/* 0F8EB0 802D4500 3C02802E */  lui   $v0, 0x802e
/* 0F8EB4 802D4504 8C42B7C0 */  lw    $v0, -0x4840($v0)
/* 0F8EB8 802D4508 26310001 */  addiu $s1, $s1, 1
/* 0F8EBC 802D450C 02021021 */  addu  $v0, $s0, $v0
/* 0F8EC0 802D4510 8C420000 */  lw    $v0, ($v0)
/* 0F8EC4 802D4514 AC520000 */  sw    $s2, ($v0)
/* 0F8EC8 802D4518 2A220040 */  slti  $v0, $s1, 0x40
/* 0F8ECC 802D451C 1440FFEF */  bnez  $v0, .L802D44DC
/* 0F8ED0 802D4520 26100004 */   addiu $s0, $s0, 4
/* 0F8ED4 802D4524 3C04802D */  lui   $a0, 0x802d
/* 0F8ED8 802D4528 24842FCC */  addiu $a0, $a0, 0x2fcc
/* 0F8EDC 802D452C 3C05802D */  lui   $a1, 0x802d
/* 0F8EE0 802D4530 0C048C56 */  jal   func_80123158
/* 0F8EE4 802D4534 24A53028 */   addiu $a1, $a1, 0x3028
/* 0F8EE8 802D4538 3C05802D */  lui   $a1, 0x802d
/* 0F8EEC 802D453C 24A531E0 */  addiu $a1, $a1, 0x31e0
/* 0F8EF0 802D4540 0C048CC8 */  jal   func_80123320
/* 0F8EF4 802D4544 0000202D */   daddu $a0, $zero, $zero
/* 0F8EF8 802D4548 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0F8EFC 802D454C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F8F00 802D4550 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F8F04 802D4554 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F8F08 802D4558 03E00008 */  jr    $ra
/* 0F8F0C 802D455C 27BD0020 */   addiu $sp, $sp, 0x20

func_802D4560:
/* 0F8F10 802D4560 3C028007 */  lui   $v0, 0x8007
/* 0F8F14 802D4564 8C42419C */  lw    $v0, 0x419c($v0)
/* 0F8F18 802D4568 80420070 */  lb    $v0, 0x70($v0)
/* 0F8F1C 802D456C 14400007 */  bnez  $v0, .L802D458C
/* 0F8F20 802D4570 00000000 */   nop   
/* 0F8F24 802D4574 3C02802E */  lui   $v0, 0x802e
/* 0F8F28 802D4578 2442B6C0 */  addiu $v0, $v0, -0x4940
/* 0F8F2C 802D457C 3C01802E */  lui   $at, 0x802e
/* 0F8F30 802D4580 AC22B7C0 */  sw    $v0, -0x4840($at)
/* 0F8F34 802D4584 03E00008 */  jr    $ra
/* 0F8F38 802D4588 00000000 */   nop   

.L802D458C:
/* 0F8F3C 802D458C 3C02802E */  lui   $v0, 0x802e
/* 0F8F40 802D4590 2442B5C0 */  addiu $v0, $v0, -0x4a40
/* 0F8F44 802D4594 3C01802E */  lui   $at, 0x802e
/* 0F8F48 802D4598 AC22B7C0 */  sw    $v0, -0x4840($at)
/* 0F8F4C 802D459C 03E00008 */  jr    $ra
/* 0F8F50 802D45A0 00000000 */   nop   

/* 0F8F54 802D45A4 00000000 */  nop   
/* 0F8F58 802D45A8 00000000 */  nop   
/* 0F8F5C 802D45AC 00000000 */  nop   
