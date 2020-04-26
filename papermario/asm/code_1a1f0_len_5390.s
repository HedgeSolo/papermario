
.section .text8003EDF0, "ax"

get_defeated:
/* 01A1F0 8003EDF0 0080302D */  daddu $a2, $a0, $zero
/* 01A1F4 8003EDF4 04A10002 */  bgez  $a1, .L8003EE00
/* 01A1F8 8003EDF8 00A0182D */   daddu $v1, $a1, $zero
/* 01A1FC 8003EDFC 24A3001F */  addiu $v1, $a1, 0x1f
.L8003EE00:
/* 01A200 8003EE00 00031943 */  sra   $v1, $v1, 5
/* 01A204 8003EE04 00032140 */  sll   $a0, $v1, 5
/* 01A208 8003EE08 00A42023 */  subu  $a0, $a1, $a0
/* 01A20C 8003EE0C 00031880 */  sll   $v1, $v1, 2
/* 01A210 8003EE10 00061040 */  sll   $v0, $a2, 1
/* 01A214 8003EE14 00461021 */  addu  $v0, $v0, $a2
/* 01A218 8003EE18 00021100 */  sll   $v0, $v0, 4
/* 01A21C 8003EE1C 00621821 */  addu  $v1, $v1, $v0
/* 01A220 8003EE20 3C02800B */  lui   $v0, 0x800b
/* 01A224 8003EE24 24420F10 */  addiu $v0, $v0, 0xf10
/* 01A228 8003EE28 00621821 */  addu  $v1, $v1, $v0
/* 01A22C 8003EE2C 24020001 */  addiu $v0, $zero, 1
/* 01A230 8003EE30 8C6300B0 */  lw    $v1, 0xb0($v1)
/* 01A234 8003EE34 00821004 */  sllv  $v0, $v0, $a0
/* 01A238 8003EE38 03E00008 */  jr    $ra
/* 01A23C 8003EE3C 00621024 */   and   $v0, $v1, $v0

set_defeated:
/* 01A240 8003EE40 0080182D */  daddu $v1, $a0, $zero
/* 01A244 8003EE44 00A0102D */  daddu $v0, $a1, $zero
/* 01A248 8003EE48 04410002 */  bgez  $v0, .L8003EE54
/* 01A24C 8003EE4C 0040202D */   daddu $a0, $v0, $zero
/* 01A250 8003EE50 2444001F */  addiu $a0, $v0, 0x1f
.L8003EE54:
/* 01A254 8003EE54 00042143 */  sra   $a0, $a0, 5
/* 01A258 8003EE58 00042940 */  sll   $a1, $a0, 5
/* 01A25C 8003EE5C 00452823 */  subu  $a1, $v0, $a1
/* 01A260 8003EE60 00042080 */  sll   $a0, $a0, 2
/* 01A264 8003EE64 00031040 */  sll   $v0, $v1, 1
/* 01A268 8003EE68 00431021 */  addu  $v0, $v0, $v1
/* 01A26C 8003EE6C 00021100 */  sll   $v0, $v0, 4
/* 01A270 8003EE70 00822021 */  addu  $a0, $a0, $v0
/* 01A274 8003EE74 3C02800B */  lui   $v0, 0x800b
/* 01A278 8003EE78 24420F10 */  addiu $v0, $v0, 0xf10
/* 01A27C 8003EE7C 00822021 */  addu  $a0, $a0, $v0
/* 01A280 8003EE80 24030001 */  addiu $v1, $zero, 1
/* 01A284 8003EE84 8C8200B0 */  lw    $v0, 0xb0($a0)
/* 01A288 8003EE88 00A31804 */  sllv  $v1, $v1, $a1
/* 01A28C 8003EE8C 00431025 */  or    $v0, $v0, $v1
/* 01A290 8003EE90 03E00008 */  jr    $ra
/* 01A294 8003EE94 AC8200B0 */   sw    $v0, 0xb0($a0)

/* 01A298 8003EE98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01A29C 8003EE9C 10A00004 */  beqz  $a1, .L8003EEB0
/* 01A2A0 8003EEA0 AFBF0010 */   sw    $ra, 0x10($sp)
/* 01A2A4 8003EEA4 0000202D */  daddu $a0, $zero, $zero
/* 01A2A8 8003EEA8 0C011740 */  jal   func_80045D00
/* 01A2AC 8003EEAC 2405003C */   addiu $a1, $zero, 0x3c
.L8003EEB0:
/* 01A2B0 8003EEB0 0C0117E9 */  jal   func_80045FA4
/* 01A2B4 8003EEB4 00000000 */   nop   
/* 01A2B8 8003EEB8 2C420001 */  sltiu $v0, $v0, 1
/* 01A2BC 8003EEBC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01A2C0 8003EEC0 00021040 */  sll   $v0, $v0, 1
/* 01A2C4 8003EEC4 03E00008 */  jr    $ra
/* 01A2C8 8003EEC8 27BD0018 */   addiu $sp, $sp, 0x18

/* 01A2CC 8003EECC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01A2D0 8003EED0 10A00004 */  beqz  $a1, .L8003EEE4
/* 01A2D4 8003EED4 AFBF0010 */   sw    $ra, 0x10($sp)
/* 01A2D8 8003EED8 24040001 */  addiu $a0, $zero, 1
/* 01A2DC 8003EEDC 0C011740 */  jal   func_80045D00
/* 01A2E0 8003EEE0 2405003C */   addiu $a1, $zero, 0x3c
.L8003EEE4:
/* 01A2E4 8003EEE4 0C0117E9 */  jal   func_80045FA4
/* 01A2E8 8003EEE8 00000000 */   nop   
/* 01A2EC 8003EEEC 2C420001 */  sltiu $v0, $v0, 1
/* 01A2F0 8003EEF0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01A2F4 8003EEF4 00021040 */  sll   $v0, $v0, 1
/* 01A2F8 8003EEF8 03E00008 */  jr    $ra
/* 01A2FC 8003EEFC 27BD0018 */   addiu $sp, $sp, 0x18

/* 01A300 8003EF00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01A304 8003EF04 AFB00010 */  sw    $s0, 0x10($sp)
/* 01A308 8003EF08 0080802D */  daddu $s0, $a0, $zero
/* 01A30C 8003EF0C 10A0000E */  beqz  $a1, .L8003EF48
/* 01A310 8003EF10 AFBF0014 */   sw    $ra, 0x14($sp)
/* 01A314 8003EF14 0C04760B */  jal   func_8011D82C
/* 01A318 8003EF18 24040001 */   addiu $a0, $zero, 1
/* 01A31C 8003EF1C 0000202D */  daddu $a0, $zero, $zero
/* 01A320 8003EF20 0080282D */  daddu $a1, $a0, $zero
/* 01A324 8003EF24 0080302D */  daddu $a2, $a0, $zero
/* 01A328 8003EF28 0080382D */  daddu $a3, $a0, $zero
/* 01A32C 8003EF2C 3C028015 */  lui   $v0, 0x8015
/* 01A330 8003EF30 8C4212F0 */  lw    $v0, 0x12f0($v0)
/* 01A334 8003EF34 24030001 */  addiu $v1, $zero, 1
/* 01A338 8003EF38 0C046F97 */  jal   func_8011BE5C
/* 01A33C 8003EF3C A0430000 */   sb    $v1, ($v0)
/* 01A340 8003EF40 24020019 */  addiu $v0, $zero, 0x19
/* 01A344 8003EF44 AE020070 */  sw    $v0, 0x70($s0)
.L8003EF48:
/* 01A348 8003EF48 0000202D */  daddu $a0, $zero, $zero
/* 01A34C 8003EF4C 0080282D */  daddu $a1, $a0, $zero
/* 01A350 8003EF50 0080302D */  daddu $a2, $a0, $zero
/* 01A354 8003EF54 8E030070 */  lw    $v1, 0x70($s0)
/* 01A358 8003EF58 24020019 */  addiu $v0, $zero, 0x19
/* 01A35C 8003EF5C 00431023 */  subu  $v0, $v0, $v1
/* 01A360 8003EF60 00023880 */  sll   $a3, $v0, 2
/* 01A364 8003EF64 00E23821 */  addu  $a3, $a3, $v0
/* 01A368 8003EF68 00073840 */  sll   $a3, $a3, 1
/* 01A36C 8003EF6C 0C046F97 */  jal   func_8011BE5C
/* 01A370 8003EF70 30E700FE */   andi  $a3, $a3, 0xfe
/* 01A374 8003EF74 8E020070 */  lw    $v0, 0x70($s0)
/* 01A378 8003EF78 2442FFFF */  addiu $v0, $v0, -1
/* 01A37C 8003EF7C AE020070 */  sw    $v0, 0x70($s0)
/* 01A380 8003EF80 2C420001 */  sltiu $v0, $v0, 1
/* 01A384 8003EF84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01A388 8003EF88 8FB00010 */  lw    $s0, 0x10($sp)
/* 01A38C 8003EF8C 00021040 */  sll   $v0, $v0, 1
/* 01A390 8003EF90 03E00008 */  jr    $ra
/* 01A394 8003EF94 27BD0018 */   addiu $sp, $sp, 0x18

/* 01A398 8003EF98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01A39C 8003EF9C AFB00010 */  sw    $s0, 0x10($sp)
/* 01A3A0 8003EFA0 0080802D */  daddu $s0, $a0, $zero
/* 01A3A4 8003EFA4 10A00003 */  beqz  $a1, .L8003EFB4
/* 01A3A8 8003EFA8 AFBF0014 */   sw    $ra, 0x14($sp)
/* 01A3AC 8003EFAC 24020019 */  addiu $v0, $zero, 0x19
/* 01A3B0 8003EFB0 AE020070 */  sw    $v0, 0x70($s0)
.L8003EFB4:
/* 01A3B4 8003EFB4 0000202D */  daddu $a0, $zero, $zero
/* 01A3B8 8003EFB8 0080282D */  daddu $a1, $a0, $zero
/* 01A3BC 8003EFBC 8E020070 */  lw    $v0, 0x70($s0)
/* 01A3C0 8003EFC0 0080302D */  daddu $a2, $a0, $zero
/* 01A3C4 8003EFC4 00023880 */  sll   $a3, $v0, 2
/* 01A3C8 8003EFC8 00E23821 */  addu  $a3, $a3, $v0
/* 01A3CC 8003EFCC 00073840 */  sll   $a3, $a3, 1
/* 01A3D0 8003EFD0 0C046F97 */  jal   func_8011BE5C
/* 01A3D4 8003EFD4 30E700FE */   andi  $a3, $a3, 0xfe
/* 01A3D8 8003EFD8 8E020070 */  lw    $v0, 0x70($s0)
/* 01A3DC 8003EFDC 2442FFFB */  addiu $v0, $v0, -5
/* 01A3E0 8003EFE0 10400003 */  beqz  $v0, .L8003EFF0
/* 01A3E4 8003EFE4 AE020070 */   sw    $v0, 0x70($s0)
/* 01A3E8 8003EFE8 0800FC02 */  j     func_8003F008
/* 01A3EC 8003EFEC 0000102D */   daddu $v0, $zero, $zero

.L8003EFF0:
/* 01A3F0 8003EFF0 0000202D */  daddu $a0, $zero, $zero
/* 01A3F4 8003EFF4 0080282D */  daddu $a1, $a0, $zero
/* 01A3F8 8003EFF8 0080302D */  daddu $a2, $a0, $zero
/* 01A3FC 8003EFFC 0C046F97 */  jal   func_8011BE5C
/* 01A400 8003F000 0080382D */   daddu $a3, $a0, $zero
/* 01A404 8003F004 24020002 */  addiu $v0, $zero, 2
func_8003F008:
/* 01A408 8003F008 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01A40C 8003F00C 8FB00010 */  lw    $s0, 0x10($sp)
/* 01A410 8003F010 03E00008 */  jr    $ra
/* 01A414 8003F014 27BD0018 */   addiu $sp, $sp, 0x18

/* 01A418 8003F018 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01A41C 8003F01C AFB00010 */  sw    $s0, 0x10($sp)
/* 01A420 8003F020 00A0802D */  daddu $s0, $a1, $zero
/* 01A424 8003F024 2404FFF6 */  addiu $a0, $zero, -0xa
/* 01A428 8003F028 AFBF0018 */  sw    $ra, 0x18($sp)
/* 01A42C 8003F02C 0C00EABB */  jal   get_npc_unsafe
/* 01A430 8003F030 AFB10014 */   sw    $s1, 0x14($sp)
/* 01A434 8003F034 12000004 */  beqz  $s0, .L8003F048
/* 01A438 8003F038 0040882D */   daddu $s1, $v0, $zero
/* 01A43C 8003F03C 0C05272D */  jal   play_sound
/* 01A440 8003F040 2404024B */   addiu $a0, $zero, 0x24b
/* 01A444 8003F044 A22000AC */  sb    $zero, 0xac($s1)
.L8003F048:
/* 01A448 8003F048 922200AC */  lbu   $v0, 0xac($s1)
/* 01A44C 8003F04C 24420011 */  addiu $v0, $v0, 0x11
/* 01A450 8003F050 A22200AC */  sb    $v0, 0xac($s1)
/* 01A454 8003F054 304200FF */  andi  $v0, $v0, 0xff
/* 01A458 8003F058 2C4200FF */  sltiu $v0, $v0, 0xff
/* 01A45C 8003F05C 14400004 */  bnez  $v0, .L8003F070
/* 01A460 8003F060 0000102D */   daddu $v0, $zero, $zero
/* 01A464 8003F064 240200FF */  addiu $v0, $zero, 0xff
/* 01A468 8003F068 A22200AC */  sb    $v0, 0xac($s1)
/* 01A46C 8003F06C 24020001 */  addiu $v0, $zero, 1
.L8003F070:
/* 01A470 8003F070 8FBF0018 */  lw    $ra, 0x18($sp)
/* 01A474 8003F074 8FB10014 */  lw    $s1, 0x14($sp)
/* 01A478 8003F078 8FB00010 */  lw    $s0, 0x10($sp)
/* 01A47C 8003F07C 03E00008 */  jr    $ra
/* 01A480 8003F080 27BD0020 */   addiu $sp, $sp, 0x20

/* 01A484 8003F084 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01A488 8003F088 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01A48C 8003F08C 0C00EABB */  jal   get_npc_unsafe
/* 01A490 8003F090 2404FFF6 */   addiu $a0, $zero, -0xa
/* 01A494 8003F094 0040182D */  daddu $v1, $v0, $zero
/* 01A498 8003F098 906200AC */  lbu   $v0, 0xac($v1)
/* 01A49C 8003F09C 2442FFEF */  addiu $v0, $v0, -0x11
/* 01A4A0 8003F0A0 A06200AC */  sb    $v0, 0xac($v1)
/* 01A4A4 8003F0A4 304200FF */  andi  $v0, $v0, 0xff
/* 01A4A8 8003F0A8 14400003 */  bnez  $v0, .L8003F0B8
/* 01A4AC 8003F0AC 0000102D */   daddu $v0, $zero, $zero
/* 01A4B0 8003F0B0 A06000AC */  sb    $zero, 0xac($v1)
/* 01A4B4 8003F0B4 24020001 */  addiu $v0, $zero, 1
.L8003F0B8:
/* 01A4B8 8003F0B8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01A4BC 8003F0BC 03E00008 */  jr    $ra
/* 01A4C0 8003F0C0 27BD0018 */   addiu $sp, $sp, 0x18

/* 01A4C4 8003F0C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01A4C8 8003F0C8 AFB20020 */  sw    $s2, 0x20($sp)
/* 01A4CC 8003F0CC 0080902D */  daddu $s2, $a0, $zero
/* 01A4D0 8003F0D0 AFB00018 */  sw    $s0, 0x18($sp)
/* 01A4D4 8003F0D4 00A0802D */  daddu $s0, $a1, $zero
/* 01A4D8 8003F0D8 2404FFF6 */  addiu $a0, $zero, -0xa
/* 01A4DC 8003F0DC AFBF0024 */  sw    $ra, 0x24($sp)
/* 01A4E0 8003F0E0 0C00EABB */  jal   get_npc_unsafe
/* 01A4E4 8003F0E4 AFB1001C */   sw    $s1, 0x1c($sp)
/* 01A4E8 8003F0E8 12000024 */  beqz  $s0, .L8003F17C
/* 01A4EC 8003F0EC 0040882D */   daddu $s1, $v0, $zero
/* 01A4F0 8003F0F0 AE400074 */  sw    $zero, 0x74($s2)
/* 01A4F4 8003F0F4 C622003C */  lwc1  $f2, 0x3c($s1)
/* 01A4F8 8003F0F8 3C013ECC */  lui   $at, 0x3ecc
/* 01A4FC 8003F0FC 3421CCCD */  ori   $at, $at, 0xcccd
/* 01A500 8003F100 44810000 */  mtc1  $at, $f0
/* 01A504 8003F104 AFA00014 */  sw    $zero, 0x14($sp)
/* 01A508 8003F108 E7A00010 */  swc1  $f0, 0x10($sp)
/* 01A50C 8003F10C 8E250038 */  lw    $a1, 0x38($s1)
/* 01A510 8003F110 8E26003C */  lw    $a2, 0x3c($s1)
/* 01A514 8003F114 8E270040 */  lw    $a3, 0x40($s1)
/* 01A518 8003F118 3C01800A */  lui   $at, 0x800a
/* 01A51C 8003F11C E4220BA4 */  swc1  $f2, 0xba4($at)
/* 01A520 8003F120 0C01C5D4 */  jal   func_80071750
/* 01A524 8003F124 0000202D */   daddu $a0, $zero, $zero
/* 01A528 8003F128 3C013727 */  lui   $at, 0x3727
/* 01A52C 8003F12C 3421C5AC */  ori   $at, $at, 0xc5ac
/* 01A530 8003F130 44810000 */  mtc1  $at, $f0
/* 01A534 8003F134 AFA00014 */  sw    $zero, 0x14($sp)
/* 01A538 8003F138 E7A00010 */  swc1  $f0, 0x10($sp)
/* 01A53C 8003F13C 8E250038 */  lw    $a1, 0x38($s1)
/* 01A540 8003F140 8E26003C */  lw    $a2, 0x3c($s1)
/* 01A544 8003F144 8E270040 */  lw    $a3, 0x40($s1)
/* 01A548 8003F148 3C01800A */  lui   $at, 0x800a
/* 01A54C 8003F14C AC220BA8 */  sw    $v0, 0xba8($at)
/* 01A550 8003F150 0C01C5D4 */  jal   func_80071750
/* 01A554 8003F154 24040003 */   addiu $a0, $zero, 3
/* 01A558 8003F158 3C01800A */  lui   $at, 0x800a
/* 01A55C 8003F15C AC220BAC */  sw    $v0, 0xbac($at)
/* 01A560 8003F160 2402000C */  addiu $v0, $zero, 0xc
/* 01A564 8003F164 3C01800A */  lui   $at, 0x800a
/* 01A568 8003F168 A4200BB8 */  sh    $zero, 0xbb8($at)
/* 01A56C 8003F16C 3C01800A */  lui   $at, 0x800a
/* 01A570 8003F170 AC220BA0 */  sw    $v0, 0xba0($at)
/* 01A574 8003F174 0C05272D */  jal   play_sound
/* 01A578 8003F178 24042074 */   addiu $a0, $zero, 0x2074
.L8003F17C:
/* 01A57C 8003F17C 3C0140C9 */  lui   $at, 0x40c9
/* 01A580 8003F180 34210FD0 */  ori   $at, $at, 0xfd0
/* 01A584 8003F184 44810000 */  mtc1  $at, $f0
/* 01A588 8003F188 C64C0074 */  lwc1  $f12, 0x74($s2)
/* 01A58C 8003F18C 46806320 */  cvt.s.w $f12, $f12
/* 01A590 8003F190 46006302 */  mul.s $f12, $f12, $f0
/* 01A594 8003F194 00000000 */  nop   
/* 01A598 8003F198 3C0143B4 */  lui   $at, 0x43b4
/* 01A59C 8003F19C 44810000 */  mtc1  $at, $f0
/* 01A5A0 8003F1A0 0C00A85B */  jal   sin_rad
/* 01A5A4 8003F1A4 46006303 */   div.s $f12, $f12, $f0
/* 01A5A8 8003F1A8 3C014040 */  lui   $at, 0x4040
/* 01A5AC 8003F1AC 44811000 */  mtc1  $at, $f2
/* 01A5B0 8003F1B0 00000000 */  nop   
/* 01A5B4 8003F1B4 46020002 */  mul.s $f0, $f0, $f2
/* 01A5B8 8003F1B8 00000000 */  nop   
/* 01A5BC 8003F1BC 3C01800A */  lui   $at, 0x800a
/* 01A5C0 8003F1C0 C4220BA4 */  lwc1  $f2, 0xba4($at)
/* 01A5C4 8003F1C4 46001080 */  add.s $f2, $f2, $f0
/* 01A5C8 8003F1C8 E622003C */  swc1  $f2, 0x3c($s1)
/* 01A5CC 8003F1CC 8E420074 */  lw    $v0, 0x74($s2)
/* 01A5D0 8003F1D0 2442000A */  addiu $v0, $v0, 0xa
/* 01A5D4 8003F1D4 44826000 */  mtc1  $v0, $f12
/* 01A5D8 8003F1D8 00000000 */  nop   
/* 01A5DC 8003F1DC 46806320 */  cvt.s.w $f12, $f12
/* 01A5E0 8003F1E0 0C00A6C9 */  jal   clamp_angle
/* 01A5E4 8003F1E4 AE420074 */   sw    $v0, 0x74($s2)
/* 01A5E8 8003F1E8 4600018D */  trunc.w.s $f6, $f0
/* 01A5EC 8003F1EC E6460074 */  swc1  $f6, 0x74($s2)
/* 01A5F0 8003F1F0 3C05800A */  lui   $a1, 0x800a
/* 01A5F4 8003F1F4 8CA50BA8 */  lw    $a1, 0xba8($a1)
/* 01A5F8 8003F1F8 C6200038 */  lwc1  $f0, 0x38($s1)
/* 01A5FC 8003F1FC 3C014180 */  lui   $at, 0x4180
/* 01A600 8003F200 44811000 */  mtc1  $at, $f2
/* 01A604 8003F204 8CA2000C */  lw    $v0, 0xc($a1)
/* 01A608 8003F208 E4400004 */  swc1  $f0, 4($v0)
/* 01A60C 8003F20C C620003C */  lwc1  $f0, 0x3c($s1)
/* 01A610 8003F210 46020000 */  add.s $f0, $f0, $f2
/* 01A614 8003F214 3C08800A */  lui   $t0, 0x800a
/* 01A618 8003F218 25080BAC */  addiu $t0, $t0, 0xbac
/* 01A61C 8003F21C E4400008 */  swc1  $f0, 8($v0)
/* 01A620 8003F220 C6200040 */  lwc1  $f0, 0x40($s1)
/* 01A624 8003F224 8D040000 */  lw    $a0, ($t0)
/* 01A628 8003F228 E440000C */  swc1  $f0, 0xc($v0)
/* 01A62C 8003F22C 8C82000C */  lw    $v0, 0xc($a0)
/* 01A630 8003F230 C6200038 */  lwc1  $f0, 0x38($s1)
/* 01A634 8003F234 E4400004 */  swc1  $f0, 4($v0)
/* 01A638 8003F238 C620003C */  lwc1  $f0, 0x3c($s1)
/* 01A63C 8003F23C 46020000 */  add.s $f0, $f0, $f2
/* 01A640 8003F240 3C0140A0 */  lui   $at, 0x40a0
/* 01A644 8003F244 44811000 */  mtc1  $at, $f2
/* 01A648 8003F248 E4400008 */  swc1  $f0, 8($v0)
/* 01A64C 8003F24C C6200040 */  lwc1  $f0, 0x40($s1)
/* 01A650 8003F250 46020000 */  add.s $f0, $f0, $f2
/* 01A654 8003F254 3C07800A */  lui   $a3, 0x800a
/* 01A658 8003F258 24E70BB8 */  addiu $a3, $a3, 0xbb8
/* 01A65C 8003F25C E440000C */  swc1  $f0, 0xc($v0)
/* 01A660 8003F260 84E30000 */  lh    $v1, ($a3)
/* 01A664 8003F264 24060002 */  addiu $a2, $zero, 2
/* 01A668 8003F268 14660011 */  bne   $v1, $a2, .L8003F2B0
/* 01A66C 8003F26C 24020001 */   addiu $v0, $zero, 1
/* 01A670 8003F270 8CA2000C */  lw    $v0, 0xc($a1)
/* 01A674 8003F274 3C013727 */  lui   $at, 0x3727
/* 01A678 8003F278 3421C5AC */  ori   $at, $at, 0xc5ac
/* 01A67C 8003F27C 44810000 */  mtc1  $at, $f0
/* 01A680 8003F280 00000000 */  nop   
/* 01A684 8003F284 E4400030 */  swc1  $f0, 0x30($v0)
/* 01A688 8003F288 8C82000C */  lw    $v0, 0xc($a0)
/* 01A68C 8003F28C E4400030 */  swc1  $f0, 0x30($v0)
/* 01A690 8003F290 8CA20000 */  lw    $v0, ($a1)
/* 01A694 8003F294 34420010 */  ori   $v0, $v0, 0x10
/* 01A698 8003F298 ACA20000 */  sw    $v0, ($a1)
/* 01A69C 8003F29C 8C830000 */  lw    $v1, ($a0)
/* 01A6A0 8003F2A0 24020001 */  addiu $v0, $zero, 1
/* 01A6A4 8003F2A4 34630010 */  ori   $v1, $v1, 0x10
/* 01A6A8 8003F2A8 0800FCDB */  j     func_8003F36C
/* 01A6AC 8003F2AC AC830000 */   sw    $v1, ($a0)

.L8003F2B0:
/* 01A6B0 8003F2B0 1462002E */  bne   $v1, $v0, .L8003F36C
/* 01A6B4 8003F2B4 0000102D */   daddu $v0, $zero, $zero
/* 01A6B8 8003F2B8 8CA2000C */  lw    $v0, 0xc($a1)
/* 01A6BC 8003F2BC C4400030 */  lwc1  $f0, 0x30($v0)
/* 01A6C0 8003F2C0 3C01800A */  lui   $at, 0x800a
/* 01A6C4 8003F2C4 D42285F0 */  ldc1  $f2, -0x7a10($at)
/* 01A6C8 8003F2C8 46000021 */  cvt.d.s $f0, $f0
/* 01A6CC 8003F2CC 46220000 */  add.d $f0, $f0, $f2
/* 01A6D0 8003F2D0 3C01400C */  lui   $at, 0x400c
/* 01A6D4 8003F2D4 44812800 */  mtc1  $at, $f5
/* 01A6D8 8003F2D8 44802000 */  mtc1  $zero, $f4
/* 01A6DC 8003F2DC 46200020 */  cvt.s.d $f0, $f0
/* 01A6E0 8003F2E0 460000A1 */  cvt.d.s $f2, $f0
/* 01A6E4 8003F2E4 4622203C */  c.lt.d $f4, $f2
/* 01A6E8 8003F2E8 00000000 */  nop   
/* 01A6EC 8003F2EC 45000005 */  bc1f  .L8003F304
/* 01A6F0 8003F2F0 E4400030 */   swc1  $f0, 0x30($v0)
/* 01A6F4 8003F2F4 3C014060 */  lui   $at, 0x4060
/* 01A6F8 8003F2F8 44810000 */  mtc1  $at, $f0
/* 01A6FC 8003F2FC 00000000 */  nop   
/* 01A700 8003F300 E4400030 */  swc1  $f0, 0x30($v0)
.L8003F304:
/* 01A704 8003F304 3C03800A */  lui   $v1, 0x800a
/* 01A708 8003F308 24630BA0 */  addiu $v1, $v1, 0xba0
/* 01A70C 8003F30C 8C620000 */  lw    $v0, ($v1)
/* 01A710 8003F310 10400003 */  beqz  $v0, .L8003F320
/* 01A714 8003F314 2442FFFF */   addiu $v0, $v0, -1
/* 01A718 8003F318 0800FCDA */  j     func_8003F368
/* 01A71C 8003F31C AC620000 */   sw    $v0, ($v1)

.L8003F320:
/* 01A720 8003F320 8D020000 */  lw    $v0, ($t0)
/* 01A724 8003F324 8C42000C */  lw    $v0, 0xc($v0)
/* 01A728 8003F328 C4400030 */  lwc1  $f0, 0x30($v0)
/* 01A72C 8003F32C 3C013FE0 */  lui   $at, 0x3fe0
/* 01A730 8003F330 44811800 */  mtc1  $at, $f3
/* 01A734 8003F334 44801000 */  mtc1  $zero, $f2
/* 01A738 8003F338 46000021 */  cvt.d.s $f0, $f0
/* 01A73C 8003F33C 46220000 */  add.d $f0, $f0, $f2
/* 01A740 8003F340 3C014014 */  lui   $at, 0x4014
/* 01A744 8003F344 44812800 */  mtc1  $at, $f5
/* 01A748 8003F348 44802000 */  mtc1  $zero, $f4
/* 01A74C 8003F34C 46200020 */  cvt.s.d $f0, $f0
/* 01A750 8003F350 460000A1 */  cvt.d.s $f2, $f0
/* 01A754 8003F354 4622203C */  c.lt.d $f4, $f2
/* 01A758 8003F358 00000000 */  nop   
/* 01A75C 8003F35C 45000002 */  bc1f  .L8003F368
/* 01A760 8003F360 E4400030 */   swc1  $f0, 0x30($v0)
/* 01A764 8003F364 A4E60000 */  sh    $a2, ($a3)
func_8003F368:
.L8003F368:
/* 01A768 8003F368 0000102D */  daddu $v0, $zero, $zero
func_8003F36C:
.L8003F36C:
/* 01A76C 8003F36C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01A770 8003F370 8FB20020 */  lw    $s2, 0x20($sp)
/* 01A774 8003F374 8FB1001C */  lw    $s1, 0x1c($sp)
/* 01A778 8003F378 8FB00018 */  lw    $s0, 0x18($sp)
/* 01A77C 8003F37C 03E00008 */  jr    $ra
/* 01A780 8003F380 27BD0028 */   addiu $sp, $sp, 0x28

/* 01A784 8003F384 24020001 */  addiu $v0, $zero, 1
/* 01A788 8003F388 3C01800A */  lui   $at, 0x800a
/* 01A78C 8003F38C A4220BB8 */  sh    $v0, 0xbb8($at)
/* 01A790 8003F390 03E00008 */  jr    $ra
/* 01A794 8003F394 24020002 */   addiu $v0, $zero, 2

GetCamLookAtObjVector:
/* 01A798 8003F398 3C038007 */  lui   $v1, 0x8007
/* 01A79C 8003F39C 8C637410 */  lw    $v1, 0x7410($v1)
/* 01A7A0 8003F3A0 3C05800B */  lui   $a1, 0x800b
/* 01A7A4 8003F3A4 24A51D80 */  addiu $a1, $a1, 0x1d80
/* 01A7A8 8003F3A8 00031080 */  sll   $v0, $v1, 2
/* 01A7AC 8003F3AC 00431021 */  addu  $v0, $v0, $v1
/* 01A7B0 8003F3B0 00021080 */  sll   $v0, $v0, 2
/* 01A7B4 8003F3B4 00431023 */  subu  $v0, $v0, $v1
/* 01A7B8 8003F3B8 000218C0 */  sll   $v1, $v0, 3
/* 01A7BC 8003F3BC 00431021 */  addu  $v0, $v0, $v1
/* 01A7C0 8003F3C0 000210C0 */  sll   $v0, $v0, 3
/* 01A7C4 8003F3C4 00451021 */  addu  $v0, $v0, $a1
/* 01A7C8 8003F3C8 C4400048 */  lwc1  $f0, 0x48($v0)
/* 01A7CC 8003F3CC 4600008D */  trunc.w.s $f2, $f0
/* 01A7D0 8003F3D0 E4820084 */  swc1  $f2, 0x84($a0)
/* 01A7D4 8003F3D4 C440004C */  lwc1  $f0, 0x4c($v0)
/* 01A7D8 8003F3D8 4600008D */  trunc.w.s $f2, $f0
/* 01A7DC 8003F3DC E4820088 */  swc1  $f2, 0x88($a0)
/* 01A7E0 8003F3E0 C4400050 */  lwc1  $f0, 0x50($v0)
/* 01A7E4 8003F3E4 4600008D */  trunc.w.s $f2, $f0
/* 01A7E8 8003F3E8 E482008C */  swc1  $f2, 0x8c($a0)
/* 01A7EC 8003F3EC 03E00008 */  jr    $ra
/* 01A7F0 8003F3F0 24020002 */   addiu $v0, $zero, 2

HasMerleeCasts:
/* 01A7F4 8003F3F4 AC800084 */  sw    $zero, 0x84($a0)
/* 01A7F8 8003F3F8 3C028011 */  lui   $v0, 0x8011
/* 01A7FC 8003F3FC 8042F51A */  lb    $v0, -0xae6($v0)
/* 01A800 8003F400 18400002 */  blez  $v0, .L8003F40C
/* 01A804 8003F404 24020001 */   addiu $v0, $zero, 1
/* 01A808 8003F408 AC820084 */  sw    $v0, 0x84($a0)
.L8003F40C:
/* 01A80C 8003F40C 03E00008 */  jr    $ra
/* 01A810 8003F410 24020002 */   addiu $v0, $zero, 2

/* 01A814 8003F414 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01A818 8003F418 AFB1001C */  sw    $s1, 0x1c($sp)
/* 01A81C 8003F41C 0080882D */  daddu $s1, $a0, $zero
/* 01A820 8003F420 AFBF0024 */  sw    $ra, 0x24($sp)
/* 01A824 8003F424 AFB20020 */  sw    $s2, 0x20($sp)
/* 01A828 8003F428 AFB00018 */  sw    $s0, 0x18($sp)
/* 01A82C 8003F42C 8E30000C */  lw    $s0, 0xc($s1)
/* 01A830 8003F430 8E050000 */  lw    $a1, ($s0)
/* 01A834 8003F434 0C0B1EAF */  jal   get_variable
/* 01A838 8003F438 26100004 */   addiu $s0, $s0, 4
/* 01A83C 8003F43C 8E050000 */  lw    $a1, ($s0)
/* 01A840 8003F440 26100004 */  addiu $s0, $s0, 4
/* 01A844 8003F444 0220202D */  daddu $a0, $s1, $zero
/* 01A848 8003F448 0C0B1EAF */  jal   get_variable
/* 01A84C 8003F44C 0040902D */   daddu $s2, $v0, $zero
/* 01A850 8003F450 0220202D */  daddu $a0, $s1, $zero
/* 01A854 8003F454 8E050000 */  lw    $a1, ($s0)
/* 01A858 8003F458 0C0B1EAF */  jal   get_variable
/* 01A85C 8003F45C 0040802D */   daddu $s0, $v0, $zero
/* 01A860 8003F460 24040006 */  addiu $a0, $zero, 6
/* 01A864 8003F464 44921000 */  mtc1  $s2, $f2
/* 01A868 8003F468 00000000 */  nop   
/* 01A86C 8003F46C 468010A0 */  cvt.s.w $f2, $f2
/* 01A870 8003F470 44051000 */  mfc1  $a1, $f2
/* 01A874 8003F474 44901000 */  mtc1  $s0, $f2
/* 01A878 8003F478 00000000 */  nop   
/* 01A87C 8003F47C 468010A0 */  cvt.s.w $f2, $f2
/* 01A880 8003F480 44061000 */  mfc1  $a2, $f2
/* 01A884 8003F484 44821000 */  mtc1  $v0, $f2
/* 01A888 8003F488 00000000 */  nop   
/* 01A88C 8003F48C 468010A0 */  cvt.s.w $f2, $f2
/* 01A890 8003F490 3C013F99 */  lui   $at, 0x3f99
/* 01A894 8003F494 3421999A */  ori   $at, $at, 0x999a
/* 01A898 8003F498 44810000 */  mtc1  $at, $f0
/* 01A89C 8003F49C 44071000 */  mfc1  $a3, $f2
/* 01A8A0 8003F4A0 2403001E */  addiu $v1, $zero, 0x1e
/* 01A8A4 8003F4A4 AFA30014 */  sw    $v1, 0x14($sp)
/* 01A8A8 8003F4A8 0C01C82C */  jal   func_800720B0
/* 01A8AC 8003F4AC E7A00010 */   swc1  $f0, 0x10($sp)
/* 01A8B0 8003F4B0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01A8B4 8003F4B4 8FB20020 */  lw    $s2, 0x20($sp)
/* 01A8B8 8003F4B8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 01A8BC 8003F4BC 8FB00018 */  lw    $s0, 0x18($sp)
/* 01A8C0 8003F4C0 24020002 */  addiu $v0, $zero, 2
/* 01A8C4 8003F4C4 03E00008 */  jr    $ra
/* 01A8C8 8003F4C8 27BD0028 */   addiu $sp, $sp, 0x28

/* 01A8CC 8003F4CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01A8D0 8003F4D0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 01A8D4 8003F4D4 0080882D */  daddu $s1, $a0, $zero
/* 01A8D8 8003F4D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 01A8DC 8003F4DC AFB20020 */  sw    $s2, 0x20($sp)
/* 01A8E0 8003F4E0 AFB00018 */  sw    $s0, 0x18($sp)
/* 01A8E4 8003F4E4 8E30000C */  lw    $s0, 0xc($s1)
/* 01A8E8 8003F4E8 8E050000 */  lw    $a1, ($s0)
/* 01A8EC 8003F4EC 0C0B1EAF */  jal   get_variable
/* 01A8F0 8003F4F0 26100004 */   addiu $s0, $s0, 4
/* 01A8F4 8003F4F4 8E050000 */  lw    $a1, ($s0)
/* 01A8F8 8003F4F8 26100004 */  addiu $s0, $s0, 4
/* 01A8FC 8003F4FC 0220202D */  daddu $a0, $s1, $zero
/* 01A900 8003F500 0C0B1EAF */  jal   get_variable
/* 01A904 8003F504 0040902D */   daddu $s2, $v0, $zero
/* 01A908 8003F508 0220202D */  daddu $a0, $s1, $zero
/* 01A90C 8003F50C 8E050000 */  lw    $a1, ($s0)
/* 01A910 8003F510 0C0B1EAF */  jal   get_variable
/* 01A914 8003F514 0040802D */   daddu $s0, $v0, $zero
/* 01A918 8003F518 24040009 */  addiu $a0, $zero, 9
/* 01A91C 8003F51C 44921000 */  mtc1  $s2, $f2
/* 01A920 8003F520 00000000 */  nop   
/* 01A924 8003F524 468010A0 */  cvt.s.w $f2, $f2
/* 01A928 8003F528 44051000 */  mfc1  $a1, $f2
/* 01A92C 8003F52C 44901000 */  mtc1  $s0, $f2
/* 01A930 8003F530 00000000 */  nop   
/* 01A934 8003F534 468010A0 */  cvt.s.w $f2, $f2
/* 01A938 8003F538 44061000 */  mfc1  $a2, $f2
/* 01A93C 8003F53C 44821000 */  mtc1  $v0, $f2
/* 01A940 8003F540 00000000 */  nop   
/* 01A944 8003F544 468010A0 */  cvt.s.w $f2, $f2
/* 01A948 8003F548 3C0140A0 */  lui   $at, 0x40a0
/* 01A94C 8003F54C 44810000 */  mtc1  $at, $f0
/* 01A950 8003F550 44071000 */  mfc1  $a3, $f2
/* 01A954 8003F554 2403000F */  addiu $v1, $zero, 0xf
/* 01A958 8003F558 AFA30014 */  sw    $v1, 0x14($sp)
/* 01A95C 8003F55C 0C01C5D4 */  jal   func_80071750
/* 01A960 8003F560 E7A00010 */   swc1  $f0, 0x10($sp)
/* 01A964 8003F564 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01A968 8003F568 8FB20020 */  lw    $s2, 0x20($sp)
/* 01A96C 8003F56C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 01A970 8003F570 8FB00018 */  lw    $s0, 0x18($sp)
/* 01A974 8003F574 24020002 */  addiu $v0, $zero, 2
/* 01A978 8003F578 03E00008 */  jr    $ra
/* 01A97C 8003F57C 27BD0028 */   addiu $sp, $sp, 0x28

OnDefeatEnemy:
/* 01A980 8003F580 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01A984 8003F584 AFB20028 */  sw    $s2, 0x28($sp)
/* 01A988 8003F588 0080902D */  daddu $s2, $a0, $zero
/* 01A98C 8003F58C AFBF0030 */  sw    $ra, 0x30($sp)
/* 01A990 8003F590 AFB3002C */  sw    $s3, 0x2c($sp)
/* 01A994 8003F594 AFB10024 */  sw    $s1, 0x24($sp)
/* 01A998 8003F598 AFB00020 */  sw    $s0, 0x20($sp)
/* 01A99C 8003F59C 8E530148 */  lw    $s3, 0x148($s2)
/* 01A9A0 8003F5A0 86640008 */  lh    $a0, 8($s3)
/* 01A9A4 8003F5A4 0C00EABB */  jal   get_npc_unsafe
/* 01A9A8 8003F5A8 00A0802D */   daddu $s0, $a1, $zero
/* 01A9AC 8003F5AC 12000004 */  beqz  $s0, .L8003F5C0
/* 01A9B0 8003F5B0 0040882D */   daddu $s1, $v0, $zero
/* 01A9B4 8003F5B4 24020014 */  addiu $v0, $zero, 0x14
/* 01A9B8 8003F5B8 AE400070 */  sw    $zero, 0x70($s2)
/* 01A9BC 8003F5BC AE420074 */  sw    $v0, 0x74($s2)
.L8003F5C0:
/* 01A9C0 8003F5C0 8E420074 */  lw    $v0, 0x74($s2)
/* 01A9C4 8003F5C4 30420001 */  andi  $v0, $v0, 1
/* 01A9C8 8003F5C8 10400004 */  beqz  $v0, .L8003F5DC
/* 01A9CC 8003F5CC 2403FFFD */   addiu $v1, $zero, -3
/* 01A9D0 8003F5D0 8E220000 */  lw    $v0, ($s1)
/* 01A9D4 8003F5D4 0800FD79 */  j     func_8003F5E4
/* 01A9D8 8003F5D8 00431024 */   and   $v0, $v0, $v1

.L8003F5DC:
/* 01A9DC 8003F5DC 8E220000 */  lw    $v0, ($s1)
/* 01A9E0 8003F5E0 34420002 */  ori   $v0, $v0, 2
func_8003F5E4:
/* 01A9E4 8003F5E4 AE220000 */  sw    $v0, ($s1)
/* 01A9E8 8003F5E8 8E430074 */  lw    $v1, 0x74($s2)
/* 01A9EC 8003F5EC 2402000F */  addiu $v0, $zero, 0xf
/* 01A9F0 8003F5F0 1462001A */  bne   $v1, $v0, .L8003F65C
/* 01A9F4 8003F5F4 00000000 */   nop   
/* 01A9F8 8003F5F8 0C05272D */  jal   play_sound
/* 01A9FC 8003F5FC 240403E5 */   addiu $a0, $zero, 0x3e5
/* 01AA00 8003F600 962300A8 */  lhu   $v1, 0xa8($s1)
/* 01AA04 8003F604 C624003C */  lwc1  $f4, 0x3c($s1)
/* 01AA08 8003F608 3C01BF80 */  lui   $at, 0xbf80
/* 01AA0C 8003F60C 44811000 */  mtc1  $at, $f2
/* 01AA10 8003F610 2402000A */  addiu $v0, $zero, 0xa
/* 01AA14 8003F614 AFA00010 */  sw    $zero, 0x10($sp)
/* 01AA18 8003F618 AFA00018 */  sw    $zero, 0x18($sp)
/* 01AA1C 8003F61C AFA2001C */  sw    $v0, 0x1c($sp)
/* 01AA20 8003F620 00031C00 */  sll   $v1, $v1, 0x10
/* 01AA24 8003F624 00031403 */  sra   $v0, $v1, 0x10
/* 01AA28 8003F628 00031FC2 */  srl   $v1, $v1, 0x1f
/* 01AA2C 8003F62C 00431021 */  addu  $v0, $v0, $v1
/* 01AA30 8003F630 00021043 */  sra   $v0, $v0, 1
/* 01AA34 8003F634 44820000 */  mtc1  $v0, $f0
/* 01AA38 8003F638 00000000 */  nop   
/* 01AA3C 8003F63C 46800020 */  cvt.s.w $f0, $f0
/* 01AA40 8003F640 46002100 */  add.s $f4, $f4, $f0
/* 01AA44 8003F644 E7A20014 */  swc1  $f2, 0x14($sp)
/* 01AA48 8003F648 8E250038 */  lw    $a1, 0x38($s1)
/* 01AA4C 8003F64C 8E270040 */  lw    $a3, 0x40($s1)
/* 01AA50 8003F650 44062000 */  mfc1  $a2, $f4
/* 01AA54 8003F654 0C01C064 */  jal   func_80070190
/* 01AA58 8003F658 24040001 */   addiu $a0, $zero, 1
.L8003F65C:
/* 01AA5C 8003F65C 8E500074 */  lw    $s0, 0x74($s2)
/* 01AA60 8003F660 2402000A */  addiu $v0, $zero, 0xa
/* 01AA64 8003F664 1602000F */  bne   $s0, $v0, .L8003F6A4
/* 01AA68 8003F668 00000000 */   nop   
/* 01AA6C 8003F66C 3C014120 */  lui   $at, 0x4120
/* 01AA70 8003F670 44811000 */  mtc1  $at, $f2
/* 01AA74 8003F674 C6200040 */  lwc1  $f0, 0x40($s1)
/* 01AA78 8003F678 46020000 */  add.s $f0, $f0, $f2
/* 01AA7C 8003F67C C62E003C */  lwc1  $f14, 0x3c($s1)
/* 01AA80 8003F680 C62C0038 */  lwc1  $f12, 0x38($s1)
/* 01AA84 8003F684 44060000 */  mfc1  $a2, $f0
/* 01AA88 8003F688 0C01BE3C */  jal   func_8006F8F0
/* 01AA8C 8003F68C 46027380 */   add.s $f14, $f14, $f2
/* 01AA90 8003F690 8E420074 */  lw    $v0, 0x74($s2)
/* 01AA94 8003F694 14500005 */  bne   $v0, $s0, .L8003F6AC
/* 01AA98 8003F698 2442FFFF */   addiu $v0, $v0, -1
/* 01AA9C 8003F69C 0C0120A0 */  jal   spawn_drops
/* 01AAA0 8003F6A0 0260202D */   daddu $a0, $s3, $zero
.L8003F6A4:
/* 01AAA4 8003F6A4 8E420074 */  lw    $v0, 0x74($s2)
/* 01AAA8 8003F6A8 2442FFFF */  addiu $v0, $v0, -1
.L8003F6AC:
/* 01AAAC 8003F6AC 10400003 */  beqz  $v0, .L8003F6BC
/* 01AAB0 8003F6B0 AE420074 */   sw    $v0, 0x74($s2)
/* 01AAB4 8003F6B4 0800FDB3 */  j     func_8003F6CC
/* 01AAB8 8003F6B8 0000102D */   daddu $v0, $zero, $zero

.L8003F6BC:
/* 01AABC 8003F6BC 8E230000 */  lw    $v1, ($s1)
/* 01AAC0 8003F6C0 24020001 */  addiu $v0, $zero, 1
/* 01AAC4 8003F6C4 34630002 */  ori   $v1, $v1, 2
/* 01AAC8 8003F6C8 AE230000 */  sw    $v1, ($s1)
func_8003F6CC:
/* 01AACC 8003F6CC 8FBF0030 */  lw    $ra, 0x30($sp)
/* 01AAD0 8003F6D0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 01AAD4 8003F6D4 8FB20028 */  lw    $s2, 0x28($sp)
/* 01AAD8 8003F6D8 8FB10024 */  lw    $s1, 0x24($sp)
/* 01AADC 8003F6DC 8FB00020 */  lw    $s0, 0x20($sp)
/* 01AAE0 8003F6E0 03E00008 */  jr    $ra
/* 01AAE4 8003F6E4 27BD0038 */   addiu $sp, $sp, 0x38

OnFleeBattleDrops:
/* 01AAE8 8003F6E8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01AAEC 8003F6EC AFB00020 */  sw    $s0, 0x20($sp)
/* 01AAF0 8003F6F0 0080802D */  daddu $s0, $a0, $zero
/* 01AAF4 8003F6F4 AFB10024 */  sw    $s1, 0x24($sp)
/* 01AAF8 8003F6F8 3C118011 */  lui   $s1, 0x8011
/* 01AAFC 8003F6FC 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 01AB00 8003F700 AFB20028 */  sw    $s2, 0x28($sp)
/* 01AB04 8003F704 3C128011 */  lui   $s2, 0x8011
/* 01AB08 8003F708 2652F290 */  addiu $s2, $s2, -0xd70
/* 01AB0C 8003F70C 10A00005 */  beqz  $a1, .L8003F724
/* 01AB10 8003F710 AFBF002C */   sw    $ra, 0x2c($sp)
/* 01AB14 8003F714 24020028 */  addiu $v0, $zero, 0x28
/* 01AB18 8003F718 AE000070 */  sw    $zero, 0x70($s0)
/* 01AB1C 8003F71C AE020074 */  sw    $v0, 0x74($s0)
/* 01AB20 8003F720 AE000078 */  sw    $zero, 0x78($s0)
.L8003F724:
/* 01AB24 8003F724 8E020078 */  lw    $v0, 0x78($s0)
/* 01AB28 8003F728 24420001 */  addiu $v0, $v0, 1
/* 01AB2C 8003F72C AE020078 */  sw    $v0, 0x78($s0)
/* 01AB30 8003F730 28420005 */  slti  $v0, $v0, 5
/* 01AB34 8003F734 1440001B */  bnez  $v0, .L8003F7A4
/* 01AB38 8003F738 00000000 */   nop   
/* 01AB3C 8003F73C 0C00A67F */  jal   rand_int
/* 01AB40 8003F740 24040064 */   addiu $a0, $zero, 0x64
/* 01AB44 8003F744 28420032 */  slti  $v0, $v0, 0x32
/* 01AB48 8003F748 50400016 */  beql  $v0, $zero, .L8003F7A4
/* 01AB4C 8003F74C AE000078 */   sw    $zero, 0x78($s0)
/* 01AB50 8003F750 8642000C */  lh    $v0, 0xc($s2)
/* 01AB54 8003F754 9643000C */  lhu   $v1, 0xc($s2)
/* 01AB58 8003F758 10400011 */  beqz  $v0, .L8003F7A0
/* 01AB5C 8003F75C 2462FFFF */   addiu $v0, $v1, -1
/* 01AB60 8003F760 A642000C */  sh    $v0, 0xc($s2)
/* 01AB64 8003F764 862300B0 */  lh    $v1, 0xb0($s1)
/* 01AB68 8003F768 24020003 */  addiu $v0, $zero, 3
/* 01AB6C 8003F76C AFA20010 */  sw    $v0, 0x10($sp)
/* 01AB70 8003F770 C620002C */  lwc1  $f0, 0x2c($s1)
/* 01AB74 8003F774 44831000 */  mtc1  $v1, $f2
/* 01AB78 8003F778 00000000 */  nop   
/* 01AB7C 8003F77C 468010A0 */  cvt.s.w $f2, $f2
/* 01AB80 8003F780 46020000 */  add.s $f0, $f0, $f2
/* 01AB84 8003F784 8E250028 */  lw    $a1, 0x28($s1)
/* 01AB88 8003F788 8E270030 */  lw    $a3, 0x30($s1)
/* 01AB8C 8003F78C 44060000 */  mfc1  $a2, $f0
/* 01AB90 8003F790 24040157 */  addiu $a0, $zero, 0x157
/* 01AB94 8003F794 AFA00014 */  sw    $zero, 0x14($sp)
/* 01AB98 8003F798 0C04C6B2 */  jal   make_item_entity_delayed
/* 01AB9C 8003F79C AFA00018 */   sw    $zero, 0x18($sp)
.L8003F7A0:
/* 01ABA0 8003F7A0 AE000078 */  sw    $zero, 0x78($s0)
.L8003F7A4:
/* 01ABA4 8003F7A4 8E030074 */  lw    $v1, 0x74($s0)
/* 01ABA8 8003F7A8 2463FFFF */  addiu $v1, $v1, -1
/* 01ABAC 8003F7AC AE030074 */  sw    $v1, 0x74($s0)
/* 01ABB0 8003F7B0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01ABB4 8003F7B4 8FB20028 */  lw    $s2, 0x28($sp)
/* 01ABB8 8003F7B8 8FB10024 */  lw    $s1, 0x24($sp)
/* 01ABBC 8003F7BC 8FB00020 */  lw    $s0, 0x20($sp)
/* 01ABC0 8003F7C0 2C620001 */  sltiu $v0, $v1, 1
/* 01ABC4 8003F7C4 03E00008 */  jr    $ra
/* 01ABC8 8003F7C8 27BD0030 */   addiu $sp, $sp, 0x30

func_8003F7CC:
/* 01ABCC 8003F7CC 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 01ABD0 8003F7D0 AFB30074 */  sw    $s3, 0x74($sp)
/* 01ABD4 8003F7D4 3C13800B */  lui   $s3, 0x800b
/* 01ABD8 8003F7D8 26730F10 */  addiu $s3, $s3, 0xf10
/* 01ABDC 8003F7DC AFB40078 */  sw    $s4, 0x78($sp)
/* 01ABE0 8003F7E0 3C148011 */  lui   $s4, 0x8011
/* 01ABE4 8003F7E4 2694EFC8 */  addiu $s4, $s4, -0x1038
/* 01ABE8 8003F7E8 3C038007 */  lui   $v1, 0x8007
/* 01ABEC 8003F7EC 8C637410 */  lw    $v1, 0x7410($v1)
/* 01ABF0 8003F7F0 3C04800B */  lui   $a0, 0x800b
/* 01ABF4 8003F7F4 24841D80 */  addiu $a0, $a0, 0x1d80
/* 01ABF8 8003F7F8 AFBF008C */  sw    $ra, 0x8c($sp)
/* 01ABFC 8003F7FC AFBE0088 */  sw    $fp, 0x88($sp)
/* 01AC00 8003F800 AFB70084 */  sw    $s7, 0x84($sp)
/* 01AC04 8003F804 AFB60080 */  sw    $s6, 0x80($sp)
/* 01AC08 8003F808 AFB5007C */  sw    $s5, 0x7c($sp)
/* 01AC0C 8003F80C AFB20070 */  sw    $s2, 0x70($sp)
/* 01AC10 8003F810 AFB1006C */  sw    $s1, 0x6c($sp)
/* 01AC14 8003F814 AFB00068 */  sw    $s0, 0x68($sp)
/* 01AC18 8003F818 F7BE00B8 */  sdc1  $f30, 0xb8($sp)
/* 01AC1C 8003F81C F7BC00B0 */  sdc1  $f28, 0xb0($sp)
/* 01AC20 8003F820 F7BA00A8 */  sdc1  $f26, 0xa8($sp)
/* 01AC24 8003F824 F7B800A0 */  sdc1  $f24, 0xa0($sp)
/* 01AC28 8003F828 F7B60098 */  sdc1  $f22, 0x98($sp)
/* 01AC2C 8003F82C F7B40090 */  sdc1  $f20, 0x90($sp)
/* 01AC30 8003F830 00031080 */  sll   $v0, $v1, 2
/* 01AC34 8003F834 00431021 */  addu  $v0, $v0, $v1
/* 01AC38 8003F838 00021080 */  sll   $v0, $v0, 2
/* 01AC3C 8003F83C 00431023 */  subu  $v0, $v0, $v1
/* 01AC40 8003F840 000218C0 */  sll   $v1, $v0, 3
/* 01AC44 8003F844 00431021 */  addu  $v0, $v0, $v1
/* 01AC48 8003F848 000210C0 */  sll   $v0, $v0, 3
/* 01AC4C 8003F84C 00441021 */  addu  $v0, $v0, $a0
/* 01AC50 8003F850 AFA20048 */  sw    $v0, 0x48($sp)
/* 01AC54 8003F854 82630005 */  lb    $v1, 5($s3)
/* 01AC58 8003F858 24020005 */  addiu $v0, $zero, 5
/* 01AC5C 8003F85C 10620426 */  beq   $v1, $v0, .L800408F8
/* 01AC60 8003F860 2402FFFF */   addiu $v0, $zero, -1
/* 01AC64 8003F864 C69000A8 */  lwc1  $f16, 0xa8($s4)
/* 01AC68 8003F868 3C014334 */  lui   $at, 0x4334
/* 01AC6C 8003F86C 44810000 */  mtc1  $at, $f0
/* 01AC70 8003F870 E7B0005C */  swc1  $f16, 0x5c($sp)
/* 01AC74 8003F874 AE620014 */  sw    $v0, 0x14($s3)
/* 01AC78 8003F878 AE620018 */  sw    $v0, 0x18($s3)
/* 01AC7C 8003F87C 8E620000 */  lw    $v0, ($s3)
/* 01AC80 8003F880 2403FFFE */  addiu $v1, $zero, -2
/* 01AC84 8003F884 A2600005 */  sb    $zero, 5($s3)
/* 01AC88 8003F888 A2600011 */  sb    $zero, 0x11($s3)
/* 01AC8C 8003F88C A2600013 */  sb    $zero, 0x13($s3)
/* 01AC90 8003F890 4600803C */  c.lt.s $f16, $f0
/* 01AC94 8003F894 00431024 */  and   $v0, $v0, $v1
/* 01AC98 8003F898 2403FFFD */  addiu $v1, $zero, -3
/* 01AC9C 8003F89C 00431024 */  and   $v0, $v0, $v1
/* 01ACA0 8003F8A0 2403FFFB */  addiu $v1, $zero, -5
/* 01ACA4 8003F8A4 00431024 */  and   $v0, $v0, $v1
/* 01ACA8 8003F8A8 AE620000 */  sw    $v0, ($s3)
/* 01ACAC 8003F8AC C6920028 */  lwc1  $f18, 0x28($s4)
/* 01ACB0 8003F8B0 E7B20050 */  swc1  $f18, 0x50($sp)
/* 01ACB4 8003F8B4 C690002C */  lwc1  $f16, 0x2c($s4)
/* 01ACB8 8003F8B8 E7B00054 */  swc1  $f16, 0x54($sp)
/* 01ACBC 8003F8BC C6920030 */  lwc1  $f18, 0x30($s4)
/* 01ACC0 8003F8C0 45000007 */  bc1f  .L8003F8E0
/* 01ACC4 8003F8C4 E7B20058 */   swc1  $f18, 0x58($sp)
/* 01ACC8 8003F8C8 8FA80048 */  lw    $t0, 0x48($sp)
/* 01ACCC 8003F8CC 3C0142B4 */  lui   $at, 0x42b4
/* 01ACD0 8003F8D0 44816000 */  mtc1  $at, $f12
/* 01ACD4 8003F8D4 C500006C */  lwc1  $f0, 0x6c($t0)
/* 01ACD8 8003F8D8 0800FE3D */  j     func_8003F8F4
/* 01ACDC 8003F8DC 460C0301 */   sub.s $f12, $f0, $f12

.L8003F8E0:
/* 01ACE0 8003F8E0 8FA80048 */  lw    $t0, 0x48($sp)
/* 01ACE4 8003F8E4 3C0142B4 */  lui   $at, 0x42b4
/* 01ACE8 8003F8E8 44816000 */  mtc1  $at, $f12
/* 01ACEC 8003F8EC C500006C */  lwc1  $f0, 0x6c($t0)
/* 01ACF0 8003F8F0 460C0300 */  add.s $f12, $f0, $f12
func_8003F8F4:
/* 01ACF4 8003F8F4 0C00A6C9 */  jal   clamp_angle
/* 01ACF8 8003F8F8 00000000 */   nop   
/* 01ACFC 8003F8FC E7A0005C */  swc1  $f0, 0x5c($sp)
/* 01AD00 8003F900 8262000A */  lb    $v0, 0xa($s3)
/* 01AD04 8003F904 10400059 */  beqz  $v0, .L8003FA6C
/* 01AD08 8003F908 9263000A */   lbu   $v1, 0xa($s3)
/* 01AD0C 8003F90C 3C02800A */  lui   $v0, 0x800a
/* 01AD10 8003F910 8C42A650 */  lw    $v0, -0x59b0($v0)
/* 01AD14 8003F914 30420040 */  andi  $v0, $v0, 0x40
/* 01AD18 8003F918 14400002 */  bnez  $v0, .L8003F924
/* 01AD1C 8003F91C 2462FFFF */   addiu $v0, $v1, -1
/* 01AD20 8003F920 A262000A */  sb    $v0, 0xa($s3)
.L8003F924:
/* 01AD24 8003F924 86820010 */  lh    $v0, 0x10($s4)
/* 01AD28 8003F928 10400050 */  beqz  $v0, .L8003FA6C
/* 01AD2C 8003F92C 00000000 */   nop   
/* 01AD30 8003F930 8E820000 */  lw    $v0, ($s4)
/* 01AD34 8003F934 30422000 */  andi  $v0, $v0, 0x2000
/* 01AD38 8003F938 5440004B */  bnezl $v0, .L8003FA68
/* 01AD3C 8003F93C 24020001 */   addiu $v0, $zero, 1
/* 01AD40 8003F940 9262000A */  lbu   $v0, 0xa($s3)
/* 01AD44 8003F944 00021600 */  sll   $v0, $v0, 0x18
/* 01AD48 8003F948 0800FE9A */  j     func_8003FA68
/* 01AD4C 8003F94C 00021603 */   sra   $v0, $v0, 0x18

.L8003F950:
/* 01AD50 8003F950 24020001 */  addiu $v0, $zero, 1
/* 01AD54 8003F954 A2620005 */  sb    $v0, 5($s3)
/* 01AD58 8003F958 A2220005 */  sb    $v0, 5($s1)
/* 01AD5C 8003F95C AE760088 */  sw    $s6, 0x88($s3)
/* 01AD60 8003F960 AE71008C */  sw    $s1, 0x8c($s3)
/* 01AD64 8003F964 A2600004 */  sb    $zero, 4($s3)
/* 01AD68 8003F968 0801023D */  j     func_800408F4
/* 01AD6C 8003F96C A2600006 */   sb    $zero, 6($s3)

.L8003F970:
/* 01AD70 8003F970 8E860028 */  lw    $a2, 0x28($s4)
/* 01AD74 8003F974 8E87002C */  lw    $a3, 0x2c($s4)
/* 01AD78 8003F978 C6800030 */  lwc1  $f0, 0x30($s4)
/* 01AD7C 8003F97C 0000282D */  daddu $a1, $zero, $zero
/* 01AD80 8003F980 0C052757 */  jal   play_sound_at_position
/* 01AD84 8003F984 E7A00010 */   swc1  $f0, 0x10($sp)
/* 01AD88 8003F988 C6480038 */  lwc1  $f8, 0x38($s2)
/* 01AD8C 8003F98C C68C0028 */  lwc1  $f12, 0x28($s4)
/* 01AD90 8003F990 460C4201 */  sub.s $f8, $f8, $f12
/* 01AD94 8003F994 3C013F00 */  lui   $at, 0x3f00
/* 01AD98 8003F998 44815000 */  mtc1  $at, $f10
/* 01AD9C 8003F99C 00000000 */  nop   
/* 01ADA0 8003F9A0 460A4202 */  mul.s $f8, $f8, $f10
/* 01ADA4 8003F9A4 00000000 */  nop   
/* 01ADA8 8003F9A8 864200A8 */  lh    $v0, 0xa8($s2)
/* 01ADAC 8003F9AC C642003C */  lwc1  $f2, 0x3c($s2)
/* 01ADB0 8003F9B0 44820000 */  mtc1  $v0, $f0
/* 01ADB4 8003F9B4 00000000 */  nop   
/* 01ADB8 8003F9B8 46800020 */  cvt.s.w $f0, $f0
/* 01ADBC 8003F9BC 46001080 */  add.s $f2, $f2, $f0
/* 01ADC0 8003F9C0 868200B0 */  lh    $v0, 0xb0($s4)
/* 01ADC4 8003F9C4 C686002C */  lwc1  $f6, 0x2c($s4)
/* 01ADC8 8003F9C8 44820000 */  mtc1  $v0, $f0
/* 01ADCC 8003F9CC 00000000 */  nop   
/* 01ADD0 8003F9D0 46800020 */  cvt.s.w $f0, $f0
/* 01ADD4 8003F9D4 46003000 */  add.s $f0, $f6, $f0
/* 01ADD8 8003F9D8 46001081 */  sub.s $f2, $f2, $f0
/* 01ADDC 8003F9DC 460A1082 */  mul.s $f2, $f2, $f10
/* 01ADE0 8003F9E0 00000000 */  nop   
/* 01ADE4 8003F9E4 C6840030 */  lwc1  $f4, 0x30($s4)
/* 01ADE8 8003F9E8 C6400040 */  lwc1  $f0, 0x40($s2)
/* 01ADEC 8003F9EC 46040001 */  sub.s $f0, $f0, $f4
/* 01ADF0 8003F9F0 460A0002 */  mul.s $f0, $f0, $f10
/* 01ADF4 8003F9F4 00000000 */  nop   
/* 01ADF8 8003F9F8 46086300 */  add.s $f12, $f12, $f8
/* 01ADFC 8003F9FC 46023180 */  add.s $f6, $f6, $f2
/* 01AE00 8003FA00 24040003 */  addiu $a0, $zero, 3
/* 01AE04 8003FA04 44056000 */  mfc1  $a1, $f12
/* 01AE08 8003FA08 46002100 */  add.s $f4, $f4, $f0
/* 01AE0C 8003FA0C 3C01BF80 */  lui   $at, 0xbf80
/* 01AE10 8003FA10 44810000 */  mtc1  $at, $f0
/* 01AE14 8003FA14 44063000 */  mfc1  $a2, $f6
/* 01AE18 8003FA18 44072000 */  mfc1  $a3, $f4
/* 01AE1C 8003FA1C 0080802D */  daddu $s0, $a0, $zero
/* 01AE20 8003FA20 AFA5003C */  sw    $a1, 0x3c($sp)
/* 01AE24 8003FA24 AFA60040 */  sw    $a2, 0x40($sp)
/* 01AE28 8003FA28 AFA70044 */  sw    $a3, 0x44($sp)
/* 01AE2C 8003FA2C AFA00010 */  sw    $zero, 0x10($sp)
/* 01AE30 8003FA30 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01AE34 8003FA34 AFA00018 */  sw    $zero, 0x18($sp)
/* 01AE38 8003FA38 0C01C064 */  jal   func_80070190
/* 01AE3C 8003FA3C AFB0001C */   sw    $s0, 0x1c($sp)
/* 01AE40 8003FA40 A2700005 */  sb    $s0, 5($s3)
/* 01AE44 8003FA44 8E820004 */  lw    $v0, 4($s4)
/* 01AE48 8003FA48 3C030002 */  lui   $v1, 2
/* 01AE4C 8003FA4C 00431025 */  or    $v0, $v0, $v1
/* 01AE50 8003FA50 AE820004 */  sw    $v0, 4($s4)
/* 01AE54 8003FA54 A2300005 */  sb    $s0, 5($s1)
/* 01AE58 8003FA58 AE760088 */  sw    $s6, 0x88($s3)
/* 01AE5C 8003FA5C AE71008C */  sw    $s1, 0x8c($s3)
/* 01AE60 8003FA60 0801023D */  j     func_800408F4
/* 01AE64 8003FA64 A2600004 */   sb    $zero, 4($s3)

func_8003FA68:
.L8003FA68:
/* 01AE68 8003FA68 A6820010 */  sh    $v0, 0x10($s4)
.L8003FA6C:
/* 01AE6C 8003FA6C 8262001C */  lb    $v0, 0x1c($s3)
/* 01AE70 8003FA70 184003A0 */  blez  $v0, .L800408F4
/* 01AE74 8003FA74 AFA0004C */   sw    $zero, 0x4c($sp)
/* 01AE78 8003FA78 3C087FFF */  lui   $t0, 0x7fff
/* 01AE7C 8003FA7C 3508FFFF */  ori   $t0, $t0, 0xffff
/* 01AE80 8003FA80 AFA80060 */  sw    $t0, 0x60($sp)
/* 01AE84 8003FA84 27A8003C */  addiu $t0, $sp, 0x3c
/* 01AE88 8003FA88 AFA80064 */  sw    $t0, 0x64($sp)
.L8003FA8C:
/* 01AE8C 8003FA8C 8FA8004C */  lw    $t0, 0x4c($sp)
/* 01AE90 8003FA90 00081080 */  sll   $v0, $t0, 2
/* 01AE94 8003FA94 02621021 */  addu  $v0, $s3, $v0
/* 01AE98 8003FA98 8C560028 */  lw    $s6, 0x28($v0)
/* 01AE9C 8003FA9C 12C00390 */  beqz  $s6, .L800408E0
/* 01AEA0 8003FAA0 00000000 */   nop   
/* 01AEA4 8003FAA4 8EC20000 */  lw    $v0, ($s6)
/* 01AEA8 8003FAA8 1840038D */  blez  $v0, .L800408E0
/* 01AEAC 8003FAAC 0000A82D */   daddu $s5, $zero, $zero
/* 01AEB0 8003FAB0 27BE0040 */  addiu $fp, $sp, 0x40
/* 01AEB4 8003FAB4 27B70044 */  addiu $s7, $sp, 0x44
/* 01AEB8 8003FAB8 00151080 */  sll   $v0, $s5, 2
.L8003FABC:
/* 01AEBC 8003FABC 02C21021 */  addu  $v0, $s6, $v0
/* 01AEC0 8003FAC0 8C510004 */  lw    $s1, 4($v0)
/* 01AEC4 8003FAC4 12200380 */  beqz  $s1, .L800408C8
/* 01AEC8 8003FAC8 00000000 */   nop   
/* 01AECC 8003FACC 8E220000 */  lw    $v0, ($s1)
/* 01AED0 8003FAD0 30420020 */  andi  $v0, $v0, 0x20
/* 01AED4 8003FAD4 1440037C */  bnez  $v0, .L800408C8
/* 01AED8 8003FAD8 00000000 */   nop   
/* 01AEDC 8003FADC 0C00EABB */  jal   get_npc_unsafe
/* 01AEE0 8003FAE0 86240008 */   lh    $a0, 8($s1)
/* 01AEE4 8003FAE4 0040902D */  daddu $s2, $v0, $zero
/* 01AEE8 8003FAE8 822200B4 */  lb    $v0, 0xb4($s1)
/* 01AEEC 8003FAEC 922300B4 */  lbu   $v1, 0xb4($s1)
/* 01AEF0 8003FAF0 50400030 */  beql  $v0, $zero, .L8003FBB4
/* 01AEF4 8003FAF4 3C030020 */   lui   $v1, 0x20
/* 01AEF8 8003FAF8 3C02800A */  lui   $v0, 0x800a
/* 01AEFC 8003FAFC 8C42A650 */  lw    $v0, -0x59b0($v0)
/* 01AF00 8003FB00 30420040 */  andi  $v0, $v0, 0x40
/* 01AF04 8003FB04 54400005 */  bnezl $v0, .L8003FB1C
/* 01AF08 8003FB08 0000102D */   daddu $v0, $zero, $zero
/* 01AF0C 8003FB0C 2462FFFF */  addiu $v0, $v1, -1
/* 01AF10 8003FB10 A22200B4 */  sb    $v0, 0xb4($s1)
/* 01AF14 8003FB14 00021600 */  sll   $v0, $v0, 0x18
/* 01AF18 8003FB18 00021603 */  sra   $v0, $v0, 0x18
.L8003FB1C:
/* 01AF1C 8003FB1C 30420001 */  andi  $v0, $v0, 1
/* 01AF20 8003FB20 10400007 */  beqz  $v0, .L8003FB40
/* 01AF24 8003FB24 3C088000 */   lui   $t0, 0x8000
/* 01AF28 8003FB28 8E420000 */  lw    $v0, ($s2)
/* 01AF2C 8003FB2C 00481025 */  or    $v0, $v0, $t0
/* 01AF30 8003FB30 AE420000 */  sw    $v0, ($s2)
/* 01AF34 8003FB34 8E220000 */  lw    $v0, ($s1)
/* 01AF38 8003FB38 0800FED6 */  j     func_8003FB58
/* 01AF3C 8003FB3C 00481025 */   or    $v0, $v0, $t0

.L8003FB40:
/* 01AF40 8003FB40 8E420000 */  lw    $v0, ($s2)
/* 01AF44 8003FB44 8FA80060 */  lw    $t0, 0x60($sp)
/* 01AF48 8003FB48 00481024 */  and   $v0, $v0, $t0
/* 01AF4C 8003FB4C AE420000 */  sw    $v0, ($s2)
/* 01AF50 8003FB50 8E220000 */  lw    $v0, ($s1)
/* 01AF54 8003FB54 00481024 */  and   $v0, $v0, $t0
func_8003FB58:
/* 01AF58 8003FB58 AE220000 */  sw    $v0, ($s1)
/* 01AF5C 8003FB5C 0C0B11EA */  jal   get_script_by_id
/* 01AF60 8003FB60 8E24005C */   lw    $a0, 0x5c($s1)
/* 01AF64 8003FB64 0040202D */  daddu $a0, $v0, $zero
/* 01AF68 8003FB68 10800003 */  beqz  $a0, .L8003FB78
/* 01AF6C 8003FB6C 00000000 */   nop   
/* 01AF70 8003FB70 0C0B11FA */  jal   set_script_flags
/* 01AF74 8003FB74 24050080 */   addiu $a1, $zero, 0x80
.L8003FB78:
/* 01AF78 8003FB78 8E240054 */  lw    $a0, 0x54($s1)
/* 01AF7C 8003FB7C 0C0B11EA */  jal   get_script_by_id
/* 01AF80 8003FB80 00000000 */   nop   
/* 01AF84 8003FB84 0040202D */  daddu $a0, $v0, $zero
/* 01AF88 8003FB88 10800003 */  beqz  $a0, .L8003FB98
/* 01AF8C 8003FB8C 00000000 */   nop   
/* 01AF90 8003FB90 0C0B11FA */  jal   set_script_flags
/* 01AF94 8003FB94 24050080 */   addiu $a1, $zero, 0x80
.L8003FB98:
/* 01AF98 8003FB98 8E220000 */  lw    $v0, ($s1)
/* 01AF9C 8003FB9C 3C030008 */  lui   $v1, 8
/* 01AFA0 8003FBA0 00431024 */  and   $v0, $v0, $v1
/* 01AFA4 8003FBA4 10400052 */  beqz  $v0, .L8003FCF0
/* 01AFA8 8003FBA8 00000000 */   nop   
/* 01AFAC 8003FBAC 0800FF2D */  j     func_8003FCB4
/* 01AFB0 8003FBB0 8E24005C */   lw    $a0, 0x5c($s1)

.L8003FBB4:
/* 01AFB4 8003FBB4 8E220000 */  lw    $v0, ($s1)
/* 01AFB8 8003FBB8 00431024 */  and   $v0, $v0, $v1
/* 01AFBC 8003FBBC 14400035 */  bnez  $v0, .L8003FC94
/* 01AFC0 8003FBC0 27A20020 */   addiu $v0, $sp, 0x20
/* 01AFC4 8003FBC4 3C048007 */  lui   $a0, 0x8007
/* 01AFC8 8003FBC8 8C847410 */  lw    $a0, 0x7410($a0)
/* 01AFCC 8003FBCC AFA20010 */  sw    $v0, 0x10($sp)
/* 01AFD0 8003FBD0 27A20024 */  addiu $v0, $sp, 0x24
/* 01AFD4 8003FBD4 AFA20014 */  sw    $v0, 0x14($sp)
/* 01AFD8 8003FBD8 27A20028 */  addiu $v0, $sp, 0x28
/* 01AFDC 8003FBDC AFA20018 */  sw    $v0, 0x18($sp)
/* 01AFE0 8003FBE0 8E450038 */  lw    $a1, 0x38($s2)
/* 01AFE4 8003FBE4 8E46003C */  lw    $a2, 0x3c($s2)
/* 01AFE8 8003FBE8 0C00B94E */  jal   get_screen_coords
/* 01AFEC 8003FBEC 8E470040 */   lw    $a3, 0x40($s2)
/* 01AFF0 8003FBF0 8FA20020 */  lw    $v0, 0x20($sp)
/* 01AFF4 8003FBF4 244200A0 */  addiu $v0, $v0, 0xa0
/* 01AFF8 8003FBF8 2C420281 */  sltiu $v0, $v0, 0x281
/* 01AFFC 8003FBFC 1040000A */  beqz  $v0, .L8003FC28
/* 01B000 8003FC00 00000000 */   nop   
/* 01B004 8003FC04 8FA30024 */  lw    $v1, 0x24($sp)
/* 01B008 8003FC08 2862FF88 */  slti  $v0, $v1, -0x78
/* 01B00C 8003FC0C 14400006 */  bnez  $v0, .L8003FC28
/* 01B010 8003FC10 28620169 */   slti  $v0, $v1, 0x169
/* 01B014 8003FC14 10400004 */  beqz  $v0, .L8003FC28
/* 01B018 8003FC18 00000000 */   nop   
/* 01B01C 8003FC1C 8FA20028 */  lw    $v0, 0x28($sp)
/* 01B020 8003FC20 0441001C */  bgez  $v0, .L8003FC94
/* 01B024 8003FC24 00000000 */   nop   
.L8003FC28:
/* 01B028 8003FC28 8E220000 */  lw    $v0, ($s1)
/* 01B02C 8003FC2C 30420001 */  andi  $v0, $v0, 1
/* 01B030 8003FC30 14400018 */  bnez  $v0, .L8003FC94
/* 01B034 8003FC34 3C088000 */   lui   $t0, 0x8000
/* 01B038 8003FC38 8E420000 */  lw    $v0, ($s2)
/* 01B03C 8003FC3C 00481025 */  or    $v0, $v0, $t0
/* 01B040 8003FC40 AE420000 */  sw    $v0, ($s2)
/* 01B044 8003FC44 8E220000 */  lw    $v0, ($s1)
/* 01B048 8003FC48 8E24005C */  lw    $a0, 0x5c($s1)
/* 01B04C 8003FC4C 00481025 */  or    $v0, $v0, $t0
/* 01B050 8003FC50 0C0B11EA */  jal   get_script_by_id
/* 01B054 8003FC54 AE220000 */   sw    $v0, ($s1)
/* 01B058 8003FC58 0040202D */  daddu $a0, $v0, $zero
/* 01B05C 8003FC5C 10800003 */  beqz  $a0, .L8003FC6C
/* 01B060 8003FC60 00000000 */   nop   
/* 01B064 8003FC64 0C0B11FA */  jal   set_script_flags
/* 01B068 8003FC68 24050080 */   addiu $a1, $zero, 0x80
.L8003FC6C:
/* 01B06C 8003FC6C 8E240054 */  lw    $a0, 0x54($s1)
/* 01B070 8003FC70 0C0B11EA */  jal   get_script_by_id
/* 01B074 8003FC74 00000000 */   nop   
/* 01B078 8003FC78 0040202D */  daddu $a0, $v0, $zero
/* 01B07C 8003FC7C 1080001C */  beqz  $a0, .L8003FCF0
/* 01B080 8003FC80 00000000 */   nop   
/* 01B084 8003FC84 0C0B11FA */  jal   set_script_flags
/* 01B088 8003FC88 24050080 */   addiu $a1, $zero, 0x80
/* 01B08C 8003FC8C 0800FF3C */  j     func_8003FCF0
/* 01B090 8003FC90 00000000 */   nop   

.L8003FC94:
/* 01B094 8003FC94 8E420000 */  lw    $v0, ($s2)
/* 01B098 8003FC98 8FA80060 */  lw    $t0, 0x60($sp)
/* 01B09C 8003FC9C 00481024 */  and   $v0, $v0, $t0
/* 01B0A0 8003FCA0 AE420000 */  sw    $v0, ($s2)
/* 01B0A4 8003FCA4 8E220000 */  lw    $v0, ($s1)
/* 01B0A8 8003FCA8 8E24005C */  lw    $a0, 0x5c($s1)
/* 01B0AC 8003FCAC 00481024 */  and   $v0, $v0, $t0
/* 01B0B0 8003FCB0 AE220000 */  sw    $v0, ($s1)
func_8003FCB4:
/* 01B0B4 8003FCB4 0C0B11EA */  jal   get_script_by_id
/* 01B0B8 8003FCB8 00000000 */   nop   
/* 01B0BC 8003FCBC 0040202D */  daddu $a0, $v0, $zero
/* 01B0C0 8003FCC0 10800003 */  beqz  $a0, .L8003FCD0
/* 01B0C4 8003FCC4 00000000 */   nop   
/* 01B0C8 8003FCC8 0C0B1220 */  jal   clear_script_flags
/* 01B0CC 8003FCCC 24050080 */   addiu $a1, $zero, 0x80
.L8003FCD0:
/* 01B0D0 8003FCD0 8E240054 */  lw    $a0, 0x54($s1)
/* 01B0D4 8003FCD4 0C0B11EA */  jal   get_script_by_id
/* 01B0D8 8003FCD8 00000000 */   nop   
/* 01B0DC 8003FCDC 0040202D */  daddu $a0, $v0, $zero
/* 01B0E0 8003FCE0 10800003 */  beqz  $a0, .L8003FCF0
/* 01B0E4 8003FCE4 00000000 */   nop   
/* 01B0E8 8003FCE8 0C0B1220 */  jal   clear_script_flags
/* 01B0EC 8003FCEC 24050080 */   addiu $a1, $zero, 0x80
func_8003FCF0:
.L8003FCF0:
/* 01B0F0 8003FCF0 8E230000 */  lw    $v1, ($s1)
/* 01B0F4 8003FCF4 3C088000 */  lui   $t0, 0x8000
/* 01B0F8 8003FCF8 00681024 */  and   $v0, $v1, $t0
/* 01B0FC 8003FCFC 144002F2 */  bnez  $v0, .L800408C8
/* 01B100 8003FD00 30620001 */   andi  $v0, $v1, 1
/* 01B104 8003FD04 1040002A */  beqz  $v0, .L8003FDB0
/* 01B108 8003FD08 3C020040 */   lui   $v0, 0x40
/* 01B10C 8003FD0C 00621024 */  and   $v0, $v1, $v0
/* 01B110 8003FD10 14400020 */  bnez  $v0, .L8003FD94
/* 01B114 8003FD14 00000000 */   nop   
/* 01B118 8003FD18 8E8200C8 */  lw    $v0, 0xc8($s4)
/* 01B11C 8003FD1C 16420015 */  bne   $s2, $v0, .L8003FD74
/* 01B120 8003FD20 24033039 */   addiu $v1, $zero, 0x3039
/* 01B124 8003FD24 C640000C */  lwc1  $f0, 0xc($s2)
/* 01B128 8003FD28 4600040D */  trunc.w.s $f16, $f0
/* 01B12C 8003FD2C 44028000 */  mfc1  $v0, $f16
/* 01B130 8003FD30 00000000 */  nop   
/* 01B134 8003FD34 A62200E0 */  sh    $v0, 0xe0($s1)
/* 01B138 8003FD38 C64C0038 */  lwc1  $f12, 0x38($s2)
/* 01B13C 8003FD3C C64E0040 */  lwc1  $f14, 0x40($s2)
/* 01B140 8003FD40 8E860028 */  lw    $a2, 0x28($s4)
/* 01B144 8003FD44 0C00A720 */  jal   atan2
/* 01B148 8003FD48 8E870030 */   lw    $a3, 0x30($s4)
/* 01B14C 8003FD4C E640000C */  swc1  $f0, 0xc($s2)
/* 01B150 8003FD50 0C0B11EA */  jal   get_script_by_id
/* 01B154 8003FD54 8E240054 */   lw    $a0, 0x54($s1)
/* 01B158 8003FD58 0040202D */  daddu $a0, $v0, $zero
/* 01B15C 8003FD5C 10800014 */  beqz  $a0, .L8003FDB0
/* 01B160 8003FD60 00000000 */   nop   
/* 01B164 8003FD64 0C0B11FA */  jal   set_script_flags
/* 01B168 8003FD68 24050080 */   addiu $a1, $zero, 0x80
/* 01B16C 8003FD6C 0800FF6C */  j     func_8003FDB0
/* 01B170 8003FD70 00000000 */   nop   

.L8003FD74:
/* 01B174 8003FD74 862200E0 */  lh    $v0, 0xe0($s1)
/* 01B178 8003FD78 10430006 */  beq   $v0, $v1, .L8003FD94
/* 01B17C 8003FD7C 00000000 */   nop   
/* 01B180 8003FD80 44820000 */  mtc1  $v0, $f0
/* 01B184 8003FD84 00000000 */  nop   
/* 01B188 8003FD88 46800020 */  cvt.s.w $f0, $f0
/* 01B18C 8003FD8C E640000C */  swc1  $f0, 0xc($s2)
/* 01B190 8003FD90 A62300E0 */  sh    $v1, 0xe0($s1)
.L8003FD94:
/* 01B194 8003FD94 0C0B11EA */  jal   get_script_by_id
/* 01B198 8003FD98 8E240054 */   lw    $a0, 0x54($s1)
/* 01B19C 8003FD9C 0040202D */  daddu $a0, $v0, $zero
/* 01B1A0 8003FDA0 10800003 */  beqz  $a0, .L8003FDB0
/* 01B1A4 8003FDA4 00000000 */   nop   
/* 01B1A8 8003FDA8 0C0B1220 */  jal   clear_script_flags
/* 01B1AC 8003FDAC 24050080 */   addiu $a1, $zero, 0x80
func_8003FDB0:
.L8003FDB0:
/* 01B1B0 8003FDB0 8262000A */  lb    $v0, 0xa($s3)
/* 01B1B4 8003FDB4 144002C4 */  bnez  $v0, .L800408C8
/* 01B1B8 8003FDB8 24080001 */   addiu $t0, $zero, 1
/* 01B1BC 8003FDBC 3C028007 */  lui   $v0, 0x8007
/* 01B1C0 8003FDC0 8C42419C */  lw    $v0, 0x419c($v0)
/* 01B1C4 8003FDC4 80420074 */  lb    $v0, 0x74($v0)
/* 01B1C8 8003FDC8 104802BF */  beq   $v0, $t0, .L800408C8
/* 01B1CC 8003FDCC 3C030008 */   lui   $v1, 8
/* 01B1D0 8003FDD0 8E820000 */  lw    $v0, ($s4)
/* 01B1D4 8003FDD4 00431024 */  and   $v0, $v0, $v1
/* 01B1D8 8003FDD8 144002BB */  bnez  $v0, .L800408C8
/* 01B1DC 8003FDDC 00000000 */   nop   
/* 01B1E0 8003FDE0 3C04800A */  lui   $a0, 0x800a
/* 01B1E4 8003FDE4 8C84A650 */  lw    $a0, -0x59b0($a0)
/* 01B1E8 8003FDE8 30820040 */  andi  $v0, $a0, 0x40
/* 01B1EC 8003FDEC 144002B6 */  bnez  $v0, .L800408C8
/* 01B1F0 8003FDF0 24020009 */   addiu $v0, $zero, 9
/* 01B1F4 8003FDF4 3C038011 */  lui   $v1, 0x8011
/* 01B1F8 8003FDF8 8063EBB3 */  lb    $v1, -0x144d($v1)
/* 01B1FC 8003FDFC 106202B2 */  beq   $v1, $v0, .L800408C8
/* 01B200 8003FE00 00000000 */   nop   
/* 01B204 8003FE04 8E220000 */  lw    $v0, ($s1)
/* 01B208 8003FE08 00481024 */  and   $v0, $v0, $t0
/* 01B20C 8003FE0C 144002AE */  bnez  $v0, .L800408C8
/* 01B210 8003FE10 30820F00 */   andi  $v0, $a0, 0xf00
/* 01B214 8003FE14 144002AC */  bnez  $v0, .L800408C8
/* 01B218 8003FE18 00000000 */   nop   
/* 01B21C 8003FE1C 0C04D07A */  jal   func_801341E8
/* 01B220 8003FE20 00000000 */   nop   
/* 01B224 8003FE24 144002A8 */  bnez  $v0, .L800408C8
/* 01B228 8003FE28 3C021000 */   lui   $v0, 0x1000
/* 01B22C 8003FE2C 8E230000 */  lw    $v1, ($s1)
/* 01B230 8003FE30 00621824 */  and   $v1, $v1, $v0
/* 01B234 8003FE34 14600007 */  bnez  $v1, .L8003FE54
/* 01B238 8003FE38 00000000 */   nop   
/* 01B23C 8003FE3C 0C03AD79 */  jal   func_800EB5E4
/* 01B240 8003FE40 0240202D */   daddu $a0, $s2, $zero
/* 01B244 8003FE44 10400003 */  beqz  $v0, .L8003FE54
/* 01B248 8003FE48 24020006 */   addiu $v0, $zero, 6
/* 01B24C 8003FE4C 0801015F */  j     func_8004057C
/* 01B250 8003FE50 A2620005 */   sb    $v0, 5($s3)

.L8003FE54:
/* 01B254 8003FE54 C6400038 */  lwc1  $f0, 0x38($s2)
/* 01B258 8003FE58 C65A003C */  lwc1  $f26, 0x3c($s2)
/* 01B25C 8003FE5C C658000C */  lwc1  $f24, 0xc($s2)
/* 01B260 8003FE60 C6420040 */  lwc1  $f2, 0x40($s2)
/* 01B264 8003FE64 E7A0002C */  swc1  $f0, 0x2c($sp)
/* 01B268 8003FE68 E7A20030 */  swc1  $f2, 0x30($sp)
/* 01B26C 8003FE6C 864300A8 */  lh    $v1, 0xa8($s2)
/* 01B270 8003FE70 964200A6 */  lhu   $v0, 0xa6($s2)
/* 01B274 8003FE74 4483E000 */  mtc1  $v1, $f28
/* 01B278 8003FE78 00000000 */  nop   
/* 01B27C 8003FE7C 4680E720 */  cvt.s.w $f28, $f28
/* 01B280 8003FE80 00021400 */  sll   $v0, $v0, 0x10
/* 01B284 8003FE84 00021C03 */  sra   $v1, $v0, 0x10
/* 01B288 8003FE88 000217C2 */  srl   $v0, $v0, 0x1f
/* 01B28C 8003FE8C 00621821 */  addu  $v1, $v1, $v0
/* 01B290 8003FE90 00031843 */  sra   $v1, $v1, 1
/* 01B294 8003FE94 8E2200DC */  lw    $v0, 0xdc($s1)
/* 01B298 8003FE98 4483F000 */  mtc1  $v1, $f30
/* 01B29C 8003FE9C 00000000 */  nop   
/* 01B2A0 8003FEA0 10400020 */  beqz  $v0, .L8003FF24
/* 01B2A4 8003FEA4 4680F7A0 */   cvt.s.w $f30, $f30
/* 01B2A8 8003FEA8 8642008A */  lh    $v0, 0x8a($s2)
/* 01B2AC 8003FEAC 3C014334 */  lui   $at, 0x4334
/* 01B2B0 8003FEB0 44810000 */  mtc1  $at, $f0
/* 01B2B4 8003FEB4 4482C000 */  mtc1  $v0, $f24
/* 01B2B8 8003FEB8 00000000 */  nop   
/* 01B2BC 8003FEBC 4680C620 */  cvt.s.w $f24, $f24
/* 01B2C0 8003FEC0 4600C03C */  c.lt.s $f24, $f0
/* 01B2C4 8003FEC4 00000000 */  nop   
/* 01B2C8 8003FEC8 45000007 */  bc1f  .L8003FEE8
/* 01B2CC 8003FECC 00000000 */   nop   
/* 01B2D0 8003FED0 8FA80048 */  lw    $t0, 0x48($sp)
/* 01B2D4 8003FED4 3C0142B4 */  lui   $at, 0x42b4
/* 01B2D8 8003FED8 44818000 */  mtc1  $at, $f16
/* 01B2DC 8003FEDC C50C006C */  lwc1  $f12, 0x6c($t0)
/* 01B2E0 8003FEE0 0800FFBF */  j     func_8003FEFC
/* 01B2E4 8003FEE4 46106301 */   sub.s $f12, $f12, $f16

.L8003FEE8:
/* 01B2E8 8003FEE8 8FA80048 */  lw    $t0, 0x48($sp)
/* 01B2EC 8003FEEC 3C0142B4 */  lui   $at, 0x42b4
/* 01B2F0 8003FEF0 44818000 */  mtc1  $at, $f16
/* 01B2F4 8003FEF4 C50C006C */  lwc1  $f12, 0x6c($t0)
/* 01B2F8 8003FEF8 46106300 */  add.s $f12, $f12, $f16
func_8003FEFC:
/* 01B2FC 8003FEFC 0C00A6C9 */  jal   clamp_angle
/* 01B300 8003FF00 00000000 */   nop   
/* 01B304 8003FF04 46000606 */  mov.s $f24, $f0
/* 01B308 8003FF08 27A4002C */  addiu $a0, $sp, 0x2c
/* 01B30C 8003FF0C C63200DC */  lwc1  $f18, 0xdc($s1)
/* 01B310 8003FF10 468094A0 */  cvt.s.w $f18, $f18
/* 01B314 8003FF14 4407C000 */  mfc1  $a3, $f24
/* 01B318 8003FF18 44069000 */  mfc1  $a2, $f18
/* 01B31C 8003FF1C 0C00A7E7 */  jal   add_vec2D_polar
/* 01B320 8003FF20 27A50030 */   addiu $a1, $sp, 0x30
.L8003FF24:
/* 01B324 8003FF24 C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 01B328 8003FF28 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 01B32C 8003FF2C 46100001 */  sub.s $f0, $f0, $f16
/* 01B330 8003FF30 46000082 */  mul.s $f2, $f0, $f0
/* 01B334 8003FF34 00000000 */  nop   
/* 01B338 8003FF38 C7B20058 */  lwc1  $f18, 0x58($sp)
/* 01B33C 8003FF3C C7A00030 */  lwc1  $f0, 0x30($sp)
/* 01B340 8003FF40 46120001 */  sub.s $f0, $f0, $f18
/* 01B344 8003FF44 46000002 */  mul.s $f0, $f0, $f0
/* 01B348 8003FF48 00000000 */  nop   
/* 01B34C 8003FF4C 46001300 */  add.s $f12, $f2, $f0
/* 01B350 8003FF50 46006004 */  sqrt.s $f0, $f12
/* 01B354 8003FF54 46000032 */  c.eq.s $f0, $f0
/* 01B358 8003FF58 00000000 */  nop   
/* 01B35C 8003FF5C 45010003 */  bc1t  .L8003FF6C
/* 01B360 8003FF60 00000000 */   nop   
/* 01B364 8003FF64 0C0187BC */  jal   sqrtf
/* 01B368 8003FF68 00000000 */   nop   
.L8003FF6C:
/* 01B36C 8003FF6C 928200B4 */  lbu   $v0, 0xb4($s4)
/* 01B370 8003FF70 2442FFFD */  addiu $v0, $v0, -3
/* 01B374 8003FF74 00021600 */  sll   $v0, $v0, 0x18
/* 01B378 8003FF78 00021E03 */  sra   $v1, $v0, 0x18
/* 01B37C 8003FF7C 2C620010 */  sltiu $v0, $v1, 0x10
/* 01B380 8003FF80 10400184 */  beqz  $v0, .L80040594
/* 01B384 8003FF84 46000586 */   mov.s $f22, $f0
/* 01B388 8003FF88 00031080 */  sll   $v0, $v1, 2
/* 01B38C 8003FF8C 3C01800A */  lui   $at, 0x800a
/* 01B390 8003FF90 00220821 */  addu  $at, $at, $v0
/* 01B394 8003FF94 8C2285F8 */  lw    $v0, -0x7a08($at)
/* 01B398 8003FF98 00400008 */  jr    $v0
/* 01B39C 8003FF9C 00000000 */   nop   
/* 01B3A0 8003FFA0 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 01B3A4 8003FFA4 C68C00A8 */  lwc1  $f12, 0xa8($s4)
/* 01B3A8 8003FFA8 C7B20058 */  lwc1  $f18, 0x58($sp)
/* 01B3AC 8003FFAC E7B00034 */  swc1  $f16, 0x34($sp)
/* 01B3B0 8003FFB0 0C00A6C9 */  jal   clamp_angle
/* 01B3B4 8003FFB4 E7B20038 */   swc1  $f18, 0x38($sp)
/* 01B3B8 8003FFB8 3C014334 */  lui   $at, 0x4334
/* 01B3BC 8003FFBC 44811000 */  mtc1  $at, $f2
/* 01B3C0 8003FFC0 C7B40054 */  lwc1  $f20, 0x54($sp)
/* 01B3C4 8003FFC4 4602003C */  c.lt.s $f0, $f2
/* 01B3C8 8003FFC8 00000000 */  nop   
/* 01B3CC 8003FFCC 45000010 */  bc1f  .L80040010
/* 01B3D0 8003FFD0 00000000 */   nop   
/* 01B3D4 8003FFD4 8FA80048 */  lw    $t0, 0x48($sp)
/* 01B3D8 8003FFD8 3C0142B4 */  lui   $at, 0x42b4
/* 01B3DC 8003FFDC 44818000 */  mtc1  $at, $f16
/* 01B3E0 8003FFE0 C50C006C */  lwc1  $f12, 0x6c($t0)
/* 01B3E4 8003FFE4 0C00A6C9 */  jal   clamp_angle
/* 01B3E8 8003FFE8 46106301 */   sub.s $f12, $f12, $f16
/* 01B3EC 8003FFEC 8E8200A4 */  lw    $v0, 0xa4($s4)
/* 01B3F0 8003FFF0 3C030100 */  lui   $v1, 0x100
/* 01B3F4 8003FFF4 00431024 */  and   $v0, $v0, $v1
/* 01B3F8 8003FFF8 10400017 */  beqz  $v0, .L80040058
/* 01B3FC 8003FFFC 27A40034 */   addiu $a0, $sp, 0x34
/* 01B400 80040000 3C0141F0 */  lui   $at, 0x41f0
/* 01B404 80040004 44816000 */  mtc1  $at, $f12
/* 01B408 80040008 08010013 */  j     func_8004004C
/* 01B40C 8004000C 460C0300 */   add.s $f12, $f0, $f12

.L80040010:
/* 01B410 80040010 8FA80048 */  lw    $t0, 0x48($sp)
/* 01B414 80040014 3C0142B4 */  lui   $at, 0x42b4
/* 01B418 80040018 44818000 */  mtc1  $at, $f16
/* 01B41C 8004001C C50C006C */  lwc1  $f12, 0x6c($t0)
/* 01B420 80040020 0C00A6C9 */  jal   clamp_angle
/* 01B424 80040024 46106300 */   add.s $f12, $f12, $f16
/* 01B428 80040028 8E8200A4 */  lw    $v0, 0xa4($s4)
/* 01B42C 8004002C 3C030100 */  lui   $v1, 0x100
/* 01B430 80040030 00431024 */  and   $v0, $v0, $v1
/* 01B434 80040034 10400008 */  beqz  $v0, .L80040058
/* 01B438 80040038 27A40034 */   addiu $a0, $sp, 0x34
/* 01B43C 8004003C 3C0141F0 */  lui   $at, 0x41f0
/* 01B440 80040040 44816000 */  mtc1  $at, $f12
/* 01B444 80040044 00000000 */  nop   
/* 01B448 80040048 460C0301 */  sub.s $f12, $f0, $f12
func_8004004C:
/* 01B44C 8004004C 0C00A6C9 */  jal   clamp_angle
/* 01B450 80040050 00000000 */   nop   
/* 01B454 80040054 27A40034 */  addiu $a0, $sp, 0x34
.L80040058:
/* 01B458 80040058 3C0641C0 */  lui   $a2, 0x41c0
/* 01B45C 8004005C 44070000 */  mfc1  $a3, $f0
/* 01B460 80040060 0C00A7E7 */  jal   add_vec2D_polar
/* 01B464 80040064 27A50038 */   addiu $a1, $sp, 0x38
/* 01B468 80040068 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 01B46C 8004006C C7A00034 */  lwc1  $f0, 0x34($sp)
/* 01B470 80040070 46001001 */  sub.s $f0, $f2, $f0
/* 01B474 80040074 46000102 */  mul.s $f4, $f0, $f0
/* 01B478 80040078 00000000 */  nop   
/* 01B47C 8004007C C7A20030 */  lwc1  $f2, 0x30($sp)
/* 01B480 80040080 C7A00038 */  lwc1  $f0, 0x38($sp)
/* 01B484 80040084 46001001 */  sub.s $f0, $f2, $f0
/* 01B488 80040088 46000002 */  mul.s $f0, $f0, $f0
/* 01B48C 8004008C 00000000 */  nop   
/* 01B490 80040090 46002300 */  add.s $f12, $f4, $f0
/* 01B494 80040094 46006004 */  sqrt.s $f0, $f12
/* 01B498 80040098 46000032 */  c.eq.s $f0, $f0
/* 01B49C 8004009C 00000000 */  nop   
/* 01B4A0 800400A0 45010003 */  bc1t  .L800400B0
/* 01B4A4 800400A4 00000000 */   nop   
/* 01B4A8 800400A8 0C0187BC */  jal   sqrtf
/* 01B4AC 800400AC 00000000 */   nop   
.L800400B0:
/* 01B4B0 800400B0 8E220000 */  lw    $v0, ($s1)
/* 01B4B4 800400B4 3C030400 */  lui   $v1, 0x400
/* 01B4B8 800400B8 00431024 */  and   $v0, $v0, $v1
/* 01B4BC 800400BC 14400135 */  bnez  $v0, .L80040594
/* 01B4C0 800400C0 46000586 */   mov.s $f22, $f0
/* 01B4C4 800400C4 8E820000 */  lw    $v0, ($s4)
/* 01B4C8 800400C8 3C030100 */  lui   $v1, 0x100
/* 01B4CC 800400CC 00431024 */  and   $v0, $v0, $v1
/* 01B4D0 800400D0 10400130 */  beqz  $v0, .L80040594
/* 01B4D4 800400D4 00000000 */   nop   
/* 01B4D8 800400D8 3C014160 */  lui   $at, 0x4160
/* 01B4DC 800400DC 44819000 */  mtc1  $at, $f18
/* 01B4E0 800400E0 00000000 */  nop   
/* 01B4E4 800400E4 461E9000 */  add.s $f0, $f18, $f30
/* 01B4E8 800400E8 4616003E */  c.le.s $f0, $f22
/* 01B4EC 800400EC 00000000 */  nop   
/* 01B4F0 800400F0 45010128 */  bc1t  .L80040594
/* 01B4F4 800400F4 00000000 */   nop   
/* 01B4F8 800400F8 461CD000 */  add.s $f0, $f26, $f28
/* 01B4FC 800400FC 4614003C */  c.lt.s $f0, $f20
/* 01B500 80040100 00000000 */  nop   
/* 01B504 80040104 45010123 */  bc1t  .L80040594
/* 01B508 80040108 00000000 */   nop   
/* 01B50C 8004010C 3C014190 */  lui   $at, 0x4190
/* 01B510 80040110 44818000 */  mtc1  $at, $f16
/* 01B514 80040114 00000000 */  nop   
/* 01B518 80040118 4610A000 */  add.s $f0, $f20, $f16
/* 01B51C 8004011C 461A003C */  c.lt.s $f0, $f26
/* 01B520 80040120 00000000 */  nop   
/* 01B524 80040124 4501011B */  bc1t  .L80040594
/* 01B528 80040128 00000000 */   nop   
/* 01B52C 8004012C 8FA60050 */  lw    $a2, 0x50($sp)
/* 01B530 80040130 8FA70058 */  lw    $a3, 0x58($sp)
/* 01B534 80040134 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* 01B538 80040138 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 01B53C 8004013C E7BA0040 */  swc1  $f26, 0x40($sp)
/* 01B540 80040140 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 01B544 80040144 0C00A720 */  jal   atan2
/* 01B548 80040148 E7AE0044 */   swc1  $f14, 0x44($sp)
/* 01B54C 8004014C 3C040001 */  lui   $a0, 1
/* 01B550 80040150 03C0302D */  daddu $a2, $fp, $zero
/* 01B554 80040154 02E0382D */  daddu $a3, $s7, $zero
/* 01B558 80040158 8FA50064 */  lw    $a1, 0x64($sp)
/* 01B55C 8004015C 461EF500 */  add.s $f20, $f30, $f30
/* 01B560 80040160 E7B60010 */  swc1  $f22, 0x10($sp)
/* 01B564 80040164 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01B568 80040168 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 01B56C 8004016C 0C0376B9 */  jal   func_800DDAE4
/* 01B570 80040170 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 01B574 80040174 10400016 */  beqz  $v0, .L800401D0
/* 01B578 80040178 00000000 */   nop   
/* 01B57C 8004017C C7AC0050 */  lwc1  $f12, 0x50($sp)
/* 01B580 80040180 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01B584 80040184 8FA70030 */  lw    $a3, 0x30($sp)
/* 01B588 80040188 C7AE0058 */  lwc1  $f14, 0x58($sp)
/* 01B58C 8004018C C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01B590 80040190 46007406 */  mov.s $f16, $f14
/* 01B594 80040194 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 01B598 80040198 E7B20040 */  swc1  $f18, 0x40($sp)
/* 01B59C 8004019C 0C00A720 */  jal   atan2
/* 01B5A0 800401A0 E7B00044 */   swc1  $f16, 0x44($sp)
/* 01B5A4 800401A4 3C040001 */  lui   $a0, 1
/* 01B5A8 800401A8 03C0302D */  daddu $a2, $fp, $zero
/* 01B5AC 800401AC 8FA50064 */  lw    $a1, 0x64($sp)
/* 01B5B0 800401B0 02E0382D */  daddu $a3, $s7, $zero
/* 01B5B4 800401B4 E7B60010 */  swc1  $f22, 0x10($sp)
/* 01B5B8 800401B8 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01B5BC 800401BC E7BC0018 */  swc1  $f28, 0x18($sp)
/* 01B5C0 800401C0 0C0376B9 */  jal   func_800DDAE4
/* 01B5C4 800401C4 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 01B5C8 800401C8 144000F2 */  bnez  $v0, .L80040594
/* 01B5CC 800401CC 00000000 */   nop   
.L800401D0:
/* 01B5D0 800401D0 82220007 */  lb    $v0, 7($s1)
/* 01B5D4 800401D4 1040000F */  beqz  $v0, .L80040214
/* 01B5D8 800401D8 00000000 */   nop   
/* 01B5DC 800401DC 86220012 */  lh    $v0, 0x12($s1)
/* 01B5E0 800401E0 4482D000 */  mtc1  $v0, $f26
/* 01B5E4 800401E4 00000000 */  nop   
/* 01B5E8 800401E8 4680D6A0 */  cvt.s.w $f26, $f26
/* 01B5EC 800401EC 86220010 */  lh    $v0, 0x10($s1)
/* 01B5F0 800401F0 86230014 */  lh    $v1, 0x14($s1)
/* 01B5F4 800401F4 44820000 */  mtc1  $v0, $f0
/* 01B5F8 800401F8 00000000 */  nop   
/* 01B5FC 800401FC 46800020 */  cvt.s.w $f0, $f0
/* 01B600 80040200 E7A0002C */  swc1  $f0, 0x2c($sp)
/* 01B604 80040204 44830000 */  mtc1  $v1, $f0
/* 01B608 80040208 00000000 */  nop   
/* 01B60C 8004020C 46800020 */  cvt.s.w $f0, $f0
/* 01B610 80040210 E7A00030 */  swc1  $f0, 0x30($sp)
.L80040214:
/* 01B614 80040214 C7AC0050 */  lwc1  $f12, 0x50($sp)
/* 01B618 80040218 C7AE0058 */  lwc1  $f14, 0x58($sp)
/* 01B61C 8004021C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01B620 80040220 8FA70030 */  lw    $a3, 0x30($sp)
/* 01B624 80040224 0C00A720 */  jal   atan2
/* 01B628 80040228 0000802D */   daddu $s0, $zero, $zero
/* 01B62C 8004022C C7AE005C */  lwc1  $f14, 0x5c($sp)
/* 01B630 80040230 0C00A70A */  jal   get_clamped_angle_diff
/* 01B634 80040234 46000306 */   mov.s $f12, $f0
/* 01B638 80040238 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* 01B63C 8004023C C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 01B640 80040240 8FA60050 */  lw    $a2, 0x50($sp)
/* 01B644 80040244 8FA70058 */  lw    $a3, 0x58($sp)
/* 01B648 80040248 0C00A720 */  jal   atan2
/* 01B64C 8004024C 46000505 */   abs.s $f20, $f0
/* 01B650 80040250 46000306 */  mov.s $f12, $f0
/* 01B654 80040254 0C00A70A */  jal   get_clamped_angle_diff
/* 01B658 80040258 4600C386 */   mov.s $f14, $f24
/* 01B65C 8004025C 3C0142B4 */  lui   $at, 0x42b4
/* 01B660 80040260 44819000 */  mtc1  $at, $f18
/* 01B664 80040264 3C0142B4 */  lui   $at, 0x42b4
/* 01B668 80040268 44818000 */  mtc1  $at, $f16
/* 01B66C 8004026C 00000000 */  nop   
/* 01B670 80040270 4610A03C */  c.lt.s $f20, $f16
/* 01B674 80040274 00000000 */  nop   
/* 01B678 80040278 45000008 */  bc1f  .L8004029C
/* 01B67C 8004027C 46000005 */   abs.s $f0, $f0
/* 01B680 80040280 4600803E */  c.le.s $f16, $f0
/* 01B684 80040284 00000000 */  nop   
/* 01B688 80040288 45030004 */  bc1tl .L8004029C
/* 01B68C 8004028C 24100001 */   addiu $s0, $zero, 1
/* 01B690 80040290 3C0142B4 */  lui   $at, 0x42b4
/* 01B694 80040294 44819000 */  mtc1  $at, $f18
/* 01B698 80040298 00000000 */  nop   
.L8004029C:
/* 01B69C 8004029C 4614903E */  c.le.s $f18, $f20
/* 01B6A0 800402A0 00000000 */  nop   
/* 01B6A4 800402A4 45000005 */  bc1f  .L800402BC
/* 01B6A8 800402A8 00000000 */   nop   
/* 01B6AC 800402AC 4612003C */  c.lt.s $f0, $f18
/* 01B6B0 800402B0 00000000 */  nop   
/* 01B6B4 800402B4 45030001 */  bc1tl .L800402BC
/* 01B6B8 800402B8 0000802D */   daddu $s0, $zero, $zero
.L800402BC:
/* 01B6BC 800402BC 3C0142B4 */  lui   $at, 0x42b4
/* 01B6C0 800402C0 44818000 */  mtc1  $at, $f16
/* 01B6C4 800402C4 00000000 */  nop   
/* 01B6C8 800402C8 4610A03C */  c.lt.s $f20, $f16
/* 01B6CC 800402CC 00000000 */  nop   
/* 01B6D0 800402D0 45000005 */  bc1f  .L800402E8
/* 01B6D4 800402D4 00000000 */   nop   
/* 01B6D8 800402D8 4610003C */  c.lt.s $f0, $f16
/* 01B6DC 800402DC 00000000 */  nop   
/* 01B6E0 800402E0 45030001 */  bc1tl .L800402E8
/* 01B6E4 800402E4 24100001 */   addiu $s0, $zero, 1
.L800402E8:
/* 01B6E8 800402E8 120000AA */  beqz  $s0, .L80040594
/* 01B6EC 800402EC 240400E1 */   addiu $a0, $zero, 0xe1
/* 01B6F0 800402F0 8E860028 */  lw    $a2, 0x28($s4)
/* 01B6F4 800402F4 8E87002C */  lw    $a3, 0x2c($s4)
/* 01B6F8 800402F8 C6800030 */  lwc1  $f0, 0x30($s4)
/* 01B6FC 800402FC 0000282D */  daddu $a1, $zero, $zero
/* 01B700 80040300 0C052757 */  jal   play_sound_at_position
/* 01B704 80040304 E7A00010 */   swc1  $f0, 0x10($sp)
/* 01B708 80040308 3C038011 */  lui   $v1, 0x8011
/* 01B70C 8004030C 9063F291 */  lbu   $v1, -0xd6f($v1)
/* 01B710 80040310 24020004 */  addiu $v0, $zero, 4
/* 01B714 80040314 A2620005 */  sb    $v0, 5($s3)
/* 01B718 80040318 0801015F */  j     func_8004057C
/* 01B71C 8004031C A2630006 */   sb    $v1, 6($s3)

/* 01B720 80040320 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 01B724 80040324 C7B20058 */  lwc1  $f18, 0x58($sp)
/* 01B728 80040328 E7B00034 */  swc1  $f16, 0x34($sp)
/* 01B72C 8004032C E7B20038 */  swc1  $f18, 0x38($sp)
/* 01B730 80040330 8E220000 */  lw    $v0, ($s1)
/* 01B734 80040334 3C030200 */  lui   $v1, 0x200
/* 01B738 80040338 00431024 */  and   $v0, $v0, $v1
/* 01B73C 8004033C 14400095 */  bnez  $v0, .L80040594
/* 01B740 80040340 00000000 */   nop   
/* 01B744 80040344 3C014160 */  lui   $at, 0x4160
/* 01B748 80040348 44818000 */  mtc1  $at, $f16
/* 01B74C 8004034C 00000000 */  nop   
/* 01B750 80040350 461E8000 */  add.s $f0, $f16, $f30
/* 01B754 80040354 4616003E */  c.le.s $f0, $f22
/* 01B758 80040358 00000000 */  nop   
/* 01B75C 8004035C 4501015A */  bc1t  .L800408C8
/* 01B760 80040360 00000000 */   nop   
/* 01B764 80040364 461CD600 */  add.s $f24, $f26, $f28
/* 01B768 80040368 C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01B76C 8004036C 4612C03C */  c.lt.s $f24, $f18
/* 01B770 80040370 00000000 */  nop   
/* 01B774 80040374 45010154 */  bc1t  .L800408C8
/* 01B778 80040378 00000000 */   nop   
/* 01B77C 8004037C 3C014214 */  lui   $at, 0x4214
/* 01B780 80040380 44818000 */  mtc1  $at, $f16
/* 01B784 80040384 00000000 */  nop   
/* 01B788 80040388 46109000 */  add.s $f0, $f18, $f16
/* 01B78C 8004038C 461A003C */  c.lt.s $f0, $f26
/* 01B790 80040390 00000000 */  nop   
/* 01B794 80040394 4501014C */  bc1t  .L800408C8
/* 01B798 80040398 00000000 */   nop   
/* 01B79C 8004039C 8FA60050 */  lw    $a2, 0x50($sp)
/* 01B7A0 800403A0 8FA70058 */  lw    $a3, 0x58($sp)
/* 01B7A4 800403A4 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* 01B7A8 800403A8 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 01B7AC 800403AC E7BA0040 */  swc1  $f26, 0x40($sp)
/* 01B7B0 800403B0 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 01B7B4 800403B4 0C00A720 */  jal   atan2
/* 01B7B8 800403B8 E7AE0044 */   swc1  $f14, 0x44($sp)
/* 01B7BC 800403BC 3C040001 */  lui   $a0, 1
/* 01B7C0 800403C0 03C0302D */  daddu $a2, $fp, $zero
/* 01B7C4 800403C4 02E0382D */  daddu $a3, $s7, $zero
/* 01B7C8 800403C8 8FA50064 */  lw    $a1, 0x64($sp)
/* 01B7CC 800403CC 461EF500 */  add.s $f20, $f30, $f30
/* 01B7D0 800403D0 E7B60010 */  swc1  $f22, 0x10($sp)
/* 01B7D4 800403D4 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01B7D8 800403D8 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 01B7DC 800403DC 0C0376B9 */  jal   func_800DDAE4
/* 01B7E0 800403E0 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 01B7E4 800403E4 10400016 */  beqz  $v0, .L80040440
/* 01B7E8 800403E8 00000000 */   nop   
/* 01B7EC 800403EC C7AC0050 */  lwc1  $f12, 0x50($sp)
/* 01B7F0 800403F0 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01B7F4 800403F4 8FA70030 */  lw    $a3, 0x30($sp)
/* 01B7F8 800403F8 C7AE0058 */  lwc1  $f14, 0x58($sp)
/* 01B7FC 800403FC C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01B800 80040400 46007406 */  mov.s $f16, $f14
/* 01B804 80040404 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 01B808 80040408 E7B20040 */  swc1  $f18, 0x40($sp)
/* 01B80C 8004040C 0C00A720 */  jal   atan2
/* 01B810 80040410 E7B00044 */   swc1  $f16, 0x44($sp)
/* 01B814 80040414 3C040001 */  lui   $a0, 1
/* 01B818 80040418 03C0302D */  daddu $a2, $fp, $zero
/* 01B81C 8004041C 8FA50064 */  lw    $a1, 0x64($sp)
/* 01B820 80040420 02E0382D */  daddu $a3, $s7, $zero
/* 01B824 80040424 E7B60010 */  swc1  $f22, 0x10($sp)
/* 01B828 80040428 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01B82C 8004042C E7BC0018 */  swc1  $f28, 0x18($sp)
/* 01B830 80040430 0C0376B9 */  jal   func_800DDAE4
/* 01B834 80040434 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 01B838 80040438 14400056 */  bnez  $v0, .L80040594
/* 01B83C 8004043C 00000000 */   nop   
.L80040440:
/* 01B840 80040440 3C014214 */  lui   $at, 0x4214
/* 01B844 80040444 44819000 */  mtc1  $at, $f18
/* 01B848 80040448 3C013F00 */  lui   $at, 0x3f00
/* 01B84C 8004044C 44818000 */  mtc1  $at, $f16
/* 01B850 80040450 00000000 */  nop   
/* 01B854 80040454 46109002 */  mul.s $f0, $f18, $f16
/* 01B858 80040458 00000000 */  nop   
/* 01B85C 8004045C C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01B860 80040460 46009000 */  add.s $f0, $f18, $f0
/* 01B864 80040464 4600C03C */  c.lt.s $f24, $f0
/* 01B868 80040468 00000000 */  nop   
/* 01B86C 8004046C 45000015 */  bc1f  .L800404C4
/* 01B870 80040470 0000802D */   daddu $s0, $zero, $zero
/* 01B874 80040474 928300B4 */  lbu   $v1, 0xb4($s4)
/* 01B878 80040478 2462FFF8 */  addiu $v0, $v1, -8
/* 01B87C 8004047C 2C420004 */  sltiu $v0, $v0, 4
/* 01B880 80040480 54400010 */  bnezl $v0, .L800404C4
/* 01B884 80040484 24100001 */   addiu $s0, $zero, 1
/* 01B888 80040488 00031600 */  sll   $v0, $v1, 0x18
/* 01B88C 8004048C 00021E03 */  sra   $v1, $v0, 0x18
/* 01B890 80040490 2402000D */  addiu $v0, $zero, 0xd
/* 01B894 80040494 10620007 */  beq   $v1, $v0, .L800404B4
/* 01B898 80040498 2402000E */   addiu $v0, $zero, 0xe
/* 01B89C 8004049C 10620005 */  beq   $v1, $v0, .L800404B4
/* 01B8A0 800404A0 2402000F */   addiu $v0, $zero, 0xf
/* 01B8A4 800404A4 10620003 */  beq   $v1, $v0, .L800404B4
/* 01B8A8 800404A8 24020010 */   addiu $v0, $zero, 0x10
/* 01B8AC 800404AC 14620005 */  bne   $v1, $v0, .L800404C4
/* 01B8B0 800404B0 00000000 */   nop   
.L800404B4:
/* 01B8B4 800404B4 24100001 */  addiu $s0, $zero, 1
/* 01B8B8 800404B8 3C013F00 */  lui   $at, 0x3f00
/* 01B8BC 800404BC 44818000 */  mtc1  $at, $f16
/* 01B8C0 800404C0 00000000 */  nop   
.L800404C4:
/* 01B8C4 800404C4 4610E002 */  mul.s $f0, $f28, $f16
/* 01B8C8 800404C8 00000000 */  nop   
/* 01B8CC 800404CC C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01B8D0 800404D0 3C014214 */  lui   $at, 0x4214
/* 01B8D4 800404D4 44818000 */  mtc1  $at, $f16
/* 01B8D8 800404D8 00000000 */  nop   
/* 01B8DC 800404DC 46109080 */  add.s $f2, $f18, $f16
/* 01B8E0 800404E0 4600D000 */  add.s $f0, $f26, $f0
/* 01B8E4 800404E4 4600103C */  c.lt.s $f2, $f0
/* 01B8E8 800404E8 00000000 */  nop   
/* 01B8EC 800404EC 45030001 */  bc1tl .L800404F4
/* 01B8F0 800404F0 0000802D */   daddu $s0, $zero, $zero
.L800404F4:
/* 01B8F4 800404F4 12000027 */  beqz  $s0, .L80040594
/* 01B8F8 800404F8 00000000 */   nop   
/* 01B8FC 800404FC 3C028011 */  lui   $v0, 0x8011
/* 01B900 80040500 8042F290 */  lb    $v0, -0xd70($v0)
/* 01B904 80040504 0440FD12 */  bltz  $v0, .L8003F950
/* 01B908 80040508 24030002 */   addiu $v1, $zero, 2
/* 01B90C 8004050C 928200B4 */  lbu   $v0, 0xb4($s4)
/* 01B910 80040510 A2630005 */  sb    $v1, 5($s3)
/* 01B914 80040514 2442FFFD */  addiu $v0, $v0, -3
/* 01B918 80040518 00021600 */  sll   $v0, $v0, 0x18
/* 01B91C 8004051C 00021E03 */  sra   $v1, $v0, 0x18
/* 01B920 80040520 2C62000E */  sltiu $v0, $v1, 0xe
/* 01B924 80040524 1040000D */  beqz  $v0, .L8004055C
/* 01B928 80040528 00031080 */   sll   $v0, $v1, 2
/* 01B92C 8004052C 3C01800A */  lui   $at, 0x800a
/* 01B930 80040530 00220821 */  addu  $at, $at, $v0
/* 01B934 80040534 8C228638 */  lw    $v0, -0x79c8($at)
/* 01B938 80040538 00400008 */  jr    $v0
/* 01B93C 8004053C 00000000 */   nop   
/* 01B940 80040540 08010157 */  j     func_8004055C
/* 01B944 80040544 A2600006 */   sb    $zero, 6($s3)

/* 01B948 80040548 24080001 */  addiu $t0, $zero, 1
/* 01B94C 8004054C 08010157 */  j     func_8004055C
/* 01B950 80040550 A2680006 */   sb    $t0, 6($s3)

/* 01B954 80040554 24020002 */  addiu $v0, $zero, 2
/* 01B958 80040558 A2620006 */  sb    $v0, 6($s3)
func_8004055C:
.L8004055C:
/* 01B95C 8004055C 240400E1 */  addiu $a0, $zero, 0xe1
/* 01B960 80040560 8E860028 */  lw    $a2, 0x28($s4)
/* 01B964 80040564 8E87002C */  lw    $a3, 0x2c($s4)
/* 01B968 80040568 C6800030 */  lwc1  $f0, 0x30($s4)
/* 01B96C 8004056C 0000282D */  daddu $a1, $zero, $zero
/* 01B970 80040570 0C052757 */  jal   play_sound_at_position
/* 01B974 80040574 E7A00010 */   swc1  $f0, 0x10($sp)
/* 01B978 80040578 24020002 */  addiu $v0, $zero, 2
func_8004057C:
/* 01B97C 8004057C A2220005 */  sb    $v0, 5($s1)
/* 01B980 80040580 24080001 */  addiu $t0, $zero, 1
/* 01B984 80040584 AE760088 */  sw    $s6, 0x88($s3)
/* 01B988 80040588 AE71008C */  sw    $s1, 0x8c($s3)
/* 01B98C 8004058C 0801023D */  j     func_800408F4
/* 01B990 80040590 A2680004 */   sb    $t0, 4($s3)

.L80040594:
/* 01B994 80040594 8E220000 */  lw    $v0, ($s1)
/* 01B998 80040598 3C030100 */  lui   $v1, 0x100
/* 01B99C 8004059C 00431024 */  and   $v0, $v0, $v1
/* 01B9A0 800405A0 144000C9 */  bnez  $v0, .L800408C8
/* 01B9A4 800405A4 00000000 */   nop   
/* 01B9A8 800405A8 C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 01B9AC 800405AC C7B00050 */  lwc1  $f16, 0x50($sp)
/* 01B9B0 800405B0 46100001 */  sub.s $f0, $f0, $f16
/* 01B9B4 800405B4 46000082 */  mul.s $f2, $f0, $f0
/* 01B9B8 800405B8 00000000 */  nop   
/* 01B9BC 800405BC C7B20058 */  lwc1  $f18, 0x58($sp)
/* 01B9C0 800405C0 C7A00030 */  lwc1  $f0, 0x30($sp)
/* 01B9C4 800405C4 46120001 */  sub.s $f0, $f0, $f18
/* 01B9C8 800405C8 46000002 */  mul.s $f0, $f0, $f0
/* 01B9CC 800405CC 00000000 */  nop   
/* 01B9D0 800405D0 46001300 */  add.s $f12, $f2, $f0
/* 01B9D4 800405D4 46006104 */  sqrt.s $f4, $f12
/* 01B9D8 800405D8 46042032 */  c.eq.s $f4, $f4
/* 01B9DC 800405DC 00000000 */  nop   
/* 01B9E0 800405E0 45010004 */  bc1t  .L800405F4
/* 01B9E4 800405E4 00000000 */   nop   
/* 01B9E8 800405E8 0C0187BC */  jal   sqrtf
/* 01B9EC 800405EC 00000000 */   nop   
/* 01B9F0 800405F0 46000106 */  mov.s $f4, $f0
.L800405F4:
/* 01B9F4 800405F4 3C014160 */  lui   $at, 0x4160
/* 01B9F8 800405F8 44818000 */  mtc1  $at, $f16
/* 01B9FC 800405FC 00000000 */  nop   
/* 01BA00 80040600 461E8000 */  add.s $f0, $f16, $f30
/* 01BA04 80040604 3C01800A */  lui   $at, 0x800a
/* 01BA08 80040608 D4228670 */  ldc1  $f2, -0x7990($at)
/* 01BA0C 8004060C 46000021 */  cvt.d.s $f0, $f0
/* 01BA10 80040610 46220002 */  mul.d $f0, $f0, $f2
/* 01BA14 80040614 00000000 */  nop   
/* 01BA18 80040618 46002586 */  mov.s $f22, $f4
/* 01BA1C 8004061C 4600B0A1 */  cvt.d.s $f2, $f22
/* 01BA20 80040620 4622003E */  c.le.d $f0, $f2
/* 01BA24 80040624 00000000 */  nop   
/* 01BA28 80040628 450100A7 */  bc1t  .L800408C8
/* 01BA2C 8004062C 00000000 */   nop   
/* 01BA30 80040630 461CD000 */  add.s $f0, $f26, $f28
/* 01BA34 80040634 C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01BA38 80040638 4612003C */  c.lt.s $f0, $f18
/* 01BA3C 8004063C 00000000 */  nop   
/* 01BA40 80040640 450100A1 */  bc1t  .L800408C8
/* 01BA44 80040644 00000000 */   nop   
/* 01BA48 80040648 3C014214 */  lui   $at, 0x4214
/* 01BA4C 8004064C 44818000 */  mtc1  $at, $f16
/* 01BA50 80040650 00000000 */  nop   
/* 01BA54 80040654 46109000 */  add.s $f0, $f18, $f16
/* 01BA58 80040658 461A003C */  c.lt.s $f0, $f26
/* 01BA5C 8004065C 00000000 */  nop   
/* 01BA60 80040660 45010099 */  bc1t  .L800408C8
/* 01BA64 80040664 00000000 */   nop   
/* 01BA68 80040668 8FA60050 */  lw    $a2, 0x50($sp)
/* 01BA6C 8004066C 8FA70058 */  lw    $a3, 0x58($sp)
/* 01BA70 80040670 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* 01BA74 80040674 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 01BA78 80040678 E7BA0040 */  swc1  $f26, 0x40($sp)
/* 01BA7C 8004067C E7AC003C */  swc1  $f12, 0x3c($sp)
/* 01BA80 80040680 0C00A720 */  jal   atan2
/* 01BA84 80040684 E7AE0044 */   swc1  $f14, 0x44($sp)
/* 01BA88 80040688 3C040001 */  lui   $a0, 1
/* 01BA8C 8004068C 03C0302D */  daddu $a2, $fp, $zero
/* 01BA90 80040690 02E0382D */  daddu $a3, $s7, $zero
/* 01BA94 80040694 8FA50064 */  lw    $a1, 0x64($sp)
/* 01BA98 80040698 461EF500 */  add.s $f20, $f30, $f30
/* 01BA9C 8004069C E7B60010 */  swc1  $f22, 0x10($sp)
/* 01BAA0 800406A0 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01BAA4 800406A4 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 01BAA8 800406A8 0C0376B9 */  jal   func_800DDAE4
/* 01BAAC 800406AC E7B4001C */   swc1  $f20, 0x1c($sp)
/* 01BAB0 800406B0 10400016 */  beqz  $v0, .L8004070C
/* 01BAB4 800406B4 0000802D */   daddu $s0, $zero, $zero
/* 01BAB8 800406B8 C7AC0050 */  lwc1  $f12, 0x50($sp)
/* 01BABC 800406BC 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01BAC0 800406C0 8FA70030 */  lw    $a3, 0x30($sp)
/* 01BAC4 800406C4 C7AE0058 */  lwc1  $f14, 0x58($sp)
/* 01BAC8 800406C8 C7B20054 */  lwc1  $f18, 0x54($sp)
/* 01BACC 800406CC 46007406 */  mov.s $f16, $f14
/* 01BAD0 800406D0 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 01BAD4 800406D4 E7B20040 */  swc1  $f18, 0x40($sp)
/* 01BAD8 800406D8 0C00A720 */  jal   atan2
/* 01BADC 800406DC E7B00044 */   swc1  $f16, 0x44($sp)
/* 01BAE0 800406E0 3C040001 */  lui   $a0, 1
/* 01BAE4 800406E4 03C0302D */  daddu $a2, $fp, $zero
/* 01BAE8 800406E8 8FA50064 */  lw    $a1, 0x64($sp)
/* 01BAEC 800406EC 02E0382D */  daddu $a3, $s7, $zero
/* 01BAF0 800406F0 E7B60010 */  swc1  $f22, 0x10($sp)
/* 01BAF4 800406F4 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01BAF8 800406F8 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 01BAFC 800406FC 0C0376B9 */  jal   func_800DDAE4
/* 01BB00 80040700 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 01BB04 80040704 14400070 */  bnez  $v0, .L800408C8
/* 01BB08 80040708 0000802D */   daddu $s0, $zero, $zero
.L8004070C:
/* 01BB0C 8004070C 0C03A752 */  jal   is_ability_active
/* 01BB10 80040710 24040028 */   addiu $a0, $zero, 0x28
/* 01BB14 80040714 1040000A */  beqz  $v0, .L80040740
/* 01BB18 80040718 00000000 */   nop   
/* 01BB1C 8004071C 8E220018 */  lw    $v0, 0x18($s1)
/* 01BB20 80040720 3C038011 */  lui   $v1, 0x8011
/* 01BB24 80040724 8063F299 */  lb    $v1, -0xd67($v1)
/* 01BB28 80040728 84420028 */  lh    $v0, 0x28($v0)
/* 01BB2C 8004072C 0062182A */  slt   $v1, $v1, $v0
/* 01BB30 80040730 14600003 */  bnez  $v1, .L80040740
/* 01BB34 80040734 00000000 */   nop   
/* 01BB38 80040738 82620012 */  lb    $v0, 0x12($s3)
/* 01BB3C 8004073C 2C500001 */  sltiu $s0, $v0, 1
.L80040740:
/* 01BB40 80040740 0C03A752 */  jal   is_ability_active
/* 01BB44 80040744 2404002D */   addiu $a0, $zero, 0x2d
/* 01BB48 80040748 54400001 */  bnezl $v0, .L80040750
/* 01BB4C 8004074C 24100001 */   addiu $s0, $zero, 1
.L80040750:
/* 01BB50 80040750 8E820004 */  lw    $v0, 4($s4)
/* 01BB54 80040754 3C030001 */  lui   $v1, 1
/* 01BB58 80040758 00431024 */  and   $v0, $v0, $v1
/* 01BB5C 8004075C 10400007 */  beqz  $v0, .L8004077C
/* 01BB60 80040760 3C032000 */   lui   $v1, 0x2000
/* 01BB64 80040764 8E220000 */  lw    $v0, ($s1)
/* 01BB68 80040768 00431024 */  and   $v0, $v0, $v1
/* 01BB6C 8004076C 14400004 */  bnez  $v0, .L80040780
/* 01BB70 80040770 3C03FFFD */   lui   $v1, 0xfffd
/* 01BB74 80040774 1600FC7E */  bnez  $s0, .L8003F970
/* 01BB78 80040778 240400E1 */   addiu $a0, $zero, 0xe1
.L8004077C:
/* 01BB7C 8004077C 3C03FFFD */  lui   $v1, 0xfffd
.L80040780:
/* 01BB80 80040780 3463FFFF */  ori   $v1, $v1, 0xffff
/* 01BB84 80040784 8E820004 */  lw    $v0, 4($s4)
/* 01BB88 80040788 24080001 */  addiu $t0, $zero, 1
/* 01BB8C 8004078C A2680005 */  sb    $t0, 5($s3)
/* 01BB90 80040790 00431024 */  and   $v0, $v0, $v1
/* 01BB94 80040794 AE820004 */  sw    $v0, 4($s4)
/* 01BB98 80040798 A2280005 */  sb    $t0, 5($s1)
/* 01BB9C 8004079C AE760088 */  sw    $s6, 0x88($s3)
/* 01BBA0 800407A0 AE71008C */  sw    $s1, 0x8c($s3)
/* 01BBA4 800407A4 C6460038 */  lwc1  $f6, 0x38($s2)
/* 01BBA8 800407A8 C68A0028 */  lwc1  $f10, 0x28($s4)
/* 01BBAC 800407AC 460A3181 */  sub.s $f6, $f6, $f10
/* 01BBB0 800407B0 3C013F00 */  lui   $at, 0x3f00
/* 01BBB4 800407B4 44818000 */  mtc1  $at, $f16
/* 01BBB8 800407B8 00000000 */  nop   
/* 01BBBC 800407BC 46103182 */  mul.s $f6, $f6, $f16
/* 01BBC0 800407C0 00000000 */  nop   
/* 01BBC4 800407C4 864200A8 */  lh    $v0, 0xa8($s2)
/* 01BBC8 800407C8 C644003C */  lwc1  $f4, 0x3c($s2)
/* 01BBCC 800407CC 44820000 */  mtc1  $v0, $f0
/* 01BBD0 800407D0 00000000 */  nop   
/* 01BBD4 800407D4 46800020 */  cvt.s.w $f0, $f0
/* 01BBD8 800407D8 46002100 */  add.s $f4, $f4, $f0
/* 01BBDC 800407DC 868200B0 */  lh    $v0, 0xb0($s4)
/* 01BBE0 800407E0 C688002C */  lwc1  $f8, 0x2c($s4)
/* 01BBE4 800407E4 44820000 */  mtc1  $v0, $f0
/* 01BBE8 800407E8 00000000 */  nop   
/* 01BBEC 800407EC 46800020 */  cvt.s.w $f0, $f0
/* 01BBF0 800407F0 46004000 */  add.s $f0, $f8, $f0
/* 01BBF4 800407F4 46002101 */  sub.s $f4, $f4, $f0
/* 01BBF8 800407F8 46102102 */  mul.s $f4, $f4, $f16
/* 01BBFC 800407FC 00000000 */  nop   
/* 01BC00 80040800 C6820030 */  lwc1  $f2, 0x30($s4)
/* 01BC04 80040804 C6400040 */  lwc1  $f0, 0x40($s2)
/* 01BC08 80040808 46020001 */  sub.s $f0, $f0, $f2
/* 01BC0C 8004080C 46100002 */  mul.s $f0, $f0, $f16
/* 01BC10 80040810 00000000 */  nop   
/* 01BC14 80040814 46065280 */  add.s $f10, $f10, $f6
/* 01BC18 80040818 46044200 */  add.s $f8, $f8, $f4
/* 01BC1C 8004081C 24040003 */  addiu $a0, $zero, 3
/* 01BC20 80040820 44055000 */  mfc1  $a1, $f10
/* 01BC24 80040824 46001080 */  add.s $f2, $f2, $f0
/* 01BC28 80040828 3C01BF80 */  lui   $at, 0xbf80
/* 01BC2C 8004082C 44810000 */  mtc1  $at, $f0
/* 01BC30 80040830 44064000 */  mfc1  $a2, $f8
/* 01BC34 80040834 44071000 */  mfc1  $a3, $f2
/* 01BC38 80040838 0080102D */  daddu $v0, $a0, $zero
/* 01BC3C 8004083C AFA5003C */  sw    $a1, 0x3c($sp)
/* 01BC40 80040840 AFA60040 */  sw    $a2, 0x40($sp)
/* 01BC44 80040844 AFA70044 */  sw    $a3, 0x44($sp)
/* 01BC48 80040848 AFA00010 */  sw    $zero, 0x10($sp)
/* 01BC4C 8004084C E7A00014 */  swc1  $f0, 0x14($sp)
/* 01BC50 80040850 AFA00018 */  sw    $zero, 0x18($sp)
/* 01BC54 80040854 0C01C064 */  jal   func_80070190
/* 01BC58 80040858 AFA2001C */   sw    $v0, 0x1c($sp)
/* 01BC5C 8004085C 82220007 */  lb    $v0, 7($s1)
/* 01BC60 80040860 10400005 */  beqz  $v0, .L80040878
/* 01BC64 80040864 0000802D */   daddu $s0, $zero, $zero
/* 01BC68 80040868 0C03A752 */  jal   is_ability_active
/* 01BC6C 8004086C 24040011 */   addiu $a0, $zero, 0x11
/* 01BC70 80040870 2C420001 */  sltiu $v0, $v0, 1
/* 01BC74 80040874 00028040 */  sll   $s0, $v0, 1
.L80040878:
/* 01BC78 80040878 0C03A752 */  jal   is_ability_active
/* 01BC7C 8004087C 2404002A */   addiu $a0, $zero, 0x2a
/* 01BC80 80040880 5040001C */  beql  $v0, $zero, .L800408F4
/* 01BC84 80040884 A2700004 */   sb    $s0, 4($s3)
/* 01BC88 80040888 8E220018 */  lw    $v0, 0x18($s1)
/* 01BC8C 8004088C 3C038011 */  lui   $v1, 0x8011
/* 01BC90 80040890 8063F299 */  lb    $v1, -0xd67($v1)
/* 01BC94 80040894 84420028 */  lh    $v0, 0x28($v0)
/* 01BC98 80040898 0062182A */  slt   $v1, $v1, $v0
/* 01BC9C 8004089C 54600015 */  bnezl $v1, .L800408F4
/* 01BCA0 800408A0 A2700004 */   sb    $s0, 4($s3)
/* 01BCA4 800408A4 8E220000 */  lw    $v0, ($s1)
/* 01BCA8 800408A8 30420040 */  andi  $v0, $v0, 0x40
/* 01BCAC 800408AC 54400011 */  bnezl $v0, .L800408F4
/* 01BCB0 800408B0 A2700004 */   sb    $s0, 4($s3)
/* 01BCB4 800408B4 82620012 */  lb    $v0, 0x12($s3)
/* 01BCB8 800408B8 50400001 */  beql  $v0, $zero, .L800408C0
/* 01BCBC 800408BC 0000802D */   daddu $s0, $zero, $zero
.L800408C0:
/* 01BCC0 800408C0 0801023D */  j     func_800408F4
/* 01BCC4 800408C4 A2700004 */   sb    $s0, 4($s3)

.L800408C8:
/* 01BCC8 800408C8 8EC20000 */  lw    $v0, ($s6)
/* 01BCCC 800408CC 26B50001 */  addiu $s5, $s5, 1
/* 01BCD0 800408D0 02A2102A */  slt   $v0, $s5, $v0
/* 01BCD4 800408D4 1440FC79 */  bnez  $v0, .L8003FABC
/* 01BCD8 800408D8 00151080 */   sll   $v0, $s5, 2
/* 01BCDC 800408DC 8FA8004C */  lw    $t0, 0x4c($sp)
.L800408E0:
/* 01BCE0 800408E0 8262001C */  lb    $v0, 0x1c($s3)
/* 01BCE4 800408E4 25080001 */  addiu $t0, $t0, 1
/* 01BCE8 800408E8 0102102A */  slt   $v0, $t0, $v0
/* 01BCEC 800408EC 1440FC67 */  bnez  $v0, .L8003FA8C
/* 01BCF0 800408F0 AFA8004C */   sw    $t0, 0x4c($sp)
func_800408F4:
.L800408F4:
/* 01BCF4 800408F4 82630005 */  lb    $v1, 5($s3)
.L800408F8:
/* 01BCF8 800408F8 2C620007 */  sltiu $v0, $v1, 7
/* 01BCFC 800408FC 10400285 */  beqz  $v0, .L80041314
/* 01BD00 80040900 00031080 */   sll   $v0, $v1, 2
/* 01BD04 80040904 3C01800A */  lui   $at, 0x800a
/* 01BD08 80040908 00220821 */  addu  $at, $at, $v0
/* 01BD0C 8004090C 8C228678 */  lw    $v0, -0x7988($at)
/* 01BD10 80040910 00400008 */  jr    $v0
/* 01BD14 80040914 00000000 */   nop   
/* 01BD18 80040918 8E71008C */  lw    $s1, 0x8c($s3)
/* 01BD1C 8004091C 8E22003C */  lw    $v0, 0x3c($s1)
/* 01BD20 80040920 10400004 */  beqz  $v0, .L80040934
/* 01BD24 80040924 0220B82D */   daddu $s7, $s1, $zero
/* 01BD28 80040928 8E240054 */  lw    $a0, 0x54($s1)
/* 01BD2C 8004092C 0C0B1108 */  jal   suspend_all_script
/* 01BD30 80040930 00000000 */   nop   
.L80040934:
/* 01BD34 80040934 8E220044 */  lw    $v0, 0x44($s1)
/* 01BD38 80040938 10400003 */  beqz  $v0, .L80040948
/* 01BD3C 8004093C 00000000 */   nop   
/* 01BD40 80040940 0C0B1108 */  jal   suspend_all_script
/* 01BD44 80040944 8E24005C */   lw    $a0, 0x5c($s1)
.L80040948:
/* 01BD48 80040948 8E760088 */  lw    $s6, 0x88($s3)
/* 01BD4C 8004094C 8EC20000 */  lw    $v0, ($s6)
/* 01BD50 80040950 1840002B */  blez  $v0, .L80040A00
/* 01BD54 80040954 0000A82D */   daddu $s5, $zero, $zero
/* 01BD58 80040958 24120001 */  addiu $s2, $zero, 1
/* 01BD5C 8004095C 02C0802D */  daddu $s0, $s6, $zero
.L80040960:
/* 01BD60 80040960 8E110004 */  lw    $s1, 4($s0)
/* 01BD64 80040964 12200021 */  beqz  $s1, .L800409EC
/* 01BD68 80040968 00000000 */   nop   
/* 01BD6C 8004096C 8E230000 */  lw    $v1, ($s1)
/* 01BD70 80040970 30620008 */  andi  $v0, $v1, 8
/* 01BD74 80040974 10400004 */  beqz  $v0, .L80040988
/* 01BD78 80040978 30620020 */   andi  $v0, $v1, 0x20
/* 01BD7C 8004097C 8E62008C */  lw    $v0, 0x8c($s3)
/* 01BD80 80040980 1622001A */  bne   $s1, $v0, .L800409EC
/* 01BD84 80040984 30620020 */   andi  $v0, $v1, 0x20
.L80040988:
/* 01BD88 80040988 14400018 */  bnez  $v0, .L800409EC
/* 01BD8C 8004098C 00000000 */   nop   
/* 01BD90 80040990 8EE20000 */  lw    $v0, ($s7)
/* 01BD94 80040994 30420040 */  andi  $v0, $v0, 0x40
/* 01BD98 80040998 10400004 */  beqz  $v0, .L800409AC
/* 01BD9C 8004099C 00000000 */   nop   
/* 01BDA0 800409A0 8E62008C */  lw    $v0, 0x8c($s3)
/* 01BDA4 800409A4 16220011 */  bne   $s1, $v0, .L800409EC
/* 01BDA8 800409A8 00000000 */   nop   
.L800409AC:
/* 01BDAC 800409AC 8E220028 */  lw    $v0, 0x28($s1)
/* 01BDB0 800409B0 1040000E */  beqz  $v0, .L800409EC
/* 01BDB4 800409B4 2405000A */   addiu $a1, $zero, 0xa
/* 01BDB8 800409B8 0040202D */  daddu $a0, $v0, $zero
/* 01BDBC 800409BC 0000302D */  daddu $a2, $zero, $zero
/* 01BDC0 800409C0 0C0B0CF8 */  jal   start_script
/* 01BDC4 800409C4 A2320005 */   sb    $s2, 5($s1)
/* 01BDC8 800409C8 0040202D */  daddu $a0, $v0, $zero
/* 01BDCC 800409CC AE240040 */  sw    $a0, 0x40($s1)
/* 01BDD0 800409D0 8C820144 */  lw    $v0, 0x144($a0)
/* 01BDD4 800409D4 AE220058 */  sw    $v0, 0x58($s1)
/* 01BDD8 800409D8 AC910148 */  sw    $s1, 0x148($a0)
/* 01BDDC 800409DC 86220008 */  lh    $v0, 8($s1)
/* 01BDE0 800409E0 AC82014C */  sw    $v0, 0x14c($a0)
/* 01BDE4 800409E4 92220006 */  lbu   $v0, 6($s1)
/* 01BDE8 800409E8 A0820004 */  sb    $v0, 4($a0)
.L800409EC:
/* 01BDEC 800409EC 8EC20000 */  lw    $v0, ($s6)
/* 01BDF0 800409F0 26B50001 */  addiu $s5, $s5, 1
/* 01BDF4 800409F4 02A2102A */  slt   $v0, $s5, $v0
/* 01BDF8 800409F8 1440FFD9 */  bnez  $v0, .L80040960
/* 01BDFC 800409FC 26100004 */   addiu $s0, $s0, 4
.L80040A00:
/* 01BE00 80040A00 0C03805E */  jal   func_800E0178
/* 01BE04 80040A04 00000000 */   nop   
/* 01BE08 80040A08 0C03BD8A */  jal   func_800EF628
/* 01BE0C 80040A0C 00000000 */   nop   
/* 01BE10 80040A10 928300B4 */  lbu   $v1, 0xb4($s4)
/* 01BE14 80040A14 2462FFF1 */  addiu $v0, $v1, -0xf
/* 01BE18 80040A18 2C420002 */  sltiu $v0, $v0, 2
/* 01BE1C 80040A1C 1440000A */  bnez  $v0, .L80040A48
/* 01BE20 80040A20 00031600 */   sll   $v0, $v1, 0x18
/* 01BE24 80040A24 00021E03 */  sra   $v1, $v0, 0x18
/* 01BE28 80040A28 2402000D */  addiu $v0, $zero, 0xd
/* 01BE2C 80040A2C 10620006 */  beq   $v1, $v0, .L80040A48
/* 01BE30 80040A30 2402000E */   addiu $v0, $zero, 0xe
/* 01BE34 80040A34 10620004 */  beq   $v1, $v0, .L80040A48
/* 01BE38 80040A38 3C030004 */   lui   $v1, 4
/* 01BE3C 80040A3C 8E820000 */  lw    $v0, ($s4)
/* 01BE40 80040A40 00431025 */  or    $v0, $v0, $v1
/* 01BE44 80040A44 AE820000 */  sw    $v0, ($s4)
.L80040A48:
/* 01BE48 80040A48 0C03A752 */  jal   is_ability_active
/* 01BE4C 80040A4C 24040011 */   addiu $a0, $zero, 0x11
/* 01BE50 80040A50 14400013 */  bnez  $v0, .L80040AA0
/* 01BE54 80040A54 24020003 */   addiu $v0, $zero, 3
/* 01BE58 80040A58 82630004 */  lb    $v1, 4($s3)
/* 01BE5C 80040A5C 24020002 */  addiu $v0, $zero, 2
/* 01BE60 80040A60 1462000F */  bne   $v1, $v0, .L80040AA0
/* 01BE64 80040A64 24020003 */   addiu $v0, $zero, 3
/* 01BE68 80040A68 0C039769 */  jal   set_action_state
/* 01BE6C 80040A6C 2404001B */   addiu $a0, $zero, 0x1b
/* 01BE70 80040A70 86240008 */  lh    $a0, 8($s1)
/* 01BE74 80040A74 0C00EABB */  jal   get_npc_unsafe
/* 01BE78 80040A78 00000000 */   nop   
/* 01BE7C 80040A7C 0040902D */  daddu $s2, $v0, $zero
/* 01BE80 80040A80 C6400040 */  lwc1  $f0, 0x40($s2)
/* 01BE84 80040A84 240400E1 */  addiu $a0, $zero, 0xe1
/* 01BE88 80040A88 E7A00010 */  swc1  $f0, 0x10($sp)
/* 01BE8C 80040A8C 8E460038 */  lw    $a2, 0x38($s2)
/* 01BE90 80040A90 8E47003C */  lw    $a3, 0x3c($s2)
/* 01BE94 80040A94 0C052757 */  jal   play_sound_at_position
/* 01BE98 80040A98 0000282D */   daddu $a1, $zero, $zero
/* 01BE9C 80040A9C 24020003 */  addiu $v0, $zero, 3
.L80040AA0:
/* 01BEA0 80040AA0 A2600012 */  sb    $zero, 0x12($s3)
/* 01BEA4 80040AA4 3C01800A */  lui   $at, 0x800a
/* 01BEA8 80040AA8 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01BEAC 80040AAC 24020001 */  addiu $v0, $zero, 1
/* 01BEB0 80040AB0 AE600090 */  sw    $zero, 0x90($s3)
/* 01BEB4 80040AB4 080104C1 */  j     func_80041304
/* 01BEB8 80040AB8 AE600094 */   sw    $zero, 0x94($s3)

/* 01BEBC 80040ABC 8E71008C */  lw    $s1, 0x8c($s3)
/* 01BEC0 80040AC0 8E22003C */  lw    $v0, 0x3c($s1)
/* 01BEC4 80040AC4 10400004 */  beqz  $v0, .L80040AD8
/* 01BEC8 80040AC8 0220B82D */   daddu $s7, $s1, $zero
/* 01BECC 80040ACC 8E240054 */  lw    $a0, 0x54($s1)
/* 01BED0 80040AD0 0C0B1108 */  jal   suspend_all_script
/* 01BED4 80040AD4 00000000 */   nop   
.L80040AD8:
/* 01BED8 80040AD8 8E220044 */  lw    $v0, 0x44($s1)
/* 01BEDC 80040ADC 10400003 */  beqz  $v0, .L80040AEC
/* 01BEE0 80040AE0 00000000 */   nop   
/* 01BEE4 80040AE4 0C0B1108 */  jal   suspend_all_script
/* 01BEE8 80040AE8 8E24005C */   lw    $a0, 0x5c($s1)
.L80040AEC:
/* 01BEEC 80040AEC 8E760088 */  lw    $s6, 0x88($s3)
/* 01BEF0 80040AF0 8EC20000 */  lw    $v0, ($s6)
/* 01BEF4 80040AF4 1840002B */  blez  $v0, .L80040BA4
/* 01BEF8 80040AF8 0000A82D */   daddu $s5, $zero, $zero
/* 01BEFC 80040AFC 24120003 */  addiu $s2, $zero, 3
/* 01BF00 80040B00 02C0802D */  daddu $s0, $s6, $zero
.L80040B04:
/* 01BF04 80040B04 8E110004 */  lw    $s1, 4($s0)
/* 01BF08 80040B08 12200021 */  beqz  $s1, .L80040B90
/* 01BF0C 80040B0C 00000000 */   nop   
/* 01BF10 80040B10 8E230000 */  lw    $v1, ($s1)
/* 01BF14 80040B14 30620008 */  andi  $v0, $v1, 8
/* 01BF18 80040B18 10400004 */  beqz  $v0, .L80040B2C
/* 01BF1C 80040B1C 30620020 */   andi  $v0, $v1, 0x20
/* 01BF20 80040B20 8E62008C */  lw    $v0, 0x8c($s3)
/* 01BF24 80040B24 1622001A */  bne   $s1, $v0, .L80040B90
/* 01BF28 80040B28 30620020 */   andi  $v0, $v1, 0x20
.L80040B2C:
/* 01BF2C 80040B2C 14400018 */  bnez  $v0, .L80040B90
/* 01BF30 80040B30 00000000 */   nop   
/* 01BF34 80040B34 8EE20000 */  lw    $v0, ($s7)
/* 01BF38 80040B38 30420040 */  andi  $v0, $v0, 0x40
/* 01BF3C 80040B3C 10400004 */  beqz  $v0, .L80040B50
/* 01BF40 80040B40 00000000 */   nop   
/* 01BF44 80040B44 8E62008C */  lw    $v0, 0x8c($s3)
/* 01BF48 80040B48 16220011 */  bne   $s1, $v0, .L80040B90
/* 01BF4C 80040B4C 00000000 */   nop   
.L80040B50:
/* 01BF50 80040B50 8E220028 */  lw    $v0, 0x28($s1)
/* 01BF54 80040B54 1040000E */  beqz  $v0, .L80040B90
/* 01BF58 80040B58 2405000A */   addiu $a1, $zero, 0xa
/* 01BF5C 80040B5C 0040202D */  daddu $a0, $v0, $zero
/* 01BF60 80040B60 0000302D */  daddu $a2, $zero, $zero
/* 01BF64 80040B64 0C0B0CF8 */  jal   start_script
/* 01BF68 80040B68 A2320005 */   sb    $s2, 5($s1)
/* 01BF6C 80040B6C 0040202D */  daddu $a0, $v0, $zero
/* 01BF70 80040B70 AE240040 */  sw    $a0, 0x40($s1)
/* 01BF74 80040B74 8C820144 */  lw    $v0, 0x144($a0)
/* 01BF78 80040B78 AE220058 */  sw    $v0, 0x58($s1)
/* 01BF7C 80040B7C AC910148 */  sw    $s1, 0x148($a0)
/* 01BF80 80040B80 86220008 */  lh    $v0, 8($s1)
/* 01BF84 80040B84 AC82014C */  sw    $v0, 0x14c($a0)
/* 01BF88 80040B88 92220006 */  lbu   $v0, 6($s1)
/* 01BF8C 80040B8C A0820004 */  sb    $v0, 4($a0)
.L80040B90:
/* 01BF90 80040B90 8EC20000 */  lw    $v0, ($s6)
/* 01BF94 80040B94 26B50001 */  addiu $s5, $s5, 1
/* 01BF98 80040B98 02A2102A */  slt   $v0, $s5, $v0
/* 01BF9C 80040B9C 1440FFD9 */  bnez  $v0, .L80040B04
/* 01BFA0 80040BA0 26100004 */   addiu $s0, $s0, 4
.L80040BA4:
/* 01BFA4 80040BA4 0C03805E */  jal   func_800E0178
/* 01BFA8 80040BA8 00000000 */   nop   
/* 01BFAC 80040BAC 0C03BD8A */  jal   func_800EF628
/* 01BFB0 80040BB0 00000000 */   nop   
/* 01BFB4 80040BB4 24020003 */  addiu $v0, $zero, 3
/* 01BFB8 80040BB8 A2600012 */  sb    $zero, 0x12($s3)
/* 01BFBC 80040BBC 3C01800A */  lui   $at, 0x800a
/* 01BFC0 80040BC0 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01BFC4 80040BC4 24020001 */  addiu $v0, $zero, 1
/* 01BFC8 80040BC8 AE600090 */  sw    $zero, 0x90($s3)
/* 01BFCC 80040BCC AE600094 */  sw    $zero, 0x94($s3)
/* 01BFD0 80040BD0 3C01800A */  lui   $at, 0x800a
/* 01BFD4 80040BD4 AC22A678 */  sw    $v0, -0x5988($at)
/* 01BFD8 80040BD8 8E820000 */  lw    $v0, ($s4)
/* 01BFDC 80040BDC 3C030004 */  lui   $v1, 4
/* 01BFE0 80040BE0 3C01800A */  lui   $at, 0x800a
/* 01BFE4 80040BE4 AC20A5D0 */  sw    $zero, -0x5a30($at)
/* 01BFE8 80040BE8 00431025 */  or    $v0, $v0, $v1
/* 01BFEC 80040BEC 080104C5 */  j     func_80041314
/* 01BFF0 80040BF0 AE820000 */   sw    $v0, ($s4)

/* 01BFF4 80040BF4 8E71008C */  lw    $s1, 0x8c($s3)
/* 01BFF8 80040BF8 8E22003C */  lw    $v0, 0x3c($s1)
/* 01BFFC 80040BFC 10400004 */  beqz  $v0, .L80040C10
/* 01C000 80040C00 0220B82D */   daddu $s7, $s1, $zero
/* 01C004 80040C04 8E240054 */  lw    $a0, 0x54($s1)
/* 01C008 80040C08 0C0B1108 */  jal   suspend_all_script
/* 01C00C 80040C0C 00000000 */   nop   
.L80040C10:
/* 01C010 80040C10 8E220044 */  lw    $v0, 0x44($s1)
/* 01C014 80040C14 10400003 */  beqz  $v0, .L80040C24
/* 01C018 80040C18 00000000 */   nop   
/* 01C01C 80040C1C 0C0B1108 */  jal   suspend_all_script
/* 01C020 80040C20 8E24005C */   lw    $a0, 0x5c($s1)
.L80040C24:
/* 01C024 80040C24 8E760088 */  lw    $s6, 0x88($s3)
/* 01C028 80040C28 0000802D */  daddu $s0, $zero, $zero
/* 01C02C 80040C2C 8EC20000 */  lw    $v0, ($s6)
/* 01C030 80040C30 18400070 */  blez  $v0, .L80040DF4
/* 01C034 80040C34 0200A82D */   daddu $s5, $s0, $zero
/* 01C038 80040C38 241E0003 */  addiu $fp, $zero, 3
/* 01C03C 80040C3C 3C013F00 */  lui   $at, 0x3f00
/* 01C040 80040C40 4481A000 */  mtc1  $at, $f20
/* 01C044 80040C44 3C01BF80 */  lui   $at, 0xbf80
/* 01C048 80040C48 4481B000 */  mtc1  $at, $f22
/* 01C04C 80040C4C 00151080 */  sll   $v0, $s5, 2
.L80040C50:
/* 01C050 80040C50 02C21021 */  addu  $v0, $s6, $v0
/* 01C054 80040C54 8C510004 */  lw    $s1, 4($v0)
/* 01C058 80040C58 12200061 */  beqz  $s1, .L80040DE0
/* 01C05C 80040C5C 00000000 */   nop   
/* 01C060 80040C60 8E230000 */  lw    $v1, ($s1)
/* 01C064 80040C64 30620008 */  andi  $v0, $v1, 8
/* 01C068 80040C68 10400004 */  beqz  $v0, .L80040C7C
/* 01C06C 80040C6C 30620020 */   andi  $v0, $v1, 0x20
/* 01C070 80040C70 8E62008C */  lw    $v0, 0x8c($s3)
/* 01C074 80040C74 1622005A */  bne   $s1, $v0, .L80040DE0
/* 01C078 80040C78 30620020 */   andi  $v0, $v1, 0x20
.L80040C7C:
/* 01C07C 80040C7C 14400058 */  bnez  $v0, .L80040DE0
/* 01C080 80040C80 00000000 */   nop   
/* 01C084 80040C84 8EE20000 */  lw    $v0, ($s7)
/* 01C088 80040C88 30420040 */  andi  $v0, $v0, 0x40
/* 01C08C 80040C8C 10400004 */  beqz  $v0, .L80040CA0
/* 01C090 80040C90 00000000 */   nop   
/* 01C094 80040C94 8E62008C */  lw    $v0, 0x8c($s3)
/* 01C098 80040C98 16220051 */  bne   $s1, $v0, .L80040DE0
/* 01C09C 80040C9C 00000000 */   nop   
.L80040CA0:
/* 01C0A0 80040CA0 8E220028 */  lw    $v0, 0x28($s1)
/* 01C0A4 80040CA4 1040001F */  beqz  $v0, .L80040D24
/* 01C0A8 80040CA8 2405000A */   addiu $a1, $zero, 0xa
/* 01C0AC 80040CAC 0000302D */  daddu $a2, $zero, $zero
/* 01C0B0 80040CB0 0040202D */  daddu $a0, $v0, $zero
/* 01C0B4 80040CB4 24020002 */  addiu $v0, $zero, 2
/* 01C0B8 80040CB8 0C0B0CF8 */  jal   start_script
/* 01C0BC 80040CBC A2220005 */   sb    $v0, 5($s1)
/* 01C0C0 80040CC0 0040202D */  daddu $a0, $v0, $zero
/* 01C0C4 80040CC4 AE240040 */  sw    $a0, 0x40($s1)
/* 01C0C8 80040CC8 8C820144 */  lw    $v0, 0x144($a0)
/* 01C0CC 80040CCC AE220058 */  sw    $v0, 0x58($s1)
/* 01C0D0 80040CD0 AC910148 */  sw    $s1, 0x148($a0)
/* 01C0D4 80040CD4 86220008 */  lh    $v0, 8($s1)
/* 01C0D8 80040CD8 AC82014C */  sw    $v0, 0x14c($a0)
/* 01C0DC 80040CDC 92220006 */  lbu   $v0, 6($s1)
/* 01C0E0 80040CE0 A0820004 */  sb    $v0, 4($a0)
/* 01C0E4 80040CE4 0C00EABB */  jal   get_npc_unsafe
/* 01C0E8 80040CE8 86240008 */   lh    $a0, 8($s1)
/* 01C0EC 80040CEC 0040902D */  daddu $s2, $v0, $zero
/* 01C0F0 80040CF0 C6460038 */  lwc1  $f6, 0x38($s2)
/* 01C0F4 80040CF4 C68A0028 */  lwc1  $f10, 0x28($s4)
/* 01C0F8 80040CF8 460A3181 */  sub.s $f6, $f6, $f10
/* 01C0FC 80040CFC 46143182 */  mul.s $f6, $f6, $f20
/* 01C100 80040D00 00000000 */  nop   
/* 01C104 80040D04 864200A8 */  lh    $v0, 0xa8($s2)
/* 01C108 80040D08 C642003C */  lwc1  $f2, 0x3c($s2)
/* 01C10C 80040D0C 44820000 */  mtc1  $v0, $f0
/* 01C110 80040D10 00000000 */  nop   
/* 01C114 80040D14 46800020 */  cvt.s.w $f0, $f0
/* 01C118 80040D18 868200B0 */  lh    $v0, 0xb0($s4)
/* 01C11C 80040D1C 0801035B */  j     func_80040D6C
/* 01C120 80040D20 46001080 */   add.s $f2, $f2, $f0

.L80040D24:
/* 01C124 80040D24 30620001 */  andi  $v0, $v1, 1
/* 01C128 80040D28 1440002D */  bnez  $v0, .L80040DE0
/* 01C12C 80040D2C 00000000 */   nop   
/* 01C130 80040D30 0C00EABB */  jal   get_npc_unsafe
/* 01C134 80040D34 86240008 */   lh    $a0, 8($s1)
/* 01C138 80040D38 0040902D */  daddu $s2, $v0, $zero
/* 01C13C 80040D3C C4460038 */  lwc1  $f6, 0x38($v0)
/* 01C140 80040D40 C68A0028 */  lwc1  $f10, 0x28($s4)
/* 01C144 80040D44 460A3181 */  sub.s $f6, $f6, $f10
/* 01C148 80040D48 46143182 */  mul.s $f6, $f6, $f20
/* 01C14C 80040D4C 00000000 */  nop   
/* 01C150 80040D50 864200A8 */  lh    $v0, 0xa8($s2)
/* 01C154 80040D54 C642003C */  lwc1  $f2, 0x3c($s2)
/* 01C158 80040D58 44820000 */  mtc1  $v0, $f0
/* 01C15C 80040D5C 00000000 */  nop   
/* 01C160 80040D60 46800020 */  cvt.s.w $f0, $f0
/* 01C164 80040D64 868200B0 */  lh    $v0, 0xb0($s4)
/* 01C168 80040D68 46001080 */  add.s $f2, $f2, $f0
func_80040D6C:
/* 01C16C 80040D6C C688002C */  lwc1  $f8, 0x2c($s4)
/* 01C170 80040D70 44820000 */  mtc1  $v0, $f0
/* 01C174 80040D74 00000000 */  nop   
/* 01C178 80040D78 46800020 */  cvt.s.w $f0, $f0
/* 01C17C 80040D7C 46004000 */  add.s $f0, $f8, $f0
/* 01C180 80040D80 46001081 */  sub.s $f2, $f2, $f0
/* 01C184 80040D84 46141082 */  mul.s $f2, $f2, $f20
/* 01C188 80040D88 00000000 */  nop   
/* 01C18C 80040D8C C6840030 */  lwc1  $f4, 0x30($s4)
/* 01C190 80040D90 C6400040 */  lwc1  $f0, 0x40($s2)
/* 01C194 80040D94 46040001 */  sub.s $f0, $f0, $f4
/* 01C198 80040D98 46140002 */  mul.s $f0, $f0, $f20
/* 01C19C 80040D9C 00000000 */  nop   
/* 01C1A0 80040DA0 46065280 */  add.s $f10, $f10, $f6
/* 01C1A4 80040DA4 46024200 */  add.s $f8, $f8, $f2
/* 01C1A8 80040DA8 24100001 */  addiu $s0, $zero, 1
/* 01C1AC 80040DAC 46002100 */  add.s $f4, $f4, $f0
/* 01C1B0 80040DB0 44055000 */  mfc1  $a1, $f10
/* 01C1B4 80040DB4 44064000 */  mfc1  $a2, $f8
/* 01C1B8 80040DB8 44072000 */  mfc1  $a3, $f4
/* 01C1BC 80040DBC 24040003 */  addiu $a0, $zero, 3
/* 01C1C0 80040DC0 AFA5003C */  sw    $a1, 0x3c($sp)
/* 01C1C4 80040DC4 AFA60040 */  sw    $a2, 0x40($sp)
/* 01C1C8 80040DC8 AFA70044 */  sw    $a3, 0x44($sp)
/* 01C1CC 80040DCC AFA00010 */  sw    $zero, 0x10($sp)
/* 01C1D0 80040DD0 E7B60014 */  swc1  $f22, 0x14($sp)
/* 01C1D4 80040DD4 AFA00018 */  sw    $zero, 0x18($sp)
/* 01C1D8 80040DD8 0C01C064 */  jal   func_80070190
/* 01C1DC 80040DDC AFBE001C */   sw    $fp, 0x1c($sp)
.L80040DE0:
/* 01C1E0 80040DE0 8EC20000 */  lw    $v0, ($s6)
/* 01C1E4 80040DE4 26B50001 */  addiu $s5, $s5, 1
/* 01C1E8 80040DE8 02A2102A */  slt   $v0, $s5, $v0
/* 01C1EC 80040DEC 1440FF98 */  bnez  $v0, .L80040C50
/* 01C1F0 80040DF0 00151080 */   sll   $v0, $s5, 2
.L80040DF4:
/* 01C1F4 80040DF4 0C03805E */  jal   func_800E0178
/* 01C1F8 80040DF8 00000000 */   nop   
/* 01C1FC 80040DFC 0C03BD8A */  jal   func_800EF628
/* 01C200 80040E00 00000000 */   nop   
/* 01C204 80040E04 8E820000 */  lw    $v0, ($s4)
/* 01C208 80040E08 3C030004 */  lui   $v1, 4
/* 01C20C 80040E0C 00431025 */  or    $v0, $v0, $v1
/* 01C210 80040E10 12000003 */  beqz  $s0, .L80040E20
/* 01C214 80040E14 AE820000 */   sw    $v0, ($s4)
/* 01C218 80040E18 0C03980D */  jal   start_bounce_a
/* 01C21C 80040E1C 00000000 */   nop   
.L80040E20:
/* 01C220 80040E20 0000202D */  daddu $a0, $zero, $zero
/* 01C224 80040E24 AE600090 */  sw    $zero, 0x90($s3)
/* 01C228 80040E28 AE600094 */  sw    $zero, 0x94($s3)
/* 01C22C 80040E2C 080104BB */  j     func_800412EC
/* 01C230 80040E30 A2600012 */   sb    $zero, 0x12($s3)

/* 01C234 80040E34 8E71008C */  lw    $s1, 0x8c($s3)
/* 01C238 80040E38 8E22003C */  lw    $v0, 0x3c($s1)
/* 01C23C 80040E3C 10400004 */  beqz  $v0, .L80040E50
/* 01C240 80040E40 0220B82D */   daddu $s7, $s1, $zero
/* 01C244 80040E44 8E240054 */  lw    $a0, 0x54($s1)
/* 01C248 80040E48 0C0B1108 */  jal   suspend_all_script
/* 01C24C 80040E4C 00000000 */   nop   
.L80040E50:
/* 01C250 80040E50 8E220044 */  lw    $v0, 0x44($s1)
/* 01C254 80040E54 10400003 */  beqz  $v0, .L80040E64
/* 01C258 80040E58 00000000 */   nop   
/* 01C25C 80040E5C 0C0B1108 */  jal   suspend_all_script
/* 01C260 80040E60 8E24005C */   lw    $a0, 0x5c($s1)
.L80040E64:
/* 01C264 80040E64 8E760088 */  lw    $s6, 0x88($s3)
/* 01C268 80040E68 8EC20000 */  lw    $v0, ($s6)
/* 01C26C 80040E6C 18400113 */  blez  $v0, .L800412BC
/* 01C270 80040E70 0000A82D */   daddu $s5, $zero, $zero
/* 01C274 80040E74 24100003 */  addiu $s0, $zero, 3
/* 01C278 80040E78 3C013F00 */  lui   $at, 0x3f00
/* 01C27C 80040E7C 4481A000 */  mtc1  $at, $f20
/* 01C280 80040E80 3C01BF80 */  lui   $at, 0xbf80
/* 01C284 80040E84 4481B000 */  mtc1  $at, $f22
/* 01C288 80040E88 00151080 */  sll   $v0, $s5, 2
.L80040E8C:
/* 01C28C 80040E8C 02C21021 */  addu  $v0, $s6, $v0
/* 01C290 80040E90 8C510004 */  lw    $s1, 4($v0)
/* 01C294 80040E94 12200082 */  beqz  $s1, .L800410A0
/* 01C298 80040E98 00000000 */   nop   
/* 01C29C 80040E9C 8E230000 */  lw    $v1, ($s1)
/* 01C2A0 80040EA0 30620008 */  andi  $v0, $v1, 8
/* 01C2A4 80040EA4 10400004 */  beqz  $v0, .L80040EB8
/* 01C2A8 80040EA8 30620020 */   andi  $v0, $v1, 0x20
/* 01C2AC 80040EAC 8E62008C */  lw    $v0, 0x8c($s3)
/* 01C2B0 80040EB0 1622007B */  bne   $s1, $v0, .L800410A0
/* 01C2B4 80040EB4 30620020 */   andi  $v0, $v1, 0x20
.L80040EB8:
/* 01C2B8 80040EB8 14400079 */  bnez  $v0, .L800410A0
/* 01C2BC 80040EBC 00000000 */   nop   
/* 01C2C0 80040EC0 8EE20000 */  lw    $v0, ($s7)
/* 01C2C4 80040EC4 30420040 */  andi  $v0, $v0, 0x40
/* 01C2C8 80040EC8 10400004 */  beqz  $v0, .L80040EDC
/* 01C2CC 80040ECC 00000000 */   nop   
/* 01C2D0 80040ED0 8E62008C */  lw    $v0, 0x8c($s3)
/* 01C2D4 80040ED4 16220072 */  bne   $s1, $v0, .L800410A0
/* 01C2D8 80040ED8 00000000 */   nop   
.L80040EDC:
/* 01C2DC 80040EDC 8E220028 */  lw    $v0, 0x28($s1)
/* 01C2E0 80040EE0 1040003A */  beqz  $v0, .L80040FCC
/* 01C2E4 80040EE4 2405000A */   addiu $a1, $zero, 0xa
/* 01C2E8 80040EE8 0000302D */  daddu $a2, $zero, $zero
/* 01C2EC 80040EEC 0040202D */  daddu $a0, $v0, $zero
/* 01C2F0 80040EF0 24020004 */  addiu $v0, $zero, 4
/* 01C2F4 80040EF4 0C0B0CF8 */  jal   start_script
/* 01C2F8 80040EF8 A2220005 */   sb    $v0, 5($s1)
/* 01C2FC 80040EFC 0040202D */  daddu $a0, $v0, $zero
/* 01C300 80040F00 AE240040 */  sw    $a0, 0x40($s1)
/* 01C304 80040F04 8C820144 */  lw    $v0, 0x144($a0)
/* 01C308 80040F08 AE220058 */  sw    $v0, 0x58($s1)
/* 01C30C 80040F0C AC910148 */  sw    $s1, 0x148($a0)
/* 01C310 80040F10 86220008 */  lh    $v0, 8($s1)
/* 01C314 80040F14 AC82014C */  sw    $v0, 0x14c($a0)
/* 01C318 80040F18 92220006 */  lbu   $v0, 6($s1)
/* 01C31C 80040F1C A0820004 */  sb    $v0, 4($a0)
/* 01C320 80040F20 0C00EABB */  jal   get_npc_unsafe
/* 01C324 80040F24 86240008 */   lh    $a0, 8($s1)
/* 01C328 80040F28 0040902D */  daddu $s2, $v0, $zero
/* 01C32C 80040F2C C6480038 */  lwc1  $f8, 0x38($s2)
/* 01C330 80040F30 C68A0028 */  lwc1  $f10, 0x28($s4)
/* 01C334 80040F34 460A4201 */  sub.s $f8, $f8, $f10
/* 01C338 80040F38 46144202 */  mul.s $f8, $f8, $f20
/* 01C33C 80040F3C 00000000 */  nop   
/* 01C340 80040F40 864200A8 */  lh    $v0, 0xa8($s2)
/* 01C344 80040F44 C644003C */  lwc1  $f4, 0x3c($s2)
/* 01C348 80040F48 44820000 */  mtc1  $v0, $f0
/* 01C34C 80040F4C 00000000 */  nop   
/* 01C350 80040F50 46800020 */  cvt.s.w $f0, $f0
/* 01C354 80040F54 46002100 */  add.s $f4, $f4, $f0
/* 01C358 80040F58 868200B0 */  lh    $v0, 0xb0($s4)
/* 01C35C 80040F5C C686002C */  lwc1  $f6, 0x2c($s4)
/* 01C360 80040F60 44820000 */  mtc1  $v0, $f0
/* 01C364 80040F64 00000000 */  nop   
/* 01C368 80040F68 46800020 */  cvt.s.w $f0, $f0
/* 01C36C 80040F6C 46003000 */  add.s $f0, $f6, $f0
/* 01C370 80040F70 46002101 */  sub.s $f4, $f4, $f0
/* 01C374 80040F74 46142102 */  mul.s $f4, $f4, $f20
/* 01C378 80040F78 00000000 */  nop   
/* 01C37C 80040F7C C6820030 */  lwc1  $f2, 0x30($s4)
/* 01C380 80040F80 C6400040 */  lwc1  $f0, 0x40($s2)
/* 01C384 80040F84 46020001 */  sub.s $f0, $f0, $f2
/* 01C388 80040F88 46140002 */  mul.s $f0, $f0, $f20
/* 01C38C 80040F8C 00000000 */  nop   
/* 01C390 80040F90 46085280 */  add.s $f10, $f10, $f8
/* 01C394 80040F94 46043180 */  add.s $f6, $f6, $f4
/* 01C398 80040F98 46001080 */  add.s $f2, $f2, $f0
/* 01C39C 80040F9C 44055000 */  mfc1  $a1, $f10
/* 01C3A0 80040FA0 44063000 */  mfc1  $a2, $f6
/* 01C3A4 80040FA4 44071000 */  mfc1  $a3, $f2
/* 01C3A8 80040FA8 24040003 */  addiu $a0, $zero, 3
/* 01C3AC 80040FAC AFA5003C */  sw    $a1, 0x3c($sp)
/* 01C3B0 80040FB0 AFA60040 */  sw    $a2, 0x40($sp)
/* 01C3B4 80040FB4 AFA70044 */  sw    $a3, 0x44($sp)
/* 01C3B8 80040FB8 AFA00010 */  sw    $zero, 0x10($sp)
/* 01C3BC 80040FBC E7B60014 */  swc1  $f22, 0x14($sp)
/* 01C3C0 80040FC0 AFA00018 */  sw    $zero, 0x18($sp)
/* 01C3C4 80040FC4 08010426 */  j     func_80041098
/* 01C3C8 80040FC8 AFB0001C */   sw    $s0, 0x1c($sp)

.L80040FCC:
/* 01C3CC 80040FCC 30620001 */  andi  $v0, $v1, 1
/* 01C3D0 80040FD0 14400033 */  bnez  $v0, .L800410A0
/* 01C3D4 80040FD4 00000000 */   nop   
/* 01C3D8 80040FD8 0C00EABB */  jal   get_npc_unsafe
/* 01C3DC 80040FDC 86240008 */   lh    $a0, 8($s1)
/* 01C3E0 80040FE0 0040902D */  daddu $s2, $v0, $zero
/* 01C3E4 80040FE4 C44C0038 */  lwc1  $f12, 0x38($v0)
/* 01C3E8 80040FE8 C68E0028 */  lwc1  $f14, 0x28($s4)
/* 01C3EC 80040FEC 460E6301 */  sub.s $f12, $f12, $f14
/* 01C3F0 80040FF0 46146302 */  mul.s $f12, $f12, $f20
/* 01C3F4 80040FF4 00000000 */  nop   
/* 01C3F8 80040FF8 C6420040 */  lwc1  $f2, 0x40($s2)
/* 01C3FC 80040FFC C6880030 */  lwc1  $f8, 0x30($s4)
/* 01C400 80041000 46081081 */  sub.s $f2, $f2, $f8
/* 01C404 80041004 46141082 */  mul.s $f2, $f2, $f20
/* 01C408 80041008 00000000 */  nop   
/* 01C40C 8004100C 864200A8 */  lh    $v0, 0xa8($s2)
/* 01C410 80041010 C646003C */  lwc1  $f6, 0x3c($s2)
/* 01C414 80041014 44820000 */  mtc1  $v0, $f0
/* 01C418 80041018 00000000 */  nop   
/* 01C41C 8004101C 46800020 */  cvt.s.w $f0, $f0
/* 01C420 80041020 868200B0 */  lh    $v0, 0xb0($s4)
/* 01C424 80041024 46003180 */  add.s $f6, $f6, $f0
/* 01C428 80041028 C68A002C */  lwc1  $f10, 0x2c($s4)
/* 01C42C 8004102C 44820000 */  mtc1  $v0, $f0
/* 01C430 80041030 00000000 */  nop   
/* 01C434 80041034 46800020 */  cvt.s.w $f0, $f0
/* 01C438 80041038 46005000 */  add.s $f0, $f10, $f0
/* 01C43C 8004103C 46003181 */  sub.s $f6, $f6, $f0
/* 01C440 80041040 46143182 */  mul.s $f6, $f6, $f20
/* 01C444 80041044 00000000 */  nop   
/* 01C448 80041048 864200A8 */  lh    $v0, 0xa8($s2)
/* 01C44C 8004104C C644003C */  lwc1  $f4, 0x3c($s2)
/* 01C450 80041050 44820000 */  mtc1  $v0, $f0
/* 01C454 80041054 00000000 */  nop   
/* 01C458 80041058 46800020 */  cvt.s.w $f0, $f0
/* 01C45C 8004105C 46002100 */  add.s $f4, $f4, $f0
/* 01C460 80041060 460C7380 */  add.s $f14, $f14, $f12
/* 01C464 80041064 46024200 */  add.s $f8, $f8, $f2
/* 01C468 80041068 44062000 */  mfc1  $a2, $f4
/* 01C46C 8004106C 46065280 */  add.s $f10, $f10, $f6
/* 01C470 80041070 E7AE003C */  swc1  $f14, 0x3c($sp)
/* 01C474 80041074 E7A80044 */  swc1  $f8, 0x44($sp)
/* 01C478 80041078 E7AA0040 */  swc1  $f10, 0x40($sp)
/* 01C47C 8004107C AFA00010 */  sw    $zero, 0x10($sp)
/* 01C480 80041080 E7B60014 */  swc1  $f22, 0x14($sp)
/* 01C484 80041084 AFA00018 */  sw    $zero, 0x18($sp)
/* 01C488 80041088 AFB0001C */  sw    $s0, 0x1c($sp)
/* 01C48C 8004108C 8E450038 */  lw    $a1, 0x38($s2)
/* 01C490 80041090 8E470040 */  lw    $a3, 0x40($s2)
/* 01C494 80041094 24040003 */  addiu $a0, $zero, 3
func_80041098:
/* 01C498 80041098 0C01C064 */  jal   func_80070190
/* 01C49C 8004109C 00000000 */   nop   
.L800410A0:
/* 01C4A0 800410A0 8EC20000 */  lw    $v0, ($s6)
/* 01C4A4 800410A4 26B50001 */  addiu $s5, $s5, 1
/* 01C4A8 800410A8 02A2102A */  slt   $v0, $s5, $v0
/* 01C4AC 800410AC 1440FF77 */  bnez  $v0, .L80040E8C
/* 01C4B0 800410B0 00151080 */   sll   $v0, $s5, 2
/* 01C4B4 800410B4 080104AF */  j     func_800412BC
/* 01C4B8 800410B8 00000000 */   nop   

/* 01C4BC 800410BC 0C0B117A */  jal   suspend_all_group
/* 01C4C0 800410C0 24040001 */   addiu $a0, $zero, 1
/* 01C4C4 800410C4 8E71008C */  lw    $s1, 0x8c($s3)
/* 01C4C8 800410C8 12200007 */  beqz  $s1, .L800410E8
/* 01C4CC 800410CC 00000000 */   nop   
/* 01C4D0 800410D0 8E22003C */  lw    $v0, 0x3c($s1)
/* 01C4D4 800410D4 10400004 */  beqz  $v0, .L800410E8
/* 01C4D8 800410D8 00000000 */   nop   
/* 01C4DC 800410DC 0C0B1108 */  jal   suspend_all_script
/* 01C4E0 800410E0 8E240054 */   lw    $a0, 0x54($s1)
/* 01C4E4 800410E4 8E71008C */  lw    $s1, 0x8c($s3)
.L800410E8:
/* 01C4E8 800410E8 8E220020 */  lw    $v0, 0x20($s1)
/* 01C4EC 800410EC 1040000F */  beqz  $v0, .L8004112C
/* 01C4F0 800410F0 2405000A */   addiu $a1, $zero, 0xa
/* 01C4F4 800410F4 0000302D */  daddu $a2, $zero, $zero
/* 01C4F8 800410F8 0040202D */  daddu $a0, $v0, $zero
/* 01C4FC 800410FC 24020005 */  addiu $v0, $zero, 5
/* 01C500 80041100 0C0B0CF8 */  jal   start_script
/* 01C504 80041104 A2220005 */   sb    $v0, 5($s1)
/* 01C508 80041108 0040202D */  daddu $a0, $v0, $zero
/* 01C50C 8004110C AE240038 */  sw    $a0, 0x38($s1)
/* 01C510 80041110 8C820144 */  lw    $v0, 0x144($a0)
/* 01C514 80041114 AE220050 */  sw    $v0, 0x50($s1)
/* 01C518 80041118 AC910148 */  sw    $s1, 0x148($a0)
/* 01C51C 8004111C 86220008 */  lh    $v0, 8($s1)
/* 01C520 80041120 AC82014C */  sw    $v0, 0x14c($a0)
/* 01C524 80041124 92220006 */  lbu   $v0, 6($s1)
/* 01C528 80041128 A0820004 */  sb    $v0, 4($a0)
.L8004112C:
/* 01C52C 8004112C 0C03805E */  jal   func_800E0178
/* 01C530 80041130 00000000 */   nop   
/* 01C534 80041134 0C03BD8A */  jal   func_800EF628
/* 01C538 80041138 00000000 */   nop   
/* 01C53C 8004113C 0C039769 */  jal   set_action_state
/* 01C540 80041140 2404000C */   addiu $a0, $zero, 0xc
/* 01C544 80041144 24040001 */  addiu $a0, $zero, 1
/* 01C548 80041148 AE600090 */  sw    $zero, 0x90($s3)
/* 01C54C 8004114C 0C03BCF5 */  jal   func_800EF3D4
/* 01C550 80041150 AE600094 */   sw    $zero, 0x94($s3)
/* 01C554 80041154 080104BE */  j     func_800412F8
/* 01C558 80041158 24020004 */   addiu $v0, $zero, 4

/* 01C55C 8004115C 8E71008C */  lw    $s1, 0x8c($s3)
/* 01C560 80041160 8E22003C */  lw    $v0, 0x3c($s1)
/* 01C564 80041164 10400004 */  beqz  $v0, .L80041178
/* 01C568 80041168 0220B82D */   daddu $s7, $s1, $zero
/* 01C56C 8004116C 8E240054 */  lw    $a0, 0x54($s1)
/* 01C570 80041170 0C0B1108 */  jal   suspend_all_script
/* 01C574 80041174 00000000 */   nop   
.L80041178:
/* 01C578 80041178 8E220044 */  lw    $v0, 0x44($s1)
/* 01C57C 8004117C 10400003 */  beqz  $v0, .L8004118C
/* 01C580 80041180 00000000 */   nop   
/* 01C584 80041184 0C0B1108 */  jal   suspend_all_script
/* 01C588 80041188 8E24005C */   lw    $a0, 0x5c($s1)
.L8004118C:
/* 01C58C 8004118C 8E760088 */  lw    $s6, 0x88($s3)
/* 01C590 80041190 8EC20000 */  lw    $v0, ($s6)
/* 01C594 80041194 18400049 */  blez  $v0, .L800412BC
/* 01C598 80041198 0000A82D */   daddu $s5, $zero, $zero
/* 01C59C 8004119C 3C01BF80 */  lui   $at, 0xbf80
/* 01C5A0 800411A0 4481A000 */  mtc1  $at, $f20
/* 01C5A4 800411A4 241E0003 */  addiu $fp, $zero, 3
/* 01C5A8 800411A8 02C0802D */  daddu $s0, $s6, $zero
.L800411AC:
/* 01C5AC 800411AC 8E110004 */  lw    $s1, 4($s0)
/* 01C5B0 800411B0 1220003D */  beqz  $s1, .L800412A8
/* 01C5B4 800411B4 00000000 */   nop   
/* 01C5B8 800411B8 8E230000 */  lw    $v1, ($s1)
/* 01C5BC 800411BC 30620008 */  andi  $v0, $v1, 8
/* 01C5C0 800411C0 10400004 */  beqz  $v0, .L800411D4
/* 01C5C4 800411C4 30620020 */   andi  $v0, $v1, 0x20
/* 01C5C8 800411C8 8E62008C */  lw    $v0, 0x8c($s3)
/* 01C5CC 800411CC 16220036 */  bne   $s1, $v0, .L800412A8
/* 01C5D0 800411D0 30620020 */   andi  $v0, $v1, 0x20
.L800411D4:
/* 01C5D4 800411D4 14400034 */  bnez  $v0, .L800412A8
/* 01C5D8 800411D8 00000000 */   nop   
/* 01C5DC 800411DC 8EE20000 */  lw    $v0, ($s7)
/* 01C5E0 800411E0 30420040 */  andi  $v0, $v0, 0x40
/* 01C5E4 800411E4 10400004 */  beqz  $v0, .L800411F8
/* 01C5E8 800411E8 00000000 */   nop   
/* 01C5EC 800411EC 8E62008C */  lw    $v0, 0x8c($s3)
/* 01C5F0 800411F0 1622002D */  bne   $s1, $v0, .L800412A8
/* 01C5F4 800411F4 00000000 */   nop   
.L800411F8:
/* 01C5F8 800411F8 8E220028 */  lw    $v0, 0x28($s1)
/* 01C5FC 800411FC 10400010 */  beqz  $v0, .L80041240
/* 01C600 80041200 2405000A */   addiu $a1, $zero, 0xa
/* 01C604 80041204 0000302D */  daddu $a2, $zero, $zero
/* 01C608 80041208 0040202D */  daddu $a0, $v0, $zero
/* 01C60C 8004120C 24020006 */  addiu $v0, $zero, 6
/* 01C610 80041210 0C0B0CF8 */  jal   start_script
/* 01C614 80041214 A2220005 */   sb    $v0, 5($s1)
/* 01C618 80041218 0040202D */  daddu $a0, $v0, $zero
/* 01C61C 8004121C AE240040 */  sw    $a0, 0x40($s1)
/* 01C620 80041220 8C820144 */  lw    $v0, 0x144($a0)
/* 01C624 80041224 AE220058 */  sw    $v0, 0x58($s1)
/* 01C628 80041228 AC910148 */  sw    $s1, 0x148($a0)
/* 01C62C 8004122C 86220008 */  lh    $v0, 8($s1)
/* 01C630 80041230 AC82014C */  sw    $v0, 0x14c($a0)
/* 01C634 80041234 92220006 */  lbu   $v0, 6($s1)
/* 01C638 80041238 08010493 */  j     func_8004124C
/* 01C63C 8004123C A0820004 */   sb    $v0, 4($a0)

.L80041240:
/* 01C640 80041240 30620001 */  andi  $v0, $v1, 1
/* 01C644 80041244 14400018 */  bnez  $v0, .L800412A8
/* 01C648 80041248 00000000 */   nop   
func_8004124C:
/* 01C64C 8004124C 0C00EABB */  jal   get_npc_unsafe
/* 01C650 80041250 86240008 */   lh    $a0, 8($s1)
/* 01C654 80041254 0040902D */  daddu $s2, $v0, $zero
/* 01C658 80041258 864200A8 */  lh    $v0, 0xa8($s2)
/* 01C65C 8004125C C644003C */  lwc1  $f4, 0x3c($s2)
/* 01C660 80041260 C6420040 */  lwc1  $f2, 0x40($s2)
/* 01C664 80041264 44820000 */  mtc1  $v0, $f0
/* 01C668 80041268 00000000 */  nop   
/* 01C66C 8004126C 46800020 */  cvt.s.w $f0, $f0
/* 01C670 80041270 46002100 */  add.s $f4, $f4, $f0
/* 01C674 80041274 C6400038 */  lwc1  $f0, 0x38($s2)
/* 01C678 80041278 44071000 */  mfc1  $a3, $f2
/* 01C67C 8004127C 44050000 */  mfc1  $a1, $f0
/* 01C680 80041280 44062000 */  mfc1  $a2, $f4
/* 01C684 80041284 24040003 */  addiu $a0, $zero, 3
/* 01C688 80041288 AFA70044 */  sw    $a3, 0x44($sp)
/* 01C68C 8004128C AFA5003C */  sw    $a1, 0x3c($sp)
/* 01C690 80041290 AFA60040 */  sw    $a2, 0x40($sp)
/* 01C694 80041294 AFA00010 */  sw    $zero, 0x10($sp)
/* 01C698 80041298 E7B40014 */  swc1  $f20, 0x14($sp)
/* 01C69C 8004129C AFA00018 */  sw    $zero, 0x18($sp)
/* 01C6A0 800412A0 0C01C064 */  jal   func_80070190
/* 01C6A4 800412A4 AFBE001C */   sw    $fp, 0x1c($sp)
.L800412A8:
/* 01C6A8 800412A8 8EC20000 */  lw    $v0, ($s6)
/* 01C6AC 800412AC 26B50001 */  addiu $s5, $s5, 1
/* 01C6B0 800412B0 02A2102A */  slt   $v0, $s5, $v0
/* 01C6B4 800412B4 1440FFBD */  bnez  $v0, .L800411AC
/* 01C6B8 800412B8 26100004 */   addiu $s0, $s0, 4
func_800412BC:
.L800412BC:
/* 01C6BC 800412BC 0C03805E */  jal   func_800E0178
/* 01C6C0 800412C0 00000000 */   nop   
/* 01C6C4 800412C4 0C03BD8A */  jal   func_800EF628
/* 01C6C8 800412C8 00000000 */   nop   
/* 01C6CC 800412CC 0000202D */  daddu $a0, $zero, $zero
/* 01C6D0 800412D0 AE600090 */  sw    $zero, 0x90($s3)
/* 01C6D4 800412D4 AE600094 */  sw    $zero, 0x94($s3)
/* 01C6D8 800412D8 A2600012 */  sb    $zero, 0x12($s3)
/* 01C6DC 800412DC 8E820000 */  lw    $v0, ($s4)
/* 01C6E0 800412E0 3C030004 */  lui   $v1, 4
/* 01C6E4 800412E4 00431025 */  or    $v0, $v0, $v1
/* 01C6E8 800412E8 AE820000 */  sw    $v0, ($s4)
func_800412EC:
/* 01C6EC 800412EC 0C05272D */  jal   play_sound
/* 01C6F0 800412F0 00000000 */   nop   
/* 01C6F4 800412F4 24020003 */  addiu $v0, $zero, 3
func_800412F8:
/* 01C6F8 800412F8 3C01800A */  lui   $at, 0x800a
/* 01C6FC 800412FC AC22A600 */  sw    $v0, -0x5a00($at)
/* 01C700 80041300 24020001 */  addiu $v0, $zero, 1
func_80041304:
/* 01C704 80041304 3C01800A */  lui   $at, 0x800a
/* 01C708 80041308 AC22A678 */  sw    $v0, -0x5988($at)
/* 01C70C 8004130C 3C01800A */  lui   $at, 0x800a
/* 01C710 80041310 AC20A5D0 */  sw    $zero, -0x5a30($at)
func_80041314:
.L80041314:
/* 01C714 80041314 8FBF008C */  lw    $ra, 0x8c($sp)
/* 01C718 80041318 8FBE0088 */  lw    $fp, 0x88($sp)
/* 01C71C 8004131C 8FB70084 */  lw    $s7, 0x84($sp)
/* 01C720 80041320 8FB60080 */  lw    $s6, 0x80($sp)
/* 01C724 80041324 8FB5007C */  lw    $s5, 0x7c($sp)
/* 01C728 80041328 8FB40078 */  lw    $s4, 0x78($sp)
/* 01C72C 8004132C 8FB30074 */  lw    $s3, 0x74($sp)
/* 01C730 80041330 8FB20070 */  lw    $s2, 0x70($sp)
/* 01C734 80041334 8FB1006C */  lw    $s1, 0x6c($sp)
/* 01C738 80041338 8FB00068 */  lw    $s0, 0x68($sp)
/* 01C73C 8004133C D7BE00B8 */  ldc1  $f30, 0xb8($sp)
/* 01C740 80041340 D7BC00B0 */  ldc1  $f28, 0xb0($sp)
/* 01C744 80041344 D7BA00A8 */  ldc1  $f26, 0xa8($sp)
/* 01C748 80041348 D7B800A0 */  ldc1  $f24, 0xa0($sp)
/* 01C74C 8004134C D7B60098 */  ldc1  $f22, 0x98($sp)
/* 01C750 80041350 D7B40090 */  ldc1  $f20, 0x90($sp)
/* 01C754 80041354 03E00008 */  jr    $ra
/* 01C758 80041358 27BD00C0 */   addiu $sp, $sp, 0xc0

func_8004135C:
/* 01C75C 8004135C 03E00008 */  jr    $ra
/* 01C760 80041360 00000000 */   nop   

func_80041364:
/* 01C764 80041364 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01C768 80041368 AFB50024 */  sw    $s5, 0x24($sp)
/* 01C76C 8004136C 3C15800B */  lui   $s5, 0x800b
/* 01C770 80041370 26B50F10 */  addiu $s5, $s5, 0xf10
/* 01C774 80041374 AFB7002C */  sw    $s7, 0x2c($sp)
/* 01C778 80041378 3C178011 */  lui   $s7, 0x8011
/* 01C77C 8004137C 26F7F290 */  addiu $s7, $s7, -0xd70
/* 01C780 80041380 3C04800A */  lui   $a0, 0x800a
/* 01C784 80041384 2484A5D0 */  addiu $a0, $a0, -0x5a30
/* 01C788 80041388 AFBF0030 */  sw    $ra, 0x30($sp)
/* 01C78C 8004138C AFB60028 */  sw    $s6, 0x28($sp)
/* 01C790 80041390 AFB40020 */  sw    $s4, 0x20($sp)
/* 01C794 80041394 AFB3001C */  sw    $s3, 0x1c($sp)
/* 01C798 80041398 AFB20018 */  sw    $s2, 0x18($sp)
/* 01C79C 8004139C AFB10014 */  sw    $s1, 0x14($sp)
/* 01C7A0 800413A0 AFB00010 */  sw    $s0, 0x10($sp)
/* 01C7A4 800413A4 8C830000 */  lw    $v1, ($a0)
/* 01C7A8 800413A8 24050001 */  addiu $a1, $zero, 1
/* 01C7AC 800413AC 106500CF */  beq   $v1, $a1, .L800416EC
/* 01C7B0 800413B0 28620002 */   slti  $v0, $v1, 2
/* 01C7B4 800413B4 50400005 */  beql  $v0, $zero, .L800413CC
/* 01C7B8 800413B8 24020002 */   addiu $v0, $zero, 2
/* 01C7BC 800413BC 10600009 */  beqz  $v1, .L800413E4
/* 01C7C0 800413C0 2402FFFF */   addiu $v0, $zero, -1
/* 01C7C4 800413C4 0801064E */  j     func_80041938
/* 01C7C8 800413C8 00000000 */   nop   

.L800413CC:
/* 01C7CC 800413CC 1062011C */  beq   $v1, $v0, .L80041840
/* 01C7D0 800413D0 24020003 */   addiu $v0, $zero, 3
/* 01C7D4 800413D4 1062014E */  beq   $v1, $v0, .L80041910
/* 01C7D8 800413D8 24020004 */   addiu $v0, $zero, 4
/* 01C7DC 800413DC 0801064E */  j     func_80041938
/* 01C7E0 800413E0 00000000 */   nop   

.L800413E4:
/* 01C7E4 800413E4 AEA00090 */  sw    $zero, 0x90($s5)
/* 01C7E8 800413E8 AEA50094 */  sw    $a1, 0x94($s5)
/* 01C7EC 800413EC AEA50098 */  sw    $a1, 0x98($s5)
/* 01C7F0 800413F0 A2A20008 */  sb    $v0, 8($s5)
/* 01C7F4 800413F4 3C01800A */  lui   $at, 0x800a
/* 01C7F8 800413F8 A020A654 */  sb    $zero, -0x59ac($at)
/* 01C7FC 800413FC 3C018007 */  lui   $at, 0x8007
/* 01C800 80041400 AC207C40 */  sw    $zero, 0x7c40($at)
/* 01C804 80041404 0C0B117A */  jal   suspend_all_group
/* 01C808 80041408 24040010 */   addiu $a0, $zero, 0x10
/* 01C80C 8004140C 82A2001C */  lb    $v0, 0x1c($s5)
/* 01C810 80041410 18400024 */  blez  $v0, .L800414A4
/* 01C814 80041414 0000982D */   daddu $s3, $zero, $zero
/* 01C818 80041418 02A0B02D */  daddu $s6, $s5, $zero
.L8004141C:
/* 01C81C 8004141C 8ED40028 */  lw    $s4, 0x28($s6)
/* 01C820 80041420 1280001B */  beqz  $s4, .L80041490
/* 01C824 80041424 00000000 */   nop   
/* 01C828 80041428 8E820000 */  lw    $v0, ($s4)
/* 01C82C 8004142C 18400018 */  blez  $v0, .L80041490
/* 01C830 80041430 0000882D */   daddu $s1, $zero, $zero
/* 01C834 80041434 0280902D */  daddu $s2, $s4, $zero
.L80041438:
/* 01C838 80041438 8E500004 */  lw    $s0, 4($s2)
/* 01C83C 8004143C 1200000F */  beqz  $s0, .L8004147C
/* 01C840 80041440 00000000 */   nop   
/* 01C844 80041444 8E020000 */  lw    $v0, ($s0)
/* 01C848 80041448 30420020 */  andi  $v0, $v0, 0x20
/* 01C84C 8004144C 1440000B */  bnez  $v0, .L8004147C
/* 01C850 80041450 00000000 */   nop   
/* 01C854 80041454 8E02003C */  lw    $v0, 0x3c($s0)
/* 01C858 80041458 10400003 */  beqz  $v0, .L80041468
/* 01C85C 8004145C 00000000 */   nop   
/* 01C860 80041460 0C0B1108 */  jal   suspend_all_script
/* 01C864 80041464 8E040054 */   lw    $a0, 0x54($s0)
.L80041468:
/* 01C868 80041468 8E020044 */  lw    $v0, 0x44($s0)
/* 01C86C 8004146C 10400003 */  beqz  $v0, .L8004147C
/* 01C870 80041470 00000000 */   nop   
/* 01C874 80041474 0C0B1108 */  jal   suspend_all_script
/* 01C878 80041478 8E04005C */   lw    $a0, 0x5c($s0)
.L8004147C:
/* 01C87C 8004147C 8E820000 */  lw    $v0, ($s4)
/* 01C880 80041480 26310001 */  addiu $s1, $s1, 1
/* 01C884 80041484 0222102A */  slt   $v0, $s1, $v0
/* 01C888 80041488 1440FFEB */  bnez  $v0, .L80041438
/* 01C88C 8004148C 26520004 */   addiu $s2, $s2, 4
.L80041490:
/* 01C890 80041490 82A2001C */  lb    $v0, 0x1c($s5)
/* 01C894 80041494 26730001 */  addiu $s3, $s3, 1
/* 01C898 80041498 0262102A */  slt   $v0, $s3, $v0
/* 01C89C 8004149C 1440FFDF */  bnez  $v0, .L8004141C
/* 01C8A0 800414A0 26D60004 */   addiu $s6, $s6, 4
.L800414A4:
/* 01C8A4 800414A4 8EB0008C */  lw    $s0, 0x8c($s5)
/* 01C8A8 800414A8 8E020000 */  lw    $v0, ($s0)
/* 01C8AC 800414AC 3C030010 */  lui   $v1, 0x10
/* 01C8B0 800414B0 00431024 */  and   $v0, $v0, $v1
/* 01C8B4 800414B4 1040000C */  beqz  $v0, .L800414E8
/* 01C8B8 800414B8 00000000 */   nop   
/* 01C8BC 800414BC 82A20012 */  lb    $v0, 0x12($s5)
/* 01C8C0 800414C0 14400009 */  bnez  $v0, .L800414E8
/* 01C8C4 800414C4 00000000 */   nop   
/* 01C8C8 800414C8 AEA00094 */  sw    $zero, 0x94($s5)
/* 01C8CC 800414CC 0C03AD96 */  jal   func_800EB658
/* 01C8D0 800414D0 AEA0009C */   sw    $zero, 0x9c($s5)
/* 01C8D4 800414D4 24020003 */  addiu $v0, $zero, 3
/* 01C8D8 800414D8 3C01800A */  lui   $at, 0x800a
/* 01C8DC 800414DC AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01C8E0 800414E0 0801064E */  j     func_80041938
/* 01C8E4 800414E4 00000000 */   nop   

.L800414E8:
/* 01C8E8 800414E8 3C028007 */  lui   $v0, 0x8007
/* 01C8EC 800414EC 8C42419C */  lw    $v0, 0x419c($v0)
/* 01C8F0 800414F0 80420074 */  lb    $v0, 0x74($v0)
/* 01C8F4 800414F4 24110002 */  addiu $s1, $zero, 2
/* 01C8F8 800414F8 14510009 */  bne   $v0, $s1, .L80041520
/* 01C8FC 800414FC 24120001 */   addiu $s2, $zero, 1
/* 01C900 80041500 2402000A */  addiu $v0, $zero, 0xa
/* 01C904 80041504 AEA00094 */  sw    $zero, 0x94($s5)
/* 01C908 80041508 0C03AD96 */  jal   func_800EB658
/* 01C90C 8004150C AEA2009C */   sw    $v0, 0x9c($s5)
/* 01C910 80041510 3C01800A */  lui   $at, 0x800a
/* 01C914 80041514 AC31A5D0 */  sw    $s1, -0x5a30($at)
/* 01C918 80041518 0801064E */  j     func_80041938
/* 01C91C 8004151C 00000000 */   nop   

.L80041520:
/* 01C920 80041520 82A30005 */  lb    $v1, 5($s5)
/* 01C924 80041524 8EB0008C */  lw    $s0, 0x8c($s5)
/* 01C928 80041528 1072001D */  beq   $v1, $s2, .L800415A0
/* 01C92C 8004152C 24020003 */   addiu $v0, $zero, 3
/* 01C930 80041530 1062001B */  beq   $v1, $v0, .L800415A0
/* 01C934 80041534 00000000 */   nop   
/* 01C938 80041538 0C03A752 */  jal   is_ability_active
/* 01C93C 8004153C 0040202D */   daddu $a0, $v0, $zero
/* 01C940 80041540 10400016 */  beqz  $v0, .L8004159C
/* 01C944 80041544 00000000 */   nop   
/* 01C948 80041548 8E020018 */  lw    $v0, 0x18($s0)
/* 01C94C 8004154C 82E30009 */  lb    $v1, 9($s7)
/* 01C950 80041550 84420028 */  lh    $v0, 0x28($v0)
/* 01C954 80041554 0062182A */  slt   $v1, $v1, $v0
/* 01C958 80041558 14600010 */  bnez  $v1, .L8004159C
/* 01C95C 8004155C 00000000 */   nop   
/* 01C960 80041560 8E020000 */  lw    $v0, ($s0)
/* 01C964 80041564 30420040 */  andi  $v0, $v0, 0x40
/* 01C968 80041568 1440000C */  bnez  $v0, .L8004159C
/* 01C96C 8004156C 00000000 */   nop   
/* 01C970 80041570 82A20012 */  lb    $v0, 0x12($s5)
/* 01C974 80041574 14400009 */  bnez  $v0, .L8004159C
/* 01C978 80041578 2402000A */   addiu $v0, $zero, 0xa
/* 01C97C 8004157C AEA00094 */  sw    $zero, 0x94($s5)
/* 01C980 80041580 AEA2009C */  sw    $v0, 0x9c($s5)
/* 01C984 80041584 3C018007 */  lui   $at, 0x8007
/* 01C988 80041588 AC327C40 */  sw    $s2, 0x7c40($at)
/* 01C98C 8004158C 3C01800A */  lui   $at, 0x800a
/* 01C990 80041590 AC31A5D0 */  sw    $s1, -0x5a30($at)
/* 01C994 80041594 0801064E */  j     func_80041938
/* 01C998 80041598 00000000 */   nop   

.L8004159C:
/* 01C99C 8004159C 8EB0008C */  lw    $s0, 0x8c($s5)
.L800415A0:
/* 01C9A0 800415A0 0C03A752 */  jal   is_ability_active
/* 01C9A4 800415A4 2404002A */   addiu $a0, $zero, 0x2a
/* 01C9A8 800415A8 1040000E */  beqz  $v0, .L800415E4
/* 01C9AC 800415AC 24020003 */   addiu $v0, $zero, 3
/* 01C9B0 800415B0 8E020018 */  lw    $v0, 0x18($s0)
/* 01C9B4 800415B4 82E30009 */  lb    $v1, 9($s7)
/* 01C9B8 800415B8 84420028 */  lh    $v0, 0x28($v0)
/* 01C9BC 800415BC 0062182A */  slt   $v1, $v1, $v0
/* 01C9C0 800415C0 14600008 */  bnez  $v1, .L800415E4
/* 01C9C4 800415C4 24020003 */   addiu $v0, $zero, 3
/* 01C9C8 800415C8 8E020000 */  lw    $v0, ($s0)
/* 01C9CC 800415CC 30420040 */  andi  $v0, $v0, 0x40
/* 01C9D0 800415D0 14400004 */  bnez  $v0, .L800415E4
/* 01C9D4 800415D4 24020003 */   addiu $v0, $zero, 3
/* 01C9D8 800415D8 82A20012 */  lb    $v0, 0x12($s5)
/* 01C9DC 800415DC 10400015 */  beqz  $v0, .L80041634
/* 01C9E0 800415E0 24020003 */   addiu $v0, $zero, 3
.L800415E4:
/* 01C9E4 800415E4 82A30005 */  lb    $v1, 5($s5)
/* 01C9E8 800415E8 1462001D */  bne   $v1, $v0, .L80041660
/* 01C9EC 800415EC 8EB0008C */   lw    $s0, 0x8c($s5)
/* 01C9F0 800415F0 0C03A752 */  jal   is_ability_active
/* 01C9F4 800415F4 24040028 */   addiu $a0, $zero, 0x28
/* 01C9F8 800415F8 10400019 */  beqz  $v0, .L80041660
/* 01C9FC 800415FC 00000000 */   nop   
/* 01CA00 80041600 8E020018 */  lw    $v0, 0x18($s0)
/* 01CA04 80041604 82E30009 */  lb    $v1, 9($s7)
/* 01CA08 80041608 84420028 */  lh    $v0, 0x28($v0)
/* 01CA0C 8004160C 0062182A */  slt   $v1, $v1, $v0
/* 01CA10 80041610 14600013 */  bnez  $v1, .L80041660
/* 01CA14 80041614 00000000 */   nop   
/* 01CA18 80041618 8E020000 */  lw    $v0, ($s0)
/* 01CA1C 8004161C 30420040 */  andi  $v0, $v0, 0x40
/* 01CA20 80041620 1440000F */  bnez  $v0, .L80041660
/* 01CA24 80041624 00000000 */   nop   
/* 01CA28 80041628 82A20012 */  lb    $v0, 0x12($s5)
/* 01CA2C 8004162C 1440000C */  bnez  $v0, .L80041660
/* 01CA30 80041630 00000000 */   nop   
.L80041634:
/* 01CA34 80041634 2402000A */  addiu $v0, $zero, 0xa
/* 01CA38 80041638 AEA2009C */  sw    $v0, 0x9c($s5)
/* 01CA3C 8004163C 24020001 */  addiu $v0, $zero, 1
/* 01CA40 80041640 3C018007 */  lui   $at, 0x8007
/* 01CA44 80041644 AC227C40 */  sw    $v0, 0x7c40($at)
/* 01CA48 80041648 24020002 */  addiu $v0, $zero, 2
/* 01CA4C 8004164C AEA00094 */  sw    $zero, 0x94($s5)
/* 01CA50 80041650 3C01800A */  lui   $at, 0x800a
/* 01CA54 80041654 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01CA58 80041658 0801064E */  j     func_80041938
/* 01CA5C 8004165C 00000000 */   nop   

.L80041660:
/* 01CA60 80041660 8EA40014 */  lw    $a0, 0x14($s5)
/* 01CA64 80041664 04810015 */  bgez  $a0, .L800416BC
/* 01CA68 80041668 0000282D */   daddu $a1, $zero, $zero
/* 01CA6C 8004166C 82A30004 */  lb    $v1, 4($s5)
/* 01CA70 80041670 24020001 */  addiu $v0, $zero, 1
/* 01CA74 80041674 1062000B */  beq   $v1, $v0, .L800416A4
/* 01CA78 80041678 28620002 */   slti  $v0, $v1, 2
/* 01CA7C 8004167C 10400005 */  beqz  $v0, .L80041694
/* 01CA80 80041680 24020002 */   addiu $v0, $zero, 2
/* 01CA84 80041684 1060000D */  beqz  $v1, .L800416BC
/* 01CA88 80041688 24040002 */   addiu $a0, $zero, 2
/* 01CA8C 8004168C 080105B1 */  j     func_800416C4
/* 01CA90 80041690 00000000 */   nop   

.L80041694:
/* 01CA94 80041694 10620006 */  beq   $v1, $v0, .L800416B0
/* 01CA98 80041698 24040002 */   addiu $a0, $zero, 2
/* 01CA9C 8004169C 080105B1 */  j     func_800416C4
/* 01CAA0 800416A0 00000000 */   nop   

.L800416A4:
/* 01CAA4 800416A4 24040002 */  addiu $a0, $zero, 2
/* 01CAA8 800416A8 080105AF */  j     func_800416BC
/* 01CAAC 800416AC 24050001 */   addiu $a1, $zero, 1

.L800416B0:
/* 01CAB0 800416B0 080105AF */  j     func_800416BC
/* 01CAB4 800416B4 0080282D */   daddu $a1, $a0, $zero

/* 01CAB8 800416B8 0000282D */  daddu $a1, $zero, $zero
func_800416BC:
.L800416BC:
/* 01CABC 800416BC 0C052BE3 */  jal   func_8014AF8C
/* 01CAC0 800416C0 00000000 */   nop   
func_800416C4:
/* 01CAC4 800416C4 0C052BBE */  jal   func_8014AEF8
/* 01CAC8 800416C8 00000000 */   nop   
/* 01CACC 800416CC 24020001 */  addiu $v0, $zero, 1
/* 01CAD0 800416D0 3C01800A */  lui   $at, 0x800a
/* 01CAD4 800416D4 A022A654 */  sb    $v0, -0x59ac($at)
/* 01CAD8 800416D8 2402000A */  addiu $v0, $zero, 0xa
/* 01CADC 800416DC AEA2009C */  sw    $v0, 0x9c($s5)
/* 01CAE0 800416E0 24020001 */  addiu $v0, $zero, 1
/* 01CAE4 800416E4 3C01800A */  lui   $at, 0x800a
/* 01CAE8 800416E8 AC22A5D0 */  sw    $v0, -0x5a30($at)
.L800416EC:
/* 01CAEC 800416EC 8EA30090 */  lw    $v1, 0x90($s5)
/* 01CAF0 800416F0 240200FF */  addiu $v0, $zero, 0xff
/* 01CAF4 800416F4 14620090 */  bne   $v1, $v0, .L80041938
/* 01CAF8 800416F8 00000000 */   nop   
/* 01CAFC 800416FC 8EA2009C */  lw    $v0, 0x9c($s5)
/* 01CB00 80041700 14400052 */  bnez  $v0, .L8004184C
/* 01CB04 80041704 2442FFFF */   addiu $v0, $v0, -1
/* 01CB08 80041708 8EB40088 */  lw    $s4, 0x88($s5)
/* 01CB0C 8004170C 8E820000 */  lw    $v0, ($s4)
/* 01CB10 80041710 18400019 */  blez  $v0, .L80041778
/* 01CB14 80041714 0000982D */   daddu $s3, $zero, $zero
/* 01CB18 80041718 0280882D */  daddu $s1, $s4, $zero
.L8004171C:
/* 01CB1C 8004171C 8E300004 */  lw    $s0, 4($s1)
/* 01CB20 80041720 12000010 */  beqz  $s0, .L80041764
/* 01CB24 80041724 00000000 */   nop   
/* 01CB28 80041728 8E030000 */  lw    $v1, ($s0)
/* 01CB2C 8004172C 30620008 */  andi  $v0, $v1, 8
/* 01CB30 80041730 10400004 */  beqz  $v0, .L80041744
/* 01CB34 80041734 30620020 */   andi  $v0, $v1, 0x20
/* 01CB38 80041738 8EA2008C */  lw    $v0, 0x8c($s5)
/* 01CB3C 8004173C 16020009 */  bne   $s0, $v0, .L80041764
/* 01CB40 80041740 30620020 */   andi  $v0, $v1, 0x20
.L80041744:
/* 01CB44 80041744 14400007 */  bnez  $v0, .L80041764
/* 01CB48 80041748 00000000 */   nop   
/* 01CB4C 8004174C 8E020040 */  lw    $v0, 0x40($s0)
/* 01CB50 80041750 10400004 */  beqz  $v0, .L80041764
/* 01CB54 80041754 00000000 */   nop   
/* 01CB58 80041758 0C0B102B */  jal   kill_script_by_ID
/* 01CB5C 8004175C 8E040058 */   lw    $a0, 0x58($s0)
/* 01CB60 80041760 AE000040 */  sw    $zero, 0x40($s0)
.L80041764:
/* 01CB64 80041764 8E820000 */  lw    $v0, ($s4)
/* 01CB68 80041768 26730001 */  addiu $s3, $s3, 1
/* 01CB6C 8004176C 0262102A */  slt   $v0, $s3, $v0
/* 01CB70 80041770 1440FFEA */  bnez  $v0, .L8004171C
/* 01CB74 80041774 26310004 */   addiu $s1, $s1, 4
.L80041778:
/* 01CB78 80041778 0C03AD96 */  jal   func_800EB658
/* 01CB7C 8004177C 00000000 */   nop   
/* 01CB80 80041780 8EB0008C */  lw    $s0, 0x8c($s5)
/* 01CB84 80041784 A2A000A0 */  sb    $zero, 0xa0($s5)
/* 01CB88 80041788 A6A000A2 */  sh    $zero, 0xa2($s5)
/* 01CB8C 8004178C 920200B5 */  lbu   $v0, 0xb5($s0)
/* 01CB90 80041790 2404002D */  addiu $a0, $zero, 0x2d
/* 01CB94 80041794 0C03A752 */  jal   is_ability_active
/* 01CB98 80041798 A2A20010 */   sb    $v0, 0x10($s5)
/* 01CB9C 8004179C 10400008 */  beqz  $v0, .L800417C0
/* 01CBA0 800417A0 00000000 */   nop   
/* 01CBA4 800417A4 82A30005 */  lb    $v1, 5($s5)
/* 01CBA8 800417A8 24020003 */  addiu $v0, $zero, 3
/* 01CBAC 800417AC 14620004 */  bne   $v1, $v0, .L800417C0
/* 01CBB0 800417B0 00000000 */   nop   
/* 01CBB4 800417B4 24020004 */  addiu $v0, $zero, 4
/* 01CBB8 800417B8 A2A200A0 */  sb    $v0, 0xa0($s5)
/* 01CBBC 800417BC A6A300A2 */  sh    $v1, 0xa2($s5)
.L800417C0:
/* 01CBC0 800417C0 0C05271B */  jal   stop_sound
/* 01CBC4 800417C4 24042111 */   addiu $a0, $zero, 0x2111
/* 01CBC8 800417C8 0C05271B */  jal   stop_sound
/* 01CBCC 800417CC 24042112 */   addiu $a0, $zero, 0x2112
/* 01CBD0 800417D0 0C05271B */  jal   stop_sound
/* 01CBD4 800417D4 24042113 */   addiu $a0, $zero, 0x2113
/* 01CBD8 800417D8 0C05271B */  jal   stop_sound
/* 01CBDC 800417DC 24042114 */   addiu $a0, $zero, 0x2114
/* 01CBE0 800417E0 0C01CB37 */  jal   func_80072CDC
/* 01CBE4 800417E4 0000202D */   daddu $a0, $zero, $zero
/* 01CBE8 800417E8 86840046 */  lh    $a0, 0x46($s4)
/* 01CBEC 800417EC 0C01CB33 */  jal   func_80072CCC
/* 01CBF0 800417F0 00000000 */   nop   
/* 01CBF4 800417F4 0C01CB24 */  jal   load_battle
/* 01CBF8 800417F8 86840044 */   lh    $a0, 0x44($s4)
/* 01CBFC 800417FC 0000202D */  daddu $a0, $zero, $zero
/* 01CC00 80041800 3C05437F */  lui   $a1, 0x437f
/* 01CC04 80041804 24020001 */  addiu $v0, $zero, 1
/* 01CC08 80041808 A2A20007 */  sb    $v0, 7($s5)
/* 01CC0C 8004180C 240200FF */  addiu $v0, $zero, 0xff
/* 01CC10 80041810 A2A00008 */  sb    $zero, 8($s5)
/* 01CC14 80041814 A2A0000B */  sb    $zero, 0xb($s5)
/* 01CC18 80041818 A2A0000C */  sb    $zero, 0xc($s5)
/* 01CC1C 8004181C A6A0000E */  sh    $zero, 0xe($s5)
/* 01CC20 80041820 AEA00098 */  sw    $zero, 0x98($s5)
/* 01CC24 80041824 0C04DF62 */  jal   func_80137D88
/* 01CC28 80041828 AEA20090 */   sw    $v0, 0x90($s5)
/* 01CC2C 8004182C 24020005 */  addiu $v0, $zero, 5
/* 01CC30 80041830 3C01800A */  lui   $at, 0x800a
/* 01CC34 80041834 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01CC38 80041838 0801063E */  j     func_800418F8
/* 01CC3C 8004183C 24020001 */   addiu $v0, $zero, 1

.L80041840:
/* 01CC40 80041840 8EA2009C */  lw    $v0, 0x9c($s5)
/* 01CC44 80041844 10400003 */  beqz  $v0, .L80041854
/* 01CC48 80041848 2442FFFF */   addiu $v0, $v0, -1
.L8004184C:
/* 01CC4C 8004184C 0801064E */  j     func_80041938
/* 01CC50 80041850 AEA2009C */   sw    $v0, 0x9c($s5)

.L80041854:
/* 01CC54 80041854 8EB40088 */  lw    $s4, 0x88($s5)
/* 01CC58 80041858 8E820000 */  lw    $v0, ($s4)
/* 01CC5C 8004185C 18400019 */  blez  $v0, .L800418C4
/* 01CC60 80041860 0000982D */   daddu $s3, $zero, $zero
/* 01CC64 80041864 0280882D */  daddu $s1, $s4, $zero
.L80041868:
/* 01CC68 80041868 8E300004 */  lw    $s0, 4($s1)
/* 01CC6C 8004186C 12000010 */  beqz  $s0, .L800418B0
/* 01CC70 80041870 00000000 */   nop   
/* 01CC74 80041874 8E030000 */  lw    $v1, ($s0)
/* 01CC78 80041878 30620008 */  andi  $v0, $v1, 8
/* 01CC7C 8004187C 10400004 */  beqz  $v0, .L80041890
/* 01CC80 80041880 30620020 */   andi  $v0, $v1, 0x20
/* 01CC84 80041884 8EA2008C */  lw    $v0, 0x8c($s5)
/* 01CC88 80041888 16020009 */  bne   $s0, $v0, .L800418B0
/* 01CC8C 8004188C 30620020 */   andi  $v0, $v1, 0x20
.L80041890:
/* 01CC90 80041890 14400007 */  bnez  $v0, .L800418B0
/* 01CC94 80041894 00000000 */   nop   
/* 01CC98 80041898 8E020040 */  lw    $v0, 0x40($s0)
/* 01CC9C 8004189C 10400004 */  beqz  $v0, .L800418B0
/* 01CCA0 800418A0 00000000 */   nop   
/* 01CCA4 800418A4 0C0B102B */  jal   kill_script_by_ID
/* 01CCA8 800418A8 8E040058 */   lw    $a0, 0x58($s0)
/* 01CCAC 800418AC AE000040 */  sw    $zero, 0x40($s0)
.L800418B0:
/* 01CCB0 800418B0 8E820000 */  lw    $v0, ($s4)
/* 01CCB4 800418B4 26730001 */  addiu $s3, $s3, 1
/* 01CCB8 800418B8 0262102A */  slt   $v0, $s3, $v0
/* 01CCBC 800418BC 1440FFEA */  bnez  $v0, .L80041868
/* 01CCC0 800418C0 26310004 */   addiu $s1, $s1, 4
.L800418C4:
/* 01CCC4 800418C4 24020001 */  addiu $v0, $zero, 1
/* 01CCC8 800418C8 A2A20008 */  sb    $v0, 8($s5)
/* 01CCCC 800418CC A2A20007 */  sb    $v0, 7($s5)
/* 01CCD0 800418D0 24020005 */  addiu $v0, $zero, 5
/* 01CCD4 800418D4 A2A00009 */  sb    $zero, 9($s5)
/* 01CCD8 800418D8 A2A0000B */  sb    $zero, 0xb($s5)
/* 01CCDC 800418DC A2A0000C */  sb    $zero, 0xc($s5)
/* 01CCE0 800418E0 3C01800A */  lui   $at, 0x800a
/* 01CCE4 800418E4 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01CCE8 800418E8 24020001 */  addiu $v0, $zero, 1
/* 01CCEC 800418EC A6A0000E */  sh    $zero, 0xe($s5)
/* 01CCF0 800418F0 AEA00098 */  sw    $zero, 0x98($s5)
/* 01CCF4 800418F4 AEA00090 */  sw    $zero, 0x90($s5)
func_800418F8:
/* 01CCF8 800418F8 3C01800A */  lui   $at, 0x800a
/* 01CCFC 800418FC AC22A678 */  sw    $v0, -0x5988($at)
/* 01CD00 80041900 3C01800A */  lui   $at, 0x800a
/* 01CD04 80041904 AC20A5D0 */  sw    $zero, -0x5a30($at)
/* 01CD08 80041908 0801064E */  j     func_80041938
/* 01CD0C 8004190C 00000000 */   nop   

.L80041910:
/* 01CD10 80041910 A2A20009 */  sb    $v0, 9($s5)
/* 01CD14 80041914 24020005 */  addiu $v0, $zero, 5
/* 01CD18 80041918 A2A50008 */  sb    $a1, 8($s5)
/* 01CD1C 8004191C AEA00090 */  sw    $zero, 0x90($s5)
/* 01CD20 80041920 AEA00098 */  sw    $zero, 0x98($s5)
/* 01CD24 80041924 3C01800A */  lui   $at, 0x800a
/* 01CD28 80041928 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01CD2C 8004192C 3C01800A */  lui   $at, 0x800a
/* 01CD30 80041930 AC25A678 */  sw    $a1, -0x5988($at)
/* 01CD34 80041934 AC800000 */  sw    $zero, ($a0)
func_80041938:
.L80041938:
/* 01CD38 80041938 8FBF0030 */  lw    $ra, 0x30($sp)
/* 01CD3C 8004193C 8FB7002C */  lw    $s7, 0x2c($sp)
/* 01CD40 80041940 8FB60028 */  lw    $s6, 0x28($sp)
/* 01CD44 80041944 8FB50024 */  lw    $s5, 0x24($sp)
/* 01CD48 80041948 8FB40020 */  lw    $s4, 0x20($sp)
/* 01CD4C 8004194C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01CD50 80041950 8FB20018 */  lw    $s2, 0x18($sp)
/* 01CD54 80041954 8FB10014 */  lw    $s1, 0x14($sp)
/* 01CD58 80041958 8FB00010 */  lw    $s0, 0x10($sp)
/* 01CD5C 8004195C 03E00008 */  jr    $ra
/* 01CD60 80041960 27BD0038 */   addiu $sp, $sp, 0x38

func_80041964:
/* 01CD64 80041964 27BDFF88 */  addiu $sp, $sp, -0x78
/* 01CD68 80041968 AFB00038 */  sw    $s0, 0x38($sp)
/* 01CD6C 8004196C 3C10800B */  lui   $s0, 0x800b
/* 01CD70 80041970 26100F10 */  addiu $s0, $s0, 0xf10
/* 01CD74 80041974 AFBF0040 */  sw    $ra, 0x40($sp)
/* 01CD78 80041978 AFB1003C */  sw    $s1, 0x3c($sp)
/* 01CD7C 8004197C F7BE0070 */  sdc1  $f30, 0x70($sp)
/* 01CD80 80041980 F7BC0068 */  sdc1  $f28, 0x68($sp)
/* 01CD84 80041984 F7BA0060 */  sdc1  $f26, 0x60($sp)
/* 01CD88 80041988 F7B80058 */  sdc1  $f24, 0x58($sp)
/* 01CD8C 8004198C F7B60050 */  sdc1  $f22, 0x50($sp)
/* 01CD90 80041990 F7B40048 */  sdc1  $f20, 0x48($sp)
/* 01CD94 80041994 8E02008C */  lw    $v0, 0x8c($s0)
/* 01CD98 80041998 84440008 */  lh    $a0, 8($v0)
/* 01CD9C 8004199C 0C00EABB */  jal   get_npc_unsafe
/* 01CDA0 800419A0 0200882D */   daddu $s1, $s0, $zero
/* 01CDA4 800419A4 0040382D */  daddu $a3, $v0, $zero
/* 01CDA8 800419A8 8E020094 */  lw    $v0, 0x94($s0)
/* 01CDAC 800419AC 3C048011 */  lui   $a0, 0x8011
/* 01CDB0 800419B0 2484EFC8 */  addiu $a0, $a0, -0x1038
/* 01CDB4 800419B4 1040009E */  beqz  $v0, .L80041C30
/* 01CDB8 800419B8 240500FF */   addiu $a1, $zero, 0xff
/* 01CDBC 800419BC 8E030090 */  lw    $v1, 0x90($s0)
/* 01CDC0 800419C0 1065009B */  beq   $v1, $a1, .L80041C30
/* 01CDC4 800419C4 00000000 */   nop   
/* 01CDC8 800419C8 8E020098 */  lw    $v0, 0x98($s0)
/* 01CDCC 800419CC 24420001 */  addiu $v0, $v0, 1
/* 01CDD0 800419D0 AE020098 */  sw    $v0, 0x98($s0)
/* 01CDD4 800419D4 2842000B */  slti  $v0, $v0, 0xb
/* 01CDD8 800419D8 14400002 */  bnez  $v0, .L800419E4
/* 01CDDC 800419DC 2402000A */   addiu $v0, $zero, 0xa
/* 01CDE0 800419E0 AE020098 */  sw    $v0, 0x98($s0)
.L800419E4:
/* 01CDE4 800419E4 8E020098 */  lw    $v0, 0x98($s0)
/* 01CDE8 800419E8 00621021 */  addu  $v0, $v1, $v0
/* 01CDEC 800419EC AE020090 */  sw    $v0, 0x90($s0)
/* 01CDF0 800419F0 28420100 */  slti  $v0, $v0, 0x100
/* 01CDF4 800419F4 50400001 */  beql  $v0, $zero, .L800419FC
/* 01CDF8 800419F8 AE050090 */   sw    $a1, 0x90($s0)
.L800419FC:
/* 01CDFC 800419FC C4FE0038 */  lwc1  $f30, 0x38($a3)
/* 01CE00 80041A00 C4FA003C */  lwc1  $f26, 0x3c($a3)
/* 01CE04 80041A04 3C01C477 */  lui   $at, 0xc477
/* 01CE08 80041A08 34218000 */  ori   $at, $at, 0x8000
/* 01CE0C 80041A0C 44810000 */  mtc1  $at, $f0
/* 01CE10 80041A10 C4FC0040 */  lwc1  $f28, 0x40($a3)
/* 01CE14 80041A14 C4940028 */  lwc1  $f20, 0x28($a0)
/* 01CE18 80041A18 C498002C */  lwc1  $f24, 0x2c($a0)
/* 01CE1C 80041A1C C4960030 */  lwc1  $f22, 0x30($a0)
/* 01CE20 80041A20 4600D03C */  c.lt.s $f26, $f0
/* 01CE24 80041A24 00000000 */  nop   
/* 01CE28 80041A28 45000004 */  bc1f  .L80041A3C
/* 01CE2C 80041A2C 00000000 */   nop   
/* 01CE30 80041A30 4600A786 */  mov.s $f30, $f20
/* 01CE34 80041A34 4600C686 */  mov.s $f26, $f24
/* 01CE38 80041A38 4600B706 */  mov.s $f28, $f22
.L80041A3C:
/* 01CE3C 80041A3C 3C028007 */  lui   $v0, 0x8007
/* 01CE40 80041A40 8C42419C */  lw    $v0, 0x419c($v0)
/* 01CE44 80041A44 80430071 */  lb    $v1, 0x71($v0)
/* 01CE48 80041A48 24020002 */  addiu $v0, $zero, 2
/* 01CE4C 80041A4C 1462003C */  bne   $v1, $v0, .L80041B40
/* 01CE50 80041A50 00000000 */   nop   
/* 01CE54 80041A54 C6020090 */  lwc1  $f2, 0x90($s0)
/* 01CE58 80041A58 468010A0 */  cvt.s.w $f2, $f2
/* 01CE5C 80041A5C 44051000 */  mfc1  $a1, $f2
/* 01CE60 80041A60 0C04DF69 */  jal   func_80137DA4
/* 01CE64 80041A64 2404000A */   addiu $a0, $zero, 0xa
/* 01CE68 80041A68 3C05437F */  lui   $a1, 0x437f
/* 01CE6C 80041A6C 0C04E035 */  jal   func_801380D4
/* 01CE70 80041A70 24040001 */   addiu $a0, $zero, 1
/* 01CE74 80041A74 24040001 */  addiu $a0, $zero, 1
/* 01CE78 80041A78 0000282D */  daddu $a1, $zero, $zero
/* 01CE7C 80041A7C 00A0302D */  daddu $a2, $a1, $zero
/* 01CE80 80041A80 0C04DF84 */  jal   func_80137E10
/* 01CE84 80041A84 00A0382D */   daddu $a3, $a1, $zero
/* 01CE88 80041A88 3C108007 */  lui   $s0, 0x8007
/* 01CE8C 80041A8C 26107410 */  addiu $s0, $s0, 0x7410
/* 01CE90 80041A90 8E040000 */  lw    $a0, ($s0)
/* 01CE94 80041A94 4405A000 */  mfc1  $a1, $f20
/* 01CE98 80041A98 4407B000 */  mfc1  $a3, $f22
/* 01CE9C 80041A9C 3C0141A0 */  lui   $at, 0x41a0
/* 01CEA0 80041AA0 44810000 */  mtc1  $at, $f0
/* 01CEA4 80041AA4 27A20020 */  addiu $v0, $sp, 0x20
/* 01CEA8 80041AA8 AFA20010 */  sw    $v0, 0x10($sp)
/* 01CEAC 80041AAC 4600C600 */  add.s $f24, $f24, $f0
/* 01CEB0 80041AB0 27A20024 */  addiu $v0, $sp, 0x24
/* 01CEB4 80041AB4 AFA20014 */  sw    $v0, 0x14($sp)
/* 01CEB8 80041AB8 4406C000 */  mfc1  $a2, $f24
/* 01CEBC 80041ABC 27A20028 */  addiu $v0, $sp, 0x28
/* 01CEC0 80041AC0 0C00B94E */  jal   get_screen_coords
/* 01CEC4 80041AC4 AFA20018 */   sw    $v0, 0x18($sp)
/* 01CEC8 80041AC8 8E040000 */  lw    $a0, ($s0)
/* 01CECC 80041ACC 4405F000 */  mfc1  $a1, $f30
/* 01CED0 80041AD0 4407E000 */  mfc1  $a3, $f28
/* 01CED4 80041AD4 3C014170 */  lui   $at, 0x4170
/* 01CED8 80041AD8 44810000 */  mtc1  $at, $f0
/* 01CEDC 80041ADC 27A2002C */  addiu $v0, $sp, 0x2c
/* 01CEE0 80041AE0 AFA20010 */  sw    $v0, 0x10($sp)
/* 01CEE4 80041AE4 4600D680 */  add.s $f26, $f26, $f0
/* 01CEE8 80041AE8 27A20030 */  addiu $v0, $sp, 0x30
/* 01CEEC 80041AEC AFA20014 */  sw    $v0, 0x14($sp)
/* 01CEF0 80041AF0 4406D000 */  mfc1  $a2, $f26
/* 01CEF4 80041AF4 27A20034 */  addiu $v0, $sp, 0x34
/* 01CEF8 80041AF8 0C00B94E */  jal   get_screen_coords
/* 01CEFC 80041AFC AFA20018 */   sw    $v0, 0x18($sp)
/* 01CF00 80041B00 24040001 */  addiu $a0, $zero, 1
/* 01CF04 80041B04 0000282D */  daddu $a1, $zero, $zero
/* 01CF08 80041B08 8FA60020 */  lw    $a2, 0x20($sp)
/* 01CF0C 80041B0C 8FA8002C */  lw    $t0, 0x2c($sp)
/* 01CF10 80041B10 8FA70024 */  lw    $a3, 0x24($sp)
/* 01CF14 80041B14 8FA30030 */  lw    $v1, 0x30($sp)
/* 01CF18 80041B18 00C83023 */  subu  $a2, $a2, $t0
/* 01CF1C 80041B1C 000617C2 */  srl   $v0, $a2, 0x1f
/* 01CF20 80041B20 00C23021 */  addu  $a2, $a2, $v0
/* 01CF24 80041B24 00863007 */  srav  $a2, $a2, $a0
/* 01CF28 80041B28 00C83021 */  addu  $a2, $a2, $t0
/* 01CF2C 80041B2C 00E33823 */  subu  $a3, $a3, $v1
/* 01CF30 80041B30 000717C2 */  srl   $v0, $a3, 0x1f
/* 01CF34 80041B34 00E23821 */  addu  $a3, $a3, $v0
/* 01CF38 80041B38 0801070A */  j     func_80041C28
/* 01CF3C 80041B3C 00873807 */   srav  $a3, $a3, $a0

.L80041B40:
/* 01CF40 80041B40 C6220090 */  lwc1  $f2, 0x90($s1)
/* 01CF44 80041B44 468010A0 */  cvt.s.w $f2, $f2
/* 01CF48 80041B48 44051000 */  mfc1  $a1, $f2
/* 01CF4C 80041B4C 0C04DF62 */  jal   func_80137D88
/* 01CF50 80041B50 2404000A */   addiu $a0, $zero, 0xa
/* 01CF54 80041B54 3C05437F */  lui   $a1, 0x437f
/* 01CF58 80041B58 0C04E035 */  jal   func_801380D4
/* 01CF5C 80041B5C 0000202D */   daddu $a0, $zero, $zero
/* 01CF60 80041B60 0000202D */  daddu $a0, $zero, $zero
/* 01CF64 80041B64 0080282D */  daddu $a1, $a0, $zero
/* 01CF68 80041B68 0080302D */  daddu $a2, $a0, $zero
/* 01CF6C 80041B6C 0C04DF84 */  jal   func_80137E10
/* 01CF70 80041B70 0080382D */   daddu $a3, $a0, $zero
/* 01CF74 80041B74 3C108007 */  lui   $s0, 0x8007
/* 01CF78 80041B78 26107410 */  addiu $s0, $s0, 0x7410
/* 01CF7C 80041B7C 8E040000 */  lw    $a0, ($s0)
/* 01CF80 80041B80 4405A000 */  mfc1  $a1, $f20
/* 01CF84 80041B84 4407B000 */  mfc1  $a3, $f22
/* 01CF88 80041B88 3C0141A0 */  lui   $at, 0x41a0
/* 01CF8C 80041B8C 44810000 */  mtc1  $at, $f0
/* 01CF90 80041B90 27A20020 */  addiu $v0, $sp, 0x20
/* 01CF94 80041B94 AFA20010 */  sw    $v0, 0x10($sp)
/* 01CF98 80041B98 4600C600 */  add.s $f24, $f24, $f0
/* 01CF9C 80041B9C 27A20024 */  addiu $v0, $sp, 0x24
/* 01CFA0 80041BA0 AFA20014 */  sw    $v0, 0x14($sp)
/* 01CFA4 80041BA4 4406C000 */  mfc1  $a2, $f24
/* 01CFA8 80041BA8 27A20028 */  addiu $v0, $sp, 0x28
/* 01CFAC 80041BAC 0C00B94E */  jal   get_screen_coords
/* 01CFB0 80041BB0 AFA20018 */   sw    $v0, 0x18($sp)
/* 01CFB4 80041BB4 8E040000 */  lw    $a0, ($s0)
/* 01CFB8 80041BB8 4405F000 */  mfc1  $a1, $f30
/* 01CFBC 80041BBC 4407E000 */  mfc1  $a3, $f28
/* 01CFC0 80041BC0 3C014170 */  lui   $at, 0x4170
/* 01CFC4 80041BC4 44810000 */  mtc1  $at, $f0
/* 01CFC8 80041BC8 27A2002C */  addiu $v0, $sp, 0x2c
/* 01CFCC 80041BCC AFA20010 */  sw    $v0, 0x10($sp)
/* 01CFD0 80041BD0 4600D680 */  add.s $f26, $f26, $f0
/* 01CFD4 80041BD4 27A20030 */  addiu $v0, $sp, 0x30
/* 01CFD8 80041BD8 AFA20014 */  sw    $v0, 0x14($sp)
/* 01CFDC 80041BDC 4406D000 */  mfc1  $a2, $f26
/* 01CFE0 80041BE0 27A20034 */  addiu $v0, $sp, 0x34
/* 01CFE4 80041BE4 0C00B94E */  jal   get_screen_coords
/* 01CFE8 80041BE8 AFA20018 */   sw    $v0, 0x18($sp)
/* 01CFEC 80041BEC 0000202D */  daddu $a0, $zero, $zero
/* 01CFF0 80041BF0 0080282D */  daddu $a1, $a0, $zero
/* 01CFF4 80041BF4 8FA60020 */  lw    $a2, 0x20($sp)
/* 01CFF8 80041BF8 8FA8002C */  lw    $t0, 0x2c($sp)
/* 01CFFC 80041BFC 8FA70024 */  lw    $a3, 0x24($sp)
/* 01D000 80041C00 8FA30030 */  lw    $v1, 0x30($sp)
/* 01D004 80041C04 00C83023 */  subu  $a2, $a2, $t0
/* 01D008 80041C08 000617C2 */  srl   $v0, $a2, 0x1f
/* 01D00C 80041C0C 00C23021 */  addu  $a2, $a2, $v0
/* 01D010 80041C10 00063043 */  sra   $a2, $a2, 1
/* 01D014 80041C14 00C83021 */  addu  $a2, $a2, $t0
/* 01D018 80041C18 00E33823 */  subu  $a3, $a3, $v1
/* 01D01C 80041C1C 000717C2 */  srl   $v0, $a3, 0x1f
/* 01D020 80041C20 00E23821 */  addu  $a3, $a3, $v0
/* 01D024 80041C24 00073843 */  sra   $a3, $a3, 1
func_80041C28:
/* 01D028 80041C28 0C04DF93 */  jal   func_80137E4C
/* 01D02C 80041C2C 00E33821 */   addu  $a3, $a3, $v1
.L80041C30:
/* 01D030 80041C30 8FBF0040 */  lw    $ra, 0x40($sp)
/* 01D034 80041C34 8FB1003C */  lw    $s1, 0x3c($sp)
/* 01D038 80041C38 8FB00038 */  lw    $s0, 0x38($sp)
/* 01D03C 80041C3C D7BE0070 */  ldc1  $f30, 0x70($sp)
/* 01D040 80041C40 D7BC0068 */  ldc1  $f28, 0x68($sp)
/* 01D044 80041C44 D7BA0060 */  ldc1  $f26, 0x60($sp)
/* 01D048 80041C48 D7B80058 */  ldc1  $f24, 0x58($sp)
/* 01D04C 80041C4C D7B60050 */  ldc1  $f22, 0x50($sp)
/* 01D050 80041C50 D7B40048 */  ldc1  $f20, 0x48($sp)
/* 01D054 80041C54 03E00008 */  jr    $ra
/* 01D058 80041C58 27BD0078 */   addiu $sp, $sp, 0x78

show_first_strike_message:
/* 01D05C 80041C5C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 01D060 80041C60 3C05800B */  lui   $a1, 0x800b
/* 01D064 80041C64 24A50F10 */  addiu $a1, $a1, 0xf10
/* 01D068 80041C68 AFBF0054 */  sw    $ra, 0x54($sp)
/* 01D06C 80041C6C AFB00050 */  sw    $s0, 0x50($sp)
/* 01D070 80041C70 8CA20094 */  lw    $v0, 0x94($a1)
/* 01D074 80041C74 14400005 */  bnez  $v0, .L80041C8C
/* 01D078 80041C78 2402FF38 */   addiu $v0, $zero, -0xc8
/* 01D07C 80041C7C 3C01800A */  lui   $at, 0x800a
/* 01D080 80041C80 A422A668 */  sh    $v0, -0x5998($at)
/* 01D084 80041C84 080107C0 */  j     func_80041F00
/* 01D088 80041C88 00000000 */   nop   

.L80041C8C:
/* 01D08C 80041C8C 3C02800A */  lui   $v0, 0x800a
/* 01D090 80041C90 2442A668 */  addiu $v0, $v0, -0x5998
/* 01D094 80041C94 94430000 */  lhu   $v1, ($v0)
/* 01D098 80041C98 24630028 */  addiu $v1, $v1, 0x28
/* 01D09C 80041C9C 00032400 */  sll   $a0, $v1, 0x10
/* 01D0A0 80041CA0 00048403 */  sra   $s0, $a0, 0x10
/* 01D0A4 80041CA4 1A000005 */  blez  $s0, .L80041CBC
/* 01D0A8 80041CA8 A4430000 */   sh    $v1, ($v0)
/* 01D0AC 80041CAC 2A020640 */  slti  $v0, $s0, 0x640
/* 01D0B0 80041CB0 10400002 */  beqz  $v0, .L80041CBC
/* 01D0B4 80041CB4 2610F9C0 */   addiu $s0, $s0, -0x640
/* 01D0B8 80041CB8 0000802D */  daddu $s0, $zero, $zero
.L80041CBC:
/* 01D0BC 80041CBC 80A30004 */  lb    $v1, 4($a1)
/* 01D0C0 80041CC0 24020001 */  addiu $v0, $zero, 1
/* 01D0C4 80041CC4 10620005 */  beq   $v1, $v0, .L80041CDC
/* 01D0C8 80041CC8 24020002 */   addiu $v0, $zero, 2
/* 01D0CC 80041CCC 1062005D */  beq   $v1, $v0, .L80041E44
/* 01D0D0 80041CD0 00000000 */   nop   
/* 01D0D4 80041CD4 080107C0 */  j     func_80041F00
/* 01D0D8 80041CD8 00000000 */   nop   

.L80041CDC:
/* 01D0DC 80041CDC 80A30005 */  lb    $v1, 5($a1)
/* 01D0E0 80041CE0 24020004 */  addiu $v0, $zero, 4
/* 01D0E4 80041CE4 1062000C */  beq   $v1, $v0, .L80041D18
/* 01D0E8 80041CE8 28620005 */   slti  $v0, $v1, 5
/* 01D0EC 80041CEC 10400005 */  beqz  $v0, .L80041D04
/* 01D0F0 80041CF0 24020002 */   addiu $v0, $zero, 2
/* 01D0F4 80041CF4 10620009 */  beq   $v1, $v0, .L80041D1C
/* 01D0F8 80041CF8 3C04001D */   lui   $a0, 0x1d
/* 01D0FC 80041CFC 080107C0 */  j     func_80041F00
/* 01D100 80041D00 00000000 */   nop   

.L80041D04:
/* 01D104 80041D04 24020006 */  addiu $v0, $zero, 6
/* 01D108 80041D08 10620029 */  beq   $v1, $v0, .L80041DB0
/* 01D10C 80041D0C 3C04001D */   lui   $a0, 0x1d
/* 01D110 80041D10 080107C0 */  j     func_80041F00
/* 01D114 80041D14 00000000 */   nop   

.L80041D18:
/* 01D118 80041D18 3C04001D */  lui   $a0, 0x1d
.L80041D1C:
/* 01D11C 80041D1C 348400AC */  ori   $a0, $a0, 0xac
/* 01D120 80041D20 0C04991D */  jal   get_string_width
/* 01D124 80041D24 0000282D */   daddu $a1, $zero, $zero
/* 01D128 80041D28 24480018 */  addiu $t0, $v0, 0x18
/* 01D12C 80041D2C 260300A0 */  addiu $v1, $s0, 0xa0
/* 01D130 80041D30 000817C2 */  srl   $v0, $t0, 0x1f
/* 01D134 80041D34 01021021 */  addu  $v0, $t0, $v0
/* 01D138 80041D38 00021043 */  sra   $v0, $v0, 1
/* 01D13C 80041D3C 00628023 */  subu  $s0, $v1, $v0
/* 01D140 80041D40 0000202D */  daddu $a0, $zero, $zero
/* 01D144 80041D44 24050014 */  addiu $a1, $zero, 0x14
/* 01D148 80041D48 0200302D */  daddu $a2, $s0, $zero
/* 01D14C 80041D4C 24070045 */  addiu $a3, $zero, 0x45
/* 01D150 80041D50 2402001C */  addiu $v0, $zero, 0x1c
/* 01D154 80041D54 AFA20018 */  sw    $v0, 0x18($sp)
/* 01D158 80041D58 240200FF */  addiu $v0, $zero, 0xff
/* 01D15C 80041D5C AFA2001C */  sw    $v0, 0x1c($sp)
/* 01D160 80041D60 24020140 */  addiu $v0, $zero, 0x140
/* 01D164 80041D64 AFA20044 */  sw    $v0, 0x44($sp)
/* 01D168 80041D68 240200F0 */  addiu $v0, $zero, 0xf0
/* 01D16C 80041D6C AFA00010 */  sw    $zero, 0x10($sp)
/* 01D170 80041D70 AFA80014 */  sw    $t0, 0x14($sp)
/* 01D174 80041D74 AFA00020 */  sw    $zero, 0x20($sp)
/* 01D178 80041D78 AFA00024 */  sw    $zero, 0x24($sp)
/* 01D17C 80041D7C AFA00028 */  sw    $zero, 0x28($sp)
/* 01D180 80041D80 AFA0002C */  sw    $zero, 0x2c($sp)
/* 01D184 80041D84 AFA00030 */  sw    $zero, 0x30($sp)
/* 01D188 80041D88 AFA00034 */  sw    $zero, 0x34($sp)
/* 01D18C 80041D8C AFA00038 */  sw    $zero, 0x38($sp)
/* 01D190 80041D90 AFA0003C */  sw    $zero, 0x3c($sp)
/* 01D194 80041D94 AFA00040 */  sw    $zero, 0x40($sp)
/* 01D198 80041D98 AFA20048 */  sw    $v0, 0x48($sp)
/* 01D19C 80041D9C 0C03D4B8 */  jal   draw_box
/* 01D1A0 80041DA0 AFA0004C */   sw    $zero, 0x4c($sp)
/* 01D1A4 80041DA4 3C04001D */  lui   $a0, 0x1d
/* 01D1A8 80041DA8 080107B9 */  j     func_80041EE4
/* 01D1AC 80041DAC 348400AC */   ori   $a0, $a0, 0xac

.L80041DB0:
/* 01D1B0 80041DB0 348400AD */  ori   $a0, $a0, 0xad
/* 01D1B4 80041DB4 0C04991D */  jal   get_string_width
/* 01D1B8 80041DB8 0000282D */   daddu $a1, $zero, $zero
/* 01D1BC 80041DBC 24480018 */  addiu $t0, $v0, 0x18
/* 01D1C0 80041DC0 260300A0 */  addiu $v1, $s0, 0xa0
/* 01D1C4 80041DC4 000817C2 */  srl   $v0, $t0, 0x1f
/* 01D1C8 80041DC8 01021021 */  addu  $v0, $t0, $v0
/* 01D1CC 80041DCC 00021043 */  sra   $v0, $v0, 1
/* 01D1D0 80041DD0 00628023 */  subu  $s0, $v1, $v0
/* 01D1D4 80041DD4 0000202D */  daddu $a0, $zero, $zero
/* 01D1D8 80041DD8 24050014 */  addiu $a1, $zero, 0x14
/* 01D1DC 80041DDC 0200302D */  daddu $a2, $s0, $zero
/* 01D1E0 80041DE0 24070045 */  addiu $a3, $zero, 0x45
/* 01D1E4 80041DE4 2402001C */  addiu $v0, $zero, 0x1c
/* 01D1E8 80041DE8 AFA20018 */  sw    $v0, 0x18($sp)
/* 01D1EC 80041DEC 240200FF */  addiu $v0, $zero, 0xff
/* 01D1F0 80041DF0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 01D1F4 80041DF4 24020140 */  addiu $v0, $zero, 0x140
/* 01D1F8 80041DF8 AFA20044 */  sw    $v0, 0x44($sp)
/* 01D1FC 80041DFC 240200F0 */  addiu $v0, $zero, 0xf0
/* 01D200 80041E00 AFA00010 */  sw    $zero, 0x10($sp)
/* 01D204 80041E04 AFA80014 */  sw    $t0, 0x14($sp)
/* 01D208 80041E08 AFA00020 */  sw    $zero, 0x20($sp)
/* 01D20C 80041E0C AFA00024 */  sw    $zero, 0x24($sp)
/* 01D210 80041E10 AFA00028 */  sw    $zero, 0x28($sp)
/* 01D214 80041E14 AFA0002C */  sw    $zero, 0x2c($sp)
/* 01D218 80041E18 AFA00030 */  sw    $zero, 0x30($sp)
/* 01D21C 80041E1C AFA00034 */  sw    $zero, 0x34($sp)
/* 01D220 80041E20 AFA00038 */  sw    $zero, 0x38($sp)
/* 01D224 80041E24 AFA0003C */  sw    $zero, 0x3c($sp)
/* 01D228 80041E28 AFA00040 */  sw    $zero, 0x40($sp)
/* 01D22C 80041E2C AFA20048 */  sw    $v0, 0x48($sp)
/* 01D230 80041E30 0C03D4B8 */  jal   draw_box
/* 01D234 80041E34 AFA0004C */   sw    $zero, 0x4c($sp)
/* 01D238 80041E38 3C04001D */  lui   $a0, 0x1d
/* 01D23C 80041E3C 080107B9 */  j     func_80041EE4
/* 01D240 80041E40 348400AD */   ori   $a0, $a0, 0xad

.L80041E44:
/* 01D244 80041E44 0C03A752 */  jal   is_ability_active
/* 01D248 80041E48 24040011 */   addiu $a0, $zero, 0x11
/* 01D24C 80041E4C 1440002C */  bnez  $v0, .L80041F00
/* 01D250 80041E50 3C04001D */   lui   $a0, 0x1d
/* 01D254 80041E54 348400AE */  ori   $a0, $a0, 0xae
/* 01D258 80041E58 0C04991D */  jal   get_string_width
/* 01D25C 80041E5C 0000282D */   daddu $a1, $zero, $zero
/* 01D260 80041E60 24480018 */  addiu $t0, $v0, 0x18
/* 01D264 80041E64 260300A0 */  addiu $v1, $s0, 0xa0
/* 01D268 80041E68 000817C2 */  srl   $v0, $t0, 0x1f
/* 01D26C 80041E6C 01021021 */  addu  $v0, $t0, $v0
/* 01D270 80041E70 00021043 */  sra   $v0, $v0, 1
/* 01D274 80041E74 00628023 */  subu  $s0, $v1, $v0
/* 01D278 80041E78 0000202D */  daddu $a0, $zero, $zero
/* 01D27C 80041E7C 24050004 */  addiu $a1, $zero, 4
/* 01D280 80041E80 0200302D */  daddu $a2, $s0, $zero
/* 01D284 80041E84 24070045 */  addiu $a3, $zero, 0x45
/* 01D288 80041E88 2402001C */  addiu $v0, $zero, 0x1c
/* 01D28C 80041E8C AFA20018 */  sw    $v0, 0x18($sp)
/* 01D290 80041E90 240200FF */  addiu $v0, $zero, 0xff
/* 01D294 80041E94 AFA2001C */  sw    $v0, 0x1c($sp)
/* 01D298 80041E98 24020140 */  addiu $v0, $zero, 0x140
/* 01D29C 80041E9C AFA20044 */  sw    $v0, 0x44($sp)
/* 01D2A0 80041EA0 240200F0 */  addiu $v0, $zero, 0xf0
/* 01D2A4 80041EA4 AFA00010 */  sw    $zero, 0x10($sp)
/* 01D2A8 80041EA8 AFA80014 */  sw    $t0, 0x14($sp)
/* 01D2AC 80041EAC AFA00020 */  sw    $zero, 0x20($sp)
/* 01D2B0 80041EB0 AFA00024 */  sw    $zero, 0x24($sp)
/* 01D2B4 80041EB4 AFA00028 */  sw    $zero, 0x28($sp)
/* 01D2B8 80041EB8 AFA0002C */  sw    $zero, 0x2c($sp)
/* 01D2BC 80041EBC AFA00030 */  sw    $zero, 0x30($sp)
/* 01D2C0 80041EC0 AFA00034 */  sw    $zero, 0x34($sp)
/* 01D2C4 80041EC4 AFA00038 */  sw    $zero, 0x38($sp)
/* 01D2C8 80041EC8 AFA0003C */  sw    $zero, 0x3c($sp)
/* 01D2CC 80041ECC AFA00040 */  sw    $zero, 0x40($sp)
/* 01D2D0 80041ED0 AFA20048 */  sw    $v0, 0x48($sp)
/* 01D2D4 80041ED4 0C03D4B8 */  jal   draw_box
/* 01D2D8 80041ED8 AFA0004C */   sw    $zero, 0x4c($sp)
/* 01D2DC 80041EDC 3C04001D */  lui   $a0, 0x1d
/* 01D2E0 80041EE0 348400AE */  ori   $a0, $a0, 0xae
func_80041EE4:
/* 01D2E4 80041EE4 2605000B */  addiu $a1, $s0, 0xb
/* 01D2E8 80041EE8 2406004B */  addiu $a2, $zero, 0x4b
/* 01D2EC 80041EEC 240700FF */  addiu $a3, $zero, 0xff
/* 01D2F0 80041EF0 2402000A */  addiu $v0, $zero, 0xa
/* 01D2F4 80041EF4 AFA20010 */  sw    $v0, 0x10($sp)
/* 01D2F8 80041EF8 0C04993B */  jal   draw_string
/* 01D2FC 80041EFC AFA00014 */   sw    $zero, 0x14($sp)
func_80041F00:
.L80041F00:
/* 01D300 80041F00 8FBF0054 */  lw    $ra, 0x54($sp)
/* 01D304 80041F04 8FB00050 */  lw    $s0, 0x50($sp)
/* 01D308 80041F08 03E00008 */  jr    $ra
/* 01D30C 80041F0C 27BD0058 */   addiu $sp, $sp, 0x58

func_80041F10:
/* 01D310 80041F10 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01D314 80041F14 AFB60028 */  sw    $s6, 0x28($sp)
/* 01D318 80041F18 3C16800B */  lui   $s6, 0x800b
/* 01D31C 80041F1C 26D60F10 */  addiu $s6, $s6, 0xf10
/* 01D320 80041F20 AFB7002C */  sw    $s7, 0x2c($sp)
/* 01D324 80041F24 3C178011 */  lui   $s7, 0x8011
/* 01D328 80041F28 26F7EFC8 */  addiu $s7, $s7, -0x1038
/* 01D32C 80041F2C AFB00010 */  sw    $s0, 0x10($sp)
/* 01D330 80041F30 3C108011 */  lui   $s0, 0x8011
/* 01D334 80041F34 2610F290 */  addiu $s0, $s0, -0xd70
/* 01D338 80041F38 3C04800A */  lui   $a0, 0x800a
/* 01D33C 80041F3C 2484A5D0 */  addiu $a0, $a0, -0x5a30
/* 01D340 80041F40 AFBF0034 */  sw    $ra, 0x34($sp)
/* 01D344 80041F44 AFBE0030 */  sw    $fp, 0x30($sp)
/* 01D348 80041F48 AFB50024 */  sw    $s5, 0x24($sp)
/* 01D34C 80041F4C AFB40020 */  sw    $s4, 0x20($sp)
/* 01D350 80041F50 AFB3001C */  sw    $s3, 0x1c($sp)
/* 01D354 80041F54 AFB20018 */  sw    $s2, 0x18($sp)
/* 01D358 80041F58 AFB10014 */  sw    $s1, 0x14($sp)
/* 01D35C 80041F5C 8C830000 */  lw    $v1, ($a0)
/* 01D360 80041F60 24050066 */  addiu $a1, $zero, 0x66
/* 01D364 80041F64 106501FC */  beq   $v1, $a1, .L80042758
/* 01D368 80041F68 28620067 */   slti  $v0, $v1, 0x67
/* 01D36C 80041F6C 1040001D */  beqz  $v0, .L80041FE4
/* 01D370 80041F70 24020004 */   addiu $v0, $zero, 4
/* 01D374 80041F74 10620183 */  beq   $v1, $v0, .L80042584
/* 01D378 80041F78 28620005 */   slti  $v0, $v1, 5
/* 01D37C 80041F7C 10400009 */  beqz  $v0, .L80041FA4
/* 01D380 80041F80 24020002 */   addiu $v0, $zero, 2
/* 01D384 80041F84 1062011C */  beq   $v1, $v0, .L800423F8
/* 01D388 80041F88 28620003 */   slti  $v0, $v1, 3
/* 01D38C 80041F8C 1040011F */  beqz  $v0, .L8004240C
/* 01D390 80041F90 0000902D */   daddu $s2, $zero, $zero
/* 01D394 80041F94 10600037 */  beqz  $v1, .L80042074
/* 01D398 80041F98 00000000 */   nop   
/* 01D39C 80041F9C 08010BD3 */  j     func_80042F4C
/* 01D3A0 80041FA0 00000000 */   nop   

.L80041FA4:
/* 01D3A4 80041FA4 2402000B */  addiu $v0, $zero, 0xb
/* 01D3A8 80041FA8 106200B3 */  beq   $v1, $v0, .L80042278
/* 01D3AC 80041FAC 2862000C */   slti  $v0, $v1, 0xc
/* 01D3B0 80041FB0 10400005 */  beqz  $v0, .L80041FC8
/* 01D3B4 80041FB4 2402000A */   addiu $v0, $zero, 0xa
/* 01D3B8 80041FB8 10620090 */  beq   $v1, $v0, .L800421FC
/* 01D3BC 80041FBC 00000000 */   nop   
/* 01D3C0 80041FC0 08010BD3 */  j     func_80042F4C
/* 01D3C4 80041FC4 00000000 */   nop   

.L80041FC8:
/* 01D3C8 80041FC8 24020064 */  addiu $v0, $zero, 0x64
/* 01D3CC 80041FCC 106201B1 */  beq   $v1, $v0, .L80042694
/* 01D3D0 80041FD0 24020065 */   addiu $v0, $zero, 0x65
/* 01D3D4 80041FD4 106201DB */  beq   $v1, $v0, .L80042744
/* 01D3D8 80041FD8 00000000 */   nop   
/* 01D3DC 80041FDC 08010BD3 */  j     func_80042F4C
/* 01D3E0 80041FE0 00000000 */   nop   

.L80041FE4:
/* 01D3E4 80041FE4 240200CB */  addiu $v0, $zero, 0xcb
/* 01D3E8 80041FE8 106202F9 */  beq   $v1, $v0, .L80042BD0
/* 01D3EC 80041FEC 286200CC */   slti  $v0, $v1, 0xcc
/* 01D3F0 80041FF0 10400010 */  beqz  $v0, .L80042034
/* 01D3F4 80041FF4 240200C8 */   addiu $v0, $zero, 0xc8
/* 01D3F8 80041FF8 10620278 */  beq   $v1, $v0, .L800429DC
/* 01D3FC 80041FFC 286200C9 */   slti  $v0, $v1, 0xc9
/* 01D400 80042000 10400005 */  beqz  $v0, .L80042018
/* 01D404 80042004 24020067 */   addiu $v0, $zero, 0x67
/* 01D408 80042008 1062025A */  beq   $v1, $v0, .L80042974
/* 01D40C 8004200C 00000000 */   nop   
/* 01D410 80042010 08010BD3 */  j     func_80042F4C
/* 01D414 80042014 00000000 */   nop   

.L80042018:
/* 01D418 80042018 240200C9 */  addiu $v0, $zero, 0xc9
/* 01D41C 8004201C 1062029B */  beq   $v1, $v0, .L80042A8C
/* 01D420 80042020 240200CA */   addiu $v0, $zero, 0xca
/* 01D424 80042024 1062029E */  beq   $v1, $v0, .L80042AA0
/* 01D428 80042028 0000902D */   daddu $s2, $zero, $zero
/* 01D42C 8004202C 08010BD3 */  j     func_80042F4C
/* 01D430 80042030 00000000 */   nop   

.L80042034:
/* 01D434 80042034 24020190 */  addiu $v0, $zero, 0x190
/* 01D438 80042038 1062031E */  beq   $v1, $v0, .L80042CB4
/* 01D43C 8004203C 28620191 */   slti  $v0, $v1, 0x191
/* 01D440 80042040 10400005 */  beqz  $v0, .L80042058
/* 01D444 80042044 2402012C */   addiu $v0, $zero, 0x12c
/* 01D448 80042048 106202F2 */  beq   $v1, $v0, .L80042C14
/* 01D44C 8004204C 00000000 */   nop   
/* 01D450 80042050 08010BD3 */  j     func_80042F4C
/* 01D454 80042054 00000000 */   nop   

.L80042058:
/* 01D458 80042058 24020191 */  addiu $v0, $zero, 0x191
/* 01D45C 8004205C 1062033E */  beq   $v1, $v0, .L80042D58
/* 01D460 80042060 24020192 */   addiu $v0, $zero, 0x192
/* 01D464 80042064 10620349 */  beq   $v1, $v0, .L80042D8C
/* 01D468 80042068 0000902D */   daddu $s2, $zero, $zero
/* 01D46C 8004206C 08010BD3 */  j     func_80042F4C
/* 01D470 80042070 00000000 */   nop   

.L80042074:
/* 01D474 80042074 82C20008 */  lb    $v0, 8($s6)
/* 01D478 80042078 104003E8 */  beqz  $v0, .L8004301C
/* 01D47C 8004207C 00000000 */   nop   
/* 01D480 80042080 A2C00008 */  sb    $zero, 8($s6)
/* 01D484 80042084 A6E00010 */  sh    $zero, 0x10($s7)
/* 01D488 80042088 0C03A5F9 */  jal   func_800E97E4
/* 01D48C 8004208C A2C00012 */   sb    $zero, 0x12($s6)
/* 01D490 80042090 A2C000A0 */  sb    $zero, 0xa0($s6)
/* 01D494 80042094 A2C000A4 */  sb    $zero, 0xa4($s6)
/* 01D498 80042098 A2C000A8 */  sb    $zero, 0xa8($s6)
/* 01D49C 8004209C A2C000AC */  sb    $zero, 0xac($s6)
/* 01D4A0 800420A0 3C02800A */  lui   $v0, 0x800a
/* 01D4A4 800420A4 8042A654 */  lb    $v0, -0x59ac($v0)
/* 01D4A8 800420A8 24110001 */  addiu $s1, $zero, 1
/* 01D4AC 800420AC A6C000A2 */  sh    $zero, 0xa2($s6)
/* 01D4B0 800420B0 A6C000A6 */  sh    $zero, 0xa6($s6)
/* 01D4B4 800420B4 A6C000AA */  sh    $zero, 0xaa($s6)
/* 01D4B8 800420B8 14510003 */  bne   $v0, $s1, .L800420C8
/* 01D4BC 800420BC A6C000AE */   sh    $zero, 0xae($s6)
/* 01D4C0 800420C0 0C052B9B */  jal   func_8014AE6C
/* 01D4C4 800420C4 00000000 */   nop   
.L800420C8:
/* 01D4C8 800420C8 3C03FFFB */  lui   $v1, 0xfffb
/* 01D4CC 800420CC 3463FFFF */  ori   $v1, $v1, 0xffff
/* 01D4D0 800420D0 AED10098 */  sw    $s1, 0x98($s6)
/* 01D4D4 800420D4 AEC0009C */  sw    $zero, 0x9c($s6)
/* 01D4D8 800420D8 8EE20000 */  lw    $v0, ($s7)
/* 01D4DC 800420DC 3C10800A */  lui   $s0, 0x800a
/* 01D4E0 800420E0 2610A670 */  addiu $s0, $s0, -0x5990
/* 01D4E4 800420E4 A2000000 */  sb    $zero, ($s0)
/* 01D4E8 800420E8 00431024 */  and   $v0, $v0, $v1
/* 01D4EC 800420EC AEE20000 */  sw    $v0, ($s7)
/* 01D4F0 800420F0 82C30005 */  lb    $v1, 5($s6)
/* 01D4F4 800420F4 24020003 */  addiu $v0, $zero, 3
/* 01D4F8 800420F8 50620001 */  beql  $v1, $v0, .L80042100
/* 01D4FC 800420FC A2110000 */   sb    $s1, ($s0)
.L80042100:
/* 01D500 80042100 3C028007 */  lui   $v0, 0x8007
/* 01D504 80042104 8C427C40 */  lw    $v0, 0x7c40($v0)
/* 01D508 80042108 14400003 */  bnez  $v0, .L80042118
/* 01D50C 8004210C A2C00005 */   sb    $zero, 5($s6)
/* 01D510 80042110 0C03ADB1 */  jal   func_800EB6C4
/* 01D514 80042114 00000000 */   nop   
.L80042118:
/* 01D518 80042118 3C028011 */  lui   $v0, 0x8011
/* 01D51C 8004211C 2442EBB0 */  addiu $v0, $v0, -0x1450
/* 01D520 80042120 80420001 */  lb    $v0, 1($v0)
/* 01D524 80042124 3C03800A */  lui   $v1, 0x800a
/* 01D528 80042128 2463A63C */  addiu $v1, $v1, -0x59c4
/* 01D52C 8004212C 10400003 */  beqz  $v0, .L8004213C
/* 01D530 80042130 A0600000 */   sb    $zero, ($v1)
/* 01D534 80042134 0801085D */  j     func_80042174
/* 01D538 80042138 A0710000 */   sb    $s1, ($v1)

.L8004213C:
/* 01D53C 8004213C 82020000 */  lb    $v0, ($s0)
/* 01D540 80042140 1440000C */  bnez  $v0, .L80042174
/* 01D544 80042144 00000000 */   nop   
/* 01D548 80042148 8EE20000 */  lw    $v0, ($s7)
/* 01D54C 8004214C 30420006 */  andi  $v0, $v0, 6
/* 01D550 80042150 14400008 */  bnez  $v0, .L80042174
/* 01D554 80042154 24020021 */   addiu $v0, $zero, 0x21
/* 01D558 80042158 82E300B4 */  lb    $v1, 0xb4($s7)
/* 01D55C 8004215C 10620005 */  beq   $v1, $v0, .L80042174
/* 01D560 80042160 2402001D */   addiu $v0, $zero, 0x1d
/* 01D564 80042164 10620003 */  beq   $v1, $v0, .L80042174
/* 01D568 80042168 00000000 */   nop   
/* 01D56C 8004216C 0C039769 */  jal   set_action_state
/* 01D570 80042170 0000202D */   daddu $a0, $zero, $zero
func_80042174:
.L80042174:
/* 01D574 80042174 82C30009 */  lb    $v1, 9($s6)
/* 01D578 80042178 2C620005 */  sltiu $v0, $v1, 5
/* 01D57C 8004217C 10400373 */  beqz  $v0, .L80042F4C
/* 01D580 80042180 00031080 */   sll   $v0, $v1, 2
/* 01D584 80042184 3C01800A */  lui   $at, 0x800a
/* 01D588 80042188 00220821 */  addu  $at, $at, $v0
/* 01D58C 8004218C 8C228698 */  lw    $v0, -0x7968($at)
/* 01D590 80042190 00400008 */  jr    $v0
/* 01D594 80042194 00000000 */   nop   
/* 01D598 80042198 2402000A */  addiu $v0, $zero, 0xa
/* 01D59C 8004219C 3C01800A */  lui   $at, 0x800a
/* 01D5A0 800421A0 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D5A4 800421A4 08010BD3 */  j     func_80042F4C
/* 01D5A8 800421A8 00000000 */   nop   

/* 01D5AC 800421AC 240200C8 */  addiu $v0, $zero, 0xc8
/* 01D5B0 800421B0 3C01800A */  lui   $at, 0x800a
/* 01D5B4 800421B4 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D5B8 800421B8 08010BD3 */  j     func_80042F4C
/* 01D5BC 800421BC 00000000 */   nop   

/* 01D5C0 800421C0 24020064 */  addiu $v0, $zero, 0x64
/* 01D5C4 800421C4 3C01800A */  lui   $at, 0x800a
/* 01D5C8 800421C8 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D5CC 800421CC 08010BD3 */  j     func_80042F4C
/* 01D5D0 800421D0 00000000 */   nop   

/* 01D5D4 800421D4 2402012C */  addiu $v0, $zero, 0x12c
/* 01D5D8 800421D8 3C01800A */  lui   $at, 0x800a
/* 01D5DC 800421DC AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D5E0 800421E0 08010BD3 */  j     func_80042F4C
/* 01D5E4 800421E4 00000000 */   nop   

/* 01D5E8 800421E8 24020190 */  addiu $v0, $zero, 0x190
/* 01D5EC 800421EC 3C01800A */  lui   $at, 0x800a
/* 01D5F0 800421F0 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D5F4 800421F4 08010BD3 */  j     func_80042F4C
/* 01D5F8 800421F8 00000000 */   nop   

.L800421FC:
/* 01D5FC 800421FC 82C2000B */  lb    $v0, 0xb($s6)
/* 01D600 80042200 10400019 */  beqz  $v0, .L80042268
/* 01D604 80042204 2402000B */   addiu $v0, $zero, 0xb
/* 01D608 80042208 8EC4008C */  lw    $a0, 0x8c($s6)
/* 01D60C 8004220C 0C012354 */  jal   get_coin_drop_amount
/* 01D610 80042210 00000000 */   nop   
/* 01D614 80042214 1040000F */  beqz  $v0, .L80042254
/* 01D618 80042218 2405000A */   addiu $a1, $zero, 0xa
/* 01D61C 8004221C 3C048007 */  lui   $a0, 0x8007
/* 01D620 80042220 24847C44 */  addiu $a0, $a0, 0x7c44
/* 01D624 80042224 0C0B0CF8 */  jal   start_script
/* 01D628 80042228 0000302D */   daddu $a2, $zero, $zero
/* 01D62C 8004222C 3C03800A */  lui   $v1, 0x800a
/* 01D630 80042230 24630BB0 */  addiu $v1, $v1, 0xbb0
/* 01D634 80042234 AC620000 */  sw    $v0, ($v1)
/* 01D638 80042238 A0400004 */  sb    $zero, 4($v0)
/* 01D63C 8004223C 8C620000 */  lw    $v0, ($v1)
/* 01D640 80042240 8C420144 */  lw    $v0, 0x144($v0)
/* 01D644 80042244 3C01800A */  lui   $at, 0x800a
/* 01D648 80042248 AC220BB4 */  sw    $v0, 0xbb4($at)
/* 01D64C 8004224C 0801089A */  j     func_80042268
/* 01D650 80042250 2402000B */   addiu $v0, $zero, 0xb

.L80042254:
/* 01D654 80042254 9202028A */  lbu   $v0, 0x28a($s0)
/* 01D658 80042258 A600028C */  sh    $zero, 0x28c($s0)
/* 01D65C 8004225C 24420001 */  addiu $v0, $v0, 1
/* 01D660 80042260 A202028A */  sb    $v0, 0x28a($s0)
/* 01D664 80042264 2402000B */  addiu $v0, $zero, 0xb
func_80042268:
.L80042268:
/* 01D668 80042268 3C01800A */  lui   $at, 0x800a
/* 01D66C 8004226C AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D670 80042270 08010BD3 */  j     func_80042F4C
/* 01D674 80042274 00000000 */   nop   

.L80042278:
/* 01D678 80042278 82C2000B */  lb    $v0, 0xb($s6)
/* 01D67C 8004227C 10400013 */  beqz  $v0, .L800422CC
/* 01D680 80042280 00000000 */   nop   
/* 01D684 80042284 0C012354 */  jal   get_coin_drop_amount
/* 01D688 80042288 8EC4008C */   lw    $a0, 0x8c($s6)
/* 01D68C 8004228C 1040000F */  beqz  $v0, .L800422CC
/* 01D690 80042290 00000000 */   nop   
/* 01D694 80042294 8EC20098 */  lw    $v0, 0x98($s6)
/* 01D698 80042298 8EC30090 */  lw    $v1, 0x90($s6)
/* 01D69C 8004229C 24420004 */  addiu $v0, $v0, 4
/* 01D6A0 800422A0 00621823 */  subu  $v1, $v1, $v0
/* 01D6A4 800422A4 AEC20098 */  sw    $v0, 0x98($s6)
/* 01D6A8 800422A8 04610002 */  bgez  $v1, .L800422B4
/* 01D6AC 800422AC AEC30090 */   sw    $v1, 0x90($s6)
/* 01D6B0 800422B0 AEC00090 */  sw    $zero, 0x90($s6)
.L800422B4:
/* 01D6B4 800422B4 3C04800A */  lui   $a0, 0x800a
/* 01D6B8 800422B8 8C840BB4 */  lw    $a0, 0xbb4($a0)
/* 01D6BC 800422BC 0C0B1059 */  jal   does_script_exist
/* 01D6C0 800422C0 00000000 */   nop   
/* 01D6C4 800422C4 14400321 */  bnez  $v0, .L80042F4C
/* 01D6C8 800422C8 00000000 */   nop   
.L800422CC:
/* 01D6CC 800422CC 8ED40088 */  lw    $s4, 0x88($s6)
/* 01D6D0 800422D0 8E820000 */  lw    $v0, ($s4)
/* 01D6D4 800422D4 18400031 */  blez  $v0, .L8004239C
/* 01D6D8 800422D8 0000982D */   daddu $s3, $zero, $zero
/* 01D6DC 800422DC 24120001 */  addiu $s2, $zero, 1
/* 01D6E0 800422E0 0280882D */  daddu $s1, $s4, $zero
.L800422E4:
/* 01D6E4 800422E4 8E300004 */  lw    $s0, 4($s1)
/* 01D6E8 800422E8 12000027 */  beqz  $s0, .L80042388
/* 01D6EC 800422EC 00000000 */   nop   
/* 01D6F0 800422F0 8E030000 */  lw    $v1, ($s0)
/* 01D6F4 800422F4 30620008 */  andi  $v0, $v1, 8
/* 01D6F8 800422F8 10400004 */  beqz  $v0, .L8004230C
/* 01D6FC 800422FC 30620020 */   andi  $v0, $v1, 0x20
/* 01D700 80042300 8EC2008C */  lw    $v0, 0x8c($s6)
/* 01D704 80042304 16020020 */  bne   $s0, $v0, .L80042388
/* 01D708 80042308 30620020 */   andi  $v0, $v1, 0x20
.L8004230C:
/* 01D70C 8004230C 1440001E */  bnez  $v0, .L80042388
/* 01D710 80042310 00000000 */   nop   
/* 01D714 80042314 8E040030 */  lw    $a0, 0x30($s0)
/* 01D718 80042318 1080000E */  beqz  $a0, .L80042354
/* 01D71C 8004231C 2405000A */   addiu $a1, $zero, 0xa
/* 01D720 80042320 0000302D */  daddu $a2, $zero, $zero
/* 01D724 80042324 0C0B0D74 */  jal   start_script_in_group
/* 01D728 80042328 00C0382D */   daddu $a3, $a2, $zero
/* 01D72C 8004232C 0040202D */  daddu $a0, $v0, $zero
/* 01D730 80042330 AE040048 */  sw    $a0, 0x48($s0)
/* 01D734 80042334 8C820144 */  lw    $v0, 0x144($a0)
/* 01D738 80042338 AE020060 */  sw    $v0, 0x60($s0)
/* 01D73C 8004233C AC900148 */  sw    $s0, 0x148($a0)
/* 01D740 80042340 86020008 */  lh    $v0, 8($s0)
/* 01D744 80042344 A0800004 */  sb    $zero, 4($a0)
/* 01D748 80042348 AC82014C */  sw    $v0, 0x14c($a0)
/* 01D74C 8004234C 080108E2 */  j     func_80042388
/* 01D750 80042350 AED2009C */   sw    $s2, 0x9c($s6)

.L80042354:
/* 01D754 80042354 3C048007 */  lui   $a0, 0x8007
/* 01D758 80042358 24847E38 */  addiu $a0, $a0, 0x7e38
/* 01D75C 8004235C 0000302D */  daddu $a2, $zero, $zero
/* 01D760 80042360 0C0B0D74 */  jal   start_script_in_group
/* 01D764 80042364 00C0382D */   daddu $a3, $a2, $zero
/* 01D768 80042368 0040202D */  daddu $a0, $v0, $zero
/* 01D76C 8004236C AE040048 */  sw    $a0, 0x48($s0)
/* 01D770 80042370 8C820144 */  lw    $v0, 0x144($a0)
/* 01D774 80042374 AE020060 */  sw    $v0, 0x60($s0)
/* 01D778 80042378 AC900148 */  sw    $s0, 0x148($a0)
/* 01D77C 8004237C 86020008 */  lh    $v0, 8($s0)
/* 01D780 80042380 A0800004 */  sb    $zero, 4($a0)
/* 01D784 80042384 AC82014C */  sw    $v0, 0x14c($a0)
func_80042388:
.L80042388:
/* 01D788 80042388 8E820000 */  lw    $v0, ($s4)
/* 01D78C 8004238C 26730001 */  addiu $s3, $s3, 1
/* 01D790 80042390 0262102A */  slt   $v0, $s3, $v0
/* 01D794 80042394 1440FFD3 */  bnez  $v0, .L800422E4
/* 01D798 80042398 26310004 */   addiu $s1, $s1, 4
.L8004239C:
/* 01D79C 8004239C 8EC20000 */  lw    $v0, ($s6)
/* 01D7A0 800423A0 30420001 */  andi  $v0, $v0, 1
/* 01D7A4 800423A4 14400010 */  bnez  $v0, .L800423E8
/* 01D7A8 800423A8 24020002 */   addiu $v0, $zero, 2
/* 01D7AC 800423AC 3C02800A */  lui   $v0, 0x800a
/* 01D7B0 800423B0 8042A63C */  lb    $v0, -0x59c4($v0)
/* 01D7B4 800423B4 1440000C */  bnez  $v0, .L800423E8
/* 01D7B8 800423B8 24020002 */   addiu $v0, $zero, 2
/* 01D7BC 800423BC 8EC2009C */  lw    $v0, 0x9c($s6)
/* 01D7C0 800423C0 14400009 */  bnez  $v0, .L800423E8
/* 01D7C4 800423C4 24020002 */   addiu $v0, $zero, 2
/* 01D7C8 800423C8 3C02800A */  lui   $v0, 0x800a
/* 01D7CC 800423CC 8042A670 */  lb    $v0, -0x5990($v0)
/* 01D7D0 800423D0 14400005 */  bnez  $v0, .L800423E8
/* 01D7D4 800423D4 24020002 */   addiu $v0, $zero, 2
/* 01D7D8 800423D8 3C040001 */  lui   $a0, 1
/* 01D7DC 800423DC 0C037FBF */  jal   func_800DFEFC
/* 01D7E0 800423E0 34840032 */   ori   $a0, $a0, 0x32
/* 01D7E4 800423E4 24020002 */  addiu $v0, $zero, 2
.L800423E8:
/* 01D7E8 800423E8 3C01800A */  lui   $at, 0x800a
/* 01D7EC 800423EC AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D7F0 800423F0 08010BD3 */  j     func_80042F4C
/* 01D7F4 800423F4 00000000 */   nop   

.L800423F8:
/* 01D7F8 800423F8 8EC30090 */  lw    $v1, 0x90($s6)
/* 01D7FC 800423FC 1460025B */  bnez  $v1, .L80042D6C
/* 01D800 80042400 24020003 */   addiu $v0, $zero, 3
/* 01D804 80042404 08010BD3 */  j     func_80042F4C
/* 01D808 80042408 AC820000 */   sw    $v0, ($a0)

.L8004240C:
/* 01D80C 8004240C 8ED40088 */  lw    $s4, 0x88($s6)
/* 01D810 80042410 8E820000 */  lw    $v0, ($s4)
/* 01D814 80042414 18400018 */  blez  $v0, .L80042478
/* 01D818 80042418 0240982D */   daddu $s3, $s2, $zero
/* 01D81C 8004241C 0280882D */  daddu $s1, $s4, $zero
.L80042420:
/* 01D820 80042420 8E300004 */  lw    $s0, 4($s1)
/* 01D824 80042424 1200000F */  beqz  $s0, .L80042464
/* 01D828 80042428 00000000 */   nop   
/* 01D82C 8004242C 8E030000 */  lw    $v1, ($s0)
/* 01D830 80042430 30620008 */  andi  $v0, $v1, 8
/* 01D834 80042434 10400004 */  beqz  $v0, .L80042448
/* 01D838 80042438 30620020 */   andi  $v0, $v1, 0x20
/* 01D83C 8004243C 8EC2008C */  lw    $v0, 0x8c($s6)
/* 01D840 80042440 16020008 */  bne   $s0, $v0, .L80042464
/* 01D844 80042444 30620020 */   andi  $v0, $v1, 0x20
.L80042448:
/* 01D848 80042448 14400006 */  bnez  $v0, .L80042464
/* 01D84C 8004244C 00000000 */   nop   
/* 01D850 80042450 0C0B1059 */  jal   does_script_exist
/* 01D854 80042454 8E040060 */   lw    $a0, 0x60($s0)
/* 01D858 80042458 50400002 */  beql  $v0, $zero, .L80042464
/* 01D85C 8004245C AE000048 */   sw    $zero, 0x48($s0)
/* 01D860 80042460 24120001 */  addiu $s2, $zero, 1
.L80042464:
/* 01D864 80042464 8E820000 */  lw    $v0, ($s4)
/* 01D868 80042468 26730001 */  addiu $s3, $s3, 1
/* 01D86C 8004246C 0262102A */  slt   $v0, $s3, $v0
/* 01D870 80042470 1440FFEB */  bnez  $v0, .L80042420
/* 01D874 80042474 26310004 */   addiu $s1, $s1, 4
.L80042478:
/* 01D878 80042478 164002B4 */  bnez  $s2, .L80042F4C
/* 01D87C 8004247C 00000000 */   nop   
/* 01D880 80042480 8EC20000 */  lw    $v0, ($s6)
/* 01D884 80042484 30420001 */  andi  $v0, $v0, 1
/* 01D888 80042488 1440000B */  bnez  $v0, .L800424B8
/* 01D88C 8004248C 00000000 */   nop   
/* 01D890 80042490 3C02800A */  lui   $v0, 0x800a
/* 01D894 80042494 8042A63C */  lb    $v0, -0x59c4($v0)
/* 01D898 80042498 14400007 */  bnez  $v0, .L800424B8
/* 01D89C 8004249C 24020001 */   addiu $v0, $zero, 1
/* 01D8A0 800424A0 8EC3009C */  lw    $v1, 0x9c($s6)
/* 01D8A4 800424A4 14620004 */  bne   $v1, $v0, .L800424B8
/* 01D8A8 800424A8 00000000 */   nop   
/* 01D8AC 800424AC 3C040001 */  lui   $a0, 1
/* 01D8B0 800424B0 0C037FBF */  jal   func_800DFEFC
/* 01D8B4 800424B4 34840032 */   ori   $a0, $a0, 0x32
.L800424B8:
/* 01D8B8 800424B8 8ED40088 */  lw    $s4, 0x88($s6)
/* 01D8BC 800424BC 8E820000 */  lw    $v0, ($s4)
/* 01D8C0 800424C0 1840001D */  blez  $v0, .L80042538
/* 01D8C4 800424C4 0000982D */   daddu $s3, $zero, $zero
/* 01D8C8 800424C8 0280882D */  daddu $s1, $s4, $zero
.L800424CC:
/* 01D8CC 800424CC 8E300004 */  lw    $s0, 4($s1)
/* 01D8D0 800424D0 12000014 */  beqz  $s0, .L80042524
/* 01D8D4 800424D4 00000000 */   nop   
/* 01D8D8 800424D8 8E030000 */  lw    $v1, ($s0)
/* 01D8DC 800424DC 30620004 */  andi  $v0, $v1, 4
/* 01D8E0 800424E0 14400010 */  bnez  $v0, .L80042524
/* 01D8E4 800424E4 30620008 */   andi  $v0, $v1, 8
/* 01D8E8 800424E8 10400004 */  beqz  $v0, .L800424FC
/* 01D8EC 800424EC 30620001 */   andi  $v0, $v1, 1
/* 01D8F0 800424F0 8EC2008C */  lw    $v0, 0x8c($s6)
/* 01D8F4 800424F4 1602000B */  bne   $s0, $v0, .L80042524
/* 01D8F8 800424F8 30620001 */   andi  $v0, $v1, 1
.L800424FC:
/* 01D8FC 800424FC 14400007 */  bnez  $v0, .L8004251C
/* 01D900 80042500 30620010 */   andi  $v0, $v1, 0x10
/* 01D904 80042504 14400005 */  bnez  $v0, .L8004251C
/* 01D908 80042508 00000000 */   nop   
/* 01D90C 8004250C 86850048 */  lh    $a1, 0x48($s4)
/* 01D910 80042510 82C40020 */  lb    $a0, 0x20($s6)
/* 01D914 80042514 0C00FB90 */  jal   set_defeated
/* 01D918 80042518 00B32821 */   addu  $a1, $a1, $s3
.L8004251C:
/* 01D91C 8004251C 0C00F9EB */  jal   kill_enemy
/* 01D920 80042520 0200202D */   daddu $a0, $s0, $zero
.L80042524:
/* 01D924 80042524 8E820000 */  lw    $v0, ($s4)
/* 01D928 80042528 26730001 */  addiu $s3, $s3, 1
/* 01D92C 8004252C 0262102A */  slt   $v0, $s3, $v0
/* 01D930 80042530 1440FFE6 */  bnez  $v0, .L800424CC
/* 01D934 80042534 26310004 */   addiu $s1, $s1, 4
.L80042538:
/* 01D938 80042538 8EC20000 */  lw    $v0, ($s6)
/* 01D93C 8004253C 30420001 */  andi  $v0, $v0, 1
/* 01D940 80042540 1440000B */  bnez  $v0, .L80042570
/* 01D944 80042544 AEC00094 */   sw    $zero, 0x94($s6)
/* 01D948 80042548 3C02800A */  lui   $v0, 0x800a
/* 01D94C 8004254C 8042A63C */  lb    $v0, -0x59c4($v0)
/* 01D950 80042550 14400008 */  bnez  $v0, .L80042574
/* 01D954 80042554 24020004 */   addiu $v0, $zero, 4
/* 01D958 80042558 8EC3009C */  lw    $v1, 0x9c($s6)
/* 01D95C 8004255C 24020001 */  addiu $v0, $zero, 1
/* 01D960 80042560 14620004 */  bne   $v1, $v0, .L80042574
/* 01D964 80042564 24020004 */   addiu $v0, $zero, 4
/* 01D968 80042568 2402001E */  addiu $v0, $zero, 0x1e
/* 01D96C 8004256C AEC20094 */  sw    $v0, 0x94($s6)
.L80042570:
/* 01D970 80042570 24020004 */  addiu $v0, $zero, 4
.L80042574:
/* 01D974 80042574 3C01800A */  lui   $at, 0x800a
/* 01D978 80042578 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01D97C 8004257C 08010BD3 */  j     func_80042F4C
/* 01D980 80042580 00000000 */   nop   

.L80042584:
/* 01D984 80042584 8EC20000 */  lw    $v0, ($s6)
/* 01D988 80042588 30420002 */  andi  $v0, $v0, 2
/* 01D98C 8004258C 14400009 */  bnez  $v0, .L800425B4
/* 01D990 80042590 00000000 */   nop   
/* 01D994 80042594 3C038007 */  lui   $v1, 0x8007
/* 01D998 80042598 8C63419C */  lw    $v1, 0x419c($v1)
/* 01D99C 8004259C 80620040 */  lb    $v0, 0x40($v1)
/* 01D9A0 800425A0 54400004 */  bnezl $v0, .L800425B4
/* 01D9A4 800425A4 AEC00094 */   sw    $zero, 0x94($s6)
/* 01D9A8 800425A8 80620044 */  lb    $v0, 0x44($v1)
/* 01D9AC 800425AC 54400001 */  bnezl $v0, .L800425B4
/* 01D9B0 800425B0 AEC00094 */   sw    $zero, 0x94($s6)
.L800425B4:
/* 01D9B4 800425B4 8EC20094 */  lw    $v0, 0x94($s6)
/* 01D9B8 800425B8 10400003 */  beqz  $v0, .L800425C8
/* 01D9BC 800425BC 2442FFFF */   addiu $v0, $v0, -1
/* 01D9C0 800425C0 08010BD3 */  j     func_80042F4C
/* 01D9C4 800425C4 AEC20094 */   sw    $v0, 0x94($s6)

.L800425C8:
/* 01D9C8 800425C8 82C2001C */  lb    $v0, 0x1c($s6)
/* 01D9CC 800425CC 18400024 */  blez  $v0, .L80042660
/* 01D9D0 800425D0 0000982D */   daddu $s3, $zero, $zero
/* 01D9D4 800425D4 02C0A82D */  daddu $s5, $s6, $zero
.L800425D8:
/* 01D9D8 800425D8 8EB40028 */  lw    $s4, 0x28($s5)
/* 01D9DC 800425DC 1280001B */  beqz  $s4, .L8004264C
/* 01D9E0 800425E0 00000000 */   nop   
/* 01D9E4 800425E4 8E820000 */  lw    $v0, ($s4)
/* 01D9E8 800425E8 18400018 */  blez  $v0, .L8004264C
/* 01D9EC 800425EC 0000882D */   daddu $s1, $zero, $zero
/* 01D9F0 800425F0 0280902D */  daddu $s2, $s4, $zero
.L800425F4:
/* 01D9F4 800425F4 8E500004 */  lw    $s0, 4($s2)
/* 01D9F8 800425F8 1200000F */  beqz  $s0, .L80042638
/* 01D9FC 800425FC 00000000 */   nop   
/* 01DA00 80042600 8E020000 */  lw    $v0, ($s0)
/* 01DA04 80042604 30420020 */  andi  $v0, $v0, 0x20
/* 01DA08 80042608 1440000B */  bnez  $v0, .L80042638
/* 01DA0C 8004260C 00000000 */   nop   
/* 01DA10 80042610 8E02003C */  lw    $v0, 0x3c($s0)
/* 01DA14 80042614 10400003 */  beqz  $v0, .L80042624
/* 01DA18 80042618 00000000 */   nop   
/* 01DA1C 8004261C 0C0B1123 */  jal   resume_all_script
/* 01DA20 80042620 8E040054 */   lw    $a0, 0x54($s0)
.L80042624:
/* 01DA24 80042624 8E020044 */  lw    $v0, 0x44($s0)
/* 01DA28 80042628 10400003 */  beqz  $v0, .L80042638
/* 01DA2C 8004262C 00000000 */   nop   
/* 01DA30 80042630 0C0B1123 */  jal   resume_all_script
/* 01DA34 80042634 8E04005C */   lw    $a0, 0x5c($s0)
.L80042638:
/* 01DA38 80042638 8E820000 */  lw    $v0, ($s4)
/* 01DA3C 8004263C 26310001 */  addiu $s1, $s1, 1
/* 01DA40 80042640 0222102A */  slt   $v0, $s1, $v0
/* 01DA44 80042644 1440FFEB */  bnez  $v0, .L800425F4
/* 01DA48 80042648 26520004 */   addiu $s2, $s2, 4
.L8004264C:
/* 01DA4C 8004264C 82C2001C */  lb    $v0, 0x1c($s6)
/* 01DA50 80042650 26730001 */  addiu $s3, $s3, 1
/* 01DA54 80042654 0262102A */  slt   $v0, $s3, $v0
/* 01DA58 80042658 1440FFDF */  bnez  $v0, .L800425D8
/* 01DA5C 8004265C 26B50004 */   addiu $s5, $s5, 4
.L80042660:
/* 01DA60 80042660 2402000F */  addiu $v0, $zero, 0xf
/* 01DA64 80042664 0C038069 */  jal   func_800E01A4
/* 01DA68 80042668 A2C2000A */   sb    $v0, 0xa($s6)
/* 01DA6C 8004266C 0C03BD80 */  jal   func_800EF600
/* 01DA70 80042670 00000000 */   nop   
/* 01DA74 80042674 3C02800A */  lui   $v0, 0x800a
/* 01DA78 80042678 8042A63C */  lb    $v0, -0x59c4($v0)
/* 01DA7C 8004267C 14400226 */  bnez  $v0, .L80042F18
/* 01DA80 80042680 3C040001 */   lui   $a0, 1
/* 01DA84 80042684 0C037FBF */  jal   func_800DFEFC
/* 01DA88 80042688 34840002 */   ori   $a0, $a0, 2
/* 01DA8C 8004268C 08010BC6 */  j     func_80042F18
/* 01DA90 80042690 00000000 */   nop   

.L80042694:
/* 01DA94 80042694 8ED40088 */  lw    $s4, 0x88($s6)
/* 01DA98 80042698 8E820000 */  lw    $v0, ($s4)
/* 01DA9C 8004269C 18400024 */  blez  $v0, .L80042730
/* 01DAA0 800426A0 0000982D */   daddu $s3, $zero, $zero
/* 01DAA4 800426A4 0280882D */  daddu $s1, $s4, $zero
.L800426A8:
/* 01DAA8 800426A8 8E300004 */  lw    $s0, 4($s1)
/* 01DAAC 800426AC 1200001B */  beqz  $s0, .L8004271C
/* 01DAB0 800426B0 00000000 */   nop   
/* 01DAB4 800426B4 8E030000 */  lw    $v1, ($s0)
/* 01DAB8 800426B8 30620008 */  andi  $v0, $v1, 8
/* 01DABC 800426BC 10400004 */  beqz  $v0, .L800426D0
/* 01DAC0 800426C0 30620020 */   andi  $v0, $v1, 0x20
/* 01DAC4 800426C4 8EC2008C */  lw    $v0, 0x8c($s6)
/* 01DAC8 800426C8 16020014 */  bne   $s0, $v0, .L8004271C
/* 01DACC 800426CC 30620020 */   andi  $v0, $v1, 0x20
.L800426D0:
/* 01DAD0 800426D0 14400012 */  bnez  $v0, .L8004271C
/* 01DAD4 800426D4 00000000 */   nop   
/* 01DAD8 800426D8 8E040030 */  lw    $a0, 0x30($s0)
/* 01DADC 800426DC 1080000F */  beqz  $a0, .L8004271C
/* 01DAE0 800426E0 2405000A */   addiu $a1, $zero, 0xa
/* 01DAE4 800426E4 0C0B0CF8 */  jal   start_script
/* 01DAE8 800426E8 0000302D */   daddu $a2, $zero, $zero
/* 01DAEC 800426EC 0040202D */  daddu $a0, $v0, $zero
/* 01DAF0 800426F0 8E0200B0 */  lw    $v0, 0xb0($s0)
/* 01DAF4 800426F4 AE040048 */  sw    $a0, 0x48($s0)
/* 01DAF8 800426F8 8C830144 */  lw    $v1, 0x144($a0)
/* 01DAFC 800426FC 34420001 */  ori   $v0, $v0, 1
/* 01DB00 80042700 AE030060 */  sw    $v1, 0x60($s0)
/* 01DB04 80042704 AE0200B0 */  sw    $v0, 0xb0($s0)
/* 01DB08 80042708 AC900148 */  sw    $s0, 0x148($a0)
/* 01DB0C 8004270C 86020008 */  lh    $v0, 8($s0)
/* 01DB10 80042710 AC82014C */  sw    $v0, 0x14c($a0)
/* 01DB14 80042714 92020006 */  lbu   $v0, 6($s0)
/* 01DB18 80042718 A0820004 */  sb    $v0, 4($a0)
.L8004271C:
/* 01DB1C 8004271C 8E820000 */  lw    $v0, ($s4)
/* 01DB20 80042720 26730001 */  addiu $s3, $s3, 1
/* 01DB24 80042724 0262102A */  slt   $v0, $s3, $v0
/* 01DB28 80042728 1440FFDF */  bnez  $v0, .L800426A8
/* 01DB2C 8004272C 26310004 */   addiu $s1, $s1, 4
.L80042730:
/* 01DB30 80042730 24020065 */  addiu $v0, $zero, 0x65
/* 01DB34 80042734 3C01800A */  lui   $at, 0x800a
/* 01DB38 80042738 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01DB3C 8004273C 08010BD3 */  j     func_80042F4C
/* 01DB40 80042740 00000000 */   nop   

.L80042744:
/* 01DB44 80042744 8EC30090 */  lw    $v1, 0x90($s6)
/* 01DB48 80042748 14600188 */  bnez  $v1, .L80042D6C
/* 01DB4C 8004274C 00000000 */   nop   
/* 01DB50 80042750 08010BD3 */  j     func_80042F4C
/* 01DB54 80042754 AC850000 */   sw    $a1, ($a0)

.L80042758:
/* 01DB58 80042758 8ED40088 */  lw    $s4, 0x88($s6)
/* 01DB5C 8004275C 0000902D */  daddu $s2, $zero, $zero
/* 01DB60 80042760 8E820000 */  lw    $v0, ($s4)
/* 01DB64 80042764 18400013 */  blez  $v0, .L800427B4
/* 01DB68 80042768 0240982D */   daddu $s3, $s2, $zero
/* 01DB6C 8004276C 0280882D */  daddu $s1, $s4, $zero
.L80042770:
/* 01DB70 80042770 8E300004 */  lw    $s0, 4($s1)
/* 01DB74 80042774 1200000A */  beqz  $s0, .L800427A0
/* 01DB78 80042778 00000000 */   nop   
/* 01DB7C 8004277C 8E020000 */  lw    $v0, ($s0)
/* 01DB80 80042780 30420020 */  andi  $v0, $v0, 0x20
/* 01DB84 80042784 14400006 */  bnez  $v0, .L800427A0
/* 01DB88 80042788 00000000 */   nop   
/* 01DB8C 8004278C 0C0B1059 */  jal   does_script_exist
/* 01DB90 80042790 8E040060 */   lw    $a0, 0x60($s0)
/* 01DB94 80042794 50400002 */  beql  $v0, $zero, .L800427A0
/* 01DB98 80042798 AE000048 */   sw    $zero, 0x48($s0)
/* 01DB9C 8004279C 24120001 */  addiu $s2, $zero, 1
.L800427A0:
/* 01DBA0 800427A0 8E820000 */  lw    $v0, ($s4)
/* 01DBA4 800427A4 26730001 */  addiu $s3, $s3, 1
/* 01DBA8 800427A8 0262102A */  slt   $v0, $s3, $v0
/* 01DBAC 800427AC 1440FFF0 */  bnez  $v0, .L80042770
/* 01DBB0 800427B0 26310004 */   addiu $s1, $s1, 4
.L800427B4:
/* 01DBB4 800427B4 164001E5 */  bnez  $s2, .L80042F4C
/* 01DBB8 800427B8 00000000 */   nop   
/* 01DBBC 800427BC 82C2001C */  lb    $v0, 0x1c($s6)
/* 01DBC0 800427C0 18400024 */  blez  $v0, .L80042854
/* 01DBC4 800427C4 0000982D */   daddu $s3, $zero, $zero
/* 01DBC8 800427C8 02C0A82D */  daddu $s5, $s6, $zero
.L800427CC:
/* 01DBCC 800427CC 8EB40028 */  lw    $s4, 0x28($s5)
/* 01DBD0 800427D0 1280001B */  beqz  $s4, .L80042840
/* 01DBD4 800427D4 00000000 */   nop   
/* 01DBD8 800427D8 8E820000 */  lw    $v0, ($s4)
/* 01DBDC 800427DC 18400018 */  blez  $v0, .L80042840
/* 01DBE0 800427E0 0000882D */   daddu $s1, $zero, $zero
/* 01DBE4 800427E4 0280902D */  daddu $s2, $s4, $zero
.L800427E8:
/* 01DBE8 800427E8 8E500004 */  lw    $s0, 4($s2)
/* 01DBEC 800427EC 1200000F */  beqz  $s0, .L8004282C
/* 01DBF0 800427F0 00000000 */   nop   
/* 01DBF4 800427F4 8E020000 */  lw    $v0, ($s0)
/* 01DBF8 800427F8 30420020 */  andi  $v0, $v0, 0x20
/* 01DBFC 800427FC 1440000B */  bnez  $v0, .L8004282C
/* 01DC00 80042800 00000000 */   nop   
/* 01DC04 80042804 8E02003C */  lw    $v0, 0x3c($s0)
/* 01DC08 80042808 10400003 */  beqz  $v0, .L80042818
/* 01DC0C 8004280C 00000000 */   nop   
/* 01DC10 80042810 0C0B1123 */  jal   resume_all_script
/* 01DC14 80042814 8E040054 */   lw    $a0, 0x54($s0)
.L80042818:
/* 01DC18 80042818 8E020044 */  lw    $v0, 0x44($s0)
/* 01DC1C 8004281C 10400003 */  beqz  $v0, .L8004282C
/* 01DC20 80042820 00000000 */   nop   
/* 01DC24 80042824 0C0B1123 */  jal   resume_all_script
/* 01DC28 80042828 8E04005C */   lw    $a0, 0x5c($s0)
.L8004282C:
/* 01DC2C 8004282C 8E820000 */  lw    $v0, ($s4)
/* 01DC30 80042830 26310001 */  addiu $s1, $s1, 1
/* 01DC34 80042834 0222102A */  slt   $v0, $s1, $v0
/* 01DC38 80042838 1440FFEB */  bnez  $v0, .L800427E8
/* 01DC3C 8004283C 26520004 */   addiu $s2, $s2, 4
.L80042840:
/* 01DC40 80042840 82C2001C */  lb    $v0, 0x1c($s6)
/* 01DC44 80042844 26730001 */  addiu $s3, $s3, 1
/* 01DC48 80042848 0262102A */  slt   $v0, $s3, $v0
/* 01DC4C 8004284C 1440FFDF */  bnez  $v0, .L800427CC
/* 01DC50 80042850 26B50004 */   addiu $s5, $s5, 4
.L80042854:
/* 01DC54 80042854 8ED0008C */  lw    $s0, 0x8c($s6)
/* 01DC58 80042858 3C030004 */  lui   $v1, 4
/* 01DC5C 8004285C 8E020000 */  lw    $v0, ($s0)
/* 01DC60 80042860 8ED40088 */  lw    $s4, 0x88($s6)
/* 01DC64 80042864 00431024 */  and   $v0, $v0, $v1
/* 01DC68 80042868 1440001A */  bnez  $v0, .L800428D4
/* 01DC6C 8004286C 2402002D */   addiu $v0, $zero, 0x2d
/* 01DC70 80042870 A20200B4 */  sb    $v0, 0xb4($s0)
/* 01DC74 80042874 2402002D */  addiu $v0, $zero, 0x2d
/* 01DC78 80042878 A6E20010 */  sh    $v0, 0x10($s7)
/* 01DC7C 8004287C 8E820000 */  lw    $v0, ($s4)
/* 01DC80 80042880 18400014 */  blez  $v0, .L800428D4
/* 01DC84 80042884 0000882D */   daddu $s1, $zero, $zero
/* 01DC88 80042888 2406002D */  addiu $a2, $zero, 0x2d
/* 01DC8C 8004288C 2405002D */  addiu $a1, $zero, 0x2d
/* 01DC90 80042890 0280202D */  daddu $a0, $s4, $zero
.L80042894:
/* 01DC94 80042894 8C900004 */  lw    $s0, 4($a0)
/* 01DC98 80042898 12000009 */  beqz  $s0, .L800428C0
/* 01DC9C 8004289C 00000000 */   nop   
/* 01DCA0 800428A0 8E030000 */  lw    $v1, ($s0)
/* 01DCA4 800428A4 30620020 */  andi  $v0, $v1, 0x20
/* 01DCA8 800428A8 14400005 */  bnez  $v0, .L800428C0
/* 01DCAC 800428AC 30620008 */   andi  $v0, $v1, 8
/* 01DCB0 800428B0 14400003 */  bnez  $v0, .L800428C0
/* 01DCB4 800428B4 00000000 */   nop   
/* 01DCB8 800428B8 A20600B4 */  sb    $a2, 0xb4($s0)
/* 01DCBC 800428BC A6E50010 */  sh    $a1, 0x10($s7)
.L800428C0:
/* 01DCC0 800428C0 8E820000 */  lw    $v0, ($s4)
/* 01DCC4 800428C4 26310001 */  addiu $s1, $s1, 1
/* 01DCC8 800428C8 0222102A */  slt   $v0, $s1, $v0
/* 01DCCC 800428CC 1440FFF1 */  bnez  $v0, .L80042894
/* 01DCD0 800428D0 24840004 */   addiu $a0, $a0, 4
.L800428D4:
/* 01DCD4 800428D4 8EC20000 */  lw    $v0, ($s6)
/* 01DCD8 800428D8 8ED0008C */  lw    $s0, 0x8c($s6)
/* 01DCDC 800428DC 30420004 */  andi  $v0, $v0, 4
/* 01DCE0 800428E0 14400010 */  bnez  $v0, .L80042924
/* 01DCE4 800428E4 2402002D */   addiu $v0, $zero, 0x2d
/* 01DCE8 800428E8 3C048007 */  lui   $a0, 0x8007
/* 01DCEC 800428EC 24847E9C */  addiu $a0, $a0, 0x7e9c
/* 01DCF0 800428F0 2405000A */  addiu $a1, $zero, 0xa
/* 01DCF4 800428F4 0C0B0CF8 */  jal   start_script
/* 01DCF8 800428F8 0000302D */   daddu $a2, $zero, $zero
/* 01DCFC 800428FC 0040202D */  daddu $a0, $v0, $zero
/* 01DD00 80042900 AE040048 */  sw    $a0, 0x48($s0)
/* 01DD04 80042904 8C820144 */  lw    $v0, 0x144($a0)
/* 01DD08 80042908 AE020060 */  sw    $v0, 0x60($s0)
/* 01DD0C 8004290C AC900148 */  sw    $s0, 0x148($a0)
/* 01DD10 80042910 86020008 */  lh    $v0, 8($s0)
/* 01DD14 80042914 AC82014C */  sw    $v0, 0x14c($a0)
/* 01DD18 80042918 92020006 */  lbu   $v0, 6($s0)
/* 01DD1C 8004291C A0820004 */  sb    $v0, 4($a0)
/* 01DD20 80042920 2402002D */  addiu $v0, $zero, 0x2d
.L80042924:
/* 01DD24 80042924 A2C2000A */  sb    $v0, 0xa($s6)
/* 01DD28 80042928 2402002D */  addiu $v0, $zero, 0x2d
/* 01DD2C 8004292C 0C038069 */  jal   func_800E01A4
/* 01DD30 80042930 A6E20010 */   sh    $v0, 0x10($s7)
/* 01DD34 80042934 0C03BD80 */  jal   func_800EF600
/* 01DD38 80042938 00000000 */   nop   
/* 01DD3C 8004293C 3C05BF80 */  lui   $a1, 0xbf80
/* 01DD40 80042940 0C04DF62 */  jal   func_80137D88
/* 01DD44 80042944 240400FF */   addiu $a0, $zero, 0xff
/* 01DD48 80042948 3C02800A */  lui   $v0, 0x800a
/* 01DD4C 8004294C 8042A63C */  lb    $v0, -0x59c4($v0)
/* 01DD50 80042950 54400003 */  bnezl $v0, .L80042960
/* 01DD54 80042954 AEC00094 */   sw    $zero, 0x94($s6)
/* 01DD58 80042958 2402000F */  addiu $v0, $zero, 0xf
/* 01DD5C 8004295C AEC20094 */  sw    $v0, 0x94($s6)
.L80042960:
/* 01DD60 80042960 24020067 */  addiu $v0, $zero, 0x67
/* 01DD64 80042964 3C01800A */  lui   $at, 0x800a
/* 01DD68 80042968 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01DD6C 8004296C 08010BD3 */  j     func_80042F4C
/* 01DD70 80042970 00000000 */   nop   

.L80042974:
/* 01DD74 80042974 8EC20094 */  lw    $v0, 0x94($s6)
/* 01DD78 80042978 1040000D */  beqz  $v0, .L800429B0
/* 01DD7C 8004297C 2442FFFF */   addiu $v0, $v0, -1
/* 01DD80 80042980 3C038007 */  lui   $v1, 0x8007
/* 01DD84 80042984 8C63419C */  lw    $v1, 0x419c($v1)
/* 01DD88 80042988 AEC20094 */  sw    $v0, 0x94($s6)
/* 01DD8C 8004298C 8C620000 */  lw    $v0, ($v1)
/* 01DD90 80042990 14400007 */  bnez  $v0, .L800429B0
/* 01DD94 80042994 00000000 */   nop   
/* 01DD98 80042998 80620040 */  lb    $v0, 0x40($v1)
/* 01DD9C 8004299C 14400004 */  bnez  $v0, .L800429B0
/* 01DDA0 800429A0 00000000 */   nop   
/* 01DDA4 800429A4 80620044 */  lb    $v0, 0x44($v1)
/* 01DDA8 800429A8 10400168 */  beqz  $v0, .L80042F4C
/* 01DDAC 800429AC 00000000 */   nop   
.L800429B0:
/* 01DDB0 800429B0 3C02800A */  lui   $v0, 0x800a
/* 01DDB4 800429B4 8042A63C */  lb    $v0, -0x59c4($v0)
/* 01DDB8 800429B8 1440015A */  bnez  $v0, .L80042F24
/* 01DDBC 800429BC 3C020005 */   lui   $v0, 5
/* 01DDC0 800429C0 8EE300B8 */  lw    $v1, 0xb8($s7)
/* 01DDC4 800429C4 14620157 */  bne   $v1, $v0, .L80042F24
/* 01DDC8 800429C8 3C040001 */   lui   $a0, 1
/* 01DDCC 800429CC 0C037FBF */  jal   func_800DFEFC
/* 01DDD0 800429D0 34840002 */   ori   $a0, $a0, 2
/* 01DDD4 800429D4 08010BC9 */  j     func_80042F24
/* 01DDD8 800429D8 00000000 */   nop   

.L800429DC:
/* 01DDDC 800429DC 3C040008 */  lui   $a0, 8
/* 01DDE0 800429E0 0C037FBF */  jal   func_800DFEFC
/* 01DDE4 800429E4 34840009 */   ori   $a0, $a0, 9
/* 01DDE8 800429E8 8ED40088 */  lw    $s4, 0x88($s6)
/* 01DDEC 800429EC 8E820000 */  lw    $v0, ($s4)
/* 01DDF0 800429F0 18400021 */  blez  $v0, .L80042A78
/* 01DDF4 800429F4 0000982D */   daddu $s3, $zero, $zero
/* 01DDF8 800429F8 0280882D */  daddu $s1, $s4, $zero
.L800429FC:
/* 01DDFC 800429FC 8E300004 */  lw    $s0, 4($s1)
/* 01DE00 80042A00 12000018 */  beqz  $s0, .L80042A64
/* 01DE04 80042A04 00000000 */   nop   
/* 01DE08 80042A08 8E030000 */  lw    $v1, ($s0)
/* 01DE0C 80042A0C 30620008 */  andi  $v0, $v1, 8
/* 01DE10 80042A10 10400004 */  beqz  $v0, .L80042A24
/* 01DE14 80042A14 30620020 */   andi  $v0, $v1, 0x20
/* 01DE18 80042A18 8EC2008C */  lw    $v0, 0x8c($s6)
/* 01DE1C 80042A1C 16020011 */  bne   $s0, $v0, .L80042A64
/* 01DE20 80042A20 30620020 */   andi  $v0, $v1, 0x20
.L80042A24:
/* 01DE24 80042A24 1440000F */  bnez  $v0, .L80042A64
/* 01DE28 80042A28 00000000 */   nop   
/* 01DE2C 80042A2C 8E040030 */  lw    $a0, 0x30($s0)
/* 01DE30 80042A30 1080000C */  beqz  $a0, .L80042A64
/* 01DE34 80042A34 2405000A */   addiu $a1, $zero, 0xa
/* 01DE38 80042A38 0C0B0CF8 */  jal   start_script
/* 01DE3C 80042A3C 0000302D */   daddu $a2, $zero, $zero
/* 01DE40 80042A40 0040202D */  daddu $a0, $v0, $zero
/* 01DE44 80042A44 AE040048 */  sw    $a0, 0x48($s0)
/* 01DE48 80042A48 8C820144 */  lw    $v0, 0x144($a0)
/* 01DE4C 80042A4C AE020060 */  sw    $v0, 0x60($s0)
/* 01DE50 80042A50 AC900148 */  sw    $s0, 0x148($a0)
/* 01DE54 80042A54 86020008 */  lh    $v0, 8($s0)
/* 01DE58 80042A58 AC82014C */  sw    $v0, 0x14c($a0)
/* 01DE5C 80042A5C 92020006 */  lbu   $v0, 6($s0)
/* 01DE60 80042A60 A0820004 */  sb    $v0, 4($a0)
.L80042A64:
/* 01DE64 80042A64 8E820000 */  lw    $v0, ($s4)
/* 01DE68 80042A68 26730001 */  addiu $s3, $s3, 1
/* 01DE6C 80042A6C 0262102A */  slt   $v0, $s3, $v0
/* 01DE70 80042A70 1440FFE2 */  bnez  $v0, .L800429FC
/* 01DE74 80042A74 26310004 */   addiu $s1, $s1, 4
.L80042A78:
/* 01DE78 80042A78 240200C9 */  addiu $v0, $zero, 0xc9
/* 01DE7C 80042A7C 3C01800A */  lui   $at, 0x800a
/* 01DE80 80042A80 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01DE84 80042A84 08010BD3 */  j     func_80042F4C
/* 01DE88 80042A88 00000000 */   nop   

.L80042A8C:
/* 01DE8C 80042A8C 8EC30090 */  lw    $v1, 0x90($s6)
/* 01DE90 80042A90 146000B6 */  bnez  $v1, .L80042D6C
/* 01DE94 80042A94 00000000 */   nop   
/* 01DE98 80042A98 08010BD3 */  j     func_80042F4C
/* 01DE9C 80042A9C AC820000 */   sw    $v0, ($a0)

.L80042AA0:
/* 01DEA0 80042AA0 8ED40088 */  lw    $s4, 0x88($s6)
/* 01DEA4 80042AA4 8E820000 */  lw    $v0, ($s4)
/* 01DEA8 80042AA8 18400013 */  blez  $v0, .L80042AF8
/* 01DEAC 80042AAC 0240982D */   daddu $s3, $s2, $zero
/* 01DEB0 80042AB0 0280882D */  daddu $s1, $s4, $zero
.L80042AB4:
/* 01DEB4 80042AB4 8E300004 */  lw    $s0, 4($s1)
/* 01DEB8 80042AB8 1200000A */  beqz  $s0, .L80042AE4
/* 01DEBC 80042ABC 00000000 */   nop   
/* 01DEC0 80042AC0 8E020000 */  lw    $v0, ($s0)
/* 01DEC4 80042AC4 30420020 */  andi  $v0, $v0, 0x20
/* 01DEC8 80042AC8 14400006 */  bnez  $v0, .L80042AE4
/* 01DECC 80042ACC 00000000 */   nop   
/* 01DED0 80042AD0 0C0B1059 */  jal   does_script_exist
/* 01DED4 80042AD4 8E040060 */   lw    $a0, 0x60($s0)
/* 01DED8 80042AD8 50400002 */  beql  $v0, $zero, .L80042AE4
/* 01DEDC 80042ADC AE000048 */   sw    $zero, 0x48($s0)
/* 01DEE0 80042AE0 24120001 */  addiu $s2, $zero, 1
.L80042AE4:
/* 01DEE4 80042AE4 8E820000 */  lw    $v0, ($s4)
/* 01DEE8 80042AE8 26730001 */  addiu $s3, $s3, 1
/* 01DEEC 80042AEC 0262102A */  slt   $v0, $s3, $v0
/* 01DEF0 80042AF0 1440FFF0 */  bnez  $v0, .L80042AB4
/* 01DEF4 80042AF4 26310004 */   addiu $s1, $s1, 4
.L80042AF8:
/* 01DEF8 80042AF8 16400114 */  bnez  $s2, .L80042F4C
/* 01DEFC 80042AFC 00000000 */   nop   
/* 01DF00 80042B00 82C2001C */  lb    $v0, 0x1c($s6)
/* 01DF04 80042B04 18400024 */  blez  $v0, .L80042B98
/* 01DF08 80042B08 0000982D */   daddu $s3, $zero, $zero
/* 01DF0C 80042B0C 02C0A82D */  daddu $s5, $s6, $zero
.L80042B10:
/* 01DF10 80042B10 8EB40028 */  lw    $s4, 0x28($s5)
/* 01DF14 80042B14 1280001B */  beqz  $s4, .L80042B84
/* 01DF18 80042B18 00000000 */   nop   
/* 01DF1C 80042B1C 8E820000 */  lw    $v0, ($s4)
/* 01DF20 80042B20 18400018 */  blez  $v0, .L80042B84
/* 01DF24 80042B24 0000882D */   daddu $s1, $zero, $zero
/* 01DF28 80042B28 0280902D */  daddu $s2, $s4, $zero
.L80042B2C:
/* 01DF2C 80042B2C 8E500004 */  lw    $s0, 4($s2)
/* 01DF30 80042B30 1200000F */  beqz  $s0, .L80042B70
/* 01DF34 80042B34 00000000 */   nop   
/* 01DF38 80042B38 8E020000 */  lw    $v0, ($s0)
/* 01DF3C 80042B3C 30420020 */  andi  $v0, $v0, 0x20
/* 01DF40 80042B40 1440000B */  bnez  $v0, .L80042B70
/* 01DF44 80042B44 00000000 */   nop   
/* 01DF48 80042B48 8E02003C */  lw    $v0, 0x3c($s0)
/* 01DF4C 80042B4C 10400003 */  beqz  $v0, .L80042B5C
/* 01DF50 80042B50 00000000 */   nop   
/* 01DF54 80042B54 0C0B1123 */  jal   resume_all_script
/* 01DF58 80042B58 8E040054 */   lw    $a0, 0x54($s0)
.L80042B5C:
/* 01DF5C 80042B5C 8E020044 */  lw    $v0, 0x44($s0)
/* 01DF60 80042B60 10400003 */  beqz  $v0, .L80042B70
/* 01DF64 80042B64 00000000 */   nop   
/* 01DF68 80042B68 0C0B1123 */  jal   resume_all_script
/* 01DF6C 80042B6C 8E04005C */   lw    $a0, 0x5c($s0)
.L80042B70:
/* 01DF70 80042B70 8E820000 */  lw    $v0, ($s4)
/* 01DF74 80042B74 26310001 */  addiu $s1, $s1, 1
/* 01DF78 80042B78 0222102A */  slt   $v0, $s1, $v0
/* 01DF7C 80042B7C 1440FFEB */  bnez  $v0, .L80042B2C
/* 01DF80 80042B80 26520004 */   addiu $s2, $s2, 4
.L80042B84:
/* 01DF84 80042B84 82C2001C */  lb    $v0, 0x1c($s6)
/* 01DF88 80042B88 26730001 */  addiu $s3, $s3, 1
/* 01DF8C 80042B8C 0262102A */  slt   $v0, $s3, $v0
/* 01DF90 80042B90 1440FFDF */  bnez  $v0, .L80042B10
/* 01DF94 80042B94 26B50004 */   addiu $s5, $s5, 4
.L80042B98:
/* 01DF98 80042B98 0C038069 */  jal   func_800E01A4
/* 01DF9C 80042B9C 00000000 */   nop   
/* 01DFA0 80042BA0 0C03BD80 */  jal   func_800EF600
/* 01DFA4 80042BA4 00000000 */   nop   
/* 01DFA8 80042BA8 3C05BF80 */  lui   $a1, 0xbf80
/* 01DFAC 80042BAC 0C04DF62 */  jal   func_80137D88
/* 01DFB0 80042BB0 240400FF */   addiu $a0, $zero, 0xff
/* 01DFB4 80042BB4 2402000F */  addiu $v0, $zero, 0xf
/* 01DFB8 80042BB8 AEC20094 */  sw    $v0, 0x94($s6)
/* 01DFBC 80042BBC 240200CB */  addiu $v0, $zero, 0xcb
/* 01DFC0 80042BC0 3C01800A */  lui   $at, 0x800a
/* 01DFC4 80042BC4 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01DFC8 80042BC8 08010BD3 */  j     func_80042F4C
/* 01DFCC 80042BCC 00000000 */   nop   

.L80042BD0:
/* 01DFD0 80042BD0 8EC20094 */  lw    $v0, 0x94($s6)
/* 01DFD4 80042BD4 104000D3 */  beqz  $v0, .L80042F24
/* 01DFD8 80042BD8 2442FFFF */   addiu $v0, $v0, -1
/* 01DFDC 80042BDC 3C038007 */  lui   $v1, 0x8007
/* 01DFE0 80042BE0 8C63419C */  lw    $v1, 0x419c($v1)
/* 01DFE4 80042BE4 AEC20094 */  sw    $v0, 0x94($s6)
/* 01DFE8 80042BE8 8C620000 */  lw    $v0, ($v1)
/* 01DFEC 80042BEC 144000CD */  bnez  $v0, .L80042F24
/* 01DFF0 80042BF0 00000000 */   nop   
/* 01DFF4 80042BF4 80620040 */  lb    $v0, 0x40($v1)
/* 01DFF8 80042BF8 144000CA */  bnez  $v0, .L80042F24
/* 01DFFC 80042BFC 00000000 */   nop   
/* 01E000 80042C00 80620044 */  lb    $v0, 0x44($v1)
/* 01E004 80042C04 104000D1 */  beqz  $v0, .L80042F4C
/* 01E008 80042C08 00000000 */   nop   
/* 01E00C 80042C0C 08010BC9 */  j     func_80042F24
/* 01E010 80042C10 00000000 */   nop   

.L80042C14:
/* 01E014 80042C14 82C2001C */  lb    $v0, 0x1c($s6)
/* 01E018 80042C18 184000BB */  blez  $v0, .L80042F08
/* 01E01C 80042C1C 0000982D */   daddu $s3, $zero, $zero
/* 01E020 80042C20 02C0A82D */  daddu $s5, $s6, $zero
.L80042C24:
/* 01E024 80042C24 8EB40028 */  lw    $s4, 0x28($s5)
/* 01E028 80042C28 1280001B */  beqz  $s4, .L80042C98
/* 01E02C 80042C2C 00000000 */   nop   
/* 01E030 80042C30 8E820000 */  lw    $v0, ($s4)
/* 01E034 80042C34 18400018 */  blez  $v0, .L80042C98
/* 01E038 80042C38 0000882D */   daddu $s1, $zero, $zero
/* 01E03C 80042C3C 0280902D */  daddu $s2, $s4, $zero
.L80042C40:
/* 01E040 80042C40 8E500004 */  lw    $s0, 4($s2)
/* 01E044 80042C44 1200000F */  beqz  $s0, .L80042C84
/* 01E048 80042C48 00000000 */   nop   
/* 01E04C 80042C4C 8E020000 */  lw    $v0, ($s0)
/* 01E050 80042C50 30420020 */  andi  $v0, $v0, 0x20
/* 01E054 80042C54 1440000B */  bnez  $v0, .L80042C84
/* 01E058 80042C58 00000000 */   nop   
/* 01E05C 80042C5C 8E02003C */  lw    $v0, 0x3c($s0)
/* 01E060 80042C60 10400003 */  beqz  $v0, .L80042C70
/* 01E064 80042C64 00000000 */   nop   
/* 01E068 80042C68 0C0B1123 */  jal   resume_all_script
/* 01E06C 80042C6C 8E040054 */   lw    $a0, 0x54($s0)
.L80042C70:
/* 01E070 80042C70 8E020044 */  lw    $v0, 0x44($s0)
/* 01E074 80042C74 10400003 */  beqz  $v0, .L80042C84
/* 01E078 80042C78 00000000 */   nop   
/* 01E07C 80042C7C 0C0B1123 */  jal   resume_all_script
/* 01E080 80042C80 8E04005C */   lw    $a0, 0x5c($s0)
.L80042C84:
/* 01E084 80042C84 8E820000 */  lw    $v0, ($s4)
/* 01E088 80042C88 26310001 */  addiu $s1, $s1, 1
/* 01E08C 80042C8C 0222102A */  slt   $v0, $s1, $v0
/* 01E090 80042C90 1440FFEB */  bnez  $v0, .L80042C40
/* 01E094 80042C94 26520004 */   addiu $s2, $s2, 4
.L80042C98:
/* 01E098 80042C98 82C2001C */  lb    $v0, 0x1c($s6)
/* 01E09C 80042C9C 26730001 */  addiu $s3, $s3, 1
/* 01E0A0 80042CA0 0262102A */  slt   $v0, $s3, $v0
/* 01E0A4 80042CA4 1440FFDF */  bnez  $v0, .L80042C24
/* 01E0A8 80042CA8 26B50004 */   addiu $s5, $s5, 4
/* 01E0AC 80042CAC 08010BC2 */  j     func_80042F08
/* 01E0B0 80042CB0 00000000 */   nop   

.L80042CB4:
/* 01E0B4 80042CB4 8ED40088 */  lw    $s4, 0x88($s6)
/* 01E0B8 80042CB8 8E820000 */  lw    $v0, ($s4)
/* 01E0BC 80042CBC 18400021 */  blez  $v0, .L80042D44
/* 01E0C0 80042CC0 0000982D */   daddu $s3, $zero, $zero
/* 01E0C4 80042CC4 0280882D */  daddu $s1, $s4, $zero
.L80042CC8:
/* 01E0C8 80042CC8 8E300004 */  lw    $s0, 4($s1)
/* 01E0CC 80042CCC 12000018 */  beqz  $s0, .L80042D30
/* 01E0D0 80042CD0 00000000 */   nop   
/* 01E0D4 80042CD4 8E030000 */  lw    $v1, ($s0)
/* 01E0D8 80042CD8 30620008 */  andi  $v0, $v1, 8
/* 01E0DC 80042CDC 10400004 */  beqz  $v0, .L80042CF0
/* 01E0E0 80042CE0 30620020 */   andi  $v0, $v1, 0x20
/* 01E0E4 80042CE4 8EC2008C */  lw    $v0, 0x8c($s6)
/* 01E0E8 80042CE8 16020011 */  bne   $s0, $v0, .L80042D30
/* 01E0EC 80042CEC 30620020 */   andi  $v0, $v1, 0x20
.L80042CF0:
/* 01E0F0 80042CF0 1440000F */  bnez  $v0, .L80042D30
/* 01E0F4 80042CF4 00000000 */   nop   
/* 01E0F8 80042CF8 8E040030 */  lw    $a0, 0x30($s0)
/* 01E0FC 80042CFC 1080000C */  beqz  $a0, .L80042D30
/* 01E100 80042D00 2405000A */   addiu $a1, $zero, 0xa
/* 01E104 80042D04 0C0B0CF8 */  jal   start_script
/* 01E108 80042D08 0000302D */   daddu $a2, $zero, $zero
/* 01E10C 80042D0C 0040202D */  daddu $a0, $v0, $zero
/* 01E110 80042D10 AE040048 */  sw    $a0, 0x48($s0)
/* 01E114 80042D14 8C820144 */  lw    $v0, 0x144($a0)
/* 01E118 80042D18 AE020060 */  sw    $v0, 0x60($s0)
/* 01E11C 80042D1C AC900148 */  sw    $s0, 0x148($a0)
/* 01E120 80042D20 86020008 */  lh    $v0, 8($s0)
/* 01E124 80042D24 AC82014C */  sw    $v0, 0x14c($a0)
/* 01E128 80042D28 92020006 */  lbu   $v0, 6($s0)
/* 01E12C 80042D2C A0820004 */  sb    $v0, 4($a0)
.L80042D30:
/* 01E130 80042D30 8E820000 */  lw    $v0, ($s4)
/* 01E134 80042D34 26730001 */  addiu $s3, $s3, 1
/* 01E138 80042D38 0262102A */  slt   $v0, $s3, $v0
/* 01E13C 80042D3C 1440FFE2 */  bnez  $v0, .L80042CC8
/* 01E140 80042D40 26310004 */   addiu $s1, $s1, 4
.L80042D44:
/* 01E144 80042D44 24020191 */  addiu $v0, $zero, 0x191
/* 01E148 80042D48 3C01800A */  lui   $at, 0x800a
/* 01E14C 80042D4C AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01E150 80042D50 08010BD3 */  j     func_80042F4C
/* 01E154 80042D54 00000000 */   nop   

.L80042D58:
/* 01E158 80042D58 8EC30090 */  lw    $v1, 0x90($s6)
/* 01E15C 80042D5C 14600003 */  bnez  $v1, .L80042D6C
/* 01E160 80042D60 00000000 */   nop   
/* 01E164 80042D64 08010BD3 */  j     func_80042F4C
/* 01E168 80042D68 AC820000 */   sw    $v0, ($a0)

.L80042D6C:
/* 01E16C 80042D6C 8EC20098 */  lw    $v0, 0x98($s6)
/* 01E170 80042D70 24420004 */  addiu $v0, $v0, 4
/* 01E174 80042D74 AEC20098 */  sw    $v0, 0x98($s6)
/* 01E178 80042D78 00621023 */  subu  $v0, $v1, $v0
/* 01E17C 80042D7C 04410073 */  bgez  $v0, .L80042F4C
/* 01E180 80042D80 AEC20090 */   sw    $v0, 0x90($s6)
/* 01E184 80042D84 08010BD3 */  j     func_80042F4C
/* 01E188 80042D88 AEC00090 */   sw    $zero, 0x90($s6)

.L80042D8C:
/* 01E18C 80042D8C 8ED40088 */  lw    $s4, 0x88($s6)
/* 01E190 80042D90 8E820000 */  lw    $v0, ($s4)
/* 01E194 80042D94 18400013 */  blez  $v0, .L80042DE4
/* 01E198 80042D98 0240982D */   daddu $s3, $s2, $zero
/* 01E19C 80042D9C 0280882D */  daddu $s1, $s4, $zero
.L80042DA0:
/* 01E1A0 80042DA0 8E300004 */  lw    $s0, 4($s1)
/* 01E1A4 80042DA4 1200000A */  beqz  $s0, .L80042DD0
/* 01E1A8 80042DA8 00000000 */   nop   
/* 01E1AC 80042DAC 8E020000 */  lw    $v0, ($s0)
/* 01E1B0 80042DB0 30420020 */  andi  $v0, $v0, 0x20
/* 01E1B4 80042DB4 14400006 */  bnez  $v0, .L80042DD0
/* 01E1B8 80042DB8 00000000 */   nop   
/* 01E1BC 80042DBC 0C0B1059 */  jal   does_script_exist
/* 01E1C0 80042DC0 8E040060 */   lw    $a0, 0x60($s0)
/* 01E1C4 80042DC4 50400002 */  beql  $v0, $zero, .L80042DD0
/* 01E1C8 80042DC8 AE000048 */   sw    $zero, 0x48($s0)
/* 01E1CC 80042DCC 24120001 */  addiu $s2, $zero, 1
.L80042DD0:
/* 01E1D0 80042DD0 8E820000 */  lw    $v0, ($s4)
/* 01E1D4 80042DD4 26730001 */  addiu $s3, $s3, 1
/* 01E1D8 80042DD8 0262102A */  slt   $v0, $s3, $v0
/* 01E1DC 80042DDC 1440FFF0 */  bnez  $v0, .L80042DA0
/* 01E1E0 80042DE0 26310004 */   addiu $s1, $s1, 4
.L80042DE4:
/* 01E1E4 80042DE4 16400059 */  bnez  $s2, .L80042F4C
/* 01E1E8 80042DE8 00000000 */   nop   
/* 01E1EC 80042DEC 82C2001C */  lb    $v0, 0x1c($s6)
/* 01E1F0 80042DF0 18400024 */  blez  $v0, .L80042E84
/* 01E1F4 80042DF4 0000982D */   daddu $s3, $zero, $zero
/* 01E1F8 80042DF8 02C0A82D */  daddu $s5, $s6, $zero
.L80042DFC:
/* 01E1FC 80042DFC 8EB40028 */  lw    $s4, 0x28($s5)
/* 01E200 80042E00 1280001B */  beqz  $s4, .L80042E70
/* 01E204 80042E04 00000000 */   nop   
/* 01E208 80042E08 8E820000 */  lw    $v0, ($s4)
/* 01E20C 80042E0C 18400018 */  blez  $v0, .L80042E70
/* 01E210 80042E10 0000882D */   daddu $s1, $zero, $zero
/* 01E214 80042E14 0280902D */  daddu $s2, $s4, $zero
.L80042E18:
/* 01E218 80042E18 8E500004 */  lw    $s0, 4($s2)
/* 01E21C 80042E1C 1200000F */  beqz  $s0, .L80042E5C
/* 01E220 80042E20 00000000 */   nop   
/* 01E224 80042E24 8E020000 */  lw    $v0, ($s0)
/* 01E228 80042E28 30420020 */  andi  $v0, $v0, 0x20
/* 01E22C 80042E2C 1440000B */  bnez  $v0, .L80042E5C
/* 01E230 80042E30 00000000 */   nop   
/* 01E234 80042E34 8E02003C */  lw    $v0, 0x3c($s0)
/* 01E238 80042E38 10400003 */  beqz  $v0, .L80042E48
/* 01E23C 80042E3C 00000000 */   nop   
/* 01E240 80042E40 0C0B1123 */  jal   resume_all_script
/* 01E244 80042E44 8E040054 */   lw    $a0, 0x54($s0)
.L80042E48:
/* 01E248 80042E48 8E020044 */  lw    $v0, 0x44($s0)
/* 01E24C 80042E4C 10400003 */  beqz  $v0, .L80042E5C
/* 01E250 80042E50 00000000 */   nop   
/* 01E254 80042E54 0C0B1123 */  jal   resume_all_script
/* 01E258 80042E58 8E04005C */   lw    $a0, 0x5c($s0)
.L80042E5C:
/* 01E25C 80042E5C 8E820000 */  lw    $v0, ($s4)
/* 01E260 80042E60 26310001 */  addiu $s1, $s1, 1
/* 01E264 80042E64 0222102A */  slt   $v0, $s1, $v0
/* 01E268 80042E68 1440FFEB */  bnez  $v0, .L80042E18
/* 01E26C 80042E6C 26520004 */   addiu $s2, $s2, 4
.L80042E70:
/* 01E270 80042E70 82C2001C */  lb    $v0, 0x1c($s6)
/* 01E274 80042E74 26730001 */  addiu $s3, $s3, 1
/* 01E278 80042E78 0262102A */  slt   $v0, $s3, $v0
/* 01E27C 80042E7C 1440FFDF */  bnez  $v0, .L80042DFC
/* 01E280 80042E80 26B50004 */   addiu $s5, $s5, 4
.L80042E84:
/* 01E284 80042E84 8ED0008C */  lw    $s0, 0x8c($s6)
/* 01E288 80042E88 8E020000 */  lw    $v0, ($s0)
/* 01E28C 80042E8C 30420004 */  andi  $v0, $v0, 4
/* 01E290 80042E90 1440001C */  bnez  $v0, .L80042F04
/* 01E294 80042E94 2402002D */   addiu $v0, $zero, 0x2d
/* 01E298 80042E98 8ED40088 */  lw    $s4, 0x88($s6)
/* 01E29C 80042E9C A20200B4 */  sb    $v0, 0xb4($s0)
/* 01E2A0 80042EA0 2402002D */  addiu $v0, $zero, 0x2d
/* 01E2A4 80042EA4 A6E20010 */  sh    $v0, 0x10($s7)
/* 01E2A8 80042EA8 8E820000 */  lw    $v0, ($s4)
/* 01E2AC 80042EAC 18400014 */  blez  $v0, .L80042F00
/* 01E2B0 80042EB0 0000882D */   daddu $s1, $zero, $zero
/* 01E2B4 80042EB4 2406002D */  addiu $a2, $zero, 0x2d
/* 01E2B8 80042EB8 2405002D */  addiu $a1, $zero, 0x2d
/* 01E2BC 80042EBC 0280202D */  daddu $a0, $s4, $zero
.L80042EC0:
/* 01E2C0 80042EC0 8C900004 */  lw    $s0, 4($a0)
/* 01E2C4 80042EC4 12000009 */  beqz  $s0, .L80042EEC
/* 01E2C8 80042EC8 00000000 */   nop   
/* 01E2CC 80042ECC 8E030000 */  lw    $v1, ($s0)
/* 01E2D0 80042ED0 30620020 */  andi  $v0, $v1, 0x20
/* 01E2D4 80042ED4 14400005 */  bnez  $v0, .L80042EEC
/* 01E2D8 80042ED8 30620008 */   andi  $v0, $v1, 8
/* 01E2DC 80042EDC 14400003 */  bnez  $v0, .L80042EEC
/* 01E2E0 80042EE0 00000000 */   nop   
/* 01E2E4 80042EE4 A20600B4 */  sb    $a2, 0xb4($s0)
/* 01E2E8 80042EE8 A6E50010 */  sh    $a1, 0x10($s7)
.L80042EEC:
/* 01E2EC 80042EEC 8E820000 */  lw    $v0, ($s4)
/* 01E2F0 80042EF0 26310001 */  addiu $s1, $s1, 1
/* 01E2F4 80042EF4 0222102A */  slt   $v0, $s1, $v0
/* 01E2F8 80042EF8 1440FFF1 */  bnez  $v0, .L80042EC0
/* 01E2FC 80042EFC 24840004 */   addiu $a0, $a0, 4
.L80042F00:
/* 01E300 80042F00 2402002D */  addiu $v0, $zero, 0x2d
.L80042F04:
/* 01E304 80042F04 A2C2000A */  sb    $v0, 0xa($s6)
func_80042F08:
.L80042F08:
/* 01E308 80042F08 0C038069 */  jal   func_800E01A4
/* 01E30C 80042F0C 00000000 */   nop   
/* 01E310 80042F10 0C03BD80 */  jal   func_800EF600
/* 01E314 80042F14 00000000 */   nop   
func_80042F18:
.L80042F18:
/* 01E318 80042F18 3C05BF80 */  lui   $a1, 0xbf80
/* 01E31C 80042F1C 0C04DF62 */  jal   func_80137D88
/* 01E320 80042F20 240400FF */   addiu $a0, $zero, 0xff
func_80042F24:
.L80042F24:
/* 01E324 80042F24 0C0B1192 */  jal   resume_all_group
/* 01E328 80042F28 24040010 */   addiu $a0, $zero, 0x10
/* 01E32C 80042F2C 24020002 */  addiu $v0, $zero, 2
/* 01E330 80042F30 3C01800A */  lui   $at, 0x800a
/* 01E334 80042F34 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01E338 80042F38 24020001 */  addiu $v0, $zero, 1
/* 01E33C 80042F3C 3C01800A */  lui   $at, 0x800a
/* 01E340 80042F40 AC22A678 */  sw    $v0, -0x5988($at)
/* 01E344 80042F44 3C01800A */  lui   $at, 0x800a
/* 01E348 80042F48 AC20A5D0 */  sw    $zero, -0x5a30($at)
func_80042F4C:
.L80042F4C:
/* 01E34C 80042F4C 82C2001C */  lb    $v0, 0x1c($s6)
/* 01E350 80042F50 18400032 */  blez  $v0, .L8004301C
/* 01E354 80042F54 0000982D */   daddu $s3, $zero, $zero
/* 01E358 80042F58 3C1E8000 */  lui   $fp, 0x8000
/* 01E35C 80042F5C 3C177FFF */  lui   $s7, 0x7fff
/* 01E360 80042F60 36F7FFFF */  ori   $s7, $s7, 0xffff
/* 01E364 80042F64 02C0A82D */  daddu $s5, $s6, $zero
.L80042F68:
/* 01E368 80042F68 8EB40028 */  lw    $s4, 0x28($s5)
/* 01E36C 80042F6C 12800026 */  beqz  $s4, .L80043008
/* 01E370 80042F70 00000000 */   nop   
/* 01E374 80042F74 8E820000 */  lw    $v0, ($s4)
/* 01E378 80042F78 18400023 */  blez  $v0, .L80043008
/* 01E37C 80042F7C 0000882D */   daddu $s1, $zero, $zero
/* 01E380 80042F80 0280902D */  daddu $s2, $s4, $zero
.L80042F84:
/* 01E384 80042F84 8E500004 */  lw    $s0, 4($s2)
/* 01E388 80042F88 1200001A */  beqz  $s0, .L80042FF4
/* 01E38C 80042F8C 00000000 */   nop   
/* 01E390 80042F90 8E020000 */  lw    $v0, ($s0)
/* 01E394 80042F94 30420020 */  andi  $v0, $v0, 0x20
/* 01E398 80042F98 14400016 */  bnez  $v0, .L80042FF4
/* 01E39C 80042F9C 00000000 */   nop   
/* 01E3A0 80042FA0 0C00EABB */  jal   get_npc_unsafe
/* 01E3A4 80042FA4 86040008 */   lh    $a0, 8($s0)
/* 01E3A8 80042FA8 0040202D */  daddu $a0, $v0, $zero
/* 01E3AC 80042FAC 820200B4 */  lb    $v0, 0xb4($s0)
/* 01E3B0 80042FB0 920300B4 */  lbu   $v1, 0xb4($s0)
/* 01E3B4 80042FB4 1040000F */  beqz  $v0, .L80042FF4
/* 01E3B8 80042FB8 30620001 */   andi  $v0, $v1, 1
/* 01E3BC 80042FBC 10400007 */  beqz  $v0, .L80042FDC
/* 01E3C0 80042FC0 00000000 */   nop   
/* 01E3C4 80042FC4 8C820000 */  lw    $v0, ($a0)
/* 01E3C8 80042FC8 005E1025 */  or    $v0, $v0, $fp
/* 01E3CC 80042FCC AC820000 */  sw    $v0, ($a0)
/* 01E3D0 80042FD0 8E020000 */  lw    $v0, ($s0)
/* 01E3D4 80042FD4 08010BFC */  j     func_80042FF0
/* 01E3D8 80042FD8 005E1025 */   or    $v0, $v0, $fp

.L80042FDC:
/* 01E3DC 80042FDC 8C820000 */  lw    $v0, ($a0)
/* 01E3E0 80042FE0 00571024 */  and   $v0, $v0, $s7
/* 01E3E4 80042FE4 AC820000 */  sw    $v0, ($a0)
/* 01E3E8 80042FE8 8E020000 */  lw    $v0, ($s0)
/* 01E3EC 80042FEC 00571024 */  and   $v0, $v0, $s7
func_80042FF0:
/* 01E3F0 80042FF0 AE020000 */  sw    $v0, ($s0)
.L80042FF4:
/* 01E3F4 80042FF4 8E820000 */  lw    $v0, ($s4)
/* 01E3F8 80042FF8 26310001 */  addiu $s1, $s1, 1
/* 01E3FC 80042FFC 0222102A */  slt   $v0, $s1, $v0
/* 01E400 80043000 1440FFE0 */  bnez  $v0, .L80042F84
/* 01E404 80043004 26520004 */   addiu $s2, $s2, 4
.L80043008:
/* 01E408 80043008 82C2001C */  lb    $v0, 0x1c($s6)
/* 01E40C 8004300C 26730001 */  addiu $s3, $s3, 1
/* 01E410 80043010 0262102A */  slt   $v0, $s3, $v0
/* 01E414 80043014 1440FFD4 */  bnez  $v0, .L80042F68
/* 01E418 80043018 26B50004 */   addiu $s5, $s5, 4
.L8004301C:
/* 01E41C 8004301C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 01E420 80043020 8FBE0030 */  lw    $fp, 0x30($sp)
/* 01E424 80043024 8FB7002C */  lw    $s7, 0x2c($sp)
/* 01E428 80043028 8FB60028 */  lw    $s6, 0x28($sp)
/* 01E42C 8004302C 8FB50024 */  lw    $s5, 0x24($sp)
/* 01E430 80043030 8FB40020 */  lw    $s4, 0x20($sp)
/* 01E434 80043034 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01E438 80043038 8FB20018 */  lw    $s2, 0x18($sp)
/* 01E43C 8004303C 8FB10014 */  lw    $s1, 0x14($sp)
/* 01E440 80043040 8FB00010 */  lw    $s0, 0x10($sp)
/* 01E444 80043044 03E00008 */  jr    $ra
/* 01E448 80043048 27BD0038 */   addiu $sp, $sp, 0x38

func_8004304C:
/* 01E44C 8004304C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01E450 80043050 3C03800B */  lui   $v1, 0x800b
/* 01E454 80043054 24630F10 */  addiu $v1, $v1, 0xf10
/* 01E458 80043058 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01E45C 8004305C 8C620098 */  lw    $v0, 0x98($v1)
/* 01E460 80043060 1040000B */  beqz  $v0, .L80043090
/* 01E464 80043064 00000000 */   nop   
/* 01E468 80043068 C4600090 */  lwc1  $f0, 0x90($v1)
/* 01E46C 8004306C 46800020 */  cvt.s.w $f0, $f0
/* 01E470 80043070 44050000 */  mfc1  $a1, $f0
/* 01E474 80043074 0C04DF62 */  jal   func_80137D88
/* 01E478 80043078 0000202D */   daddu $a0, $zero, $zero
/* 01E47C 8004307C 0000202D */  daddu $a0, $zero, $zero
/* 01E480 80043080 0080282D */  daddu $a1, $a0, $zero
/* 01E484 80043084 0080302D */  daddu $a2, $a0, $zero
/* 01E488 80043088 0C04DF84 */  jal   func_80137E10
/* 01E48C 8004308C 0080382D */   daddu $a3, $a0, $zero
.L80043090:
/* 01E490 80043090 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01E494 80043094 03E00008 */  jr    $ra
/* 01E498 80043098 27BD0018 */   addiu $sp, $sp, 0x18

func_8004309C:
/* 01E49C 8004309C 3C03800A */  lui   $v1, 0x800a
/* 01E4A0 800430A0 8C63A5D0 */  lw    $v1, -0x5a30($v1)
/* 01E4A4 800430A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01E4A8 800430A8 AFB10014 */  sw    $s1, 0x14($sp)
/* 01E4AC 800430AC 3C11800B */  lui   $s1, 0x800b
/* 01E4B0 800430B0 26310F10 */  addiu $s1, $s1, 0xf10
/* 01E4B4 800430B4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 01E4B8 800430B8 10600006 */  beqz  $v1, .L800430D4
/* 01E4BC 800430BC AFB00010 */   sw    $s0, 0x10($sp)
/* 01E4C0 800430C0 24020001 */  addiu $v0, $zero, 1
/* 01E4C4 800430C4 1062001B */  beq   $v1, $v0, .L80043134
/* 01E4C8 800430C8 00000000 */   nop   
/* 01E4CC 800430CC 08010C70 */  j     func_800431C0
/* 01E4D0 800430D0 00000000 */   nop   

.L800430D4:
/* 01E4D4 800430D4 8E30008C */  lw    $s0, 0x8c($s1)
/* 01E4D8 800430D8 8E020038 */  lw    $v0, 0x38($s0)
/* 01E4DC 800430DC 10400007 */  beqz  $v0, .L800430FC
/* 01E4E0 800430E0 0000882D */   daddu $s1, $zero, $zero
/* 01E4E4 800430E4 8E040050 */  lw    $a0, 0x50($s0)
/* 01E4E8 800430E8 0C0B1059 */  jal   does_script_exist
/* 01E4EC 800430EC 00000000 */   nop   
/* 01E4F0 800430F0 50400002 */  beql  $v0, $zero, .L800430FC
/* 01E4F4 800430F4 AE000038 */   sw    $zero, 0x38($s0)
/* 01E4F8 800430F8 24110001 */  addiu $s1, $zero, 1
.L800430FC:
/* 01E4FC 800430FC 8E020040 */  lw    $v0, 0x40($s0)
/* 01E500 80043100 10400006 */  beqz  $v0, .L8004311C
/* 01E504 80043104 00000000 */   nop   
/* 01E508 80043108 0C0B1059 */  jal   does_script_exist
/* 01E50C 8004310C 8E040058 */   lw    $a0, 0x58($s0)
/* 01E510 80043110 50400002 */  beql  $v0, $zero, .L8004311C
/* 01E514 80043114 AE000040 */   sw    $zero, 0x40($s0)
/* 01E518 80043118 24110001 */  addiu $s1, $zero, 1
.L8004311C:
/* 01E51C 8004311C 16200028 */  bnez  $s1, .L800431C0
/* 01E520 80043120 24020001 */   addiu $v0, $zero, 1
/* 01E524 80043124 3C01800A */  lui   $at, 0x800a
/* 01E528 80043128 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01E52C 8004312C 08010C70 */  j     func_800431C0
/* 01E530 80043130 00000000 */   nop   

.L80043134:
/* 01E534 80043134 0C0B1192 */  jal   resume_all_group
/* 01E538 80043138 24040001 */   addiu $a0, $zero, 1
/* 01E53C 8004313C 8E30008C */  lw    $s0, 0x8c($s1)
/* 01E540 80043140 12000006 */  beqz  $s0, .L8004315C
/* 01E544 80043144 00000000 */   nop   
/* 01E548 80043148 8E02003C */  lw    $v0, 0x3c($s0)
/* 01E54C 8004314C 10400003 */  beqz  $v0, .L8004315C
/* 01E550 80043150 00000000 */   nop   
/* 01E554 80043154 0C0B1123 */  jal   resume_all_script
/* 01E558 80043158 8E040054 */   lw    $a0, 0x54($s0)
.L8004315C:
/* 01E55C 8004315C 0C038069 */  jal   func_800E01A4
/* 01E560 80043160 00000000 */   nop   
/* 01E564 80043164 0C03BD80 */  jal   func_800EF600
/* 01E568 80043168 00000000 */   nop   
/* 01E56C 8004316C 3C028011 */  lui   $v0, 0x8011
/* 01E570 80043170 2442EFC8 */  addiu $v0, $v0, -0x1038
/* 01E574 80043174 804300B4 */  lb    $v1, 0xb4($v0)
/* 01E578 80043178 2402000C */  addiu $v0, $zero, 0xc
/* 01E57C 8004317C 14620003 */  bne   $v1, $v0, .L8004318C
/* 01E580 80043180 00000000 */   nop   
/* 01E584 80043184 0C039769 */  jal   set_action_state
/* 01E588 80043188 0000202D */   daddu $a0, $zero, $zero
.L8004318C:
/* 01E58C 8004318C 0C03BCF5 */  jal   func_800EF3D4
/* 01E590 80043190 0000202D */   daddu $a0, $zero, $zero
/* 01E594 80043194 24040010 */  addiu $a0, $zero, 0x10
/* 01E598 80043198 0C0B1192 */  jal   resume_all_group
/* 01E59C 8004319C A2200005 */   sb    $zero, 5($s1)
/* 01E5A0 800431A0 24020002 */  addiu $v0, $zero, 2
/* 01E5A4 800431A4 3C01800A */  lui   $at, 0x800a
/* 01E5A8 800431A8 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01E5AC 800431AC 24020001 */  addiu $v0, $zero, 1
/* 01E5B0 800431B0 3C01800A */  lui   $at, 0x800a
/* 01E5B4 800431B4 AC22A678 */  sw    $v0, -0x5988($at)
/* 01E5B8 800431B8 3C01800A */  lui   $at, 0x800a
/* 01E5BC 800431BC AC20A5D0 */  sw    $zero, -0x5a30($at)
func_800431C0:
.L800431C0:
/* 01E5C0 800431C0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 01E5C4 800431C4 8FB10014 */  lw    $s1, 0x14($sp)
/* 01E5C8 800431C8 8FB00010 */  lw    $s0, 0x10($sp)
/* 01E5CC 800431CC 03E00008 */  jr    $ra
/* 01E5D0 800431D0 27BD0020 */   addiu $sp, $sp, 0x20

func_800431D4:
/* 01E5D4 800431D4 03E00008 */  jr    $ra
/* 01E5D8 800431D8 00000000 */   nop   

func_800431DC:
/* 01E5DC 800431DC 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 01E5E0 800431E0 3C03FDFF */  lui   $v1, 0xfdff
/* 01E5E4 800431E4 AFB40060 */  sw    $s4, 0x60($sp)
/* 01E5E8 800431E8 3C148011 */  lui   $s4, 0x8011
/* 01E5EC 800431EC 2694EFC8 */  addiu $s4, $s4, -0x1038
/* 01E5F0 800431F0 AFBF0074 */  sw    $ra, 0x74($sp)
/* 01E5F4 800431F4 AFBE0070 */  sw    $fp, 0x70($sp)
/* 01E5F8 800431F8 AFB7006C */  sw    $s7, 0x6c($sp)
/* 01E5FC 800431FC AFB60068 */  sw    $s6, 0x68($sp)
/* 01E600 80043200 AFB50064 */  sw    $s5, 0x64($sp)
/* 01E604 80043204 AFB3005C */  sw    $s3, 0x5c($sp)
/* 01E608 80043208 AFB20058 */  sw    $s2, 0x58($sp)
/* 01E60C 8004320C AFB10054 */  sw    $s1, 0x54($sp)
/* 01E610 80043210 AFB00050 */  sw    $s0, 0x50($sp)
/* 01E614 80043214 F7BE00A0 */  sdc1  $f30, 0xa0($sp)
/* 01E618 80043218 F7BC0098 */  sdc1  $f28, 0x98($sp)
/* 01E61C 8004321C F7BA0090 */  sdc1  $f26, 0x90($sp)
/* 01E620 80043220 F7B80088 */  sdc1  $f24, 0x88($sp)
/* 01E624 80043224 F7B60080 */  sdc1  $f22, 0x80($sp)
/* 01E628 80043228 F7B40078 */  sdc1  $f20, 0x78($sp)
/* 01E62C 8004322C 8E820000 */  lw    $v0, ($s4)
/* 01E630 80043230 3463FFFF */  ori   $v1, $v1, 0xffff
/* 01E634 80043234 00431024 */  and   $v0, $v0, $v1
/* 01E638 80043238 3C038007 */  lui   $v1, 0x8007
/* 01E63C 8004323C 8C637410 */  lw    $v1, 0x7410($v1)
/* 01E640 80043240 3C04800B */  lui   $a0, 0x800b
/* 01E644 80043244 24841D80 */  addiu $a0, $a0, 0x1d80
/* 01E648 80043248 AE8000C8 */  sw    $zero, 0xc8($s4)
/* 01E64C 8004324C AE820000 */  sw    $v0, ($s4)
/* 01E650 80043250 00031080 */  sll   $v0, $v1, 2
/* 01E654 80043254 00431021 */  addu  $v0, $v0, $v1
/* 01E658 80043258 00021080 */  sll   $v0, $v0, 2
/* 01E65C 8004325C 00431023 */  subu  $v0, $v0, $v1
/* 01E660 80043260 000218C0 */  sll   $v1, $v0, 3
/* 01E664 80043264 00431021 */  addu  $v0, $v0, $v1
/* 01E668 80043268 000210C0 */  sll   $v0, $v0, 3
/* 01E66C 8004326C 0044B821 */  addu  $s7, $v0, $a0
/* 01E670 80043270 868200B0 */  lh    $v0, 0xb0($s4)
/* 01E674 80043274 968300B2 */  lhu   $v1, 0xb2($s4)
/* 01E678 80043278 44823000 */  mtc1  $v0, $f6
/* 01E67C 8004327C 00000000 */  nop   
/* 01E680 80043280 468031A0 */  cvt.s.w $f6, $f6
/* 01E684 80043284 00031C00 */  sll   $v1, $v1, 0x10
/* 01E688 80043288 00031403 */  sra   $v0, $v1, 0x10
/* 01E68C 8004328C 00031FC2 */  srl   $v1, $v1, 0x1f
/* 01E690 80043290 00431021 */  addu  $v0, $v0, $v1
/* 01E694 80043294 00021043 */  sra   $v0, $v0, 1
/* 01E698 80043298 44824000 */  mtc1  $v0, $f8
/* 01E69C 8004329C 00000000 */  nop   
/* 01E6A0 800432A0 46804220 */  cvt.s.w $f8, $f8
/* 01E6A4 800432A4 E7A6003C */  swc1  $f6, 0x3c($sp)
/* 01E6A8 800432A8 E7A80040 */  swc1  $f8, 0x40($sp)
/* 01E6AC 800432AC C6860028 */  lwc1  $f6, 0x28($s4)
/* 01E6B0 800432B0 3C028011 */  lui   $v0, 0x8011
/* 01E6B4 800432B4 8042EBB0 */  lb    $v0, -0x1450($v0)
/* 01E6B8 800432B8 E7A60030 */  swc1  $f6, 0x30($sp)
/* 01E6BC 800432BC C688002C */  lwc1  $f8, 0x2c($s4)
/* 01E6C0 800432C0 E7A80034 */  swc1  $f8, 0x34($sp)
/* 01E6C4 800432C4 C6860030 */  lwc1  $f6, 0x30($s4)
/* 01E6C8 800432C8 144000E6 */  bnez  $v0, .L80043664
/* 01E6CC 800432CC E7A60038 */   swc1  $f6, 0x38($sp)
/* 01E6D0 800432D0 0000F02D */  daddu $fp, $zero, $zero
/* 01E6D4 800432D4 03C0A82D */  daddu $s5, $fp, $zero
/* 01E6D8 800432D8 3C02800B */  lui   $v0, 0x800b
/* 01E6DC 800432DC 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01E6E0 800432E0 3C01477F */  lui   $at, 0x477f
/* 01E6E4 800432E4 3421FF00 */  ori   $at, $at, 0xff00
/* 01E6E8 800432E8 44814000 */  mtc1  $at, $f8
/* 01E6EC 800432EC 03C0B02D */  daddu $s6, $fp, $zero
/* 01E6F0 800432F0 AFA0002C */  sw    $zero, 0x2c($sp)
/* 01E6F4 800432F4 184000B8 */  blez  $v0, .L800435D8
/* 01E6F8 800432F8 E7A80048 */   swc1  $f8, 0x48($sp)
/* 01E6FC 800432FC 00151080 */  sll   $v0, $s5, 2
.L80043300:
/* 01E700 80043300 3C08800B */  lui   $t0, 0x800b
/* 01E704 80043304 25080F10 */  addiu $t0, $t0, 0xf10
/* 01E708 80043308 01021021 */  addu  $v0, $t0, $v0
/* 01E70C 8004330C 8C530028 */  lw    $s3, 0x28($v0)
/* 01E710 80043310 126000AB */  beqz  $s3, .L800435C0
/* 01E714 80043314 00000000 */   nop   
/* 01E718 80043318 8E620000 */  lw    $v0, ($s3)
/* 01E71C 8004331C 184000A8 */  blez  $v0, .L800435C0
/* 01E720 80043320 0000902D */   daddu $s2, $zero, $zero
/* 01E724 80043324 00121080 */  sll   $v0, $s2, 2
.L80043328:
/* 01E728 80043328 02621021 */  addu  $v0, $s3, $v0
/* 01E72C 8004332C 8C510004 */  lw    $s1, 4($v0)
/* 01E730 80043330 1220009E */  beqz  $s1, .L800435AC
/* 01E734 80043334 3C028000 */   lui   $v0, 0x8000
/* 01E738 80043338 8E230000 */  lw    $v1, ($s1)
/* 01E73C 8004333C 34420020 */  ori   $v0, $v0, 0x20
/* 01E740 80043340 00621024 */  and   $v0, $v1, $v0
/* 01E744 80043344 14400099 */  bnez  $v0, .L800435AC
/* 01E748 80043348 30620001 */   andi  $v0, $v1, 1
/* 01E74C 8004334C 10400097 */  beqz  $v0, .L800435AC
/* 01E750 80043350 3C020800 */   lui   $v0, 0x800
/* 01E754 80043354 00621024 */  and   $v0, $v1, $v0
/* 01E758 80043358 14400094 */  bnez  $v0, .L800435AC
/* 01E75C 8004335C 00000000 */   nop   
/* 01E760 80043360 8E220020 */  lw    $v0, 0x20($s1)
/* 01E764 80043364 10400091 */  beqz  $v0, .L800435AC
/* 01E768 80043368 00000000 */   nop   
/* 01E76C 8004336C 0C00EABB */  jal   get_npc_unsafe
/* 01E770 80043370 86240008 */   lh    $a0, 8($s1)
/* 01E774 80043374 0040802D */  daddu $s0, $v0, $zero
/* 01E778 80043378 C45A0038 */  lwc1  $f26, 0x38($v0)
/* 01E77C 8004337C C7A60030 */  lwc1  $f6, 0x30($sp)
/* 01E780 80043380 4606D081 */  sub.s $f2, $f26, $f6
/* 01E784 80043384 46021082 */  mul.s $f2, $f2, $f2
/* 01E788 80043388 00000000 */  nop   
/* 01E78C 8004338C C61C0040 */  lwc1  $f28, 0x40($s0)
/* 01E790 80043390 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 01E794 80043394 4608E001 */  sub.s $f0, $f28, $f8
/* 01E798 80043398 46000002 */  mul.s $f0, $f0, $f0
/* 01E79C 8004339C 00000000 */  nop   
/* 01E7A0 800433A0 860200A8 */  lh    $v0, 0xa8($s0)
/* 01E7A4 800433A4 860300A6 */  lh    $v1, 0xa6($s0)
/* 01E7A8 800433A8 44823000 */  mtc1  $v0, $f6
/* 01E7AC 800433AC 00000000 */  nop   
/* 01E7B0 800433B0 468031A0 */  cvt.s.w $f6, $f6
/* 01E7B4 800433B4 4483F000 */  mtc1  $v1, $f30
/* 01E7B8 800433B8 00000000 */  nop   
/* 01E7BC 800433BC 4680F7A0 */  cvt.s.w $f30, $f30
/* 01E7C0 800433C0 46001300 */  add.s $f12, $f2, $f0
/* 01E7C4 800433C4 E7A60044 */  swc1  $f6, 0x44($sp)
/* 01E7C8 800433C8 C618003C */  lwc1  $f24, 0x3c($s0)
/* 01E7CC 800433CC 46006104 */  sqrt.s $f4, $f12
/* 01E7D0 800433D0 46042032 */  c.eq.s $f4, $f4
/* 01E7D4 800433D4 00000000 */  nop   
/* 01E7D8 800433D8 45010004 */  bc1t  .L800433EC
/* 01E7DC 800433DC 00000000 */   nop   
/* 01E7E0 800433E0 0C0187BC */  jal   sqrtf
/* 01E7E4 800433E4 00000000 */   nop   
/* 01E7E8 800433E8 46000106 */  mov.s $f4, $f0
.L800433EC:
/* 01E7EC 800433EC C7A80040 */  lwc1  $f8, 0x40($sp)
/* 01E7F0 800433F0 461E4000 */  add.s $f0, $f8, $f30
/* 01E7F4 800433F4 46002586 */  mov.s $f22, $f4
/* 01E7F8 800433F8 4616003E */  c.le.s $f0, $f22
/* 01E7FC 800433FC 00000000 */  nop   
/* 01E800 80043400 4501006A */  bc1t  .L800435AC
/* 01E804 80043404 00000000 */   nop   
/* 01E808 80043408 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 01E80C 8004340C 4606C000 */  add.s $f0, $f24, $f6
/* 01E810 80043410 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 01E814 80043414 4608003C */  c.lt.s $f0, $f8
/* 01E818 80043418 00000000 */  nop   
/* 01E81C 8004341C 45010063 */  bc1t  .L800435AC
/* 01E820 80043420 00000000 */   nop   
/* 01E824 80043424 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 01E828 80043428 46064000 */  add.s $f0, $f8, $f6
/* 01E82C 8004342C 4618003C */  c.lt.s $f0, $f24
/* 01E830 80043430 00000000 */  nop   
/* 01E834 80043434 4501005D */  bc1t  .L800435AC
/* 01E838 80043438 00000000 */   nop   
/* 01E83C 8004343C 0C00A6C9 */  jal   clamp_angle
/* 01E840 80043440 C68C00A8 */   lwc1  $f12, 0xa8($s4)
/* 01E844 80043444 3C014334 */  lui   $at, 0x4334
/* 01E848 80043448 44811000 */  mtc1  $at, $f2
/* 01E84C 8004344C 00000000 */  nop   
/* 01E850 80043450 4602003C */  c.lt.s $f0, $f2
/* 01E854 80043454 00000000 */  nop   
/* 01E858 80043458 4500000F */  bc1f  .L80043498
/* 01E85C 8004345C 00000000 */   nop   
/* 01E860 80043460 C6EC006C */  lwc1  $f12, 0x6c($s7)
/* 01E864 80043464 3C0142F0 */  lui   $at, 0x42f0
/* 01E868 80043468 44814000 */  mtc1  $at, $f8
/* 01E86C 8004346C 0C00A6C9 */  jal   clamp_angle
/* 01E870 80043470 46086301 */   sub.s $f12, $f12, $f8
/* 01E874 80043474 8E8200A4 */  lw    $v0, 0xa4($s4)
/* 01E878 80043478 3C080100 */  lui   $t0, 0x100
/* 01E87C 8004347C 00481024 */  and   $v0, $v0, $t0
/* 01E880 80043480 10400016 */  beqz  $v0, .L800434DC
/* 01E884 80043484 46000506 */   mov.s $f20, $f0
/* 01E888 80043488 3C014270 */  lui   $at, 0x4270
/* 01E88C 8004348C 44813000 */  mtc1  $at, $f6
/* 01E890 80043490 08010D34 */  j     func_800434D0
/* 01E894 80043494 4606A300 */   add.s $f12, $f20, $f6

.L80043498:
/* 01E898 80043498 C6EC006C */  lwc1  $f12, 0x6c($s7)
/* 01E89C 8004349C 3C0142F0 */  lui   $at, 0x42f0
/* 01E8A0 800434A0 44814000 */  mtc1  $at, $f8
/* 01E8A4 800434A4 0C00A6C9 */  jal   clamp_angle
/* 01E8A8 800434A8 46086300 */   add.s $f12, $f12, $f8
/* 01E8AC 800434AC 8E8200A4 */  lw    $v0, 0xa4($s4)
/* 01E8B0 800434B0 3C080100 */  lui   $t0, 0x100
/* 01E8B4 800434B4 00481024 */  and   $v0, $v0, $t0
/* 01E8B8 800434B8 10400008 */  beqz  $v0, .L800434DC
/* 01E8BC 800434BC 46000506 */   mov.s $f20, $f0
/* 01E8C0 800434C0 3C014270 */  lui   $at, 0x4270
/* 01E8C4 800434C4 44813000 */  mtc1  $at, $f6
/* 01E8C8 800434C8 00000000 */  nop   
/* 01E8CC 800434CC 4606A301 */  sub.s $f12, $f20, $f6
func_800434D0:
/* 01E8D0 800434D0 0C00A6C9 */  jal   clamp_angle
/* 01E8D4 800434D4 00000000 */   nop   
/* 01E8D8 800434D8 46000506 */  mov.s $f20, $f0
.L800434DC:
/* 01E8DC 800434DC C7AC0030 */  lwc1  $f12, 0x30($sp)
/* 01E8E0 800434E0 4406D000 */  mfc1  $a2, $f26
/* 01E8E4 800434E4 4407E000 */  mfc1  $a3, $f28
/* 01E8E8 800434E8 0C00A720 */  jal   atan2
/* 01E8EC 800434EC C7AE0038 */   lwc1  $f14, 0x38($sp)
/* 01E8F0 800434F0 4600A306 */  mov.s $f12, $f20
/* 01E8F4 800434F4 0C00A70A */  jal   get_clamped_angle_diff
/* 01E8F8 800434F8 46000386 */   mov.s $f14, $f0
/* 01E8FC 800434FC 3C0142B4 */  lui   $at, 0x42b4
/* 01E900 80043500 44811000 */  mtc1  $at, $f2
/* 01E904 80043504 46000005 */  abs.s $f0, $f0
/* 01E908 80043508 4600103C */  c.lt.s $f2, $f0
/* 01E90C 8004350C 00000000 */  nop   
/* 01E910 80043510 45010026 */  bc1t  .L800435AC
/* 01E914 80043514 3C030001 */   lui   $v1, 1
/* 01E918 80043518 8E220000 */  lw    $v0, ($s1)
/* 01E91C 8004351C 00431024 */  and   $v0, $v0, $v1
/* 01E920 80043520 14400019 */  bnez  $v0, .L80043588
/* 01E924 80043524 3C032000 */   lui   $v1, 0x2000
/* 01E928 80043528 8E020000 */  lw    $v0, ($s0)
/* 01E92C 8004352C 00431024 */  and   $v0, $v0, $v1
/* 01E930 80043530 10400015 */  beqz  $v0, .L80043588
/* 01E934 80043534 4600D306 */   mov.s $f12, $f26
/* 01E938 80043538 8FA60030 */  lw    $a2, 0x30($sp)
/* 01E93C 8004353C 8FA70038 */  lw    $a3, 0x38($sp)
/* 01E940 80043540 4600E386 */  mov.s $f14, $f28
/* 01E944 80043544 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 01E948 80043548 E7B80024 */  swc1  $f24, 0x24($sp)
/* 01E94C 8004354C 0C00A720 */  jal   atan2
/* 01E950 80043550 E7AE0028 */   swc1  $f14, 0x28($sp)
/* 01E954 80043554 0000202D */  daddu $a0, $zero, $zero
/* 01E958 80043558 27A60024 */  addiu $a2, $sp, 0x24
/* 01E95C 8004355C 27A70028 */  addiu $a3, $sp, 0x28
/* 01E960 80043560 27A50020 */  addiu $a1, $sp, 0x20
/* 01E964 80043564 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 01E968 80043568 461EF080 */  add.s $f2, $f30, $f30
/* 01E96C 8004356C E7B60010 */  swc1  $f22, 0x10($sp)
/* 01E970 80043570 E7A00014 */  swc1  $f0, 0x14($sp)
/* 01E974 80043574 E7A80018 */  swc1  $f8, 0x18($sp)
/* 01E978 80043578 0C0376B9 */  jal   func_800DDAE4
/* 01E97C 8004357C E7A2001C */   swc1  $f2, 0x1c($sp)
/* 01E980 80043580 1440000A */  bnez  $v0, .L800435AC
/* 01E984 80043584 00000000 */   nop   
.L80043588:
/* 01E988 80043588 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 01E98C 8004358C 4606B03C */  c.lt.s $f22, $f6
/* 01E990 80043590 00000000 */  nop   
/* 01E994 80043594 45000005 */  bc1f  .L800435AC
/* 01E998 80043598 00000000 */   nop   
/* 01E99C 8004359C 0200F02D */  daddu $fp, $s0, $zero
/* 01E9A0 800435A0 0220B02D */  daddu $s6, $s1, $zero
/* 01E9A4 800435A4 E7B60048 */  swc1  $f22, 0x48($sp)
/* 01E9A8 800435A8 AFB3002C */  sw    $s3, 0x2c($sp)
.L800435AC:
/* 01E9AC 800435AC 8E620000 */  lw    $v0, ($s3)
/* 01E9B0 800435B0 26520001 */  addiu $s2, $s2, 1
/* 01E9B4 800435B4 0242102A */  slt   $v0, $s2, $v0
/* 01E9B8 800435B8 1440FF5B */  bnez  $v0, .L80043328
/* 01E9BC 800435BC 00121080 */   sll   $v0, $s2, 2
.L800435C0:
/* 01E9C0 800435C0 3C02800B */  lui   $v0, 0x800b
/* 01E9C4 800435C4 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01E9C8 800435C8 26B50001 */  addiu $s5, $s5, 1
/* 01E9CC 800435CC 02A2102A */  slt   $v0, $s5, $v0
/* 01E9D0 800435D0 1440FF4B */  bnez  $v0, .L80043300
/* 01E9D4 800435D4 00151080 */   sll   $v0, $s5, 2
.L800435D8:
/* 01E9D8 800435D8 8E820004 */  lw    $v0, 4($s4)
/* 01E9DC 800435DC 30424000 */  andi  $v0, $v0, 0x4000
/* 01E9E0 800435E0 14400021 */  bnez  $v0, .L80043668
/* 01E9E4 800435E4 0000102D */   daddu $v0, $zero, $zero
/* 01E9E8 800435E8 13C0001F */  beqz  $fp, .L80043668
/* 01E9EC 800435EC 00000000 */   nop   
/* 01E9F0 800435F0 0C04D07A */  jal   func_801341E8
/* 01E9F4 800435F4 00000000 */   nop   
/* 01E9F8 800435F8 1440001B */  bnez  $v0, .L80043668
/* 01E9FC 800435FC 0000102D */   daddu $v0, $zero, $zero
/* 01EA00 80043600 8E830000 */  lw    $v1, ($s4)
/* 01EA04 80043604 8E8400E0 */  lw    $a0, 0xe0($s4)
/* 01EA08 80043608 3C020200 */  lui   $v0, 0x200
/* 01EA0C 8004360C AE9E00C8 */  sw    $fp, 0xc8($s4)
/* 01EA10 80043610 00621825 */  or    $v1, $v1, $v0
/* 01EA14 80043614 30848000 */  andi  $a0, $a0, 0x8000
/* 01EA18 80043618 10800012 */  beqz  $a0, .L80043664
/* 01EA1C 8004361C AE830000 */   sw    $v1, ($s4)
/* 01EA20 80043620 0C03A5EE */  jal   func_800E97B8
/* 01EA24 80043624 00000000 */   nop   
/* 01EA28 80043628 24020001 */  addiu $v0, $zero, 1
/* 01EA2C 8004362C 24030005 */  addiu $v1, $zero, 5
/* 01EA30 80043630 3C01800B */  lui   $at, 0x800b
/* 01EA34 80043634 A0230F15 */  sb    $v1, 0xf15($at)
/* 01EA38 80043638 A2C30005 */  sb    $v1, 5($s6)
/* 01EA3C 8004363C 8FA8002C */  lw    $t0, 0x2c($sp)
/* 01EA40 80043640 0040182D */  daddu $v1, $v0, $zero
/* 01EA44 80043644 3C01800B */  lui   $at, 0x800b
/* 01EA48 80043648 AC360F9C */  sw    $s6, 0xf9c($at)
/* 01EA4C 8004364C 3C01800B */  lui   $at, 0x800b
/* 01EA50 80043650 A0230F14 */  sb    $v1, 0xf14($at)
/* 01EA54 80043654 3C01800B */  lui   $at, 0x800b
/* 01EA58 80043658 AC280F98 */  sw    $t0, 0xf98($at)
/* 01EA5C 8004365C 08010D9A */  j     func_80043668
/* 01EA60 80043660 00000000 */   nop   

.L80043664:
/* 01EA64 80043664 0000102D */  daddu $v0, $zero, $zero
func_80043668:
.L80043668:
/* 01EA68 80043668 8FBF0074 */  lw    $ra, 0x74($sp)
/* 01EA6C 8004366C 8FBE0070 */  lw    $fp, 0x70($sp)
/* 01EA70 80043670 8FB7006C */  lw    $s7, 0x6c($sp)
/* 01EA74 80043674 8FB60068 */  lw    $s6, 0x68($sp)
/* 01EA78 80043678 8FB50064 */  lw    $s5, 0x64($sp)
/* 01EA7C 8004367C 8FB40060 */  lw    $s4, 0x60($sp)
/* 01EA80 80043680 8FB3005C */  lw    $s3, 0x5c($sp)
/* 01EA84 80043684 8FB20058 */  lw    $s2, 0x58($sp)
/* 01EA88 80043688 8FB10054 */  lw    $s1, 0x54($sp)
/* 01EA8C 8004368C 8FB00050 */  lw    $s0, 0x50($sp)
/* 01EA90 80043690 D7BE00A0 */  ldc1  $f30, 0xa0($sp)
/* 01EA94 80043694 D7BC0098 */  ldc1  $f28, 0x98($sp)
/* 01EA98 80043698 D7BA0090 */  ldc1  $f26, 0x90($sp)
/* 01EA9C 8004369C D7B80088 */  ldc1  $f24, 0x88($sp)
/* 01EAA0 800436A0 D7B60080 */  ldc1  $f22, 0x80($sp)
/* 01EAA4 800436A4 D7B40078 */  ldc1  $f20, 0x78($sp)
/* 01EAA8 800436A8 03E00008 */  jr    $ra
/* 01EAAC 800436AC 27BD00A8 */   addiu $sp, $sp, 0xa8

create_npcs:
/* 01EAB0 800436B0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 01EAB4 800436B4 AFBE0058 */  sw    $fp, 0x58($sp)
/* 01EAB8 800436B8 27BE0010 */  addiu $fp, $sp, 0x10
/* 01EABC 800436BC 3C07800B */  lui   $a3, 0x800b
/* 01EAC0 800436C0 8CE70F34 */  lw    $a3, 0xf34($a3)
/* 01EAC4 800436C4 3C03800A */  lui   $v1, 0x800a
/* 01EAC8 800436C8 8C63A5D0 */  lw    $v1, -0x5a30($v1)
/* 01EACC 800436CC 3C08800B */  lui   $t0, 0x800b
/* 01EAD0 800436D0 81080F30 */  lb    $t0, 0xf30($t0)
/* 01EAD4 800436D4 24040001 */  addiu $a0, $zero, 1
/* 01EAD8 800436D8 AFBF005C */  sw    $ra, 0x5c($sp)
/* 01EADC 800436DC AFB70054 */  sw    $s7, 0x54($sp)
/* 01EAE0 800436E0 AFB60050 */  sw    $s6, 0x50($sp)
/* 01EAE4 800436E4 AFB5004C */  sw    $s5, 0x4c($sp)
/* 01EAE8 800436E8 AFB40048 */  sw    $s4, 0x48($sp)
/* 01EAEC 800436EC AFB30044 */  sw    $s3, 0x44($sp)
/* 01EAF0 800436F0 AFB20040 */  sw    $s2, 0x40($sp)
/* 01EAF4 800436F4 AFB1003C */  sw    $s1, 0x3c($sp)
/* 01EAF8 800436F8 AFB00038 */  sw    $s0, 0x38($sp)
/* 01EAFC 800436FC AFA70020 */  sw    $a3, 0x20($sp)
/* 01EB00 80043700 106401A5 */  beq   $v1, $a0, .L80043D98
/* 01EB04 80043704 AFA80028 */   sw    $t0, 0x28($sp)
/* 01EB08 80043708 28620002 */  slti  $v0, $v1, 2
/* 01EB0C 8004370C 50400005 */  beql  $v0, $zero, .L80043724
/* 01EB10 80043710 24020002 */   addiu $v0, $zero, 2
/* 01EB14 80043714 10600007 */  beqz  $v1, .L80043734
/* 01EB18 80043718 00000000 */   nop   
/* 01EB1C 8004371C 08011044 */  j     func_80044110
/* 01EB20 80043720 00000000 */   nop   

.L80043724:
/* 01EB24 80043724 106201EF */  beq   $v1, $v0, .L80043EE4
/* 01EB28 80043728 0000A82D */   daddu $s5, $zero, $zero
/* 01EB2C 8004372C 08011044 */  j     func_80044110
/* 01EB30 80043730 00000000 */   nop   

.L80043734:
/* 01EB34 80043734 3C02800B */  lui   $v0, 0x800b
/* 01EB38 80043738 80420F31 */  lb    $v0, 0xf31($v0)
/* 01EB3C 8004373C 1044002A */  beq   $v0, $a0, .L800437E8
/* 01EB40 80043740 00000000 */   nop   
/* 01EB44 80043744 0000982D */  daddu $s3, $zero, $zero
/* 01EB48 80043748 3C03800B */  lui   $v1, 0x800b
/* 01EB4C 8004374C 24630F10 */  addiu $v1, $v1, 0xf10
.L80043750:
/* 01EB50 80043750 84620BF0 */  lh    $v0, 0xbf0($v1)
/* 01EB54 80043754 8FA70028 */  lw    $a3, 0x28($sp)
/* 01EB58 80043758 10470006 */  beq   $v0, $a3, .L80043774
/* 01EB5C 8004375C 2A620002 */   slti  $v0, $s3, 2
/* 01EB60 80043760 26730001 */  addiu $s3, $s3, 1
/* 01EB64 80043764 2A620002 */  slti  $v0, $s3, 2
/* 01EB68 80043768 1440FFF9 */  bnez  $v0, .L80043750
/* 01EB6C 8004376C 24630002 */   addiu $v1, $v1, 2
/* 01EB70 80043770 2A620002 */  slti  $v0, $s3, 2
.L80043774:
/* 01EB74 80043774 1440000F */  bnez  $v0, .L800437B4
/* 01EB78 80043778 0000982D */   daddu $s3, $zero, $zero
/* 01EB7C 8004377C 8FA80028 */  lw    $t0, 0x28($sp)
/* 01EB80 80043780 0000182D */  daddu $v1, $zero, $zero
/* 01EB84 80043784 00081040 */  sll   $v0, $t0, 1
/* 01EB88 80043788 00481021 */  addu  $v0, $v0, $t0
/* 01EB8C 8004378C 00022100 */  sll   $a0, $v0, 4
/* 01EB90 80043790 3C07800B */  lui   $a3, 0x800b
/* 01EB94 80043794 24E70F10 */  addiu $a3, $a3, 0xf10
.L80043798:
/* 01EB98 80043798 00E41021 */  addu  $v0, $a3, $a0
/* 01EB9C 8004379C AC4000B0 */  sw    $zero, 0xb0($v0)
/* 01EBA0 800437A0 24630001 */  addiu $v1, $v1, 1
/* 01EBA4 800437A4 2862000C */  slti  $v0, $v1, 0xc
/* 01EBA8 800437A8 1440FFFB */  bnez  $v0, .L80043798
/* 01EBAC 800437AC 24840004 */   addiu $a0, $a0, 4
/* 01EBB0 800437B0 0000982D */  daddu $s3, $zero, $zero
.L800437B4:
/* 01EBB4 800437B4 00131840 */  sll   $v1, $s3, 1
/* 01EBB8 800437B8 26620001 */  addiu $v0, $s3, 1
/* 01EBBC 800437BC 0040982D */  daddu $s3, $v0, $zero
/* 01EBC0 800437C0 00131040 */  sll   $v0, $s3, 1
/* 01EBC4 800437C4 3C08800B */  lui   $t0, 0x800b
/* 01EBC8 800437C8 25080F10 */  addiu $t0, $t0, 0xf10
/* 01EBCC 800437CC 01022021 */  addu  $a0, $t0, $v0
/* 01EBD0 800437D0 94820BF0 */  lhu   $v0, 0xbf0($a0)
/* 01EBD4 800437D4 01031821 */  addu  $v1, $t0, $v1
/* 01EBD8 800437D8 1A60FFF6 */  blez  $s3, .L800437B4
/* 01EBDC 800437DC A4620BF0 */   sh    $v0, 0xbf0($v1)
/* 01EBE0 800437E0 97A7002A */  lhu   $a3, 0x2a($sp)
/* 01EBE4 800437E4 A4870BF0 */  sh    $a3, 0xbf0($a0)
.L800437E8:
/* 01EBE8 800437E8 8FA80020 */  lw    $t0, 0x20($sp)
/* 01EBEC 800437EC 0000B02D */  daddu $s6, $zero, $zero
/* 01EBF0 800437F0 AFA0002C */  sw    $zero, 0x2c($sp)
/* 01EBF4 800437F4 2508000A */  addiu $t0, $t0, 0xa
/* 01EBF8 800437F8 AFA80034 */  sw    $t0, 0x34($sp)
func_800437FC:
/* 01EBFC 800437FC 8FA70020 */  lw    $a3, 0x20($sp)
/* 01EC00 80043800 8CE20000 */  lw    $v0, ($a3)
/* 01EC04 80043804 1040015D */  beqz  $v0, .L80043D7C
/* 01EC08 80043808 2404004C */   addiu $a0, $zero, 0x4c
/* 01EC0C 8004380C 8FA80034 */  lw    $t0, 0x34($sp)
/* 01EC10 80043810 8D17FFFA */  lw    $s7, -6($t0)
/* 01EC14 80043814 0C00AB39 */  jal   heap_malloc
/* 01EC18 80043818 AFA20024 */   sw    $v0, 0x24($sp)
/* 01EC1C 8004381C 0040A02D */  daddu $s4, $v0, $zero
/* 01EC20 80043820 00161080 */  sll   $v0, $s6, 2
/* 01EC24 80043824 3C07800B */  lui   $a3, 0x800b
/* 01EC28 80043828 24E70F10 */  addiu $a3, $a3, 0xf10
/* 01EC2C 8004382C 00E21021 */  addu  $v0, $a3, $v0
/* 01EC30 80043830 16800003 */  bnez  $s4, .L80043840
/* 01EC34 80043834 AC540028 */   sw    $s4, 0x28($v0)
func_80043838:
/* 01EC38 80043838 08010E0E */  j     func_80043838
/* 01EC3C 8004383C 00000000 */   nop   

.L80043840:
/* 01EC40 80043840 8FA80024 */  lw    $t0, 0x24($sp)
/* 01EC44 80043844 AE880000 */  sw    $t0, ($s4)
/* 01EC48 80043848 8FA70034 */  lw    $a3, 0x34($sp)
/* 01EC4C 8004384C 94E2FFFE */  lhu   $v0, -2($a3)
/* 01EC50 80043850 A6820044 */  sh    $v0, 0x44($s4)
/* 01EC54 80043854 94E20000 */  lhu   $v0, ($a3)
/* 01EC58 80043858 97A8002E */  lhu   $t0, 0x2e($sp)
/* 01EC5C 8004385C 2442FFFF */  addiu $v0, $v0, -1
/* 01EC60 80043860 A6880048 */  sh    $t0, 0x48($s4)
/* 01EC64 80043864 A6820046 */  sh    $v0, 0x46($s4)
/* 01EC68 80043868 8FA70024 */  lw    $a3, 0x24($sp)
/* 01EC6C 8004386C 18E00137 */  blez  $a3, .L80043D4C
/* 01EC70 80043870 0000982D */   daddu $s3, $zero, $zero
/* 01EC74 80043874 AFB40030 */  sw    $s4, 0x30($sp)
/* 01EC78 80043878 26F20024 */  addiu $s2, $s7, 0x24
.L8004387C:
/* 01EC7C 8004387C 86850048 */  lh    $a1, 0x48($s4)
/* 01EC80 80043880 8FA40028 */  lw    $a0, 0x28($sp)
/* 01EC84 80043884 0C00FB7C */  jal   get_defeated
/* 01EC88 80043888 00B32821 */   addu  $a1, $a1, $s3
/* 01EC8C 8004388C 10400006 */  beqz  $v0, .L800438A8
/* 01EC90 80043890 00000000 */   nop   
/* 01EC94 80043894 265201F0 */  addiu $s2, $s2, 0x1f0
/* 01EC98 80043898 8FA80030 */  lw    $t0, 0x30($sp)
/* 01EC9C 8004389C 26F701F0 */  addiu $s7, $s7, 0x1f0
/* 01ECA0 800438A0 08010F4C */  j     func_80043D30
/* 01ECA4 800438A4 AD000004 */   sw    $zero, 4($t0)

.L800438A8:
/* 01ECA8 800438A8 0C00AB39 */  jal   heap_malloc
/* 01ECAC 800438AC 240400E8 */   addiu $a0, $zero, 0xe8
/* 01ECB0 800438B0 8FA70030 */  lw    $a3, 0x30($sp)
/* 01ECB4 800438B4 0040802D */  daddu $s0, $v0, $zero
/* 01ECB8 800438B8 16000003 */  bnez  $s0, .L800438C8
/* 01ECBC 800438BC ACE20004 */   sw    $v0, 4($a3)
func_800438C0:
/* 01ECC0 800438C0 08010E30 */  j     func_800438C0
/* 01ECC4 800438C4 00000000 */   nop   

.L800438C8:
/* 01ECC8 800438C8 2403000F */  addiu $v1, $zero, 0xf
/* 01ECCC 800438CC 2602003C */  addiu $v0, $s0, 0x3c
.L800438D0:
/* 01ECD0 800438D0 AC40006C */  sw    $zero, 0x6c($v0)
/* 01ECD4 800438D4 2463FFFF */  addiu $v1, $v1, -1
/* 01ECD8 800438D8 0461FFFD */  bgez  $v1, .L800438D0
/* 01ECDC 800438DC 2442FFFC */   addiu $v0, $v0, -4
/* 01ECE0 800438E0 A2160004 */  sb    $s6, 4($s0)
/* 01ECE4 800438E4 9642FFDE */  lhu   $v0, -0x22($s2)
/* 01ECE8 800438E8 A6020008 */  sh    $v0, 8($s0)
/* 01ECEC 800438EC 8E44FFE0 */  lw    $a0, -0x20($s2)
/* 01ECF0 800438F0 26E20028 */  addiu $v0, $s7, 0x28
/* 01ECF4 800438F4 AE0200D4 */  sw    $v0, 0xd4($s0)
/* 01ECF8 800438F8 34028000 */  ori   $v0, $zero, 0x8000
/* 01ECFC 800438FC AE040018 */  sw    $a0, 0x18($s0)
/* 01ED00 80043900 86430004 */  lh    $v1, 4($s2)
/* 01ED04 80043904 3063FF00 */  andi  $v1, $v1, 0xff00
/* 01ED08 80043908 10620004 */  beq   $v1, $v0, .L8004391C
/* 01ED0C 8004390C 0080A82D */   daddu $s5, $a0, $zero
/* 01ED10 80043910 3C028007 */  lui   $v0, 0x8007
/* 01ED14 80043914 24427EB8 */  addiu $v0, $v0, 0x7eb8
/* 01ED18 80043918 AE0200D4 */  sw    $v0, 0xd4($s0)
.L8004391C:
/* 01ED1C 8004391C 3C02EFE8 */  lui   $v0, 0xefe8
/* 01ED20 80043920 A2000005 */  sb    $zero, 5($s0)
/* 01ED24 80043924 8E43FFF4 */  lw    $v1, -0xc($s2)
/* 01ED28 80043928 34422080 */  ori   $v0, $v0, 0x2080
/* 01ED2C 8004392C 0062102A */  slt   $v0, $v1, $v0
/* 01ED30 80043930 50400002 */  beql  $v0, $zero, .L8004393C
/* 01ED34 80043934 AE00001C */   sw    $zero, 0x1c($s0)
/* 01ED38 80043938 AE03001C */  sw    $v1, 0x1c($s0)
.L8004393C:
/* 01ED3C 8004393C 8EA2000C */  lw    $v0, 0xc($s5)
/* 01ED40 80043940 AE020020 */  sw    $v0, 0x20($s0)
/* 01ED44 80043944 8EA20010 */  lw    $v0, 0x10($s5)
/* 01ED48 80043948 AE020024 */  sw    $v0, 0x24($s0)
/* 01ED4C 8004394C 8EA20014 */  lw    $v0, 0x14($s5)
/* 01ED50 80043950 AE020028 */  sw    $v0, 0x28($s0)
/* 01ED54 80043954 8EA20018 */  lw    $v0, 0x18($s5)
/* 01ED58 80043958 AE02002C */  sw    $v0, 0x2c($s0)
/* 01ED5C 8004395C 8EA2001C */  lw    $v0, 0x1c($s5)
/* 01ED60 80043960 AE000034 */  sw    $zero, 0x34($s0)
/* 01ED64 80043964 AE000038 */  sw    $zero, 0x38($s0)
/* 01ED68 80043968 AE00003C */  sw    $zero, 0x3c($s0)
/* 01ED6C 8004396C AE000040 */  sw    $zero, 0x40($s0)
/* 01ED70 80043970 AE000044 */  sw    $zero, 0x44($s0)
/* 01ED74 80043974 AE000048 */  sw    $zero, 0x48($s0)
/* 01ED78 80043978 AE000050 */  sw    $zero, 0x50($s0)
/* 01ED7C 8004397C AE000054 */  sw    $zero, 0x54($s0)
/* 01ED80 80043980 AE000058 */  sw    $zero, 0x58($s0)
/* 01ED84 80043984 AE00005C */  sw    $zero, 0x5c($s0)
/* 01ED88 80043988 AE000060 */  sw    $zero, 0x60($s0)
/* 01ED8C 8004398C A2000007 */  sb    $zero, 7($s0)
/* 01ED90 80043990 A20000B5 */  sb    $zero, 0xb5($s0)
/* 01ED94 80043994 AE020030 */  sw    $v0, 0x30($s0)
/* 01ED98 80043998 924201BF */  lbu   $v0, 0x1bf($s2)
/* 01ED9C 8004399C A20200AC */  sb    $v0, 0xac($s0)
/* 01EDA0 800439A0 8E4201C0 */  lw    $v0, 0x1c0($s2)
/* 01EDA4 800439A4 AE0000DC */  sw    $zero, 0xdc($s0)
/* 01EDA8 800439A8 A20000B4 */  sb    $zero, 0xb4($s0)
/* 01EDAC 800439AC AE0200B0 */  sw    $v0, 0xb0($s0)
/* 01EDB0 800439B0 8EA20024 */  lw    $v0, 0x24($s5)
/* 01EDB4 800439B4 AE0000BC */  sw    $zero, 0xbc($s0)
/* 01EDB8 800439B8 AE0000C0 */  sw    $zero, 0xc0($s0)
/* 01EDBC 800439BC AE0200B8 */  sw    $v0, 0xb8($s0)
/* 01EDC0 800439C0 26E201A0 */  addiu $v0, $s7, 0x1a0
/* 01EDC4 800439C4 AE0000C4 */  sw    $zero, 0xc4($s0)
/* 01EDC8 800439C8 AE0200CC */  sw    $v0, 0xcc($s0)
/* 01EDCC 800439CC 26E200E0 */  addiu $v0, $s7, 0xe0
/* 01EDD0 800439D0 AE0200D0 */  sw    $v0, 0xd0($s0)
/* 01EDD4 800439D4 8EA20020 */  lw    $v0, 0x20($s5)
/* 01EDD8 800439D8 AE020000 */  sw    $v0, ($s0)
/* 01EDDC 800439DC 8E43FFF0 */  lw    $v1, -0x10($s2)
/* 01EDE0 800439E0 AE000064 */  sw    $zero, 0x64($s0)
/* 01EDE4 800439E4 00431025 */  or    $v0, $v0, $v1
/* 01EDE8 800439E8 AE020000 */  sw    $v0, ($s0)
/* 01EDEC 800439EC 8E4201C8 */  lw    $v0, 0x1c8($s2)
/* 01EDF0 800439F0 AE0200D8 */  sw    $v0, 0xd8($s0)
/* 01EDF4 800439F4 8E44FFF8 */  lw    $a0, -8($s2)
/* 01EDF8 800439F8 10800012 */  beqz  $a0, .L80043A44
/* 01EDFC 800439FC 24020001 */   addiu $v0, $zero, 1
/* 01EE00 80043A00 14820004 */  bne   $a0, $v0, .L80043A14
/* 01EE04 80043A04 00000000 */   nop   
/* 01EE08 80043A08 8E42FFFC */  lw    $v0, -4($s2)
/* 01EE0C 80043A0C 08010E91 */  j     func_80043A44
/* 01EE10 80043A10 AE02006C */   sw    $v0, 0x6c($s0)

.L80043A14:
/* 01EE14 80043A14 8E45FFFC */  lw    $a1, -4($s2)
/* 01EE18 80043A18 1880000A */  blez  $a0, .L80043A44
/* 01EE1C 80043A1C 0000182D */   daddu $v1, $zero, $zero
/* 01EE20 80043A20 0200202D */  daddu $a0, $s0, $zero
.L80043A24:
/* 01EE24 80043A24 8CA20000 */  lw    $v0, ($a1)
/* 01EE28 80043A28 24A50004 */  addiu $a1, $a1, 4
/* 01EE2C 80043A2C 24630001 */  addiu $v1, $v1, 1
/* 01EE30 80043A30 AC82006C */  sw    $v0, 0x6c($a0)
/* 01EE34 80043A34 8E42FFF8 */  lw    $v0, -8($s2)
/* 01EE38 80043A38 0062102A */  slt   $v0, $v1, $v0
/* 01EE3C 80043A3C 1440FFF9 */  bnez  $v0, .L80043A24
/* 01EE40 80043A40 24840004 */   addiu $a0, $a0, 4
func_80043A44:
.L80043A44:
/* 01EE44 80043A44 AFC00000 */  sw    $zero, ($fp)
/* 01EE48 80043A48 8EA20000 */  lw    $v0, ($s5)
/* 01EE4C 80043A4C 54400004 */  bnezl $v0, .L80043A60
/* 01EE50 80043A50 AFC20004 */   sw    $v0, 4($fp)
/* 01EE54 80043A54 8E0200CC */  lw    $v0, 0xcc($s0)
/* 01EE58 80043A58 8C420000 */  lw    $v0, ($v0)
/* 01EE5C 80043A5C AFC20004 */  sw    $v0, 4($fp)
.L80043A60:
/* 01EE60 80043A60 AFC00008 */  sw    $zero, 8($fp)
/* 01EE64 80043A64 AFC0000C */  sw    $zero, 0xc($fp)
/* 01EE68 80043A68 8E020000 */  lw    $v0, ($s0)
/* 01EE6C 80043A6C 3C030002 */  lui   $v1, 2
/* 01EE70 80043A70 00431024 */  and   $v0, $v0, $v1
/* 01EE74 80043A74 14400006 */  bnez  $v0, .L80043A90
/* 01EE78 80043A78 00000000 */   nop   
/* 01EE7C 80043A7C 8E4501C4 */  lw    $a1, 0x1c4($s2)
/* 01EE80 80043A80 0C00E219 */  jal   func_80038864
/* 01EE84 80043A84 03C0202D */   daddu $a0, $fp, $zero
/* 01EE88 80043A88 08010EA6 */  j     func_80043A98
/* 01EE8C 80043A8C 00000000 */   nop   

.L80043A90:
/* 01EE90 80043A90 0C00E220 */  jal   func_80038880
/* 01EE94 80043A94 03C0202D */   daddu $a0, $fp, $zero
func_80043A98:
/* 01EE98 80043A98 0C00E2B7 */  jal   get_npc_by_index
/* 01EE9C 80043A9C 0040202D */   daddu $a0, $v0, $zero
/* 01EEA0 80043AA0 9243FFDF */  lbu   $v1, -0x21($s2)
/* 01EEA4 80043AA4 0040882D */  daddu $s1, $v0, $zero
/* 01EEA8 80043AA8 A22300A4 */  sb    $v1, 0xa4($s1)
/* 01EEAC 80043AAC 96A20006 */  lhu   $v0, 6($s5)
/* 01EEB0 80043AB0 A62200A6 */  sh    $v0, 0xa6($s1)
/* 01EEB4 80043AB4 96A20004 */  lhu   $v0, 4($s5)
/* 01EEB8 80043AB8 A62200A8 */  sh    $v0, 0xa8($s1)
/* 01EEBC 80043ABC C640FFE4 */  lwc1  $f0, -0x1c($s2)
/* 01EEC0 80043AC0 4600010D */  trunc.w.s $f4, $f0
/* 01EEC4 80043AC4 44022000 */  mfc1  $v0, $f4
/* 01EEC8 80043AC8 E6200038 */  swc1  $f0, 0x38($s1)
/* 01EECC 80043ACC A602000A */  sh    $v0, 0xa($s0)
/* 01EED0 80043AD0 C640FFE8 */  lwc1  $f0, -0x18($s2)
/* 01EED4 80043AD4 4600010D */  trunc.w.s $f4, $f0
/* 01EED8 80043AD8 44022000 */  mfc1  $v0, $f4
/* 01EEDC 80043ADC E620003C */  swc1  $f0, 0x3c($s1)
/* 01EEE0 80043AE0 A602000C */  sh    $v0, 0xc($s0)
/* 01EEE4 80043AE4 C640FFEC */  lwc1  $f0, -0x14($s2)
/* 01EEE8 80043AE8 4600010D */  trunc.w.s $f4, $f0
/* 01EEEC 80043AEC 44022000 */  mfc1  $v0, $f4
/* 01EEF0 80043AF0 E6200040 */  swc1  $f0, 0x40($s1)
/* 01EEF4 80043AF4 A602000E */  sh    $v0, 0xe($s0)
/* 01EEF8 80043AF8 C6200038 */  lwc1  $f0, 0x38($s1)
/* 01EEFC 80043AFC C6220040 */  lwc1  $f2, 0x40($s1)
/* 01EF00 80043B00 4600010D */  trunc.w.s $f4, $f0
/* 01EF04 80043B04 44022000 */  mfc1  $v0, $f4
/* 01EF08 80043B08 C620003C */  lwc1  $f0, 0x3c($s1)
/* 01EF0C 80043B0C A6200096 */  sh    $zero, 0x96($s1)
/* 01EF10 80043B10 AE200010 */  sw    $zero, 0x10($s1)
/* 01EF14 80043B14 A6220090 */  sh    $v0, 0x90($s1)
/* 01EF18 80043B18 4600010D */  trunc.w.s $f4, $f0
/* 01EF1C 80043B1C 44022000 */  mfc1  $v0, $f4
/* 01EF20 80043B20 00000000 */  nop   
/* 01EF24 80043B24 A6220092 */  sh    $v0, 0x92($s1)
/* 01EF28 80043B28 4600110D */  trunc.w.s $f4, $f2
/* 01EF2C 80043B2C 44022000 */  mfc1  $v0, $f4
/* 01EF30 80043B30 00000000 */  nop   
/* 01EF34 80043B34 A6220094 */  sh    $v0, 0x94($s1)
/* 01EF38 80043B38 C6440000 */  lwc1  $f4, ($s2)
/* 01EF3C 80043B3C 46802120 */  cvt.s.w $f4, $f4
/* 01EF40 80043B40 44052000 */  mfc1  $a1, $f4
/* 01EF44 80043B44 0C00ECD0 */  jal   set_npc_yaw
/* 01EF48 80043B48 0220202D */   daddu $a0, $s1, $zero
/* 01EF4C 80043B4C 24023039 */  addiu $v0, $zero, 0x3039
/* 01EF50 80043B50 A60200E0 */  sh    $v0, 0xe0($s0)
/* 01EF54 80043B54 862200A6 */  lh    $v0, 0xa6($s1)
/* 01EF58 80043B58 3C014038 */  lui   $at, 0x4038
/* 01EF5C 80043B5C 44811800 */  mtc1  $at, $f3
/* 01EF60 80043B60 44801000 */  mtc1  $zero, $f2
/* 01EF64 80043B64 44820000 */  mtc1  $v0, $f0
/* 01EF68 80043B68 00000000 */  nop   
/* 01EF6C 80043B6C 46800021 */  cvt.d.w $f0, $f0
/* 01EF70 80043B70 4620103E */  c.le.d $f2, $f0
/* 01EF74 80043B74 00000000 */  nop   
/* 01EF78 80043B78 45000004 */  bc1f  .L80043B8C
/* 01EF7C 80043B7C 00000000 */   nop   
/* 01EF80 80043B80 46220003 */  div.d $f0, $f0, $f2
/* 01EF84 80043B84 08010EE6 */  j     func_80043B98
/* 01EF88 80043B88 46200020 */   cvt.s.d $f0, $f0

.L80043B8C:
/* 01EF8C 80043B8C 3C013F80 */  lui   $at, 0x3f80
/* 01EF90 80043B90 44810000 */  mtc1  $at, $f0
/* 01EF94 80043B94 00000000 */  nop   
func_80043B98:
/* 01EF98 80043B98 E620007C */  swc1  $f0, 0x7c($s1)
/* 01EF9C 80043B9C 8E020000 */  lw    $v0, ($s0)
/* 01EFA0 80043BA0 30420100 */  andi  $v0, $v0, 0x100
/* 01EFA4 80043BA4 10400004 */  beqz  $v0, .L80043BB8
/* 01EFA8 80043BA8 00000000 */   nop   
/* 01EFAC 80043BAC 8E220000 */  lw    $v0, ($s1)
/* 01EFB0 80043BB0 34420040 */  ori   $v0, $v0, 0x40
/* 01EFB4 80043BB4 AE220000 */  sw    $v0, ($s1)
.L80043BB8:
/* 01EFB8 80043BB8 8E020000 */  lw    $v0, ($s0)
/* 01EFBC 80043BBC 30420200 */  andi  $v0, $v0, 0x200
/* 01EFC0 80043BC0 10400004 */  beqz  $v0, .L80043BD4
/* 01EFC4 80043BC4 00000000 */   nop   
/* 01EFC8 80043BC8 8E220000 */  lw    $v0, ($s1)
/* 01EFCC 80043BCC 34420100 */  ori   $v0, $v0, 0x100
/* 01EFD0 80043BD0 AE220000 */  sw    $v0, ($s1)
.L80043BD4:
/* 01EFD4 80043BD4 8E020000 */  lw    $v0, ($s0)
/* 01EFD8 80043BD8 30420400 */  andi  $v0, $v0, 0x400
/* 01EFDC 80043BDC 10400004 */  beqz  $v0, .L80043BF0
/* 01EFE0 80043BE0 00000000 */   nop   
/* 01EFE4 80043BE4 8E220000 */  lw    $v0, ($s1)
/* 01EFE8 80043BE8 34428000 */  ori   $v0, $v0, 0x8000
/* 01EFEC 80043BEC AE220000 */  sw    $v0, ($s1)
.L80043BF0:
/* 01EFF0 80043BF0 8E020000 */  lw    $v0, ($s0)
/* 01EFF4 80043BF4 30420800 */  andi  $v0, $v0, 0x800
/* 01EFF8 80043BF8 10400004 */  beqz  $v0, .L80043C0C
/* 01EFFC 80043BFC 00000000 */   nop   
/* 01F000 80043C00 8E220000 */  lw    $v0, ($s1)
/* 01F004 80043C04 34420008 */  ori   $v0, $v0, 8
/* 01F008 80043C08 AE220000 */  sw    $v0, ($s1)
.L80043C0C:
/* 01F00C 80043C0C 8E020000 */  lw    $v0, ($s0)
/* 01F010 80043C10 30421000 */  andi  $v0, $v0, 0x1000
/* 01F014 80043C14 10400004 */  beqz  $v0, .L80043C28
/* 01F018 80043C18 00000000 */   nop   
/* 01F01C 80043C1C 8E220000 */  lw    $v0, ($s1)
/* 01F020 80043C20 34420200 */  ori   $v0, $v0, 0x200
/* 01F024 80043C24 AE220000 */  sw    $v0, ($s1)
.L80043C28:
/* 01F028 80043C28 8E020000 */  lw    $v0, ($s0)
/* 01F02C 80043C2C 30420001 */  andi  $v0, $v0, 1
/* 01F030 80043C30 14400004 */  bnez  $v0, .L80043C44
/* 01F034 80043C34 00000000 */   nop   
/* 01F038 80043C38 8E220000 */  lw    $v0, ($s1)
/* 01F03C 80043C3C 34420100 */  ori   $v0, $v0, 0x100
/* 01F040 80043C40 AE220000 */  sw    $v0, ($s1)
.L80043C44:
/* 01F044 80043C44 8E020000 */  lw    $v0, ($s0)
/* 01F048 80043C48 30424000 */  andi  $v0, $v0, 0x4000
/* 01F04C 80043C4C 10400004 */  beqz  $v0, .L80043C60
/* 01F050 80043C50 3C030100 */   lui   $v1, 0x100
/* 01F054 80043C54 8E220000 */  lw    $v0, ($s1)
/* 01F058 80043C58 00431025 */  or    $v0, $v0, $v1
/* 01F05C 80043C5C AE220000 */  sw    $v0, ($s1)
.L80043C60:
/* 01F060 80043C60 8E020000 */  lw    $v0, ($s0)
/* 01F064 80043C64 30422000 */  andi  $v0, $v0, 0x2000
/* 01F068 80043C68 10400004 */  beqz  $v0, .L80043C7C
/* 01F06C 80043C6C 00000000 */   nop   
/* 01F070 80043C70 8E220000 */  lw    $v0, ($s1)
/* 01F074 80043C74 34420020 */  ori   $v0, $v0, 0x20
/* 01F078 80043C78 AE220000 */  sw    $v0, ($s1)
.L80043C7C:
/* 01F07C 80043C7C 8E020000 */  lw    $v0, ($s0)
/* 01F080 80043C80 30428000 */  andi  $v0, $v0, 0x8000
/* 01F084 80043C84 10400004 */  beqz  $v0, .L80043C98
/* 01F088 80043C88 3C031000 */   lui   $v1, 0x1000
/* 01F08C 80043C8C 8E220000 */  lw    $v0, ($s1)
/* 01F090 80043C90 00431025 */  or    $v0, $v0, $v1
/* 01F094 80043C94 AE220000 */  sw    $v0, ($s1)
.L80043C98:
/* 01F098 80043C98 8E020000 */  lw    $v0, ($s0)
/* 01F09C 80043C9C 3C030001 */  lui   $v1, 1
/* 01F0A0 80043CA0 00431024 */  and   $v0, $v0, $v1
/* 01F0A4 80043CA4 10400004 */  beqz  $v0, .L80043CB8
/* 01F0A8 80043CA8 3C032000 */   lui   $v1, 0x2000
/* 01F0AC 80043CAC 8E220000 */  lw    $v0, ($s1)
/* 01F0B0 80043CB0 00431025 */  or    $v0, $v0, $v1
/* 01F0B4 80043CB4 AE220000 */  sw    $v0, ($s1)
.L80043CB8:
/* 01F0B8 80043CB8 8E020000 */  lw    $v0, ($s0)
/* 01F0BC 80043CBC 30420080 */  andi  $v0, $v0, 0x80
/* 01F0C0 80043CC0 10400004 */  beqz  $v0, .L80043CD4
/* 01F0C4 80043CC4 00000000 */   nop   
/* 01F0C8 80043CC8 8E220000 */  lw    $v0, ($s1)
/* 01F0CC 80043CCC 34420400 */  ori   $v0, $v0, 0x400
/* 01F0D0 80043CD0 AE220000 */  sw    $v0, ($s1)
.L80043CD4:
/* 01F0D4 80043CD4 8E030000 */  lw    $v1, ($s0)
/* 01F0D8 80043CD8 2402000B */  addiu $v0, $zero, 0xb
/* 01F0DC 80043CDC 30630001 */  andi  $v1, $v1, 1
/* 01F0E0 80043CE0 10600003 */  beqz  $v1, .L80043CF0
/* 01F0E4 80043CE4 A2020006 */   sb    $v0, 6($s0)
/* 01F0E8 80043CE8 2402000A */  addiu $v0, $zero, 0xa
/* 01F0EC 80043CEC A2020006 */  sb    $v0, 6($s0)
.L80043CF0:
/* 01F0F0 80043CF0 8EA40008 */  lw    $a0, 8($s5)
/* 01F0F4 80043CF4 1080000C */  beqz  $a0, .L80043D28
/* 01F0F8 80043CF8 2405000A */   addiu $a1, $zero, 0xa
/* 01F0FC 80043CFC 0C0B0CF8 */  jal   start_script
/* 01F100 80043D00 0000302D */   daddu $a2, $zero, $zero
/* 01F104 80043D04 0040182D */  daddu $v1, $v0, $zero
/* 01F108 80043D08 AE03003C */  sw    $v1, 0x3c($s0)
/* 01F10C 80043D0C 8C620144 */  lw    $v0, 0x144($v1)
/* 01F110 80043D10 AE020054 */  sw    $v0, 0x54($s0)
/* 01F114 80043D14 AC700148 */  sw    $s0, 0x148($v1)
/* 01F118 80043D18 86020008 */  lh    $v0, 8($s0)
/* 01F11C 80043D1C AC62014C */  sw    $v0, 0x14c($v1)
/* 01F120 80043D20 92020006 */  lbu   $v0, 6($s0)
/* 01F124 80043D24 A0620004 */  sb    $v0, 4($v1)
.L80043D28:
/* 01F128 80043D28 265201F0 */  addiu $s2, $s2, 0x1f0
/* 01F12C 80043D2C 26F701F0 */  addiu $s7, $s7, 0x1f0
func_80043D30:
/* 01F130 80043D30 26730001 */  addiu $s3, $s3, 1
/* 01F134 80043D34 8FA70030 */  lw    $a3, 0x30($sp)
/* 01F138 80043D38 8FA80024 */  lw    $t0, 0x24($sp)
/* 01F13C 80043D3C 24E70004 */  addiu $a3, $a3, 4
/* 01F140 80043D40 0268102A */  slt   $v0, $s3, $t0
/* 01F144 80043D44 1440FECD */  bnez  $v0, .L8004387C
/* 01F148 80043D48 AFA70030 */   sw    $a3, 0x30($sp)
.L80043D4C:
/* 01F14C 80043D4C 8FA70034 */  lw    $a3, 0x34($sp)
/* 01F150 80043D50 8FA80020 */  lw    $t0, 0x20($sp)
/* 01F154 80043D54 24E7000C */  addiu $a3, $a3, 0xc
/* 01F158 80043D58 AFA70034 */  sw    $a3, 0x34($sp)
/* 01F15C 80043D5C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 01F160 80043D60 2508000C */  addiu $t0, $t0, 0xc
/* 01F164 80043D64 AFA80020 */  sw    $t0, 0x20($sp)
/* 01F168 80043D68 8FA80024 */  lw    $t0, 0x24($sp)
/* 01F16C 80043D6C 26D60001 */  addiu $s6, $s6, 1
/* 01F170 80043D70 00E83821 */  addu  $a3, $a3, $t0
/* 01F174 80043D74 08010DFF */  j     func_800437FC
/* 01F178 80043D78 AFA7002C */   sw    $a3, 0x2c($sp)

.L80043D7C:
/* 01F17C 80043D7C 24020001 */  addiu $v0, $zero, 1
/* 01F180 80043D80 3C01800B */  lui   $at, 0x800b
/* 01F184 80043D84 A0360F2C */  sb    $s6, 0xf2c($at)
/* 01F188 80043D88 3C01800A */  lui   $at, 0x800a
/* 01F18C 80043D8C AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01F190 80043D90 08011044 */  j     func_80044110
/* 01F194 80043D94 00000000 */   nop   

.L80043D98:
/* 01F198 80043D98 0000A82D */  daddu $s5, $zero, $zero
/* 01F19C 80043D9C 3C02800B */  lui   $v0, 0x800b
/* 01F1A0 80043DA0 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F1A4 80043DA4 1840001F */  blez  $v0, .L80043E24
/* 01F1A8 80043DA8 02A0B02D */   daddu $s6, $s5, $zero
/* 01F1AC 80043DAC 3C12800B */  lui   $s2, 0x800b
/* 01F1B0 80043DB0 26520F10 */  addiu $s2, $s2, 0xf10
.L80043DB4:
/* 01F1B4 80043DB4 8E540028 */  lw    $s4, 0x28($s2)
/* 01F1B8 80043DB8 12800014 */  beqz  $s4, .L80043E0C
/* 01F1BC 80043DBC 00000000 */   nop   
/* 01F1C0 80043DC0 8E820000 */  lw    $v0, ($s4)
/* 01F1C4 80043DC4 18400011 */  blez  $v0, .L80043E0C
/* 01F1C8 80043DC8 0000982D */   daddu $s3, $zero, $zero
/* 01F1CC 80043DCC 0280882D */  daddu $s1, $s4, $zero
.L80043DD0:
/* 01F1D0 80043DD0 8E300004 */  lw    $s0, 4($s1)
/* 01F1D4 80043DD4 12000008 */  beqz  $s0, .L80043DF8
/* 01F1D8 80043DD8 00000000 */   nop   
/* 01F1DC 80043DDC 8E02003C */  lw    $v0, 0x3c($s0)
/* 01F1E0 80043DE0 10400005 */  beqz  $v0, .L80043DF8
/* 01F1E4 80043DE4 00000000 */   nop   
/* 01F1E8 80043DE8 0C0B1059 */  jal   does_script_exist
/* 01F1EC 80043DEC 8E040054 */   lw    $a0, 0x54($s0)
/* 01F1F0 80043DF0 54400001 */  bnezl $v0, .L80043DF8
/* 01F1F4 80043DF4 24150001 */   addiu $s5, $zero, 1
.L80043DF8:
/* 01F1F8 80043DF8 8E820000 */  lw    $v0, ($s4)
/* 01F1FC 80043DFC 26730001 */  addiu $s3, $s3, 1
/* 01F200 80043E00 0262102A */  slt   $v0, $s3, $v0
/* 01F204 80043E04 1440FFF2 */  bnez  $v0, .L80043DD0
/* 01F208 80043E08 26310004 */   addiu $s1, $s1, 4
.L80043E0C:
/* 01F20C 80043E0C 3C02800B */  lui   $v0, 0x800b
/* 01F210 80043E10 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F214 80043E14 26D60001 */  addiu $s6, $s6, 1
/* 01F218 80043E18 02C2102A */  slt   $v0, $s6, $v0
/* 01F21C 80043E1C 1440FFE5 */  bnez  $v0, .L80043DB4
/* 01F220 80043E20 26520004 */   addiu $s2, $s2, 4
.L80043E24:
/* 01F224 80043E24 16A000BA */  bnez  $s5, .L80044110
/* 01F228 80043E28 00000000 */   nop   
/* 01F22C 80043E2C 3C02800B */  lui   $v0, 0x800b
/* 01F230 80043E30 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F234 80043E34 18400026 */  blez  $v0, .L80043ED0
/* 01F238 80043E38 0000B02D */   daddu $s6, $zero, $zero
/* 01F23C 80043E3C 3C12800B */  lui   $s2, 0x800b
/* 01F240 80043E40 26520F10 */  addiu $s2, $s2, 0xf10
.L80043E44:
/* 01F244 80043E44 8E540028 */  lw    $s4, 0x28($s2)
/* 01F248 80043E48 1280001B */  beqz  $s4, .L80043EB8
/* 01F24C 80043E4C 00000000 */   nop   
/* 01F250 80043E50 8E820000 */  lw    $v0, ($s4)
/* 01F254 80043E54 18400018 */  blez  $v0, .L80043EB8
/* 01F258 80043E58 0000982D */   daddu $s3, $zero, $zero
/* 01F25C 80043E5C 0280882D */  daddu $s1, $s4, $zero
.L80043E60:
/* 01F260 80043E60 8E300004 */  lw    $s0, 4($s1)
/* 01F264 80043E64 1200000F */  beqz  $s0, .L80043EA4
/* 01F268 80043E68 00000000 */   nop   
/* 01F26C 80043E6C 8E04001C */  lw    $a0, 0x1c($s0)
/* 01F270 80043E70 1080000C */  beqz  $a0, .L80043EA4
/* 01F274 80043E74 2405000A */   addiu $a1, $zero, 0xa
/* 01F278 80043E78 0C0B0CF8 */  jal   start_script
/* 01F27C 80043E7C 0000302D */   daddu $a2, $zero, $zero
/* 01F280 80043E80 0040182D */  daddu $v1, $v0, $zero
/* 01F284 80043E84 AE030034 */  sw    $v1, 0x34($s0)
/* 01F288 80043E88 8C620144 */  lw    $v0, 0x144($v1)
/* 01F28C 80043E8C AE02004C */  sw    $v0, 0x4c($s0)
/* 01F290 80043E90 AC700148 */  sw    $s0, 0x148($v1)
/* 01F294 80043E94 86020008 */  lh    $v0, 8($s0)
/* 01F298 80043E98 AC62014C */  sw    $v0, 0x14c($v1)
/* 01F29C 80043E9C 92020006 */  lbu   $v0, 6($s0)
/* 01F2A0 80043EA0 A0620004 */  sb    $v0, 4($v1)
.L80043EA4:
/* 01F2A4 80043EA4 8E820000 */  lw    $v0, ($s4)
/* 01F2A8 80043EA8 26730001 */  addiu $s3, $s3, 1
/* 01F2AC 80043EAC 0262102A */  slt   $v0, $s3, $v0
/* 01F2B0 80043EB0 1440FFEB */  bnez  $v0, .L80043E60
/* 01F2B4 80043EB4 26310004 */   addiu $s1, $s1, 4
.L80043EB8:
/* 01F2B8 80043EB8 3C02800B */  lui   $v0, 0x800b
/* 01F2BC 80043EBC 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F2C0 80043EC0 26D60001 */  addiu $s6, $s6, 1
/* 01F2C4 80043EC4 02C2102A */  slt   $v0, $s6, $v0
/* 01F2C8 80043EC8 1440FFDE */  bnez  $v0, .L80043E44
/* 01F2CC 80043ECC 26520004 */   addiu $s2, $s2, 4
.L80043ED0:
/* 01F2D0 80043ED0 24020002 */  addiu $v0, $zero, 2
/* 01F2D4 80043ED4 3C01800A */  lui   $at, 0x800a
/* 01F2D8 80043ED8 AC22A5D0 */  sw    $v0, -0x5a30($at)
/* 01F2DC 80043EDC 08011044 */  j     func_80044110
/* 01F2E0 80043EE0 00000000 */   nop   

.L80043EE4:
/* 01F2E4 80043EE4 3C02800B */  lui   $v0, 0x800b
/* 01F2E8 80043EE8 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F2EC 80043EEC 18400020 */  blez  $v0, .L80043F70
/* 01F2F0 80043EF0 02A0B02D */   daddu $s6, $s5, $zero
/* 01F2F4 80043EF4 3C12800B */  lui   $s2, 0x800b
/* 01F2F8 80043EF8 26520F10 */  addiu $s2, $s2, 0xf10
.L80043EFC:
/* 01F2FC 80043EFC 8E540028 */  lw    $s4, 0x28($s2)
/* 01F300 80043F00 12800015 */  beqz  $s4, .L80043F58
/* 01F304 80043F04 00000000 */   nop   
/* 01F308 80043F08 8E820000 */  lw    $v0, ($s4)
/* 01F30C 80043F0C 18400012 */  blez  $v0, .L80043F58
/* 01F310 80043F10 0000982D */   daddu $s3, $zero, $zero
/* 01F314 80043F14 0280882D */  daddu $s1, $s4, $zero
.L80043F18:
/* 01F318 80043F18 8E300004 */  lw    $s0, 4($s1)
/* 01F31C 80043F1C 12000009 */  beqz  $s0, .L80043F44
/* 01F320 80043F20 00000000 */   nop   
/* 01F324 80043F24 8E020034 */  lw    $v0, 0x34($s0)
/* 01F328 80043F28 10400006 */  beqz  $v0, .L80043F44
/* 01F32C 80043F2C 00000000 */   nop   
/* 01F330 80043F30 0C0B1059 */  jal   does_script_exist
/* 01F334 80043F34 8E04004C */   lw    $a0, 0x4c($s0)
/* 01F338 80043F38 50400002 */  beql  $v0, $zero, .L80043F44
/* 01F33C 80043F3C AE000034 */   sw    $zero, 0x34($s0)
/* 01F340 80043F40 24150001 */  addiu $s5, $zero, 1
.L80043F44:
/* 01F344 80043F44 8E820000 */  lw    $v0, ($s4)
/* 01F348 80043F48 26730001 */  addiu $s3, $s3, 1
/* 01F34C 80043F4C 0262102A */  slt   $v0, $s3, $v0
/* 01F350 80043F50 1440FFF1 */  bnez  $v0, .L80043F18
/* 01F354 80043F54 26310004 */   addiu $s1, $s1, 4
.L80043F58:
/* 01F358 80043F58 3C02800B */  lui   $v0, 0x800b
/* 01F35C 80043F5C 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F360 80043F60 26D60001 */  addiu $s6, $s6, 1
/* 01F364 80043F64 02C2102A */  slt   $v0, $s6, $v0
/* 01F368 80043F68 1440FFE4 */  bnez  $v0, .L80043EFC
/* 01F36C 80043F6C 26520004 */   addiu $s2, $s2, 4
.L80043F70:
/* 01F370 80043F70 16A00067 */  bnez  $s5, .L80044110
/* 01F374 80043F74 00000000 */   nop   
/* 01F378 80043F78 3C02800B */  lui   $v0, 0x800b
/* 01F37C 80043F7C 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F380 80043F80 1840002E */  blez  $v0, .L8004403C
/* 01F384 80043F84 0000B02D */   daddu $s6, $zero, $zero
/* 01F388 80043F88 24150064 */  addiu $s5, $zero, 0x64
/* 01F38C 80043F8C 3C12800B */  lui   $s2, 0x800b
/* 01F390 80043F90 26520F10 */  addiu $s2, $s2, 0xf10
.L80043F94:
/* 01F394 80043F94 8E540028 */  lw    $s4, 0x28($s2)
/* 01F398 80043F98 12800020 */  beqz  $s4, .L8004401C
/* 01F39C 80043F9C 00000000 */   nop   
/* 01F3A0 80043FA0 8E820000 */  lw    $v0, ($s4)
/* 01F3A4 80043FA4 1840001D */  blez  $v0, .L8004401C
/* 01F3A8 80043FA8 0000982D */   daddu $s3, $zero, $zero
/* 01F3AC 80043FAC 0280882D */  daddu $s1, $s4, $zero
.L80043FB0:
/* 01F3B0 80043FB0 8E300004 */  lw    $s0, 4($s1)
/* 01F3B4 80043FB4 12000014 */  beqz  $s0, .L80044008
/* 01F3B8 80043FB8 00000000 */   nop   
/* 01F3BC 80043FBC 8E020000 */  lw    $v0, ($s0)
/* 01F3C0 80043FC0 30420020 */  andi  $v0, $v0, 0x20
/* 01F3C4 80043FC4 14400010 */  bnez  $v0, .L80044008
/* 01F3C8 80043FC8 00000000 */   nop   
/* 01F3CC 80043FCC 8E040024 */  lw    $a0, 0x24($s0)
/* 01F3D0 80043FD0 1080000D */  beqz  $a0, .L80044008
/* 01F3D4 80043FD4 2405000A */   addiu $a1, $zero, 0xa
/* 01F3D8 80043FD8 0C0B0CF8 */  jal   start_script
/* 01F3DC 80043FDC 0000302D */   daddu $a2, $zero, $zero
/* 01F3E0 80043FE0 0040182D */  daddu $v1, $v0, $zero
/* 01F3E4 80043FE4 AE03003C */  sw    $v1, 0x3c($s0)
/* 01F3E8 80043FE8 8C620144 */  lw    $v0, 0x144($v1)
/* 01F3EC 80043FEC AE1500C8 */  sw    $s5, 0xc8($s0)
/* 01F3F0 80043FF0 AE020054 */  sw    $v0, 0x54($s0)
/* 01F3F4 80043FF4 AC700148 */  sw    $s0, 0x148($v1)
/* 01F3F8 80043FF8 86020008 */  lh    $v0, 8($s0)
/* 01F3FC 80043FFC AC62014C */  sw    $v0, 0x14c($v1)
/* 01F400 80044000 92020006 */  lbu   $v0, 6($s0)
/* 01F404 80044004 A0620004 */  sb    $v0, 4($v1)
.L80044008:
/* 01F408 80044008 8E820000 */  lw    $v0, ($s4)
/* 01F40C 8004400C 26730001 */  addiu $s3, $s3, 1
/* 01F410 80044010 0262102A */  slt   $v0, $s3, $v0
/* 01F414 80044014 1440FFE6 */  bnez  $v0, .L80043FB0
/* 01F418 80044018 26310004 */   addiu $s1, $s1, 4
.L8004401C:
/* 01F41C 8004401C 3C02800B */  lui   $v0, 0x800b
/* 01F420 80044020 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F424 80044024 26D60001 */  addiu $s6, $s6, 1
/* 01F428 80044028 02C2102A */  slt   $v0, $s6, $v0
/* 01F42C 8004402C 1440FFD9 */  bnez  $v0, .L80043F94
/* 01F430 80044030 26520004 */   addiu $s2, $s2, 4
/* 01F434 80044034 3C02800B */  lui   $v0, 0x800b
/* 01F438 80044038 80420F2C */  lb    $v0, 0xf2c($v0)
.L8004403C:
/* 01F43C 8004403C 1840002A */  blez  $v0, .L800440E8
/* 01F440 80044040 0000B02D */   daddu $s6, $zero, $zero
/* 01F444 80044044 3C12800B */  lui   $s2, 0x800b
/* 01F448 80044048 26520F10 */  addiu $s2, $s2, 0xf10
.L8004404C:
/* 01F44C 8004404C 8E540028 */  lw    $s4, 0x28($s2)
/* 01F450 80044050 1280001F */  beqz  $s4, .L800440D0
/* 01F454 80044054 00000000 */   nop   
/* 01F458 80044058 8E820000 */  lw    $v0, ($s4)
/* 01F45C 8004405C 1840001C */  blez  $v0, .L800440D0
/* 01F460 80044060 0000982D */   daddu $s3, $zero, $zero
/* 01F464 80044064 0280882D */  daddu $s1, $s4, $zero
.L80044068:
/* 01F468 80044068 8E300004 */  lw    $s0, 4($s1)
/* 01F46C 8004406C 12000013 */  beqz  $s0, .L800440BC
/* 01F470 80044070 00000000 */   nop   
/* 01F474 80044074 8E020000 */  lw    $v0, ($s0)
/* 01F478 80044078 30420020 */  andi  $v0, $v0, 0x20
/* 01F47C 8004407C 1440000F */  bnez  $v0, .L800440BC
/* 01F480 80044080 00000000 */   nop   
/* 01F484 80044084 8E04002C */  lw    $a0, 0x2c($s0)
/* 01F488 80044088 1080000C */  beqz  $a0, .L800440BC
/* 01F48C 8004408C 2405000A */   addiu $a1, $zero, 0xa
/* 01F490 80044090 0C0B0CF8 */  jal   start_script
/* 01F494 80044094 0000302D */   daddu $a2, $zero, $zero
/* 01F498 80044098 0040182D */  daddu $v1, $v0, $zero
/* 01F49C 8004409C AE030044 */  sw    $v1, 0x44($s0)
/* 01F4A0 800440A0 8C620144 */  lw    $v0, 0x144($v1)
/* 01F4A4 800440A4 AE02005C */  sw    $v0, 0x5c($s0)
/* 01F4A8 800440A8 AC700148 */  sw    $s0, 0x148($v1)
/* 01F4AC 800440AC 86020008 */  lh    $v0, 8($s0)
/* 01F4B0 800440B0 AC62014C */  sw    $v0, 0x14c($v1)
/* 01F4B4 800440B4 92020006 */  lbu   $v0, 6($s0)
/* 01F4B8 800440B8 A0620004 */  sb    $v0, 4($v1)
.L800440BC:
/* 01F4BC 800440BC 8E820000 */  lw    $v0, ($s4)
/* 01F4C0 800440C0 26730001 */  addiu $s3, $s3, 1
/* 01F4C4 800440C4 0262102A */  slt   $v0, $s3, $v0
/* 01F4C8 800440C8 1440FFE7 */  bnez  $v0, .L80044068
/* 01F4CC 800440CC 26310004 */   addiu $s1, $s1, 4
.L800440D0:
/* 01F4D0 800440D0 3C02800B */  lui   $v0, 0x800b
/* 01F4D4 800440D4 80420F2C */  lb    $v0, 0xf2c($v0)
/* 01F4D8 800440D8 26D60001 */  addiu $s6, $s6, 1
/* 01F4DC 800440DC 02C2102A */  slt   $v0, $s6, $v0
/* 01F4E0 800440E0 1440FFDA */  bnez  $v0, .L8004404C
/* 01F4E4 800440E4 26520004 */   addiu $s2, $s2, 4
.L800440E8:
/* 01F4E8 800440E8 0C0B1192 */  jal   resume_all_group
/* 01F4EC 800440EC 24040010 */   addiu $a0, $zero, 0x10
/* 01F4F0 800440F0 24020002 */  addiu $v0, $zero, 2
/* 01F4F4 800440F4 3C01800A */  lui   $at, 0x800a
/* 01F4F8 800440F8 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01F4FC 800440FC 24020001 */  addiu $v0, $zero, 1
/* 01F500 80044100 3C01800A */  lui   $at, 0x800a
/* 01F504 80044104 AC22A678 */  sw    $v0, -0x5988($at)
/* 01F508 80044108 3C01800A */  lui   $at, 0x800a
/* 01F50C 8004410C AC20A5D0 */  sw    $zero, -0x5a30($at)
func_80044110:
.L80044110:
/* 01F510 80044110 8FBF005C */  lw    $ra, 0x5c($sp)
/* 01F514 80044114 8FBE0058 */  lw    $fp, 0x58($sp)
/* 01F518 80044118 8FB70054 */  lw    $s7, 0x54($sp)
/* 01F51C 8004411C 8FB60050 */  lw    $s6, 0x50($sp)
/* 01F520 80044120 8FB5004C */  lw    $s5, 0x4c($sp)
/* 01F524 80044124 8FB40048 */  lw    $s4, 0x48($sp)
/* 01F528 80044128 8FB30044 */  lw    $s3, 0x44($sp)
/* 01F52C 8004412C 8FB20040 */  lw    $s2, 0x40($sp)
/* 01F530 80044130 8FB1003C */  lw    $s1, 0x3c($sp)
/* 01F534 80044134 8FB00038 */  lw    $s0, 0x38($sp)
/* 01F538 80044138 03E00008 */  jr    $ra
/* 01F53C 8004413C 27BD0060 */   addiu $sp, $sp, 0x60

func_80044140:
/* 01F540 80044140 03E00008 */  jr    $ra
/* 01F544 80044144 00000000 */   nop   

func_80044148:
/* 01F548 80044148 3C02800A */  lui   $v0, 0x800a
/* 01F54C 8004414C 8C42A600 */  lw    $v0, -0x5a00($v0)
/* 01F550 80044150 3C03800B */  lui   $v1, 0x800b
/* 01F554 80044154 80630F15 */  lb    $v1, 0xf15($v1)
/* 01F558 80044158 38420003 */  xori  $v0, $v0, 3
/* 01F55C 8004415C 2C440001 */  sltiu $a0, $v0, 1
/* 01F560 80044160 24020005 */  addiu $v0, $zero, 5
/* 01F564 80044164 50620001 */  beql  $v1, $v0, .L8004416C
/* 01F568 80044168 24040001 */   addiu $a0, $zero, 1
.L8004416C:
/* 01F56C 8004416C 03E00008 */  jr    $ra
/* 01F570 80044170 0080102D */   daddu $v0, $a0, $zero

/* 01F574 80044174 00000000 */  nop   
/* 01F578 80044178 00000000 */  nop   
/* 01F57C 8004417C 00000000 */  nop   
