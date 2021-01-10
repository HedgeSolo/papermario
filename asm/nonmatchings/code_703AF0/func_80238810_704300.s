.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238810_704300
/* 704300 80238810 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 704304 80238814 AFB20018 */  sw        $s2, 0x18($sp)
/* 704308 80238818 0080902D */  daddu     $s2, $a0, $zero
/* 70430C 8023881C 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 704310 80238820 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 704314 80238824 AFBF0024 */  sw        $ra, 0x24($sp)
/* 704318 80238828 AFB40020 */  sw        $s4, 0x20($sp)
/* 70431C 8023882C AFB3001C */  sw        $s3, 0x1c($sp)
/* 704320 80238830 AFB10014 */  sw        $s1, 0x14($sp)
/* 704324 80238834 AFB00010 */  sw        $s0, 0x10($sp)
/* 704328 80238838 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 70432C 8023883C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 704330 80238840 8C5000DC */  lw        $s0, 0xdc($v0)
/* 704334 80238844 8E44000C */  lw        $a0, 0xc($s2)
/* 704338 80238848 8C5100D8 */  lw        $s1, 0xd8($v0)
/* 70433C 8023884C 10A00002 */  beqz      $a1, .L80238858
/* 704340 80238850 2613000C */   addiu    $s3, $s0, 0xc
/* 704344 80238854 AE400070 */  sw        $zero, 0x70($s2)
.L80238858:
/* 704348 80238858 8E430070 */  lw        $v1, 0x70($s2)
/* 70434C 8023885C 24140001 */  addiu     $s4, $zero, 1
/* 704350 80238860 10740035 */  beq       $v1, $s4, .L80238938
/* 704354 80238864 28620002 */   slti     $v0, $v1, 2
/* 704358 80238868 50400005 */  beql      $v0, $zero, .L80238880
/* 70435C 8023886C 24020002 */   addiu    $v0, $zero, 2
/* 704360 80238870 10600009 */  beqz      $v1, .L80238898
/* 704364 80238874 00000000 */   nop      
/* 704368 80238878 0808E2AA */  j         .L80238AA8
/* 70436C 8023887C 00000000 */   nop      
.L80238880:
/* 704370 80238880 1062005A */  beq       $v1, $v0, .L802389EC
/* 704374 80238884 24020003 */   addiu    $v0, $zero, 3
/* 704378 80238888 10620084 */  beq       $v1, $v0, .L80238A9C
/* 70437C 8023888C 24020002 */   addiu    $v0, $zero, 2
/* 704380 80238890 0808E2AA */  j         .L80238AA8
/* 704384 80238894 00000000 */   nop      
.L80238898:
/* 704388 80238898 8C850000 */  lw        $a1, ($a0)
/* 70438C 8023889C 0C0B1EAF */  jal       get_variable
/* 704390 802388A0 0240202D */   daddu    $a0, $s2, $zero
/* 704394 802388A4 AE420078 */  sw        $v0, 0x78($s2)
/* 704398 802388A8 C62C0144 */  lwc1      $f12, 0x144($s1)
/* 70439C 802388AC C62E0148 */  lwc1      $f14, 0x148($s1)
/* 7043A0 802388B0 8E060144 */  lw        $a2, 0x144($s0)
/* 7043A4 802388B4 0C00A7B5 */  jal       dist2D
/* 7043A8 802388B8 8E070148 */   lw       $a3, 0x148($s0)
/* 7043AC 802388BC E6000058 */  swc1      $f0, 0x58($s0)
/* 7043B0 802388C0 C6200144 */  lwc1      $f0, 0x144($s1)
/* 7043B4 802388C4 3C014210 */  lui       $at, 0x4210
/* 7043B8 802388C8 44811000 */  mtc1      $at, $f2
/* 7043BC 802388CC C60A0144 */  lwc1      $f10, 0x144($s0)
/* 7043C0 802388D0 3C0142B4 */  lui       $at, 0x42b4
/* 7043C4 802388D4 44812000 */  mtc1      $at, $f4
/* 7043C8 802388D8 3C0140A0 */  lui       $at, 0x40a0
/* 7043CC 802388DC 44813000 */  mtc1      $at, $f6
/* 7043D0 802388E0 E6000018 */  swc1      $f0, 0x18($s0)
/* 7043D4 802388E4 C6200148 */  lwc1      $f0, 0x148($s1)
/* 7043D8 802388E8 3C013F00 */  lui       $at, 0x3f00
/* 7043DC 802388EC 44814000 */  mtc1      $at, $f8
/* 7043E0 802388F0 46020000 */  add.s     $f0, $f0, $f2
/* 7043E4 802388F4 C602014C */  lwc1      $f2, 0x14c($s0)
/* 7043E8 802388F8 E600001C */  swc1      $f0, 0x1c($s0)
/* 7043EC 802388FC C62C014C */  lwc1      $f12, 0x14c($s1)
/* 7043F0 80238900 C6000148 */  lwc1      $f0, 0x148($s0)
/* 7043F4 80238904 2402005A */  addiu     $v0, $zero, 0x5a
/* 7043F8 80238908 A6020070 */  sh        $v0, 0x70($s0)
/* 7043FC 8023890C 2402000A */  addiu     $v0, $zero, 0xa
/* 704400 80238910 E60A000C */  swc1      $f10, 0xc($s0)
/* 704404 80238914 E6020014 */  swc1      $f2, 0x14($s0)
/* 704408 80238918 E6040054 */  swc1      $f4, 0x54($s0)
/* 70440C 8023891C E6060050 */  swc1      $f6, 0x50($s0)
/* 704410 80238920 E6080048 */  swc1      $f8, 0x48($s0)
/* 704414 80238924 E6000010 */  swc1      $f0, 0x10($s0)
/* 704418 80238928 E60C0020 */  swc1      $f12, 0x20($s0)
/* 70441C 8023892C AE420074 */  sw        $v0, 0x74($s2)
/* 704420 80238930 0808E2AA */  j         .L80238AA8
/* 704424 80238934 AE540070 */   sw       $s4, 0x70($s2)
.L80238938:
/* 704428 80238938 C6000054 */  lwc1      $f0, 0x54($s0)
/* 70442C 8023893C 3C0140C9 */  lui       $at, 0x40c9
/* 704430 80238940 34210FD0 */  ori       $at, $at, 0xfd0
/* 704434 80238944 44811000 */  mtc1      $at, $f2
/* 704438 80238948 00000000 */  nop       
/* 70443C 8023894C 46020002 */  mul.s     $f0, $f0, $f2
/* 704440 80238950 00000000 */  nop       
/* 704444 80238954 3C0143B4 */  lui       $at, 0x43b4
/* 704448 80238958 44811000 */  mtc1      $at, $f2
/* 70444C 8023895C 00000000 */  nop       
/* 704450 80238960 46020503 */  div.s     $f20, $f0, $f2
/* 704454 80238964 0C00A85B */  jal       sin_rad
/* 704458 80238968 4600A306 */   mov.s    $f12, $f20
/* 70445C 8023896C 46000586 */  mov.s     $f22, $f0
/* 704460 80238970 0C00A874 */  jal       cos_rad
/* 704464 80238974 4600A306 */   mov.s    $f12, $f20
/* 704468 80238978 C6020058 */  lwc1      $f2, 0x58($s0)
/* 70446C 8023897C 46161182 */  mul.s     $f6, $f2, $f22
/* 704470 80238980 00000000 */  nop       
/* 704474 80238984 46001087 */  neg.s     $f2, $f2
/* 704478 80238988 46001202 */  mul.s     $f8, $f2, $f0
/* 70447C 8023898C 00000000 */  nop       
/* 704480 80238990 C6020050 */  lwc1      $f2, 0x50($s0)
/* 704484 80238994 C6000048 */  lwc1      $f0, 0x48($s0)
/* 704488 80238998 46001080 */  add.s     $f2, $f2, $f0
/* 70448C 8023899C C60C0054 */  lwc1      $f12, 0x54($s0)
/* 704490 802389A0 46026300 */  add.s     $f12, $f12, $f2
/* 704494 802389A4 C6040018 */  lwc1      $f4, 0x18($s0)
/* 704498 802389A8 C600001C */  lwc1      $f0, 0x1c($s0)
/* 70449C 802389AC 46062100 */  add.s     $f4, $f4, $f6
/* 7044A0 802389B0 E6020050 */  swc1      $f2, 0x50($s0)
/* 7044A4 802389B4 46080000 */  add.s     $f0, $f0, $f8
/* 7044A8 802389B8 E60C0054 */  swc1      $f12, 0x54($s0)
/* 7044AC 802389BC E604000C */  swc1      $f4, 0xc($s0)
/* 7044B0 802389C0 0C00A6C9 */  jal       clamp_angle
/* 7044B4 802389C4 E6000010 */   swc1     $f0, 0x10($s0)
/* 7044B8 802389C8 96020070 */  lhu       $v0, 0x70($s0)
/* 7044BC 802389CC E6000054 */  swc1      $f0, 0x54($s0)
/* 7044C0 802389D0 2442FFFF */  addiu     $v0, $v0, -1
/* 7044C4 802389D4 A6020070 */  sh        $v0, 0x70($s0)
/* 7044C8 802389D8 00021400 */  sll       $v0, $v0, 0x10
/* 7044CC 802389DC 14400032 */  bnez      $v0, .L80238AA8
/* 7044D0 802389E0 24020002 */   addiu    $v0, $zero, 2
/* 7044D4 802389E4 0808E2AA */  j         .L80238AA8
/* 7044D8 802389E8 AE420070 */   sw       $v0, 0x70($s2)
.L802389EC:
/* 7044DC 802389EC C6000054 */  lwc1      $f0, 0x54($s0)
/* 7044E0 802389F0 3C0140C9 */  lui       $at, 0x40c9
/* 7044E4 802389F4 34210FD0 */  ori       $at, $at, 0xfd0
/* 7044E8 802389F8 44811000 */  mtc1      $at, $f2
/* 7044EC 802389FC 00000000 */  nop       
/* 7044F0 80238A00 46020002 */  mul.s     $f0, $f0, $f2
/* 7044F4 80238A04 00000000 */  nop       
/* 7044F8 80238A08 3C0143B4 */  lui       $at, 0x43b4
/* 7044FC 80238A0C 44811000 */  mtc1      $at, $f2
/* 704500 80238A10 00000000 */  nop       
/* 704504 80238A14 46020503 */  div.s     $f20, $f0, $f2
/* 704508 80238A18 0C00A85B */  jal       sin_rad
/* 70450C 80238A1C 4600A306 */   mov.s    $f12, $f20
/* 704510 80238A20 46000586 */  mov.s     $f22, $f0
/* 704514 80238A24 0C00A874 */  jal       cos_rad
/* 704518 80238A28 4600A306 */   mov.s    $f12, $f20
/* 70451C 80238A2C C6020058 */  lwc1      $f2, 0x58($s0)
/* 704520 80238A30 46161182 */  mul.s     $f6, $f2, $f22
/* 704524 80238A34 00000000 */  nop       
/* 704528 80238A38 46001087 */  neg.s     $f2, $f2
/* 70452C 80238A3C 46001202 */  mul.s     $f8, $f2, $f0
/* 704530 80238A40 00000000 */  nop       
/* 704534 80238A44 C60C0054 */  lwc1      $f12, 0x54($s0)
/* 704538 80238A48 C6000050 */  lwc1      $f0, 0x50($s0)
/* 70453C 80238A4C 46006300 */  add.s     $f12, $f12, $f0
/* 704540 80238A50 C6020018 */  lwc1      $f2, 0x18($s0)
/* 704544 80238A54 46061080 */  add.s     $f2, $f2, $f6
/* 704548 80238A58 C600001C */  lwc1      $f0, 0x1c($s0)
/* 70454C 80238A5C 46080000 */  add.s     $f0, $f0, $f8
/* 704550 80238A60 E60C0054 */  swc1      $f12, 0x54($s0)
/* 704554 80238A64 E602000C */  swc1      $f2, 0xc($s0)
/* 704558 80238A68 0C00A6C9 */  jal       clamp_angle
/* 70455C 80238A6C E6000010 */   swc1     $f0, 0x10($s0)
/* 704560 80238A70 3C014234 */  lui       $at, 0x4234
/* 704564 80238A74 44811000 */  mtc1      $at, $f2
/* 704568 80238A78 00000000 */  nop       
/* 70456C 80238A7C 4602003C */  c.lt.s    $f0, $f2
/* 704570 80238A80 00000000 */  nop       
/* 704574 80238A84 45000004 */  bc1f      .L80238A98
/* 704578 80238A88 E6000054 */   swc1     $f0, 0x54($s0)
/* 70457C 80238A8C 24020003 */  addiu     $v0, $zero, 3
/* 704580 80238A90 0808E2AA */  j         .L80238AA8
/* 704584 80238A94 AE420070 */   sw       $v0, 0x70($s2)
.L80238A98:
/* 704588 80238A98 24020002 */  addiu     $v0, $zero, 2
.L80238A9C:
/* 70458C 80238A9C AE20018C */  sw        $zero, 0x18c($s1)
/* 704590 80238AA0 0808E2C5 */  j         .L80238B14
/* 704594 80238AA4 AE00018C */   sw       $zero, 0x18c($s0)
.L80238AA8:
/* 704598 80238AA8 C6600048 */  lwc1      $f0, 0x48($s3)
/* 70459C 80238AAC 3C014334 */  lui       $at, 0x4334
/* 7045A0 80238AB0 44811000 */  mtc1      $at, $f2
/* 7045A4 80238AB4 00000000 */  nop       
/* 7045A8 80238AB8 4600103C */  c.lt.s    $f2, $f0
/* 7045AC 80238ABC 00000000 */  nop       
/* 7045B0 80238AC0 45020002 */  bc1fl     .L80238ACC
/* 7045B4 80238AC4 E602018C */   swc1     $f2, 0x18c($s0)
/* 7045B8 80238AC8 AE00018C */  sw        $zero, 0x18c($s0)
.L80238ACC:
/* 7045BC 80238ACC C6600000 */  lwc1      $f0, ($s3)
/* 7045C0 80238AD0 E6000144 */  swc1      $f0, 0x144($s0)
/* 7045C4 80238AD4 C6600004 */  lwc1      $f0, 4($s3)
/* 7045C8 80238AD8 E6000148 */  swc1      $f0, 0x148($s0)
/* 7045CC 80238ADC C6600008 */  lwc1      $f0, 8($s3)
/* 7045D0 80238AE0 E600014C */  swc1      $f0, 0x14c($s0)
/* 7045D4 80238AE4 8E420078 */  lw        $v0, 0x78($s2)
/* 7045D8 80238AE8 1440000A */  bnez      $v0, .L80238B14
/* 7045DC 80238AEC 0000102D */   daddu    $v0, $zero, $zero
/* 7045E0 80238AF0 C620018C */  lwc1      $f0, 0x18c($s1)
/* 7045E4 80238AF4 C6420074 */  lwc1      $f2, 0x74($s2)
/* 7045E8 80238AF8 468010A0 */  cvt.s.w   $f2, $f2
/* 7045EC 80238AFC 46020000 */  add.s     $f0, $f0, $f2
/* 7045F0 80238B00 E620018C */  swc1      $f0, 0x18c($s1)
/* 7045F4 80238B04 8E420074 */  lw        $v0, 0x74($s2)
/* 7045F8 80238B08 24420001 */  addiu     $v0, $v0, 1
/* 7045FC 80238B0C AE420074 */  sw        $v0, 0x74($s2)
/* 704600 80238B10 0000102D */  daddu     $v0, $zero, $zero
.L80238B14:
/* 704604 80238B14 8FBF0024 */  lw        $ra, 0x24($sp)
/* 704608 80238B18 8FB40020 */  lw        $s4, 0x20($sp)
/* 70460C 80238B1C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 704610 80238B20 8FB20018 */  lw        $s2, 0x18($sp)
/* 704614 80238B24 8FB10014 */  lw        $s1, 0x14($sp)
/* 704618 80238B28 8FB00010 */  lw        $s0, 0x10($sp)
/* 70461C 80238B2C D7B60030 */  ldc1      $f22, 0x30($sp)
/* 704620 80238B30 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 704624 80238B34 03E00008 */  jr        $ra
/* 704628 80238B38 27BD0038 */   addiu    $sp, $sp, 0x38
