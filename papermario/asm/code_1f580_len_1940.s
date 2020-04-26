
.section .text80044180, "ax"

SetEncounterStatusFlags:
/* 01F580 80044180 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01F584 80044184 AFB10014 */  sw    $s1, 0x14($sp)
/* 01F588 80044188 3C11800B */  lui   $s1, 0x800b
/* 01F58C 8004418C 26310F10 */  addiu $s1, $s1, 0xf10
/* 01F590 80044190 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01F594 80044194 AFB20018 */  sw    $s2, 0x18($sp)
/* 01F598 80044198 AFB00010 */  sw    $s0, 0x10($sp)
/* 01F59C 8004419C 8C82000C */  lw    $v0, 0xc($a0)
/* 01F5A0 800441A0 8C450004 */  lw    $a1, 4($v0)
/* 01F5A4 800441A4 8C500000 */  lw    $s0, ($v0)
/* 01F5A8 800441A8 0C0B1EAF */  jal   get_variable
/* 01F5AC 800441AC 0220902D */   daddu $s2, $s1, $zero
/* 01F5B0 800441B0 10400005 */  beqz  $v0, .L800441C8
/* 01F5B4 800441B4 00101827 */   nor   $v1, $zero, $s0
/* 01F5B8 800441B8 8E220000 */  lw    $v0, ($s1)
/* 01F5BC 800441BC 00501025 */  or    $v0, $v0, $s0
/* 01F5C0 800441C0 08011075 */  j     func_800441D4
/* 01F5C4 800441C4 AE220000 */   sw    $v0, ($s1)

.L800441C8:
/* 01F5C8 800441C8 8E420000 */  lw    $v0, ($s2)
/* 01F5CC 800441CC 00431024 */  and   $v0, $v0, $v1
/* 01F5D0 800441D0 AE420000 */  sw    $v0, ($s2)
func_800441D4:
/* 01F5D4 800441D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01F5D8 800441D8 8FB20018 */  lw    $s2, 0x18($sp)
/* 01F5DC 800441DC 8FB10014 */  lw    $s1, 0x14($sp)
/* 01F5E0 800441E0 8FB00010 */  lw    $s0, 0x10($sp)
/* 01F5E4 800441E4 24020002 */  addiu $v0, $zero, 2
/* 01F5E8 800441E8 03E00008 */  jr    $ra
/* 01F5EC 800441EC 27BD0020 */   addiu $sp, $sp, 0x20

/* 01F5F0 800441F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01F5F4 800441F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 01F5F8 800441F8 0080802D */  daddu $s0, $a0, $zero
/* 01F5FC 800441FC AFBF0018 */  sw    $ra, 0x18($sp)
/* 01F600 80044200 AFB10014 */  sw    $s1, 0x14($sp)
/* 01F604 80044204 8E02000C */  lw    $v0, 0xc($s0)
/* 01F608 80044208 0C011052 */  jal   func_80044148
/* 01F60C 8004420C 8C510000 */   lw    $s1, ($v0)
/* 01F610 80044210 0200202D */  daddu $a0, $s0, $zero
/* 01F614 80044214 0040302D */  daddu $a2, $v0, $zero
/* 01F618 80044218 0C0B2026 */  jal   set_variable
/* 01F61C 8004421C 0220282D */   daddu $a1, $s1, $zero
/* 01F620 80044220 8FBF0018 */  lw    $ra, 0x18($sp)
/* 01F624 80044224 8FB10014 */  lw    $s1, 0x14($sp)
/* 01F628 80044228 8FB00010 */  lw    $s0, 0x10($sp)
/* 01F62C 8004422C 24020002 */  addiu $v0, $zero, 2
/* 01F630 80044230 03E00008 */  jr    $ra
/* 01F634 80044234 27BD0020 */   addiu $sp, $sp, 0x20

/* 01F638 80044238 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01F63C 8004423C AFBF0010 */  sw    $ra, 0x10($sp)
/* 01F640 80044240 8C82000C */  lw    $v0, 0xc($a0)
/* 01F644 80044244 0C0B1EAF */  jal   get_variable
/* 01F648 80044248 8C450000 */   lw    $a1, ($v0)
/* 01F64C 8004424C 0C01CAF3 */  jal   func_80072BCC
/* 01F650 80044250 0040202D */   daddu $a0, $v0, $zero
/* 01F654 80044254 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01F658 80044258 24020002 */  addiu $v0, $zero, 2
/* 01F65C 8004425C 03E00008 */  jr    $ra
/* 01F660 80044260 27BD0018 */   addiu $sp, $sp, 0x18

LoadDemoBattle:
/* 01F664 80044264 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01F668 80044268 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01F66C 8004426C 8C82000C */  lw    $v0, 0xc($a0)
/* 01F670 80044270 0C0B1EAF */  jal   get_variable
/* 01F674 80044274 8C450000 */   lw    $a1, ($v0)
/* 01F678 80044278 0C01CB85 */  jal   load_demo_battle
/* 01F67C 8004427C 0040202D */   daddu $a0, $v0, $zero
/* 01F680 80044280 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01F684 80044284 24020002 */  addiu $v0, $zero, 2
/* 01F688 80044288 03E00008 */  jr    $ra
/* 01F68C 8004428C 27BD0018 */   addiu $sp, $sp, 0x18

/* 01F690 80044290 03E00008 */  jr    $ra
/* 01F694 80044294 24020002 */   addiu $v0, $zero, 2

MakeNpcs:
/* 01F698 80044298 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01F69C 8004429C AFB10014 */  sw    $s1, 0x14($sp)
/* 01F6A0 800442A0 0080882D */  daddu $s1, $a0, $zero
/* 01F6A4 800442A4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 01F6A8 800442A8 AFB00010 */  sw    $s0, 0x10($sp)
/* 01F6AC 800442AC 8E30000C */  lw    $s0, 0xc($s1)
/* 01F6B0 800442B0 54A00001 */  bnezl $a1, .L800442B8
/* 01F6B4 800442B4 AE200070 */   sw    $zero, 0x70($s1)
.L800442B8:
/* 01F6B8 800442B8 8E240070 */  lw    $a0, 0x70($s1)
/* 01F6BC 800442BC 10800005 */  beqz  $a0, .L800442D4
/* 01F6C0 800442C0 24020001 */   addiu $v0, $zero, 1
/* 01F6C4 800442C4 10820014 */  beq   $a0, $v0, .L80044318
/* 01F6C8 800442C8 0000102D */   daddu $v0, $zero, $zero
/* 01F6CC 800442CC 080110CB */  j     func_8004432C
/* 01F6D0 800442D0 00000000 */   nop   

.L800442D4:
/* 01F6D4 800442D4 8E050000 */  lw    $a1, ($s0)
/* 01F6D8 800442D8 26100004 */  addiu $s0, $s0, 4
/* 01F6DC 800442DC 0C0B1EAF */  jal   get_variable
/* 01F6E0 800442E0 0220202D */   daddu $a0, $s1, $zero
/* 01F6E4 800442E4 0220202D */  daddu $a0, $s1, $zero
/* 01F6E8 800442E8 8E050000 */  lw    $a1, ($s0)
/* 01F6EC 800442EC 0C0B1EAF */  jal   get_variable
/* 01F6F0 800442F0 0040802D */   daddu $s0, $v0, $zero
/* 01F6F4 800442F4 3C038007 */  lui   $v1, 0x8007
/* 01F6F8 800442F8 8C63419C */  lw    $v1, 0x419c($v1)
/* 01F6FC 800442FC 0200202D */  daddu $a0, $s0, $zero
/* 01F700 80044300 8465008C */  lh    $a1, 0x8c($v1)
/* 01F704 80044304 0C00F99E */  jal   make_npcs
/* 01F708 80044308 0040302D */   daddu $a2, $v0, $zero
/* 01F70C 8004430C 24020001 */  addiu $v0, $zero, 1
/* 01F710 80044310 080110CA */  j     func_80044328
/* 01F714 80044314 AE220070 */   sw    $v0, 0x70($s1)

.L80044318:
/* 01F718 80044318 3C03800A */  lui   $v1, 0x800a
/* 01F71C 8004431C 8C63A600 */  lw    $v1, -0x5a00($v1)
/* 01F720 80044320 14640002 */  bne   $v1, $a0, .L8004432C
/* 01F724 80044324 24020002 */   addiu $v0, $zero, 2
func_80044328:
/* 01F728 80044328 0000102D */  daddu $v0, $zero, $zero
func_8004432C:
.L8004432C:
/* 01F72C 8004432C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 01F730 80044330 8FB10014 */  lw    $s1, 0x14($sp)
/* 01F734 80044334 8FB00010 */  lw    $s0, 0x10($sp)
/* 01F738 80044338 03E00008 */  jr    $ra
/* 01F73C 8004433C 27BD0020 */   addiu $sp, $sp, 0x20

RemoveNpc:
/* 01F740 80044340 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01F744 80044344 AFB20018 */  sw    $s2, 0x18($sp)
/* 01F748 80044348 0080902D */  daddu $s2, $a0, $zero
/* 01F74C 8004434C AFB3001C */  sw    $s3, 0x1c($sp)
/* 01F750 80044350 AFBF0024 */  sw    $ra, 0x24($sp)
/* 01F754 80044354 AFB40020 */  sw    $s4, 0x20($sp)
/* 01F758 80044358 AFB10014 */  sw    $s1, 0x14($sp)
/* 01F75C 8004435C AFB00010 */  sw    $s0, 0x10($sp)
/* 01F760 80044360 8E42000C */  lw    $v0, 0xc($s2)
/* 01F764 80044364 8C450000 */  lw    $a1, ($v0)
/* 01F768 80044368 8E500148 */  lw    $s0, 0x148($s2)
/* 01F76C 8004436C 0C0B1EAF */  jal   get_variable
/* 01F770 80044370 24130001 */   addiu $s3, $zero, 1
/* 01F774 80044374 0040882D */  daddu $s1, $v0, $zero
/* 01F778 80044378 3C14800B */  lui   $s4, 0x800b
/* 01F77C 8004437C 26940F10 */  addiu $s4, $s4, 0xf10
/* 01F780 80044380 2402FFFF */  addiu $v0, $zero, -1
/* 01F784 80044384 12020017 */  beq   $s0, $v0, .L800443E4
/* 01F788 80044388 00000000 */   nop   
/* 01F78C 8004438C 16220004 */  bne   $s1, $v0, .L800443A0
/* 01F790 80044390 00000000 */   nop   
/* 01F794 80044394 86110008 */  lh    $s1, 8($s0)
/* 01F798 80044398 080110FB */  j     func_800443EC
/* 01F79C 8004439C 241300FF */   addiu $s3, $zero, 0xff

.L800443A0:
/* 01F7A0 800443A0 86020008 */  lh    $v0, 8($s0)
/* 01F7A4 800443A4 1451000F */  bne   $v0, $s1, .L800443E4
/* 01F7A8 800443A8 0240202D */   daddu $a0, $s2, $zero
func_800443AC:
/* 01F7AC 800443AC 8C820064 */  lw    $v0, 0x64($a0)
/* 01F7B0 800443B0 10400003 */  beqz  $v0, .L800443C0
/* 01F7B4 800443B4 00000000 */   nop   
/* 01F7B8 800443B8 080110EB */  j     func_800443AC
/* 01F7BC 800443BC 0040202D */   daddu $a0, $v0, $zero

.L800443C0:
/* 01F7C0 800443C0 8E02003C */  lw    $v0, 0x3c($s0)
/* 01F7C4 800443C4 50820009 */  beql  $a0, $v0, .L800443EC
/* 01F7C8 800443C8 241300FF */   addiu $s3, $zero, 0xff
/* 01F7CC 800443CC 080110FB */  j     func_800443EC
/* 01F7D0 800443D0 00000000 */   nop   

.L800443D4:
/* 01F7D4 800443D4 0C00F9EB */  jal   kill_enemy
/* 01F7D8 800443D8 0200202D */   daddu $a0, $s0, $zero
/* 01F7DC 800443DC 08011116 */  j     func_80044458
/* 01F7E0 800443E0 0260102D */   daddu $v0, $s3, $zero

.L800443E4:
/* 01F7E4 800443E4 0C00FB3A */  jal   get_enemy
/* 01F7E8 800443E8 0220202D */   daddu $a0, $s1, $zero
func_800443EC:
.L800443EC:
/* 01F7EC 800443EC 8282001C */  lb    $v0, 0x1c($s4)
/* 01F7F0 800443F0 18400018 */  blez  $v0, .L80044454
/* 01F7F4 800443F4 0000282D */   daddu $a1, $zero, $zero
/* 01F7F8 800443F8 0040402D */  daddu $t0, $v0, $zero
/* 01F7FC 800443FC 0280382D */  daddu $a3, $s4, $zero
.L80044400:
/* 01F800 80044400 8CE20028 */  lw    $v0, 0x28($a3)
/* 01F804 80044404 50400010 */  beql  $v0, $zero, .L80044448
/* 01F808 80044408 24A50001 */   addiu $a1, $a1, 1
/* 01F80C 8004440C 8C430000 */  lw    $v1, ($v0)
/* 01F810 80044410 1860000C */  blez  $v1, .L80044444
/* 01F814 80044414 0000202D */   daddu $a0, $zero, $zero
/* 01F818 80044418 0060302D */  daddu $a2, $v1, $zero
/* 01F81C 8004441C 0040182D */  daddu $v1, $v0, $zero
.L80044420:
/* 01F820 80044420 8C700004 */  lw    $s0, 4($v1)
/* 01F824 80044424 12000004 */  beqz  $s0, .L80044438
/* 01F828 80044428 24840001 */   addiu $a0, $a0, 1
/* 01F82C 8004442C 86020008 */  lh    $v0, 8($s0)
/* 01F830 80044430 1051FFE8 */  beq   $v0, $s1, .L800443D4
/* 01F834 80044434 00000000 */   nop   
.L80044438:
/* 01F838 80044438 0086102A */  slt   $v0, $a0, $a2
/* 01F83C 8004443C 1440FFF8 */  bnez  $v0, .L80044420
/* 01F840 80044440 24630004 */   addiu $v1, $v1, 4
.L80044444:
/* 01F844 80044444 24A50001 */  addiu $a1, $a1, 1
.L80044448:
/* 01F848 80044448 00A8102A */  slt   $v0, $a1, $t0
/* 01F84C 8004444C 1440FFEC */  bnez  $v0, .L80044400
/* 01F850 80044450 24E70004 */   addiu $a3, $a3, 4
.L80044454:
/* 01F854 80044454 0260102D */  daddu $v0, $s3, $zero
func_80044458:
/* 01F858 80044458 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01F85C 8004445C 8FB40020 */  lw    $s4, 0x20($sp)
/* 01F860 80044460 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01F864 80044464 8FB20018 */  lw    $s2, 0x18($sp)
/* 01F868 80044468 8FB10014 */  lw    $s1, 0x14($sp)
/* 01F86C 8004446C 8FB00010 */  lw    $s0, 0x10($sp)
/* 01F870 80044470 03E00008 */  jr    $ra
/* 01F874 80044474 27BD0028 */   addiu $sp, $sp, 0x28

RemoveEncounter:
/* 01F878 80044478 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01F87C 8004447C AFBF0020 */  sw    $ra, 0x20($sp)
/* 01F880 80044480 AFB3001C */  sw    $s3, 0x1c($sp)
/* 01F884 80044484 AFB20018 */  sw    $s2, 0x18($sp)
/* 01F888 80044488 AFB10014 */  sw    $s1, 0x14($sp)
/* 01F88C 8004448C AFB00010 */  sw    $s0, 0x10($sp)
/* 01F890 80044490 8C82000C */  lw    $v0, 0xc($a0)
/* 01F894 80044494 8C450000 */  lw    $a1, ($v0)
/* 01F898 80044498 8C900148 */  lw    $s0, 0x148($a0)
/* 01F89C 8004449C 0C0B1EAF */  jal   get_variable
/* 01F8A0 800444A0 24120001 */   addiu $s2, $zero, 1
/* 01F8A4 800444A4 0040882D */  daddu $s1, $v0, $zero
/* 01F8A8 800444A8 3C13800B */  lui   $s3, 0x800b
/* 01F8AC 800444AC 26730F10 */  addiu $s3, $s3, 0xf10
/* 01F8B0 800444B0 2402FFFF */  addiu $v0, $zero, -1
/* 01F8B4 800444B4 1202000D */  beq   $s0, $v0, .L800444EC
/* 01F8B8 800444B8 00000000 */   nop   
/* 01F8BC 800444BC 12220004 */  beq   $s1, $v0, .L800444D0
/* 01F8C0 800444C0 00000000 */   nop   
/* 01F8C4 800444C4 86020008 */  lh    $v0, 8($s0)
/* 01F8C8 800444C8 14510008 */  bne   $v0, $s1, .L800444EC
/* 01F8CC 800444CC 00000000 */   nop   
.L800444D0:
/* 01F8D0 800444D0 86110008 */  lh    $s1, 8($s0)
/* 01F8D4 800444D4 0801113D */  j     func_800444F4
/* 01F8D8 800444D8 241200FF */   addiu $s2, $zero, 0xff

.L800444DC:
/* 01F8DC 800444DC 0C00F9CC */  jal   kill_encounter
/* 01F8E0 800444E0 0200202D */   daddu $a0, $s0, $zero
/* 01F8E4 800444E4 08011158 */  j     func_80044560
/* 01F8E8 800444E8 0240102D */   daddu $v0, $s2, $zero

.L800444EC:
/* 01F8EC 800444EC 0C00FB3A */  jal   get_enemy
/* 01F8F0 800444F0 0220202D */   daddu $a0, $s1, $zero
func_800444F4:
/* 01F8F4 800444F4 8262001C */  lb    $v0, 0x1c($s3)
/* 01F8F8 800444F8 18400018 */  blez  $v0, .L8004455C
/* 01F8FC 800444FC 0000282D */   daddu $a1, $zero, $zero
/* 01F900 80044500 0040402D */  daddu $t0, $v0, $zero
/* 01F904 80044504 0260382D */  daddu $a3, $s3, $zero
.L80044508:
/* 01F908 80044508 8CE20028 */  lw    $v0, 0x28($a3)
/* 01F90C 8004450C 50400010 */  beql  $v0, $zero, .L80044550
/* 01F910 80044510 24A50001 */   addiu $a1, $a1, 1
/* 01F914 80044514 8C430000 */  lw    $v1, ($v0)
/* 01F918 80044518 1860000C */  blez  $v1, .L8004454C
/* 01F91C 8004451C 0000202D */   daddu $a0, $zero, $zero
/* 01F920 80044520 0060302D */  daddu $a2, $v1, $zero
/* 01F924 80044524 0040182D */  daddu $v1, $v0, $zero
.L80044528:
/* 01F928 80044528 8C700004 */  lw    $s0, 4($v1)
/* 01F92C 8004452C 12000004 */  beqz  $s0, .L80044540
/* 01F930 80044530 24840001 */   addiu $a0, $a0, 1
/* 01F934 80044534 86020008 */  lh    $v0, 8($s0)
/* 01F938 80044538 1051FFE8 */  beq   $v0, $s1, .L800444DC
/* 01F93C 8004453C 00000000 */   nop   
.L80044540:
/* 01F940 80044540 0086102A */  slt   $v0, $a0, $a2
/* 01F944 80044544 1440FFF8 */  bnez  $v0, .L80044528
/* 01F948 80044548 24630004 */   addiu $v1, $v1, 4
.L8004454C:
/* 01F94C 8004454C 24A50001 */  addiu $a1, $a1, 1
.L80044550:
/* 01F950 80044550 00A8102A */  slt   $v0, $a1, $t0
/* 01F954 80044554 1440FFEC */  bnez  $v0, .L80044508
/* 01F958 80044558 24E70004 */   addiu $a3, $a3, 4
.L8004455C:
/* 01F95C 8004455C 0240102D */  daddu $v0, $s2, $zero
func_80044560:
/* 01F960 80044560 8FBF0020 */  lw    $ra, 0x20($sp)
/* 01F964 80044564 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01F968 80044568 8FB20018 */  lw    $s2, 0x18($sp)
/* 01F96C 8004456C 8FB10014 */  lw    $s1, 0x14($sp)
/* 01F970 80044570 8FB00010 */  lw    $s0, 0x10($sp)
/* 01F974 80044574 03E00008 */  jr    $ra
/* 01F978 80044578 27BD0028 */   addiu $sp, $sp, 0x28

GetBattleOutcome:
/* 01F97C 8004457C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01F980 80044580 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01F984 80044584 8C82000C */  lw    $v0, 0xc($a0)
/* 01F988 80044588 3C06800B */  lui   $a2, 0x800b
/* 01F98C 8004458C 80C60F19 */  lb    $a2, 0xf19($a2)
/* 01F990 80044590 0C0B2026 */  jal   set_variable
/* 01F994 80044594 8C450000 */   lw    $a1, ($v0)
/* 01F998 80044598 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01F99C 8004459C 24020002 */  addiu $v0, $zero, 2
/* 01F9A0 800445A0 03E00008 */  jr    $ra
/* 01F9A4 800445A4 27BD0018 */   addiu $sp, $sp, 0x18

/* 01F9A8 800445A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01F9AC 800445AC AFBF0010 */  sw    $ra, 0x10($sp)
/* 01F9B0 800445B0 8C82000C */  lw    $v0, 0xc($a0)
/* 01F9B4 800445B4 8C830148 */  lw    $v1, 0x148($a0)
/* 01F9B8 800445B8 8C450000 */  lw    $a1, ($v0)
/* 01F9BC 800445BC 0C0B2026 */  jal   set_variable
/* 01F9C0 800445C0 8C6600C4 */   lw    $a2, 0xc4($v1)
/* 01F9C4 800445C4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01F9C8 800445C8 24020002 */  addiu $v0, $zero, 2
/* 01F9CC 800445CC 03E00008 */  jr    $ra
/* 01F9D0 800445D0 27BD0018 */   addiu $sp, $sp, 0x18

/* 01F9D4 800445D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01F9D8 800445D8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01F9DC 800445DC 8C82000C */  lw    $v0, 0xc($a0)
/* 01F9E0 800445E0 8C830148 */  lw    $v1, 0x148($a0)
/* 01F9E4 800445E4 8C450000 */  lw    $a1, ($v0)
/* 01F9E8 800445E8 0C0B2026 */  jal   set_variable
/* 01F9EC 800445EC 8C6600C8 */   lw    $a2, 0xc8($v1)
/* 01F9F0 800445F0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01F9F4 800445F4 24020002 */  addiu $v0, $zero, 2
/* 01F9F8 800445F8 03E00008 */  jr    $ra
/* 01F9FC 800445FC 27BD0018 */   addiu $sp, $sp, 0x18

GetOwnerEncountered:
/* 01FA00 80044600 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01FA04 80044604 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01FA08 80044608 8C82000C */  lw    $v0, 0xc($a0)
/* 01FA0C 8004460C 8C830148 */  lw    $v1, 0x148($a0)
/* 01FA10 80044610 8C450000 */  lw    $a1, ($v0)
/* 01FA14 80044614 0C0B2026 */  jal   set_variable
/* 01FA18 80044618 80660005 */   lb    $a2, 5($v1)
/* 01FA1C 8004461C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01FA20 80044620 24020002 */  addiu $v0, $zero, 2
/* 01FA24 80044624 03E00008 */  jr    $ra
/* 01FA28 80044628 27BD0018 */   addiu $sp, $sp, 0x18

DoNpcDefeat:
/* 01FA2C 8004462C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01FA30 80044630 AFB10014 */  sw    $s1, 0x14($sp)
/* 01FA34 80044634 0080882D */  daddu $s1, $a0, $zero
/* 01FA38 80044638 AFBF0018 */  sw    $ra, 0x18($sp)
/* 01FA3C 8004463C AFB00010 */  sw    $s0, 0x10($sp)
/* 01FA40 80044640 8E300148 */  lw    $s0, 0x148($s1)
/* 01FA44 80044644 0C00EABB */  jal   get_npc_unsafe
/* 01FA48 80044648 86040008 */   lh    $a0, 8($s0)
/* 01FA4C 8004464C 0220202D */  daddu $a0, $s1, $zero
/* 01FA50 80044650 0C0B0FCF */  jal   kill_script
/* 01FA54 80044654 0040882D */   daddu $s1, $v0, $zero
/* 01FA58 80044658 3C048007 */  lui   $a0, 0x8007
/* 01FA5C 8004465C 24847E38 */  addiu $a0, $a0, 0x7e38
/* 01FA60 80044660 8E0200CC */  lw    $v0, 0xcc($s0)
/* 01FA64 80044664 2405000A */  addiu $a1, $zero, 0xa
/* 01FA68 80044668 8C420018 */  lw    $v0, 0x18($v0)
/* 01FA6C 8004466C 0000302D */  daddu $a2, $zero, $zero
/* 01FA70 80044670 0C0B0CF8 */  jal   start_script
/* 01FA74 80044674 AE220028 */   sw    $v0, 0x28($s1)
/* 01FA78 80044678 0040182D */  daddu $v1, $v0, $zero
/* 01FA7C 8004467C AE030048 */  sw    $v1, 0x48($s0)
/* 01FA80 80044680 8C620144 */  lw    $v0, 0x144($v1)
/* 01FA84 80044684 AE020060 */  sw    $v0, 0x60($s0)
/* 01FA88 80044688 AC700148 */  sw    $s0, 0x148($v1)
/* 01FA8C 8004468C 86020008 */  lh    $v0, 8($s0)
/* 01FA90 80044690 AC62014C */  sw    $v0, 0x14c($v1)
/* 01FA94 80044694 92040006 */  lbu   $a0, 6($s0)
/* 01FA98 80044698 A0640004 */  sb    $a0, 4($v1)
/* 01FA9C 8004469C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 01FAA0 800446A0 8FB10014 */  lw    $s1, 0x14($sp)
/* 01FAA4 800446A4 8FB00010 */  lw    $s0, 0x10($sp)
/* 01FAA8 800446A8 240200FF */  addiu $v0, $zero, 0xff
/* 01FAAC 800446AC 03E00008 */  jr    $ra
/* 01FAB0 800446B0 27BD0020 */   addiu $sp, $sp, 0x20

start_battle:
/* 01FAB4 800446B4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01FAB8 800446B8 AFB00010 */  sw    $s0, 0x10($sp)
/* 01FABC 800446BC 00A0802D */  daddu $s0, $a1, $zero
/* 01FAC0 800446C0 AFBF0028 */  sw    $ra, 0x28($sp)
/* 01FAC4 800446C4 AFB50024 */  sw    $s5, 0x24($sp)
/* 01FAC8 800446C8 AFB40020 */  sw    $s4, 0x20($sp)
/* 01FACC 800446CC AFB3001C */  sw    $s3, 0x1c($sp)
/* 01FAD0 800446D0 AFB20018 */  sw    $s2, 0x18($sp)
/* 01FAD4 800446D4 AFB10014 */  sw    $s1, 0x14($sp)
/* 01FAD8 800446D8 8C910148 */  lw    $s1, 0x148($a0)
/* 01FADC 800446DC 0C0B1192 */  jal   resume_all_group
/* 01FAE0 800446E0 24040001 */   addiu $a0, $zero, 1
/* 01FAE4 800446E4 3C13800B */  lui   $s3, 0x800b
/* 01FAE8 800446E8 26730F10 */  addiu $s3, $s3, 0xf10
/* 01FAEC 800446EC 24020001 */  addiu $v0, $zero, 1
/* 01FAF0 800446F0 A2620005 */  sb    $v0, 5($s3)
/* 01FAF4 800446F4 A2220005 */  sb    $v0, 5($s1)
/* 01FAF8 800446F8 AE71008C */  sw    $s1, 0x8c($s3)
/* 01FAFC 800446FC 82220004 */  lb    $v0, 4($s1)
/* 01FB00 80044700 00021080 */  sll   $v0, $v0, 2
/* 01FB04 80044704 00531021 */  addu  $v0, $v0, $s3
/* 01FB08 80044708 8C430028 */  lw    $v1, 0x28($v0)
/* 01FB0C 8004470C 2402FFFF */  addiu $v0, $zero, -1
/* 01FB10 80044710 A2600004 */  sb    $zero, 4($s3)
/* 01FB14 80044714 A2600011 */  sb    $zero, 0x11($s3)
/* 01FB18 80044718 AE700014 */  sw    $s0, 0x14($s3)
/* 01FB1C 8004471C AE620018 */  sw    $v0, 0x18($s3)
/* 01FB20 80044720 AE630088 */  sw    $v1, 0x88($s3)
/* 01FB24 80044724 8E22003C */  lw    $v0, 0x3c($s1)
/* 01FB28 80044728 10400003 */  beqz  $v0, .L80044738
/* 01FB2C 8004472C 00000000 */   nop   
/* 01FB30 80044730 0C0B1108 */  jal   suspend_all_script
/* 01FB34 80044734 8E240054 */   lw    $a0, 0x54($s1)
.L80044738:
/* 01FB38 80044738 8E220044 */  lw    $v0, 0x44($s1)
/* 01FB3C 8004473C 10400003 */  beqz  $v0, .L8004474C
/* 01FB40 80044740 00000000 */   nop   
/* 01FB44 80044744 0C0B1108 */  jal   suspend_all_script
/* 01FB48 80044748 8E24005C */   lw    $a0, 0x5c($s1)
.L8004474C:
/* 01FB4C 8004474C 0C03805E */  jal   func_800E0178
/* 01FB50 80044750 0000802D */   daddu $s0, $zero, $zero
/* 01FB54 80044754 0C03BD8A */  jal   func_800EF628
/* 01FB58 80044758 00000000 */   nop   
/* 01FB5C 8004475C 8E740088 */  lw    $s4, 0x88($s3)
/* 01FB60 80044760 8E820000 */  lw    $v0, ($s4)
/* 01FB64 80044764 18400021 */  blez  $v0, .L800447EC
/* 01FB68 80044768 24150001 */   addiu $s5, $zero, 1
/* 01FB6C 8004476C 0280902D */  daddu $s2, $s4, $zero
.L80044770:
/* 01FB70 80044770 8E510004 */  lw    $s1, 4($s2)
/* 01FB74 80044774 12200018 */  beqz  $s1, .L800447D8
/* 01FB78 80044778 00000000 */   nop   
/* 01FB7C 8004477C 8E220000 */  lw    $v0, ($s1)
/* 01FB80 80044780 30420008 */  andi  $v0, $v0, 8
/* 01FB84 80044784 10400004 */  beqz  $v0, .L80044798
/* 01FB88 80044788 00000000 */   nop   
/* 01FB8C 8004478C 8E62008C */  lw    $v0, 0x8c($s3)
/* 01FB90 80044790 16220011 */  bne   $s1, $v0, .L800447D8
/* 01FB94 80044794 00000000 */   nop   
.L80044798:
/* 01FB98 80044798 8E220028 */  lw    $v0, 0x28($s1)
/* 01FB9C 8004479C 1040000E */  beqz  $v0, .L800447D8
/* 01FBA0 800447A0 0040202D */   daddu $a0, $v0, $zero
/* 01FBA4 800447A4 2405000A */  addiu $a1, $zero, 0xa
/* 01FBA8 800447A8 0000302D */  daddu $a2, $zero, $zero
/* 01FBAC 800447AC 0C0B0CF8 */  jal   start_script
/* 01FBB0 800447B0 A2350005 */   sb    $s5, 5($s1)
/* 01FBB4 800447B4 0040182D */  daddu $v1, $v0, $zero
/* 01FBB8 800447B8 AE230040 */  sw    $v1, 0x40($s1)
/* 01FBBC 800447BC 8C620144 */  lw    $v0, 0x144($v1)
/* 01FBC0 800447C0 AE220058 */  sw    $v0, 0x58($s1)
/* 01FBC4 800447C4 AC710148 */  sw    $s1, 0x148($v1)
/* 01FBC8 800447C8 86220008 */  lh    $v0, 8($s1)
/* 01FBCC 800447CC AC62014C */  sw    $v0, 0x14c($v1)
/* 01FBD0 800447D0 92220006 */  lbu   $v0, 6($s1)
/* 01FBD4 800447D4 A0620004 */  sb    $v0, 4($v1)
.L800447D8:
/* 01FBD8 800447D8 8E820000 */  lw    $v0, ($s4)
/* 01FBDC 800447DC 26100001 */  addiu $s0, $s0, 1
/* 01FBE0 800447E0 0202102A */  slt   $v0, $s0, $v0
/* 01FBE4 800447E4 1440FFE2 */  bnez  $v0, .L80044770
/* 01FBE8 800447E8 26520004 */   addiu $s2, $s2, 4
.L800447EC:
/* 01FBEC 800447EC 24020001 */  addiu $v0, $zero, 1
/* 01FBF0 800447F0 AE600090 */  sw    $zero, 0x90($s3)
/* 01FBF4 800447F4 AE600094 */  sw    $zero, 0x94($s3)
/* 01FBF8 800447F8 A2620012 */  sb    $v0, 0x12($s3)
/* 01FBFC 800447FC 8FBF0028 */  lw    $ra, 0x28($sp)
/* 01FC00 80044800 8FB50024 */  lw    $s5, 0x24($sp)
/* 01FC04 80044804 8FB40020 */  lw    $s4, 0x20($sp)
/* 01FC08 80044808 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01FC0C 8004480C 8FB20018 */  lw    $s2, 0x18($sp)
/* 01FC10 80044810 8FB10014 */  lw    $s1, 0x14($sp)
/* 01FC14 80044814 8FB00010 */  lw    $s0, 0x10($sp)
/* 01FC18 80044818 24020003 */  addiu $v0, $zero, 3
/* 01FC1C 8004481C 3C01800A */  lui   $at, 0x800a
/* 01FC20 80044820 AC22A600 */  sw    $v0, -0x5a00($at)
/* 01FC24 80044824 24020001 */  addiu $v0, $zero, 1
/* 01FC28 80044828 3C01800A */  lui   $at, 0x800a
/* 01FC2C 8004482C AC22A678 */  sw    $v0, -0x5988($at)
/* 01FC30 80044830 3C01800A */  lui   $at, 0x800a
/* 01FC34 80044834 AC20A5D0 */  sw    $zero, -0x5a30($at)
/* 01FC38 80044838 03E00008 */  jr    $ra
/* 01FC3C 8004483C 27BD0030 */   addiu $sp, $sp, 0x30

StartBattle:
/* 01FC40 80044840 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01FC44 80044844 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01FC48 80044848 0C0111AD */  jal   start_battle
/* 01FC4C 8004484C 2405FFFF */   addiu $a1, $zero, -1
/* 01FC50 80044850 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01FC54 80044854 24020001 */  addiu $v0, $zero, 1
/* 01FC58 80044858 03E00008 */  jr    $ra
/* 01FC5C 8004485C 27BD0018 */   addiu $sp, $sp, 0x18

StartBattleWith:
/* 01FC60 80044860 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01FC64 80044864 AFB00010 */  sw    $s0, 0x10($sp)
/* 01FC68 80044868 0080802D */  daddu $s0, $a0, $zero
/* 01FC6C 8004486C AFBF0014 */  sw    $ra, 0x14($sp)
/* 01FC70 80044870 8E02000C */  lw    $v0, 0xc($s0)
/* 01FC74 80044874 0C0B1EAF */  jal   get_variable
/* 01FC78 80044878 8C450000 */   lw    $a1, ($v0)
/* 01FC7C 8004487C 0200202D */  daddu $a0, $s0, $zero
/* 01FC80 80044880 0C0111AD */  jal   start_battle
/* 01FC84 80044884 0040282D */   daddu $a1, $v0, $zero
/* 01FC88 80044888 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01FC8C 8004488C 8FB00010 */  lw    $s0, 0x10($sp)
/* 01FC90 80044890 24020001 */  addiu $v0, $zero, 1
/* 01FC94 80044894 03E00008 */  jr    $ra
/* 01FC98 80044898 27BD0018 */   addiu $sp, $sp, 0x18

StartBossBattle:
/* 01FC9C 8004489C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01FCA0 800448A0 AFBF0028 */  sw    $ra, 0x28($sp)
/* 01FCA4 800448A4 AFB50024 */  sw    $s5, 0x24($sp)
/* 01FCA8 800448A8 AFB40020 */  sw    $s4, 0x20($sp)
/* 01FCAC 800448AC AFB3001C */  sw    $s3, 0x1c($sp)
/* 01FCB0 800448B0 AFB20018 */  sw    $s2, 0x18($sp)
/* 01FCB4 800448B4 AFB10014 */  sw    $s1, 0x14($sp)
/* 01FCB8 800448B8 AFB00010 */  sw    $s0, 0x10($sp)
/* 01FCBC 800448BC 8C82000C */  lw    $v0, 0xc($a0)
/* 01FCC0 800448C0 8C450000 */  lw    $a1, ($v0)
/* 01FCC4 800448C4 0C0B1EAF */  jal   get_variable
/* 01FCC8 800448C8 8C910148 */   lw    $s1, 0x148($a0)
/* 01FCCC 800448CC 24040001 */  addiu $a0, $zero, 1
/* 01FCD0 800448D0 0C0B1192 */  jal   resume_all_group
/* 01FCD4 800448D4 0040802D */   daddu $s0, $v0, $zero
/* 01FCD8 800448D8 3C13800B */  lui   $s3, 0x800b
/* 01FCDC 800448DC 26730F10 */  addiu $s3, $s3, 0xf10
/* 01FCE0 800448E0 24030001 */  addiu $v1, $zero, 1
/* 01FCE4 800448E4 A2630005 */  sb    $v1, 5($s3)
/* 01FCE8 800448E8 A2230005 */  sb    $v1, 5($s1)
/* 01FCEC 800448EC AE71008C */  sw    $s1, 0x8c($s3)
/* 01FCF0 800448F0 82220004 */  lb    $v0, 4($s1)
/* 01FCF4 800448F4 00021080 */  sll   $v0, $v0, 2
/* 01FCF8 800448F8 00531021 */  addu  $v0, $v0, $s3
/* 01FCFC 800448FC 8C440028 */  lw    $a0, 0x28($v0)
/* 01FD00 80044900 2402FFFF */  addiu $v0, $zero, -1
/* 01FD04 80044904 A2600004 */  sb    $zero, 4($s3)
/* 01FD08 80044908 A2630011 */  sb    $v1, 0x11($s3)
/* 01FD0C 8004490C AE700014 */  sw    $s0, 0x14($s3)
/* 01FD10 80044910 AE620018 */  sw    $v0, 0x18($s3)
/* 01FD14 80044914 AE640088 */  sw    $a0, 0x88($s3)
/* 01FD18 80044918 8E22003C */  lw    $v0, 0x3c($s1)
/* 01FD1C 8004491C 10400003 */  beqz  $v0, .L8004492C
/* 01FD20 80044920 00000000 */   nop   
/* 01FD24 80044924 0C0B1108 */  jal   suspend_all_script
/* 01FD28 80044928 8E240054 */   lw    $a0, 0x54($s1)
.L8004492C:
/* 01FD2C 8004492C 8E220044 */  lw    $v0, 0x44($s1)
/* 01FD30 80044930 10400003 */  beqz  $v0, .L80044940
/* 01FD34 80044934 00000000 */   nop   
/* 01FD38 80044938 0C0B1108 */  jal   suspend_all_script
/* 01FD3C 8004493C 8E24005C */   lw    $a0, 0x5c($s1)
.L80044940:
/* 01FD40 80044940 0C03805E */  jal   func_800E0178
/* 01FD44 80044944 0000802D */   daddu $s0, $zero, $zero
/* 01FD48 80044948 0C03BD8A */  jal   func_800EF628
/* 01FD4C 8004494C 00000000 */   nop   
/* 01FD50 80044950 8E740088 */  lw    $s4, 0x88($s3)
/* 01FD54 80044954 8E820000 */  lw    $v0, ($s4)
/* 01FD58 80044958 18400021 */  blez  $v0, .L800449E0
/* 01FD5C 8004495C 24150001 */   addiu $s5, $zero, 1
/* 01FD60 80044960 0280902D */  daddu $s2, $s4, $zero
.L80044964:
/* 01FD64 80044964 8E510004 */  lw    $s1, 4($s2)
/* 01FD68 80044968 12200018 */  beqz  $s1, .L800449CC
/* 01FD6C 8004496C 00000000 */   nop   
/* 01FD70 80044970 8E220000 */  lw    $v0, ($s1)
/* 01FD74 80044974 30420008 */  andi  $v0, $v0, 8
/* 01FD78 80044978 10400004 */  beqz  $v0, .L8004498C
/* 01FD7C 8004497C 00000000 */   nop   
/* 01FD80 80044980 8E62008C */  lw    $v0, 0x8c($s3)
/* 01FD84 80044984 16220011 */  bne   $s1, $v0, .L800449CC
/* 01FD88 80044988 00000000 */   nop   
.L8004498C:
/* 01FD8C 8004498C 8E220028 */  lw    $v0, 0x28($s1)
/* 01FD90 80044990 1040000E */  beqz  $v0, .L800449CC
/* 01FD94 80044994 0040202D */   daddu $a0, $v0, $zero
/* 01FD98 80044998 2405000A */  addiu $a1, $zero, 0xa
/* 01FD9C 8004499C 0000302D */  daddu $a2, $zero, $zero
/* 01FDA0 800449A0 0C0B0CF8 */  jal   start_script
/* 01FDA4 800449A4 A2350005 */   sb    $s5, 5($s1)
/* 01FDA8 800449A8 0040202D */  daddu $a0, $v0, $zero
/* 01FDAC 800449AC AE240040 */  sw    $a0, 0x40($s1)
/* 01FDB0 800449B0 8C820144 */  lw    $v0, 0x144($a0)
/* 01FDB4 800449B4 AE220058 */  sw    $v0, 0x58($s1)
/* 01FDB8 800449B8 AC910148 */  sw    $s1, 0x148($a0)
/* 01FDBC 800449BC 86220008 */  lh    $v0, 8($s1)
/* 01FDC0 800449C0 AC82014C */  sw    $v0, 0x14c($a0)
/* 01FDC4 800449C4 92220006 */  lbu   $v0, 6($s1)
/* 01FDC8 800449C8 A0820004 */  sb    $v0, 4($a0)
.L800449CC:
/* 01FDCC 800449CC 8E820000 */  lw    $v0, ($s4)
/* 01FDD0 800449D0 26100001 */  addiu $s0, $s0, 1
/* 01FDD4 800449D4 0202102A */  slt   $v0, $s0, $v0
/* 01FDD8 800449D8 1440FFE2 */  bnez  $v0, .L80044964
/* 01FDDC 800449DC 26520004 */   addiu $s2, $s2, 4
.L800449E0:
/* 01FDE0 800449E0 24020001 */  addiu $v0, $zero, 1
/* 01FDE4 800449E4 0040182D */  daddu $v1, $v0, $zero
/* 01FDE8 800449E8 AE600090 */  sw    $zero, 0x90($s3)
/* 01FDEC 800449EC AE600094 */  sw    $zero, 0x94($s3)
/* 01FDF0 800449F0 A2630012 */  sb    $v1, 0x12($s3)
/* 01FDF4 800449F4 8FBF0028 */  lw    $ra, 0x28($sp)
/* 01FDF8 800449F8 8FB50024 */  lw    $s5, 0x24($sp)
/* 01FDFC 800449FC 8FB40020 */  lw    $s4, 0x20($sp)
/* 01FE00 80044A00 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01FE04 80044A04 8FB20018 */  lw    $s2, 0x18($sp)
/* 01FE08 80044A08 8FB10014 */  lw    $s1, 0x14($sp)
/* 01FE0C 80044A0C 8FB00010 */  lw    $s0, 0x10($sp)
/* 01FE10 80044A10 24030003 */  addiu $v1, $zero, 3
/* 01FE14 80044A14 3C01800A */  lui   $at, 0x800a
/* 01FE18 80044A18 AC23A600 */  sw    $v1, -0x5a00($at)
/* 01FE1C 80044A1C 0040182D */  daddu $v1, $v0, $zero
/* 01FE20 80044A20 3C01800A */  lui   $at, 0x800a
/* 01FE24 80044A24 AC23A678 */  sw    $v1, -0x5988($at)
/* 01FE28 80044A28 3C01800A */  lui   $at, 0x800a
/* 01FE2C 80044A2C AC20A5D0 */  sw    $zero, -0x5a30($at)
/* 01FE30 80044A30 03E00008 */  jr    $ra
/* 01FE34 80044A34 27BD0030 */   addiu $sp, $sp, 0x30

SetBattleMusic:
/* 01FE38 80044A38 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01FE3C 80044A3C AFBF0010 */  sw    $ra, 0x10($sp)
/* 01FE40 80044A40 8C82000C */  lw    $v0, 0xc($a0)
/* 01FE44 80044A44 0C0B1EAF */  jal   get_variable
/* 01FE48 80044A48 8C450000 */   lw    $a1, ($v0)
/* 01FE4C 80044A4C 3C04800B */  lui   $a0, 0x800b
/* 01FE50 80044A50 24840F10 */  addiu $a0, $a0, 0xf10
/* 01FE54 80044A54 24030001 */  addiu $v1, $zero, 1
/* 01FE58 80044A58 A0830011 */  sb    $v1, 0x11($a0)
/* 01FE5C 80044A5C 2403FFFF */  addiu $v1, $zero, -1
/* 01FE60 80044A60 AC820014 */  sw    $v0, 0x14($a0)
/* 01FE64 80044A64 AC830018 */  sw    $v1, 0x18($a0)
/* 01FE68 80044A68 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01FE6C 80044A6C 24020002 */  addiu $v0, $zero, 2
/* 01FE70 80044A70 03E00008 */  jr    $ra
/* 01FE74 80044A74 27BD0018 */   addiu $sp, $sp, 0x18

BindNpcAI:
/* 01FE78 80044A78 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01FE7C 80044A7C AFB00010 */  sw    $s0, 0x10($sp)
/* 01FE80 80044A80 0080802D */  daddu $s0, $a0, $zero
/* 01FE84 80044A84 AFB50024 */  sw    $s5, 0x24($sp)
/* 01FE88 80044A88 24150002 */  addiu $s5, $zero, 2
/* 01FE8C 80044A8C AFBF0028 */  sw    $ra, 0x28($sp)
/* 01FE90 80044A90 AFB40020 */  sw    $s4, 0x20($sp)
/* 01FE94 80044A94 AFB3001C */  sw    $s3, 0x1c($sp)
/* 01FE98 80044A98 AFB20018 */  sw    $s2, 0x18($sp)
/* 01FE9C 80044A9C AFB10014 */  sw    $s1, 0x14($sp)
/* 01FEA0 80044AA0 8E11000C */  lw    $s1, 0xc($s0)
/* 01FEA4 80044AA4 8E120148 */  lw    $s2, 0x148($s0)
/* 01FEA8 80044AA8 8E250000 */  lw    $a1, ($s1)
/* 01FEAC 80044AAC 0C0B1EAF */  jal   get_variable
/* 01FEB0 80044AB0 26310004 */   addiu $s1, $s1, 4
/* 01FEB4 80044AB4 0040982D */  daddu $s3, $v0, $zero
/* 01FEB8 80044AB8 8E250000 */  lw    $a1, ($s1)
/* 01FEBC 80044ABC 0C0B1EAF */  jal   get_variable
/* 01FEC0 80044AC0 0200202D */   daddu $a0, $s0, $zero
/* 01FEC4 80044AC4 0040A02D */  daddu $s4, $v0, $zero
/* 01FEC8 80044AC8 2402FFFF */  addiu $v0, $zero, -1
/* 01FECC 80044ACC 12420011 */  beq   $s2, $v0, .L80044B14
/* 01FED0 80044AD0 00000000 */   nop   
/* 01FED4 80044AD4 12620004 */  beq   $s3, $v0, .L80044AE8
/* 01FED8 80044AD8 00000000 */   nop   
/* 01FEDC 80044ADC 86420008 */  lh    $v0, 8($s2)
/* 01FEE0 80044AE0 1453000C */  bne   $v0, $s3, .L80044B14
/* 01FEE4 80044AE4 00000000 */   nop   
.L80044AE8:
/* 01FEE8 80044AE8 86530008 */  lh    $s3, 8($s2)
func_80044AEC:
/* 01FEEC 80044AEC 8E020064 */  lw    $v0, 0x64($s0)
/* 01FEF0 80044AF0 10400003 */  beqz  $v0, .L80044B00
/* 01FEF4 80044AF4 00000000 */   nop   
/* 01FEF8 80044AF8 080112BB */  j     func_80044AEC
/* 01FEFC 80044AFC 0040802D */   daddu $s0, $v0, $zero

.L80044B00:
/* 01FF00 80044B00 8E42003C */  lw    $v0, 0x3c($s2)
/* 01FF04 80044B04 52020006 */  beql  $s0, $v0, .L80044B20
/* 01FF08 80044B08 241500FF */   addiu $s5, $zero, 0xff
/* 01FF0C 80044B0C 080112C8 */  j     func_80044B20
/* 01FF10 80044B10 00000000 */   nop   

.L80044B14:
/* 01FF14 80044B14 0C00FB3A */  jal   get_enemy
/* 01FF18 80044B18 0260202D */   daddu $a0, $s3, $zero
/* 01FF1C 80044B1C 0040902D */  daddu $s2, $v0, $zero
func_80044B20:
.L80044B20:
/* 01FF20 80044B20 8E420000 */  lw    $v0, ($s2)
/* 01FF24 80044B24 30420001 */  andi  $v0, $v0, 1
/* 01FF28 80044B28 10400002 */  beqz  $v0, .L80044B34
/* 01FF2C 80044B2C 2411000B */   addiu $s1, $zero, 0xb
/* 01FF30 80044B30 2411000A */  addiu $s1, $zero, 0xa
.L80044B34:
/* 01FF34 80044B34 8E42003C */  lw    $v0, 0x3c($s2)
/* 01FF38 80044B38 10400005 */  beqz  $v0, .L80044B50
/* 01FF3C 80044B3C 0280202D */   daddu $a0, $s4, $zero
/* 01FF40 80044B40 8E440054 */  lw    $a0, 0x54($s2)
/* 01FF44 80044B44 0C0B102B */  jal   kill_script_by_ID
/* 01FF48 80044B48 00000000 */   nop   
/* 01FF4C 80044B4C 0280202D */  daddu $a0, $s4, $zero
.L80044B50:
/* 01FF50 80044B50 2405000A */  addiu $a1, $zero, 0xa
/* 01FF54 80044B54 24020064 */  addiu $v0, $zero, 0x64
/* 01FF58 80044B58 0000302D */  daddu $a2, $zero, $zero
/* 01FF5C 80044B5C AE4200C8 */  sw    $v0, 0xc8($s2)
/* 01FF60 80044B60 0C0B0CF8 */  jal   start_script
/* 01FF64 80044B64 AE440024 */   sw    $a0, 0x24($s2)
/* 01FF68 80044B68 0040802D */  daddu $s0, $v0, $zero
/* 01FF6C 80044B6C AE50003C */  sw    $s0, 0x3c($s2)
/* 01FF70 80044B70 8E030144 */  lw    $v1, 0x144($s0)
/* 01FF74 80044B74 02A0102D */  daddu $v0, $s5, $zero
/* 01FF78 80044B78 AE430054 */  sw    $v1, 0x54($s2)
/* 01FF7C 80044B7C AE120148 */  sw    $s2, 0x148($s0)
/* 01FF80 80044B80 AE13014C */  sw    $s3, 0x14c($s0)
/* 01FF84 80044B84 A2110004 */  sb    $s1, 4($s0)
/* 01FF88 80044B88 8FBF0028 */  lw    $ra, 0x28($sp)
/* 01FF8C 80044B8C 8FB50024 */  lw    $s5, 0x24($sp)
/* 01FF90 80044B90 8FB40020 */  lw    $s4, 0x20($sp)
/* 01FF94 80044B94 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01FF98 80044B98 8FB20018 */  lw    $s2, 0x18($sp)
/* 01FF9C 80044B9C 8FB10014 */  lw    $s1, 0x14($sp)
/* 01FFA0 80044BA0 8FB00010 */  lw    $s0, 0x10($sp)
/* 01FFA4 80044BA4 03E00008 */  jr    $ra
/* 01FFA8 80044BA8 27BD0030 */   addiu $sp, $sp, 0x30

BindNpcIdle:
/* 01FFAC 80044BAC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01FFB0 80044BB0 AFB10014 */  sw    $s1, 0x14($sp)
/* 01FFB4 80044BB4 0080882D */  daddu $s1, $a0, $zero
/* 01FFB8 80044BB8 AFBF0020 */  sw    $ra, 0x20($sp)
/* 01FFBC 80044BBC AFB3001C */  sw    $s3, 0x1c($sp)
/* 01FFC0 80044BC0 AFB20018 */  sw    $s2, 0x18($sp)
/* 01FFC4 80044BC4 AFB00010 */  sw    $s0, 0x10($sp)
/* 01FFC8 80044BC8 8E30000C */  lw    $s0, 0xc($s1)
/* 01FFCC 80044BCC 8E330148 */  lw    $s3, 0x148($s1)
/* 01FFD0 80044BD0 8E050000 */  lw    $a1, ($s0)
/* 01FFD4 80044BD4 0C0B1EAF */  jal   get_variable
/* 01FFD8 80044BD8 26100004 */   addiu $s0, $s0, 4
/* 01FFDC 80044BDC 0040902D */  daddu $s2, $v0, $zero
/* 01FFE0 80044BE0 8E050000 */  lw    $a1, ($s0)
/* 01FFE4 80044BE4 0C0B1EAF */  jal   get_variable
/* 01FFE8 80044BE8 0220202D */   daddu $a0, $s1, $zero
/* 01FFEC 80044BEC 0040802D */  daddu $s0, $v0, $zero
/* 01FFF0 80044BF0 2402FFFF */  addiu $v0, $zero, -1
/* 01FFF4 80044BF4 16420002 */  bne   $s2, $v0, .L80044C00
/* 01FFF8 80044BF8 00000000 */   nop   
/* 01FFFC 80044BFC 86720008 */  lh    $s2, 8($s3)
.L80044C00:
/* 020000 80044C00 0C00FB3A */  jal   get_enemy
/* 020004 80044C04 0240202D */   daddu $a0, $s2, $zero
/* 020008 80044C08 AC500024 */  sw    $s0, 0x24($v0)
/* 02000C 80044C0C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020010 80044C10 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020014 80044C14 8FB20018 */  lw    $s2, 0x18($sp)
/* 020018 80044C18 8FB10014 */  lw    $s1, 0x14($sp)
/* 02001C 80044C1C 8FB00010 */  lw    $s0, 0x10($sp)
/* 020020 80044C20 24020002 */  addiu $v0, $zero, 2
/* 020024 80044C24 03E00008 */  jr    $ra
/* 020028 80044C28 27BD0028 */   addiu $sp, $sp, 0x28

RestartNpcAI:
/* 02002C 80044C2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020030 80044C30 AFB10014 */  sw    $s1, 0x14($sp)
/* 020034 80044C34 0080882D */  daddu $s1, $a0, $zero
/* 020038 80044C38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02003C 80044C3C AFB20018 */  sw    $s2, 0x18($sp)
/* 020040 80044C40 AFB00010 */  sw    $s0, 0x10($sp)
/* 020044 80044C44 8E22000C */  lw    $v0, 0xc($s1)
/* 020048 80044C48 8C450000 */  lw    $a1, ($v0)
/* 02004C 80044C4C 0C0B1EAF */  jal   get_variable
/* 020050 80044C50 8E300148 */   lw    $s0, 0x148($s1)
/* 020054 80044C54 0040202D */  daddu $a0, $v0, $zero
/* 020058 80044C58 2402FFFF */  addiu $v0, $zero, -1
/* 02005C 80044C5C 14820002 */  bne   $a0, $v0, .L80044C68
/* 020060 80044C60 00000000 */   nop   
/* 020064 80044C64 86040008 */  lh    $a0, 8($s0)
.L80044C68:
/* 020068 80044C68 0C00FB3A */  jal   get_enemy
/* 02006C 80044C6C 2412000B */   addiu $s2, $zero, 0xb
/* 020070 80044C70 0040802D */  daddu $s0, $v0, $zero
/* 020074 80044C74 8E020000 */  lw    $v0, ($s0)
/* 020078 80044C78 30420001 */  andi  $v0, $v0, 1
/* 02007C 80044C7C 54400001 */  bnezl $v0, .L80044C84
/* 020080 80044C80 2412000A */   addiu $s2, $zero, 0xa
.L80044C84:
/* 020084 80044C84 8E02003C */  lw    $v0, 0x3c($s0)
/* 020088 80044C88 10400005 */  beqz  $v0, .L80044CA0
/* 02008C 80044C8C 2405000A */   addiu $a1, $zero, 0xa
/* 020090 80044C90 8E040054 */  lw    $a0, 0x54($s0)
/* 020094 80044C94 0C0B102B */  jal   kill_script_by_ID
/* 020098 80044C98 00000000 */   nop   
/* 02009C 80044C9C 2405000A */  addiu $a1, $zero, 0xa
.L80044CA0:
/* 0200A0 80044CA0 24020064 */  addiu $v0, $zero, 0x64
/* 0200A4 80044CA4 8E040024 */  lw    $a0, 0x24($s0)
/* 0200A8 80044CA8 0000302D */  daddu $a2, $zero, $zero
/* 0200AC 80044CAC 0C0B0CF8 */  jal   start_script
/* 0200B0 80044CB0 AE0200C8 */   sw    $v0, 0xc8($s0)
/* 0200B4 80044CB4 0040182D */  daddu $v1, $v0, $zero
/* 0200B8 80044CB8 AE03003C */  sw    $v1, 0x3c($s0)
/* 0200BC 80044CBC 8C620144 */  lw    $v0, 0x144($v1)
/* 0200C0 80044CC0 AE020054 */  sw    $v0, 0x54($s0)
/* 0200C4 80044CC4 AC700148 */  sw    $s0, 0x148($v1)
/* 0200C8 80044CC8 8E24014C */  lw    $a0, 0x14c($s1)
/* 0200CC 80044CCC A0720004 */  sb    $s2, 4($v1)
/* 0200D0 80044CD0 AC64014C */  sw    $a0, 0x14c($v1)
/* 0200D4 80044CD4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0200D8 80044CD8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0200DC 80044CDC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0200E0 80044CE0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0200E4 80044CE4 24020002 */  addiu $v0, $zero, 2
/* 0200E8 80044CE8 03E00008 */  jr    $ra
/* 0200EC 80044CEC 27BD0020 */   addiu $sp, $sp, 0x20

EnableNpcAI:
/* 0200F0 80044CF0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0200F4 80044CF4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0200F8 80044CF8 0080882D */  daddu $s1, $a0, $zero
/* 0200FC 80044CFC AFBF0020 */  sw    $ra, 0x20($sp)
/* 020100 80044D00 AFB3001C */  sw    $s3, 0x1c($sp)
/* 020104 80044D04 AFB20018 */  sw    $s2, 0x18($sp)
/* 020108 80044D08 AFB00010 */  sw    $s0, 0x10($sp)
/* 02010C 80044D0C 8E30000C */  lw    $s0, 0xc($s1)
/* 020110 80044D10 8E330148 */  lw    $s3, 0x148($s1)
/* 020114 80044D14 8E050000 */  lw    $a1, ($s0)
/* 020118 80044D18 0C0B1EAF */  jal   get_variable
/* 02011C 80044D1C 26100004 */   addiu $s0, $s0, 4
/* 020120 80044D20 0040902D */  daddu $s2, $v0, $zero
/* 020124 80044D24 8E050000 */  lw    $a1, ($s0)
/* 020128 80044D28 0C0B1EAF */  jal   get_variable
/* 02012C 80044D2C 0220202D */   daddu $a0, $s1, $zero
/* 020130 80044D30 0040802D */  daddu $s0, $v0, $zero
/* 020134 80044D34 2402FFFF */  addiu $v0, $zero, -1
/* 020138 80044D38 16420002 */  bne   $s2, $v0, .L80044D44
/* 02013C 80044D3C 00000000 */   nop   
/* 020140 80044D40 86720008 */  lh    $s2, 8($s3)
.L80044D44:
/* 020144 80044D44 0C00FB3A */  jal   get_enemy
/* 020148 80044D48 0240202D */   daddu $a0, $s2, $zero
/* 02014C 80044D4C 12000008 */  beqz  $s0, .L80044D70
/* 020150 80044D50 0040982D */   daddu $s3, $v0, $zero
/* 020154 80044D54 8E62003C */  lw    $v0, 0x3c($s3)
/* 020158 80044D58 1040000A */  beqz  $v0, .L80044D84
/* 02015C 80044D5C 00000000 */   nop   
/* 020160 80044D60 0C0B1123 */  jal   resume_all_script
/* 020164 80044D64 8E640054 */   lw    $a0, 0x54($s3)
/* 020168 80044D68 08011361 */  j     func_80044D84
/* 02016C 80044D6C 00000000 */   nop   

.L80044D70:
/* 020170 80044D70 8E62003C */  lw    $v0, 0x3c($s3)
/* 020174 80044D74 10400003 */  beqz  $v0, .L80044D84
/* 020178 80044D78 00000000 */   nop   
/* 02017C 80044D7C 0C0B1108 */  jal   suspend_all_script
/* 020180 80044D80 8E640054 */   lw    $a0, 0x54($s3)
func_80044D84:
.L80044D84:
/* 020184 80044D84 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020188 80044D88 8FB3001C */  lw    $s3, 0x1c($sp)
/* 02018C 80044D8C 8FB20018 */  lw    $s2, 0x18($sp)
/* 020190 80044D90 8FB10014 */  lw    $s1, 0x14($sp)
/* 020194 80044D94 8FB00010 */  lw    $s0, 0x10($sp)
/* 020198 80044D98 24020002 */  addiu $v0, $zero, 2
/* 02019C 80044D9C 03E00008 */  jr    $ra
/* 0201A0 80044DA0 27BD0028 */   addiu $sp, $sp, 0x28

SetNpcAux:
/* 0201A4 80044DA4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0201A8 80044DA8 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0201AC 80044DAC 0080982D */  daddu $s3, $a0, $zero
/* 0201B0 80044DB0 AFB40020 */  sw    $s4, 0x20($sp)
/* 0201B4 80044DB4 24140002 */  addiu $s4, $zero, 2
/* 0201B8 80044DB8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0201BC 80044DBC AFB20018 */  sw    $s2, 0x18($sp)
/* 0201C0 80044DC0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0201C4 80044DC4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0201C8 80044DC8 8E70000C */  lw    $s0, 0xc($s3)
/* 0201CC 80044DCC 8E710148 */  lw    $s1, 0x148($s3)
/* 0201D0 80044DD0 8E050000 */  lw    $a1, ($s0)
/* 0201D4 80044DD4 0C0B1EAF */  jal   get_variable
/* 0201D8 80044DD8 26100004 */   addiu $s0, $s0, 4
/* 0201DC 80044DDC 0040902D */  daddu $s2, $v0, $zero
/* 0201E0 80044DE0 8E050000 */  lw    $a1, ($s0)
/* 0201E4 80044DE4 0C0B1EAF */  jal   get_variable
/* 0201E8 80044DE8 0260202D */   daddu $a0, $s3, $zero
/* 0201EC 80044DEC 0040802D */  daddu $s0, $v0, $zero
/* 0201F0 80044DF0 2402FFFF */  addiu $v0, $zero, -1
/* 0201F4 80044DF4 12220011 */  beq   $s1, $v0, .L80044E3C
/* 0201F8 80044DF8 0260182D */   daddu $v1, $s3, $zero
/* 0201FC 80044DFC 12420004 */  beq   $s2, $v0, .L80044E10
/* 020200 80044E00 00000000 */   nop   
/* 020204 80044E04 86220008 */  lh    $v0, 8($s1)
/* 020208 80044E08 1452000C */  bne   $v0, $s2, .L80044E3C
/* 02020C 80044E0C 00000000 */   nop   
.L80044E10:
/* 020210 80044E10 86320008 */  lh    $s2, 8($s1)
func_80044E14:
/* 020214 80044E14 8C620064 */  lw    $v0, 0x64($v1)
/* 020218 80044E18 10400003 */  beqz  $v0, .L80044E28
/* 02021C 80044E1C 00000000 */   nop   
/* 020220 80044E20 08011385 */  j     func_80044E14
/* 020224 80044E24 0040182D */   daddu $v1, $v0, $zero

.L80044E28:
/* 020228 80044E28 8E220044 */  lw    $v0, 0x44($s1)
/* 02022C 80044E2C 50620007 */  beql  $v1, $v0, .L80044E4C
/* 020230 80044E30 241400FF */   addiu $s4, $zero, 0xff
/* 020234 80044E34 08011393 */  j     func_80044E4C
/* 020238 80044E38 00000000 */   nop   

.L80044E3C:
/* 02023C 80044E3C 0C00FB3A */  jal   get_enemy
/* 020240 80044E40 0240202D */   daddu $a0, $s2, $zero
/* 020244 80044E44 0040882D */  daddu $s1, $v0, $zero
/* 020248 80044E48 8E220044 */  lw    $v0, 0x44($s1)
func_80044E4C:
.L80044E4C:
/* 02024C 80044E4C 10400003 */  beqz  $v0, .L80044E5C
/* 020250 80044E50 00000000 */   nop   
/* 020254 80044E54 0C0B102B */  jal   kill_script_by_ID
/* 020258 80044E58 8E24005C */   lw    $a0, 0x5c($s1)
.L80044E5C:
/* 02025C 80044E5C 1200000D */  beqz  $s0, .L80044E94
/* 020260 80044E60 0200202D */   daddu $a0, $s0, $zero
/* 020264 80044E64 2405000A */  addiu $a1, $zero, 0xa
/* 020268 80044E68 0000302D */  daddu $a2, $zero, $zero
/* 02026C 80044E6C 0C0B0CF8 */  jal   start_script
/* 020270 80044E70 AE24002C */   sw    $a0, 0x2c($s1)
/* 020274 80044E74 0040182D */  daddu $v1, $v0, $zero
/* 020278 80044E78 AE230044 */  sw    $v1, 0x44($s1)
/* 02027C 80044E7C 8C620144 */  lw    $v0, 0x144($v1)
/* 020280 80044E80 AE22005C */  sw    $v0, 0x5c($s1)
/* 020284 80044E84 AC710148 */  sw    $s1, 0x148($v1)
/* 020288 80044E88 AC72014C */  sw    $s2, 0x14c($v1)
/* 02028C 80044E8C 92620004 */  lbu   $v0, 4($s3)
/* 020290 80044E90 A0620004 */  sb    $v0, 4($v1)
.L80044E94:
/* 020294 80044E94 0280102D */  daddu $v0, $s4, $zero
/* 020298 80044E98 8FBF0024 */  lw    $ra, 0x24($sp)
/* 02029C 80044E9C 8FB40020 */  lw    $s4, 0x20($sp)
/* 0202A0 80044EA0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0202A4 80044EA4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0202A8 80044EA8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0202AC 80044EAC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0202B0 80044EB0 03E00008 */  jr    $ra
/* 0202B4 80044EB4 27BD0028 */   addiu $sp, $sp, 0x28

BindNpcAux:
/* 0202B8 80044EB8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0202BC 80044EBC AFB10014 */  sw    $s1, 0x14($sp)
/* 0202C0 80044EC0 0080882D */  daddu $s1, $a0, $zero
/* 0202C4 80044EC4 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0202C8 80044EC8 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0202CC 80044ECC AFB20018 */  sw    $s2, 0x18($sp)
/* 0202D0 80044ED0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0202D4 80044ED4 8E30000C */  lw    $s0, 0xc($s1)
/* 0202D8 80044ED8 8E330148 */  lw    $s3, 0x148($s1)
/* 0202DC 80044EDC 8E050000 */  lw    $a1, ($s0)
/* 0202E0 80044EE0 0C0B1EAF */  jal   get_variable
/* 0202E4 80044EE4 26100004 */   addiu $s0, $s0, 4
/* 0202E8 80044EE8 0040902D */  daddu $s2, $v0, $zero
/* 0202EC 80044EEC 8E050000 */  lw    $a1, ($s0)
/* 0202F0 80044EF0 0C0B1EAF */  jal   get_variable
/* 0202F4 80044EF4 0220202D */   daddu $a0, $s1, $zero
/* 0202F8 80044EF8 0040802D */  daddu $s0, $v0, $zero
/* 0202FC 80044EFC 2402FFFF */  addiu $v0, $zero, -1
/* 020300 80044F00 16420002 */  bne   $s2, $v0, .L80044F0C
/* 020304 80044F04 00000000 */   nop   
/* 020308 80044F08 86720008 */  lh    $s2, 8($s3)
.L80044F0C:
/* 02030C 80044F0C 0C00FB3A */  jal   get_enemy
/* 020310 80044F10 0240202D */   daddu $a0, $s2, $zero
/* 020314 80044F14 AC50002C */  sw    $s0, 0x2c($v0)
/* 020318 80044F18 8FBF0020 */  lw    $ra, 0x20($sp)
/* 02031C 80044F1C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020320 80044F20 8FB20018 */  lw    $s2, 0x18($sp)
/* 020324 80044F24 8FB10014 */  lw    $s1, 0x14($sp)
/* 020328 80044F28 8FB00010 */  lw    $s0, 0x10($sp)
/* 02032C 80044F2C 24020002 */  addiu $v0, $zero, 2
/* 020330 80044F30 03E00008 */  jr    $ra
/* 020334 80044F34 27BD0028 */   addiu $sp, $sp, 0x28

RestartNpcAux:
/* 020338 80044F38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02033C 80044F3C AFBF001C */  sw    $ra, 0x1c($sp)
/* 020340 80044F40 AFB20018 */  sw    $s2, 0x18($sp)
/* 020344 80044F44 AFB10014 */  sw    $s1, 0x14($sp)
/* 020348 80044F48 AFB00010 */  sw    $s0, 0x10($sp)
/* 02034C 80044F4C 8C82000C */  lw    $v0, 0xc($a0)
/* 020350 80044F50 8C450000 */  lw    $a1, ($v0)
/* 020354 80044F54 0C0B1EAF */  jal   get_variable
/* 020358 80044F58 8C900148 */   lw    $s0, 0x148($a0)
/* 02035C 80044F5C 0040882D */  daddu $s1, $v0, $zero
/* 020360 80044F60 2402FFFF */  addiu $v0, $zero, -1
/* 020364 80044F64 16220002 */  bne   $s1, $v0, .L80044F70
/* 020368 80044F68 00000000 */   nop   
/* 02036C 80044F6C 86110008 */  lh    $s1, 8($s0)
.L80044F70:
/* 020370 80044F70 0C00FB3A */  jal   get_enemy
/* 020374 80044F74 0220202D */   daddu $a0, $s1, $zero
/* 020378 80044F78 0040802D */  daddu $s0, $v0, $zero
/* 02037C 80044F7C 8E020000 */  lw    $v0, ($s0)
/* 020380 80044F80 30420001 */  andi  $v0, $v0, 1
/* 020384 80044F84 10400002 */  beqz  $v0, .L80044F90
/* 020388 80044F88 2412000B */   addiu $s2, $zero, 0xb
/* 02038C 80044F8C 2412000A */  addiu $s2, $zero, 0xa
.L80044F90:
/* 020390 80044F90 8E020044 */  lw    $v0, 0x44($s0)
/* 020394 80044F94 10400005 */  beqz  $v0, .L80044FAC
/* 020398 80044F98 2405000A */   addiu $a1, $zero, 0xa
/* 02039C 80044F9C 8E04005C */  lw    $a0, 0x5c($s0)
/* 0203A0 80044FA0 0C0B102B */  jal   kill_script_by_ID
/* 0203A4 80044FA4 00000000 */   nop   
/* 0203A8 80044FA8 2405000A */  addiu $a1, $zero, 0xa
.L80044FAC:
/* 0203AC 80044FAC 8E04002C */  lw    $a0, 0x2c($s0)
/* 0203B0 80044FB0 0C0B0CF8 */  jal   start_script
/* 0203B4 80044FB4 0000302D */   daddu $a2, $zero, $zero
/* 0203B8 80044FB8 0040182D */  daddu $v1, $v0, $zero
/* 0203BC 80044FBC AE030044 */  sw    $v1, 0x44($s0)
/* 0203C0 80044FC0 8C640144 */  lw    $a0, 0x144($v1)
/* 0203C4 80044FC4 AE04005C */  sw    $a0, 0x5c($s0)
/* 0203C8 80044FC8 AC700148 */  sw    $s0, 0x148($v1)
/* 0203CC 80044FCC AC71014C */  sw    $s1, 0x14c($v1)
/* 0203D0 80044FD0 A0720004 */  sb    $s2, 4($v1)
/* 0203D4 80044FD4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0203D8 80044FD8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0203DC 80044FDC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0203E0 80044FE0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0203E4 80044FE4 24020002 */  addiu $v0, $zero, 2
/* 0203E8 80044FE8 03E00008 */  jr    $ra
/* 0203EC 80044FEC 27BD0020 */   addiu $sp, $sp, 0x20

EnableNpcAux:
/* 0203F0 80044FF0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0203F4 80044FF4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0203F8 80044FF8 0080882D */  daddu $s1, $a0, $zero
/* 0203FC 80044FFC AFBF0020 */  sw    $ra, 0x20($sp)
/* 020400 80045000 AFB3001C */  sw    $s3, 0x1c($sp)
/* 020404 80045004 AFB20018 */  sw    $s2, 0x18($sp)
/* 020408 80045008 AFB00010 */  sw    $s0, 0x10($sp)
/* 02040C 8004500C 8E30000C */  lw    $s0, 0xc($s1)
/* 020410 80045010 8E330148 */  lw    $s3, 0x148($s1)
/* 020414 80045014 8E050000 */  lw    $a1, ($s0)
/* 020418 80045018 0C0B1EAF */  jal   get_variable
/* 02041C 8004501C 26100004 */   addiu $s0, $s0, 4
/* 020420 80045020 0040902D */  daddu $s2, $v0, $zero
/* 020424 80045024 8E050000 */  lw    $a1, ($s0)
/* 020428 80045028 0C0B1EAF */  jal   get_variable
/* 02042C 8004502C 0220202D */   daddu $a0, $s1, $zero
/* 020430 80045030 0040802D */  daddu $s0, $v0, $zero
/* 020434 80045034 2402FFFF */  addiu $v0, $zero, -1
/* 020438 80045038 16420002 */  bne   $s2, $v0, .L80045044
/* 02043C 8004503C 00000000 */   nop   
/* 020440 80045040 86720008 */  lh    $s2, 8($s3)
.L80045044:
/* 020444 80045044 0C00FB3A */  jal   get_enemy
/* 020448 80045048 0240202D */   daddu $a0, $s2, $zero
/* 02044C 8004504C 12000008 */  beqz  $s0, .L80045070
/* 020450 80045050 0040982D */   daddu $s3, $v0, $zero
/* 020454 80045054 8E620044 */  lw    $v0, 0x44($s3)
/* 020458 80045058 1040000A */  beqz  $v0, .L80045084
/* 02045C 8004505C 00000000 */   nop   
/* 020460 80045060 0C0B1123 */  jal   resume_all_script
/* 020464 80045064 8E64005C */   lw    $a0, 0x5c($s3)
/* 020468 80045068 08011421 */  j     func_80045084
/* 02046C 8004506C 00000000 */   nop   

.L80045070:
/* 020470 80045070 8E620044 */  lw    $v0, 0x44($s3)
/* 020474 80045074 10400003 */  beqz  $v0, .L80045084
/* 020478 80045078 00000000 */   nop   
/* 02047C 8004507C 0C0B1108 */  jal   suspend_all_script
/* 020480 80045080 8E64005C */   lw    $a0, 0x5c($s3)
func_80045084:
.L80045084:
/* 020484 80045084 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020488 80045088 8FB3001C */  lw    $s3, 0x1c($sp)
/* 02048C 8004508C 8FB20018 */  lw    $s2, 0x18($sp)
/* 020490 80045090 8FB10014 */  lw    $s1, 0x14($sp)
/* 020494 80045094 8FB00010 */  lw    $s0, 0x10($sp)
/* 020498 80045098 24020002 */  addiu $v0, $zero, 2
/* 02049C 8004509C 03E00008 */  jr    $ra
/* 0204A0 800450A0 27BD0028 */   addiu $sp, $sp, 0x28

BindNpcInteract:
/* 0204A4 800450A4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0204A8 800450A8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0204AC 800450AC 0080882D */  daddu $s1, $a0, $zero
/* 0204B0 800450B0 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0204B4 800450B4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0204B8 800450B8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0204BC 800450BC AFB00010 */  sw    $s0, 0x10($sp)
/* 0204C0 800450C0 8E30000C */  lw    $s0, 0xc($s1)
/* 0204C4 800450C4 8E330148 */  lw    $s3, 0x148($s1)
/* 0204C8 800450C8 8E050000 */  lw    $a1, ($s0)
/* 0204CC 800450CC 0C0B1EAF */  jal   get_variable
/* 0204D0 800450D0 26100004 */   addiu $s0, $s0, 4
/* 0204D4 800450D4 0040902D */  daddu $s2, $v0, $zero
/* 0204D8 800450D8 8E050000 */  lw    $a1, ($s0)
/* 0204DC 800450DC 0C0B1EAF */  jal   get_variable
/* 0204E0 800450E0 0220202D */   daddu $a0, $s1, $zero
/* 0204E4 800450E4 0040802D */  daddu $s0, $v0, $zero
/* 0204E8 800450E8 2402FFFF */  addiu $v0, $zero, -1
/* 0204EC 800450EC 16420002 */  bne   $s2, $v0, .L800450F8
/* 0204F0 800450F0 00000000 */   nop   
/* 0204F4 800450F4 86720008 */  lh    $s2, 8($s3)
.L800450F8:
/* 0204F8 800450F8 0C00FB3A */  jal   get_enemy
/* 0204FC 800450FC 0240202D */   daddu $a0, $s2, $zero
/* 020500 80045100 0040982D */  daddu $s3, $v0, $zero
/* 020504 80045104 8E620038 */  lw    $v0, 0x38($s3)
/* 020508 80045108 50400005 */  beql  $v0, $zero, .L80045120
/* 02050C 8004510C AE700020 */   sw    $s0, 0x20($s3)
/* 020510 80045110 8E640050 */  lw    $a0, 0x50($s3)
/* 020514 80045114 0C0B102B */  jal   kill_script_by_ID
/* 020518 80045118 00000000 */   nop   
/* 02051C 8004511C AE700020 */  sw    $s0, 0x20($s3)
.L80045120:
/* 020520 80045120 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020524 80045124 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020528 80045128 8FB20018 */  lw    $s2, 0x18($sp)
/* 02052C 8004512C 8FB10014 */  lw    $s1, 0x14($sp)
/* 020530 80045130 8FB00010 */  lw    $s0, 0x10($sp)
/* 020534 80045134 24020002 */  addiu $v0, $zero, 2
/* 020538 80045138 03E00008 */  jr    $ra
/* 02053C 8004513C 27BD0028 */   addiu $sp, $sp, 0x28

BindNpcHit:
/* 020540 80045140 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 020544 80045144 AFB10014 */  sw    $s1, 0x14($sp)
/* 020548 80045148 0080882D */  daddu $s1, $a0, $zero
/* 02054C 8004514C AFBF0020 */  sw    $ra, 0x20($sp)
/* 020550 80045150 AFB3001C */  sw    $s3, 0x1c($sp)
/* 020554 80045154 AFB20018 */  sw    $s2, 0x18($sp)
/* 020558 80045158 AFB00010 */  sw    $s0, 0x10($sp)
/* 02055C 8004515C 8E30000C */  lw    $s0, 0xc($s1)
/* 020560 80045160 8E330148 */  lw    $s3, 0x148($s1)
/* 020564 80045164 8E050000 */  lw    $a1, ($s0)
/* 020568 80045168 0C0B1EAF */  jal   get_variable
/* 02056C 8004516C 26100004 */   addiu $s0, $s0, 4
/* 020570 80045170 0040902D */  daddu $s2, $v0, $zero
/* 020574 80045174 8E050000 */  lw    $a1, ($s0)
/* 020578 80045178 0C0B1EAF */  jal   get_variable
/* 02057C 8004517C 0220202D */   daddu $a0, $s1, $zero
/* 020580 80045180 0040802D */  daddu $s0, $v0, $zero
/* 020584 80045184 2402FFFF */  addiu $v0, $zero, -1
/* 020588 80045188 16420002 */  bne   $s2, $v0, .L80045194
/* 02058C 8004518C 00000000 */   nop   
/* 020590 80045190 86720008 */  lh    $s2, 8($s3)
.L80045194:
/* 020594 80045194 0C00FB3A */  jal   get_enemy
/* 020598 80045198 0240202D */   daddu $a0, $s2, $zero
/* 02059C 8004519C 0040982D */  daddu $s3, $v0, $zero
/* 0205A0 800451A0 8E620040 */  lw    $v0, 0x40($s3)
/* 0205A4 800451A4 50400005 */  beql  $v0, $zero, .L800451BC
/* 0205A8 800451A8 AE700028 */   sw    $s0, 0x28($s3)
/* 0205AC 800451AC 8E640058 */  lw    $a0, 0x58($s3)
/* 0205B0 800451B0 0C0B102B */  jal   kill_script_by_ID
/* 0205B4 800451B4 00000000 */   nop   
/* 0205B8 800451B8 AE700028 */  sw    $s0, 0x28($s3)
.L800451BC:
/* 0205BC 800451BC 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0205C0 800451C0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0205C4 800451C4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0205C8 800451C8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0205CC 800451CC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0205D0 800451D0 24020002 */  addiu $v0, $zero, 2
/* 0205D4 800451D4 03E00008 */  jr    $ra
/* 0205D8 800451D8 27BD0028 */   addiu $sp, $sp, 0x28

BindNpcDefeat:
/* 0205DC 800451DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0205E0 800451E0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0205E4 800451E4 0080882D */  daddu $s1, $a0, $zero
/* 0205E8 800451E8 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0205EC 800451EC AFB3001C */  sw    $s3, 0x1c($sp)
/* 0205F0 800451F0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0205F4 800451F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0205F8 800451F8 8E30000C */  lw    $s0, 0xc($s1)
/* 0205FC 800451FC 8E330148 */  lw    $s3, 0x148($s1)
/* 020600 80045200 8E050000 */  lw    $a1, ($s0)
/* 020604 80045204 0C0B1EAF */  jal   get_variable
/* 020608 80045208 26100004 */   addiu $s0, $s0, 4
/* 02060C 8004520C 0040902D */  daddu $s2, $v0, $zero
/* 020610 80045210 8E050000 */  lw    $a1, ($s0)
/* 020614 80045214 0C0B1EAF */  jal   get_variable
/* 020618 80045218 0220202D */   daddu $a0, $s1, $zero
/* 02061C 8004521C 0040802D */  daddu $s0, $v0, $zero
/* 020620 80045220 2402FFFF */  addiu $v0, $zero, -1
/* 020624 80045224 16420002 */  bne   $s2, $v0, .L80045230
/* 020628 80045228 00000000 */   nop   
/* 02062C 8004522C 86720008 */  lh    $s2, 8($s3)
.L80045230:
/* 020630 80045230 0C00FB3A */  jal   get_enemy
/* 020634 80045234 0240202D */   daddu $a0, $s2, $zero
/* 020638 80045238 AC500030 */  sw    $s0, 0x30($v0)
/* 02063C 8004523C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020640 80045240 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020644 80045244 8FB20018 */  lw    $s2, 0x18($sp)
/* 020648 80045248 8FB10014 */  lw    $s1, 0x14($sp)
/* 02064C 8004524C 8FB00010 */  lw    $s0, 0x10($sp)
/* 020650 80045250 24020002 */  addiu $v0, $zero, 2
/* 020654 80045254 03E00008 */  jr    $ra
/* 020658 80045258 27BD0028 */   addiu $sp, $sp, 0x28

SetSelfVar:
/* 02065C 8004525C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020660 80045260 AFB00010 */  sw    $s0, 0x10($sp)
/* 020664 80045264 0080802D */  daddu $s0, $a0, $zero
/* 020668 80045268 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02066C 8004526C AFB20018 */  sw    $s2, 0x18($sp)
/* 020670 80045270 AFB10014 */  sw    $s1, 0x14($sp)
/* 020674 80045274 8E11000C */  lw    $s1, 0xc($s0)
/* 020678 80045278 8E120148 */  lw    $s2, 0x148($s0)
/* 02067C 8004527C 8E250000 */  lw    $a1, ($s1)
/* 020680 80045280 0C0B1EAF */  jal   get_variable
/* 020684 80045284 26310004 */   addiu $s1, $s1, 4
/* 020688 80045288 0200202D */  daddu $a0, $s0, $zero
/* 02068C 8004528C 8E250000 */  lw    $a1, ($s1)
/* 020690 80045290 0C0B1EAF */  jal   get_variable
/* 020694 80045294 0040802D */   daddu $s0, $v0, $zero
/* 020698 80045298 00108080 */  sll   $s0, $s0, 2
/* 02069C 8004529C 02509021 */  addu  $s2, $s2, $s0
/* 0206A0 800452A0 AE42006C */  sw    $v0, 0x6c($s2)
/* 0206A4 800452A4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0206A8 800452A8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0206AC 800452AC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0206B0 800452B0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0206B4 800452B4 24020002 */  addiu $v0, $zero, 2
/* 0206B8 800452B8 03E00008 */  jr    $ra
/* 0206BC 800452BC 27BD0020 */   addiu $sp, $sp, 0x20

GetSelfVar:
/* 0206C0 800452C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0206C4 800452C4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0206C8 800452C8 0080902D */  daddu $s2, $a0, $zero
/* 0206CC 800452CC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0206D0 800452D0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0206D4 800452D4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0206D8 800452D8 8E51000C */  lw    $s1, 0xc($s2)
/* 0206DC 800452DC 8E500148 */  lw    $s0, 0x148($s2)
/* 0206E0 800452E0 8E250000 */  lw    $a1, ($s1)
/* 0206E4 800452E4 0C0B1EAF */  jal   get_variable
/* 0206E8 800452E8 26310004 */   addiu $s1, $s1, 4
/* 0206EC 800452EC 00021080 */  sll   $v0, $v0, 2
/* 0206F0 800452F0 02028021 */  addu  $s0, $s0, $v0
/* 0206F4 800452F4 8E250000 */  lw    $a1, ($s1)
/* 0206F8 800452F8 8E06006C */  lw    $a2, 0x6c($s0)
/* 0206FC 800452FC 0C0B2026 */  jal   set_variable
/* 020700 80045300 0240202D */   daddu $a0, $s2, $zero
/* 020704 80045304 8FBF001C */  lw    $ra, 0x1c($sp)
/* 020708 80045308 8FB20018 */  lw    $s2, 0x18($sp)
/* 02070C 8004530C 8FB10014 */  lw    $s1, 0x14($sp)
/* 020710 80045310 8FB00010 */  lw    $s0, 0x10($sp)
/* 020714 80045314 24020002 */  addiu $v0, $zero, 2
/* 020718 80045318 03E00008 */  jr    $ra
/* 02071C 8004531C 27BD0020 */   addiu $sp, $sp, 0x20

SetNpcVar:
/* 020720 80045320 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 020724 80045324 AFB10014 */  sw    $s1, 0x14($sp)
/* 020728 80045328 0080882D */  daddu $s1, $a0, $zero
/* 02072C 8004532C AFBF0020 */  sw    $ra, 0x20($sp)
/* 020730 80045330 AFB3001C */  sw    $s3, 0x1c($sp)
/* 020734 80045334 AFB20018 */  sw    $s2, 0x18($sp)
/* 020738 80045338 AFB00010 */  sw    $s0, 0x10($sp)
/* 02073C 8004533C 8E30000C */  lw    $s0, 0xc($s1)
/* 020740 80045340 8E330148 */  lw    $s3, 0x148($s1)
/* 020744 80045344 8E050000 */  lw    $a1, ($s0)
/* 020748 80045348 0C0B1EAF */  jal   get_variable
/* 02074C 8004534C 26100004 */   addiu $s0, $s0, 4
/* 020750 80045350 0040902D */  daddu $s2, $v0, $zero
/* 020754 80045354 8E050000 */  lw    $a1, ($s0)
/* 020758 80045358 26100004 */  addiu $s0, $s0, 4
/* 02075C 8004535C 0C0B1EAF */  jal   get_variable
/* 020760 80045360 0220202D */   daddu $a0, $s1, $zero
/* 020764 80045364 0220202D */  daddu $a0, $s1, $zero
/* 020768 80045368 8E050000 */  lw    $a1, ($s0)
/* 02076C 8004536C 0C0B1EAF */  jal   get_variable
/* 020770 80045370 0040802D */   daddu $s0, $v0, $zero
/* 020774 80045374 0040882D */  daddu $s1, $v0, $zero
/* 020778 80045378 2402FFFF */  addiu $v0, $zero, -1
/* 02077C 8004537C 16420002 */  bne   $s2, $v0, .L80045388
/* 020780 80045380 00000000 */   nop   
/* 020784 80045384 86720008 */  lh    $s2, 8($s3)
.L80045388:
/* 020788 80045388 0C00FB3A */  jal   get_enemy
/* 02078C 8004538C 0240202D */   daddu $a0, $s2, $zero
/* 020790 80045390 00101880 */  sll   $v1, $s0, 2
/* 020794 80045394 00431021 */  addu  $v0, $v0, $v1
/* 020798 80045398 AC51006C */  sw    $s1, 0x6c($v0)
/* 02079C 8004539C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0207A0 800453A0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0207A4 800453A4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0207A8 800453A8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0207AC 800453AC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0207B0 800453B0 24020002 */  addiu $v0, $zero, 2
/* 0207B4 800453B4 03E00008 */  jr    $ra
/* 0207B8 800453B8 27BD0028 */   addiu $sp, $sp, 0x28

GetNpcVar:
/* 0207BC 800453BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0207C0 800453C0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0207C4 800453C4 0080982D */  daddu $s3, $a0, $zero
/* 0207C8 800453C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0207CC 800453CC AFB40020 */  sw    $s4, 0x20($sp)
/* 0207D0 800453D0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0207D4 800453D4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0207D8 800453D8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0207DC 800453DC 8E70000C */  lw    $s0, 0xc($s3)
/* 0207E0 800453E0 8E720148 */  lw    $s2, 0x148($s3)
/* 0207E4 800453E4 8E050000 */  lw    $a1, ($s0)
/* 0207E8 800453E8 0C0B1EAF */  jal   get_variable
/* 0207EC 800453EC 26100004 */   addiu $s0, $s0, 4
/* 0207F0 800453F0 0040882D */  daddu $s1, $v0, $zero
/* 0207F4 800453F4 8E050000 */  lw    $a1, ($s0)
/* 0207F8 800453F8 26100004 */  addiu $s0, $s0, 4
/* 0207FC 800453FC 0C0B1EAF */  jal   get_variable
/* 020800 80045400 0260202D */   daddu $a0, $s3, $zero
/* 020804 80045404 0040A02D */  daddu $s4, $v0, $zero
/* 020808 80045408 2402FFFF */  addiu $v0, $zero, -1
/* 02080C 8004540C 16220002 */  bne   $s1, $v0, .L80045418
/* 020810 80045410 8E100000 */   lw    $s0, ($s0)
/* 020814 80045414 86510008 */  lh    $s1, 8($s2)
.L80045418:
/* 020818 80045418 0C00FB3A */  jal   get_enemy
/* 02081C 8004541C 0220202D */   daddu $a0, $s1, $zero
/* 020820 80045420 0260202D */  daddu $a0, $s3, $zero
/* 020824 80045424 00141880 */  sll   $v1, $s4, 2
/* 020828 80045428 00431021 */  addu  $v0, $v0, $v1
/* 02082C 8004542C 8C46006C */  lw    $a2, 0x6c($v0)
/* 020830 80045430 0C0B2026 */  jal   set_variable
/* 020834 80045434 0200282D */   daddu $a1, $s0, $zero
/* 020838 80045438 8FBF0024 */  lw    $ra, 0x24($sp)
/* 02083C 8004543C 8FB40020 */  lw    $s4, 0x20($sp)
/* 020840 80045440 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020844 80045444 8FB20018 */  lw    $s2, 0x18($sp)
/* 020848 80045448 8FB10014 */  lw    $s1, 0x14($sp)
/* 02084C 8004544C 8FB00010 */  lw    $s0, 0x10($sp)
/* 020850 80045450 24020002 */  addiu $v0, $zero, 2
/* 020854 80045454 03E00008 */  jr    $ra
/* 020858 80045458 27BD0028 */   addiu $sp, $sp, 0x28

SetSelfRotation:
/* 02085C 8004545C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 020860 80045460 AFB10014 */  sw    $s1, 0x14($sp)
/* 020864 80045464 0080882D */  daddu $s1, $a0, $zero
/* 020868 80045468 AFBF0020 */  sw    $ra, 0x20($sp)
/* 02086C 8004546C AFB3001C */  sw    $s3, 0x1c($sp)
/* 020870 80045470 AFB20018 */  sw    $s2, 0x18($sp)
/* 020874 80045474 AFB00010 */  sw    $s0, 0x10($sp)
/* 020878 80045478 8E24014C */  lw    $a0, 0x14c($s1)
/* 02087C 8004547C 0C00EABB */  jal   get_npc_unsafe
/* 020880 80045480 8E30000C */   lw    $s0, 0xc($s1)
/* 020884 80045484 8E050000 */  lw    $a1, ($s0)
/* 020888 80045488 26100004 */  addiu $s0, $s0, 4
/* 02088C 8004548C 0220202D */  daddu $a0, $s1, $zero
/* 020890 80045490 0C0B1EAF */  jal   get_variable
/* 020894 80045494 0040902D */   daddu $s2, $v0, $zero
/* 020898 80045498 8E050000 */  lw    $a1, ($s0)
/* 02089C 8004549C 26100004 */  addiu $s0, $s0, 4
/* 0208A0 800454A0 0220202D */  daddu $a0, $s1, $zero
/* 0208A4 800454A4 0C0B1EAF */  jal   get_variable
/* 0208A8 800454A8 0040982D */   daddu $s3, $v0, $zero
/* 0208AC 800454AC 0220202D */  daddu $a0, $s1, $zero
/* 0208B0 800454B0 8E050000 */  lw    $a1, ($s0)
/* 0208B4 800454B4 0C0B1EAF */  jal   get_variable
/* 0208B8 800454B8 0040802D */   daddu $s0, $v0, $zero
/* 0208BC 800454BC 44821000 */  mtc1  $v0, $f2
/* 0208C0 800454C0 00000000 */  nop   
/* 0208C4 800454C4 468010A0 */  cvt.s.w $f2, $f2
/* 0208C8 800454C8 44930000 */  mtc1  $s3, $f0
/* 0208CC 800454CC 00000000 */  nop   
/* 0208D0 800454D0 46800020 */  cvt.s.w $f0, $f0
/* 0208D4 800454D4 E6400044 */  swc1  $f0, 0x44($s2)
/* 0208D8 800454D8 44900000 */  mtc1  $s0, $f0
/* 0208DC 800454DC 00000000 */  nop   
/* 0208E0 800454E0 46800020 */  cvt.s.w $f0, $f0
/* 0208E4 800454E4 E6400048 */  swc1  $f0, 0x48($s2)
/* 0208E8 800454E8 E642004C */  swc1  $f2, 0x4c($s2)
/* 0208EC 800454EC 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0208F0 800454F0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0208F4 800454F4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0208F8 800454F8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0208FC 800454FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 020900 80045500 24020002 */  addiu $v0, $zero, 2
/* 020904 80045504 03E00008 */  jr    $ra
/* 020908 80045508 27BD0028 */   addiu $sp, $sp, 0x28

SetSelfEnemyFlags:
/* 02090C 8004550C 8C82000C */  lw    $v0, 0xc($a0)
/* 020910 80045510 8C830148 */  lw    $v1, 0x148($a0)
/* 020914 80045514 8C420000 */  lw    $v0, ($v0)
/* 020918 80045518 AC620000 */  sw    $v0, ($v1)
/* 02091C 8004551C 03E00008 */  jr    $ra
/* 020920 80045520 24020002 */   addiu $v0, $zero, 2

SetSelfEnemyFlagBits:
/* 020924 80045524 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020928 80045528 AFBF0018 */  sw    $ra, 0x18($sp)
/* 02092C 8004552C AFB10014 */  sw    $s1, 0x14($sp)
/* 020930 80045530 AFB00010 */  sw    $s0, 0x10($sp)
/* 020934 80045534 8C82000C */  lw    $v0, 0xc($a0)
/* 020938 80045538 8C900148 */  lw    $s0, 0x148($a0)
/* 02093C 8004553C 8C450004 */  lw    $a1, 4($v0)
/* 020940 80045540 0C0B1EAF */  jal   get_variable
/* 020944 80045544 8C510000 */   lw    $s1, ($v0)
/* 020948 80045548 10400004 */  beqz  $v0, .L8004555C
/* 02094C 8004554C 00111827 */   nor   $v1, $zero, $s1
/* 020950 80045550 8E020000 */  lw    $v0, ($s0)
/* 020954 80045554 08011559 */  j     func_80045564
/* 020958 80045558 00511025 */   or    $v0, $v0, $s1

.L8004555C:
/* 02095C 8004555C 8E020000 */  lw    $v0, ($s0)
/* 020960 80045560 00431024 */  and   $v0, $v0, $v1
func_80045564:
/* 020964 80045564 AE020000 */  sw    $v0, ($s0)
/* 020968 80045568 8FBF0018 */  lw    $ra, 0x18($sp)
/* 02096C 8004556C 8FB10014 */  lw    $s1, 0x14($sp)
/* 020970 80045570 8FB00010 */  lw    $s0, 0x10($sp)
/* 020974 80045574 24020002 */  addiu $v0, $zero, 2
/* 020978 80045578 03E00008 */  jr    $ra
/* 02097C 8004557C 27BD0020 */   addiu $sp, $sp, 0x20

/* 020980 80045580 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020984 80045584 AFB00010 */  sw    $s0, 0x10($sp)
/* 020988 80045588 0080802D */  daddu $s0, $a0, $zero
/* 02098C 8004558C AFBF001C */  sw    $ra, 0x1c($sp)
/* 020990 80045590 AFB20018 */  sw    $s2, 0x18($sp)
/* 020994 80045594 AFB10014 */  sw    $s1, 0x14($sp)
/* 020998 80045598 8E04014C */  lw    $a0, 0x14c($s0)
/* 02099C 8004559C 8E12000C */  lw    $s2, 0xc($s0)
/* 0209A0 800455A0 0C00EABB */  jal   get_npc_unsafe
/* 0209A4 800455A4 8E110148 */   lw    $s1, 0x148($s0)
/* 0209A8 800455A8 0200202D */  daddu $a0, $s0, $zero
/* 0209AC 800455AC 8E450000 */  lw    $a1, ($s2)
/* 0209B0 800455B0 0C0B1EAF */  jal   get_variable
/* 0209B4 800455B4 0040802D */   daddu $s0, $v0, $zero
/* 0209B8 800455B8 A2220007 */  sb    $v0, 7($s1)
/* 0209BC 800455BC C6000038 */  lwc1  $f0, 0x38($s0)
/* 0209C0 800455C0 4600008D */  trunc.w.s $f2, $f0
/* 0209C4 800455C4 44021000 */  mfc1  $v0, $f2
/* 0209C8 800455C8 00000000 */  nop   
/* 0209CC 800455CC A6220010 */  sh    $v0, 0x10($s1)
/* 0209D0 800455D0 C600003C */  lwc1  $f0, 0x3c($s0)
/* 0209D4 800455D4 4600008D */  trunc.w.s $f2, $f0
/* 0209D8 800455D8 44021000 */  mfc1  $v0, $f2
/* 0209DC 800455DC 00000000 */  nop   
/* 0209E0 800455E0 A6220012 */  sh    $v0, 0x12($s1)
/* 0209E4 800455E4 C6000040 */  lwc1  $f0, 0x40($s0)
/* 0209E8 800455E8 4600008D */  trunc.w.s $f2, $f0
/* 0209EC 800455EC 44031000 */  mfc1  $v1, $f2
/* 0209F0 800455F0 00000000 */  nop   
/* 0209F4 800455F4 A6230014 */  sh    $v1, 0x14($s1)
/* 0209F8 800455F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0209FC 800455FC 8FB20018 */  lw    $s2, 0x18($sp)
/* 020A00 80045600 8FB10014 */  lw    $s1, 0x14($sp)
/* 020A04 80045604 8FB00010 */  lw    $s0, 0x10($sp)
/* 020A08 80045608 24020002 */  addiu $v0, $zero, 2
/* 020A0C 8004560C 03E00008 */  jr    $ra
/* 020A10 80045610 27BD0020 */   addiu $sp, $sp, 0x20

GetSelfNpcID:
/* 020A14 80045614 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 020A18 80045618 AFBF0010 */  sw    $ra, 0x10($sp)
/* 020A1C 8004561C 8C82000C */  lw    $v0, 0xc($a0)
/* 020A20 80045620 8C830148 */  lw    $v1, 0x148($a0)
/* 020A24 80045624 8C450000 */  lw    $a1, ($v0)
/* 020A28 80045628 0C0B2026 */  jal   set_variable
/* 020A2C 8004562C 84660008 */   lh    $a2, 8($v1)
/* 020A30 80045630 8FBF0010 */  lw    $ra, 0x10($sp)
/* 020A34 80045634 24020002 */  addiu $v0, $zero, 2
/* 020A38 80045638 03E00008 */  jr    $ra
/* 020A3C 8004563C 27BD0018 */   addiu $sp, $sp, 0x18

ClearDefeatedEnemies:
/* 020A40 80045640 3C07800B */  lui   $a3, 0x800b
/* 020A44 80045644 24E70F10 */  addiu $a3, $a3, 0xf10
/* 020A48 80045648 0000302D */  daddu $a2, $zero, $zero
/* 020A4C 8004564C 00C0282D */  daddu $a1, $a2, $zero
.L80045650:
/* 020A50 80045650 0000202D */  daddu $a0, $zero, $zero
/* 020A54 80045654 00A0182D */  daddu $v1, $a1, $zero
.L80045658:
/* 020A58 80045658 00E31021 */  addu  $v0, $a3, $v1
/* 020A5C 8004565C AC4000B0 */  sw    $zero, 0xb0($v0)
/* 020A60 80045660 24840001 */  addiu $a0, $a0, 1
/* 020A64 80045664 2882000C */  slti  $v0, $a0, 0xc
/* 020A68 80045668 1440FFFB */  bnez  $v0, .L80045658
/* 020A6C 8004566C 24630004 */   addiu $v1, $v1, 4
/* 020A70 80045670 24C60001 */  addiu $a2, $a2, 1
/* 020A74 80045674 28C2003C */  slti  $v0, $a2, 0x3c
/* 020A78 80045678 1440FFF5 */  bnez  $v0, .L80045650
/* 020A7C 8004567C 24A50030 */   addiu $a1, $a1, 0x30
/* 020A80 80045680 03E00008 */  jr    $ra
/* 020A84 80045684 24020002 */   addiu $v0, $zero, 2

SetEnemyFlagBits:
/* 020A88 80045688 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 020A8C 8004568C AFB10014 */  sw    $s1, 0x14($sp)
/* 020A90 80045690 0080882D */  daddu $s1, $a0, $zero
/* 020A94 80045694 AFBF0020 */  sw    $ra, 0x20($sp)
/* 020A98 80045698 AFB3001C */  sw    $s3, 0x1c($sp)
/* 020A9C 8004569C AFB20018 */  sw    $s2, 0x18($sp)
/* 020AA0 800456A0 AFB00010 */  sw    $s0, 0x10($sp)
/* 020AA4 800456A4 8E30000C */  lw    $s0, 0xc($s1)
/* 020AA8 800456A8 8E330148 */  lw    $s3, 0x148($s1)
/* 020AAC 800456AC 8E050000 */  lw    $a1, ($s0)
/* 020AB0 800456B0 0C0B1EAF */  jal   get_variable
/* 020AB4 800456B4 26100004 */   addiu $s0, $s0, 4
/* 020AB8 800456B8 0040902D */  daddu $s2, $v0, $zero
/* 020ABC 800456BC 8E050004 */  lw    $a1, 4($s0)
/* 020AC0 800456C0 8E100000 */  lw    $s0, ($s0)
/* 020AC4 800456C4 0C0B1EAF */  jal   get_variable
/* 020AC8 800456C8 0220202D */   daddu $a0, $s1, $zero
/* 020ACC 800456CC 0040882D */  daddu $s1, $v0, $zero
/* 020AD0 800456D0 2402FFFF */  addiu $v0, $zero, -1
/* 020AD4 800456D4 16420002 */  bne   $s2, $v0, .L800456E0
/* 020AD8 800456D8 00000000 */   nop   
/* 020ADC 800456DC 86720008 */  lh    $s2, 8($s3)
.L800456E0:
/* 020AE0 800456E0 0C00FB3A */  jal   get_enemy
/* 020AE4 800456E4 0240202D */   daddu $a0, $s2, $zero
/* 020AE8 800456E8 12200004 */  beqz  $s1, .L800456FC
/* 020AEC 800456EC 0040982D */   daddu $s3, $v0, $zero
/* 020AF0 800456F0 8E620000 */  lw    $v0, ($s3)
/* 020AF4 800456F4 080115C2 */  j     func_80045708
/* 020AF8 800456F8 00501025 */   or    $v0, $v0, $s0

.L800456FC:
/* 020AFC 800456FC 8E620000 */  lw    $v0, ($s3)
/* 020B00 80045700 00101827 */  nor   $v1, $zero, $s0
/* 020B04 80045704 00431024 */  and   $v0, $v0, $v1
func_80045708:
/* 020B08 80045708 AE620000 */  sw    $v0, ($s3)
/* 020B0C 8004570C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020B10 80045710 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020B14 80045714 8FB20018 */  lw    $s2, 0x18($sp)
/* 020B18 80045718 8FB10014 */  lw    $s1, 0x14($sp)
/* 020B1C 8004571C 8FB00010 */  lw    $s0, 0x10($sp)
/* 020B20 80045720 24020002 */  addiu $v0, $zero, 2
/* 020B24 80045724 03E00008 */  jr    $ra
/* 020B28 80045728 27BD0028 */   addiu $sp, $sp, 0x28

/* 020B2C 8004572C 03E00008 */  jr    $ra
/* 020B30 80045730 24020002 */   addiu $v0, $zero, 2

GetSelfAnimationFromTable:
/* 020B34 80045734 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020B38 80045738 AFB10014 */  sw    $s1, 0x14($sp)
/* 020B3C 8004573C 0080882D */  daddu $s1, $a0, $zero
/* 020B40 80045740 AFBF001C */  sw    $ra, 0x1c($sp)
/* 020B44 80045744 AFB20018 */  sw    $s2, 0x18($sp)
/* 020B48 80045748 AFB00010 */  sw    $s0, 0x10($sp)
/* 020B4C 8004574C 8E30000C */  lw    $s0, 0xc($s1)
/* 020B50 80045750 8E320148 */  lw    $s2, 0x148($s1)
/* 020B54 80045754 8E050000 */  lw    $a1, ($s0)
/* 020B58 80045758 0C0B1EAF */  jal   get_variable
/* 020B5C 8004575C 26100004 */   addiu $s0, $s0, 4
/* 020B60 80045760 00021080 */  sll   $v0, $v0, 2
/* 020B64 80045764 8E4300CC */  lw    $v1, 0xcc($s2)
/* 020B68 80045768 8E050000 */  lw    $a1, ($s0)
/* 020B6C 8004576C 00431021 */  addu  $v0, $v0, $v1
/* 020B70 80045770 8C460000 */  lw    $a2, ($v0)
/* 020B74 80045774 0C0B2026 */  jal   set_variable
/* 020B78 80045778 0220202D */   daddu $a0, $s1, $zero
/* 020B7C 8004577C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 020B80 80045780 8FB20018 */  lw    $s2, 0x18($sp)
/* 020B84 80045784 8FB10014 */  lw    $s1, 0x14($sp)
/* 020B88 80045788 8FB00010 */  lw    $s0, 0x10($sp)
/* 020B8C 8004578C 24020002 */  addiu $v0, $zero, 2
/* 020B90 80045790 03E00008 */  jr    $ra
/* 020B94 80045794 27BD0020 */   addiu $sp, $sp, 0x20

/* 020B98 80045798 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 020B9C 8004579C AFBF0010 */  sw    $ra, 0x10($sp)
/* 020BA0 800457A0 8C82000C */  lw    $v0, 0xc($a0)
/* 020BA4 800457A4 0C0B1EAF */  jal   get_variable
/* 020BA8 800457A8 8C450000 */   lw    $a1, ($v0)
/* 020BAC 800457AC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 020BB0 800457B0 3C018011 */  lui   $at, 0x8011
/* 020BB4 800457B4 AC22EF08 */  sw    $v0, -0x10f8($at)
/* 020BB8 800457B8 24020002 */  addiu $v0, $zero, 2
/* 020BBC 800457BC 03E00008 */  jr    $ra
/* 020BC0 800457C0 27BD0018 */   addiu $sp, $sp, 0x18

/* 020BC4 800457C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 020BC8 800457C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 020BCC 800457CC AFB00010 */  sw    $s0, 0x10($sp)
/* 020BD0 800457D0 8C82000C */  lw    $v0, 0xc($a0)
/* 020BD4 800457D4 8C450000 */  lw    $a1, ($v0)
/* 020BD8 800457D8 0C0B1EAF */  jal   get_variable
/* 020BDC 800457DC 8C900148 */   lw    $s0, 0x148($a0)
/* 020BE0 800457E0 A20200B5 */  sb    $v0, 0xb5($s0)
/* 020BE4 800457E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 020BE8 800457E8 8FB00010 */  lw    $s0, 0x10($sp)
/* 020BEC 800457EC 24020002 */  addiu $v0, $zero, 2
/* 020BF0 800457F0 03E00008 */  jr    $ra
/* 020BF4 800457F4 27BD0018 */   addiu $sp, $sp, 0x18

/* 020BF8 800457F8 24020001 */  addiu $v0, $zero, 1
/* 020BFC 800457FC 3C01800B */  lui   $at, 0x800b
/* 020C00 80045800 A0220F22 */  sb    $v0, 0xf22($at)
/* 020C04 80045804 03E00008 */  jr    $ra
/* 020C08 80045808 24020002 */   addiu $v0, $zero, 2

/* 020C0C 8004580C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 020C10 80045810 AFBF0010 */  sw    $ra, 0x10($sp)
/* 020C14 80045814 8C82000C */  lw    $v0, 0xc($a0)
/* 020C18 80045818 3C06800B */  lui   $a2, 0x800b
/* 020C1C 8004581C 80C60F16 */  lb    $a2, 0xf16($a2)
/* 020C20 80045820 0C0B2026 */  jal   set_variable
/* 020C24 80045824 8C450000 */   lw    $a1, ($v0)
/* 020C28 80045828 8FBF0010 */  lw    $ra, 0x10($sp)
/* 020C2C 8004582C 24020002 */  addiu $v0, $zero, 2
/* 020C30 80045830 03E00008 */  jr    $ra
/* 020C34 80045834 27BD0018 */   addiu $sp, $sp, 0x18

/* 020C38 80045838 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 020C3C 8004583C AFB10014 */  sw    $s1, 0x14($sp)
/* 020C40 80045840 0080882D */  daddu $s1, $a0, $zero
/* 020C44 80045844 AFBF0020 */  sw    $ra, 0x20($sp)
/* 020C48 80045848 AFB3001C */  sw    $s3, 0x1c($sp)
/* 020C4C 8004584C AFB20018 */  sw    $s2, 0x18($sp)
/* 020C50 80045850 AFB00010 */  sw    $s0, 0x10($sp)
/* 020C54 80045854 8E30000C */  lw    $s0, 0xc($s1)
/* 020C58 80045858 8E050000 */  lw    $a1, ($s0)
/* 020C5C 8004585C 0C0B1EAF */  jal   get_variable
/* 020C60 80045860 26100004 */   addiu $s0, $s0, 4
/* 020C64 80045864 8E050000 */  lw    $a1, ($s0)
/* 020C68 80045868 26100004 */  addiu $s0, $s0, 4
/* 020C6C 8004586C 0220202D */  daddu $a0, $s1, $zero
/* 020C70 80045870 0C0B1EAF */  jal   get_variable
/* 020C74 80045874 0040902D */   daddu $s2, $v0, $zero
/* 020C78 80045878 0220202D */  daddu $a0, $s1, $zero
/* 020C7C 8004587C 8E050000 */  lw    $a1, ($s0)
/* 020C80 80045880 0C0B1EAF */  jal   get_variable
/* 020C84 80045884 0040982D */   daddu $s3, $v0, $zero
/* 020C88 80045888 0220202D */  daddu $a0, $s1, $zero
/* 020C8C 8004588C 0240282D */  daddu $a1, $s2, $zero
/* 020C90 80045890 0C0B36B0 */  jal   func_802CDAC0
/* 020C94 80045894 0040802D */   daddu $s0, $v0, $zero
/* 020C98 80045898 10400004 */  beqz  $v0, .L800458AC
/* 020C9C 8004589C 0040202D */   daddu $a0, $v0, $zero
/* 020CA0 800458A0 0260282D */  daddu $a1, $s3, $zero
/* 020CA4 800458A4 0C012530 */  jal   func_800494C0
/* 020CA8 800458A8 0200302D */   daddu $a2, $s0, $zero
.L800458AC:
/* 020CAC 800458AC 24020002 */  addiu $v0, $zero, 2
/* 020CB0 800458B0 8FBF0020 */  lw    $ra, 0x20($sp)
/* 020CB4 800458B4 8FB3001C */  lw    $s3, 0x1c($sp)
/* 020CB8 800458B8 8FB20018 */  lw    $s2, 0x18($sp)
/* 020CBC 800458BC 8FB10014 */  lw    $s1, 0x14($sp)
/* 020CC0 800458C0 8FB00010 */  lw    $s0, 0x10($sp)
/* 020CC4 800458C4 03E00008 */  jr    $ra
/* 020CC8 800458C8 27BD0028 */   addiu $sp, $sp, 0x28

/* 020CCC 800458CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 020CD0 800458D0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 020CD4 800458D4 8C820148 */  lw    $v0, 0x148($a0)
/* 020CD8 800458D8 8C420018 */  lw    $v0, 0x18($v0)
/* 020CDC 800458DC 8C83000C */  lw    $v1, 0xc($a0)
/* 020CE0 800458E0 9446002A */  lhu   $a2, 0x2a($v0)
/* 020CE4 800458E4 8C650000 */  lw    $a1, ($v1)
/* 020CE8 800458E8 0C0B2026 */  jal   set_variable
/* 020CEC 800458EC 30C60008 */   andi  $a2, $a2, 8
/* 020CF0 800458F0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 020CF4 800458F4 24020002 */  addiu $v0, $zero, 2
/* 020CF8 800458F8 03E00008 */  jr    $ra
/* 020CFC 800458FC 27BD0018 */   addiu $sp, $sp, 0x18

/* 020D00 80045900 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 020D04 80045904 AFB00040 */  sw    $s0, 0x40($sp)
/* 020D08 80045908 0080802D */  daddu $s0, $a0, $zero
/* 020D0C 8004590C AFBF0048 */  sw    $ra, 0x48($sp)
/* 020D10 80045910 AFB10044 */  sw    $s1, 0x44($sp)
/* 020D14 80045914 8E110148 */  lw    $s1, 0x148($s0)
/* 020D18 80045918 0C00EABB */  jal   get_npc_unsafe
/* 020D1C 8004591C 86240008 */   lh    $a0, 8($s1)
/* 020D20 80045920 8E03000C */  lw    $v1, 0xc($s0)
/* 020D24 80045924 0200202D */  daddu $a0, $s0, $zero
/* 020D28 80045928 8C650000 */  lw    $a1, ($v1)
/* 020D2C 8004592C 0C0B1EAF */  jal   get_variable
/* 020D30 80045930 0040802D */   daddu $s0, $v0, $zero
/* 020D34 80045934 8E2300B0 */  lw    $v1, 0xb0($s1)
/* 020D38 80045938 34630004 */  ori   $v1, $v1, 4
/* 020D3C 8004593C 14400040 */  bnez  $v0, .L80045A40
/* 020D40 80045940 AE2300B0 */   sw    $v1, 0xb0($s1)
/* 020D44 80045944 30620010 */  andi  $v0, $v1, 0x10
/* 020D48 80045948 14400004 */  bnez  $v0, .L8004595C
/* 020D4C 8004594C 00000000 */   nop   
/* 020D50 80045950 8E2200CC */  lw    $v0, 0xcc($s1)
/* 020D54 80045954 8C420000 */  lw    $v0, ($v0)
/* 020D58 80045958 AE020028 */  sw    $v0, 0x28($s0)
.L8004595C:
/* 020D5C 8004595C 8E2200B0 */  lw    $v0, 0xb0($s1)
/* 020D60 80045960 30420008 */  andi  $v0, $v0, 8
/* 020D64 80045964 14400015 */  bnez  $v0, .L800459BC
/* 020D68 80045968 24040002 */   addiu $a0, $zero, 2
/* 020D6C 8004596C 0200282D */  daddu $a1, $s0, $zero
/* 020D70 80045970 860300A8 */  lh    $v1, 0xa8($s0)
/* 020D74 80045974 44800000 */  mtc1  $zero, $f0
/* 020D78 80045978 3C01C1A0 */  lui   $at, 0xc1a0
/* 020D7C 8004597C 44811000 */  mtc1  $at, $f2
/* 020D80 80045980 24020028 */  addiu $v0, $zero, 0x28
/* 020D84 80045984 AFA2001C */  sw    $v0, 0x1c($sp)
/* 020D88 80045988 44834000 */  mtc1  $v1, $f8
/* 020D8C 8004598C 00000000 */  nop   
/* 020D90 80045990 46804220 */  cvt.s.w $f8, $f8
/* 020D94 80045994 44060000 */  mfc1  $a2, $f0
/* 020D98 80045998 3C013F80 */  lui   $at, 0x3f80
/* 020D9C 8004599C 44810000 */  mtc1  $at, $f0
/* 020DA0 800459A0 44074000 */  mfc1  $a3, $f8
/* 020DA4 800459A4 03A21021 */  addu  $v0, $sp, $v0
/* 020DA8 800459A8 AFA20020 */  sw    $v0, 0x20($sp)
/* 020DAC 800459AC E7A20018 */  swc1  $f2, 0x18($sp)
/* 020DB0 800459B0 E7A00010 */  swc1  $f0, 0x10($sp)
/* 020DB4 800459B4 0C01BFA4 */  jal   fx_emote
/* 020DB8 800459B8 AFA60014 */   sw    $a2, 0x14($sp)
.L800459BC:
/* 020DBC 800459BC 8E020000 */  lw    $v0, ($s0)
/* 020DC0 800459C0 24030808 */  addiu $v1, $zero, 0x808
/* 020DC4 800459C4 30420A08 */  andi  $v0, $v0, 0xa08
/* 020DC8 800459C8 1443001D */  bne   $v0, $v1, .L80045A40
/* 020DCC 800459CC 27A5002C */   addiu $a1, $sp, 0x2c
/* 020DD0 800459D0 27A60030 */  addiu $a2, $sp, 0x30
/* 020DD4 800459D4 C6000038 */  lwc1  $f0, 0x38($s0)
/* 020DD8 800459D8 860200A8 */  lh    $v0, 0xa8($s0)
/* 020DDC 800459DC 3C0142C8 */  lui   $at, 0x42c8
/* 020DE0 800459E0 44812000 */  mtc1  $at, $f4
/* 020DE4 800459E4 44823000 */  mtc1  $v0, $f6
/* 020DE8 800459E8 00000000 */  nop   
/* 020DEC 800459EC 468031A0 */  cvt.s.w $f6, $f6
/* 020DF0 800459F0 27A20038 */  addiu $v0, $sp, 0x38
/* 020DF4 800459F4 E7A0002C */  swc1  $f0, 0x2c($sp)
/* 020DF8 800459F8 C600003C */  lwc1  $f0, 0x3c($s0)
/* 020DFC 800459FC C6020040 */  lwc1  $f2, 0x40($s0)
/* 020E00 80045A00 46060000 */  add.s $f0, $f0, $f6
/* 020E04 80045A04 E7A40038 */  swc1  $f4, 0x38($sp)
/* 020E08 80045A08 E7A20034 */  swc1  $f2, 0x34($sp)
/* 020E0C 80045A0C E7A00030 */  swc1  $f0, 0x30($sp)
/* 020E10 80045A10 AFA20010 */  sw    $v0, 0x10($sp)
/* 020E14 80045A14 8E040080 */  lw    $a0, 0x80($s0)
/* 020E18 80045A18 0C0372DF */  jal   func_800DCB7C
/* 020E1C 80045A1C 27A70034 */   addiu $a3, $sp, 0x34
/* 020E20 80045A20 10400003 */  beqz  $v0, .L80045A30
/* 020E24 80045A24 00000000 */   nop   
/* 020E28 80045A28 C7A00030 */  lwc1  $f0, 0x30($sp)
/* 020E2C 80045A2C E600003C */  swc1  $f0, 0x3c($s0)
.L80045A30:
/* 020E30 80045A30 8E020000 */  lw    $v0, ($s0)
/* 020E34 80045A34 2403F7FF */  addiu $v1, $zero, -0x801
/* 020E38 80045A38 00431024 */  and   $v0, $v0, $v1
/* 020E3C 80045A3C AE020000 */  sw    $v0, ($s0)
.L80045A40:
/* 020E40 80045A40 8FBF0048 */  lw    $ra, 0x48($sp)
/* 020E44 80045A44 8FB10044 */  lw    $s1, 0x44($sp)
/* 020E48 80045A48 8FB00040 */  lw    $s0, 0x40($sp)
/* 020E4C 80045A4C 24020002 */  addiu $v0, $zero, 2
/* 020E50 80045A50 03E00008 */  jr    $ra
/* 020E54 80045A54 27BD0050 */   addiu $sp, $sp, 0x50

/* 020E58 80045A58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020E5C 80045A5C AFB10014 */  sw    $s1, 0x14($sp)
/* 020E60 80045A60 0080882D */  daddu $s1, $a0, $zero
/* 020E64 80045A64 AFBF0018 */  sw    $ra, 0x18($sp)
/* 020E68 80045A68 AFB00010 */  sw    $s0, 0x10($sp)
/* 020E6C 80045A6C 8E30000C */  lw    $s0, 0xc($s1)
/* 020E70 80045A70 8E050000 */  lw    $a1, ($s0)
/* 020E74 80045A74 0C0B1EAF */  jal   get_variable
/* 020E78 80045A78 26100004 */   addiu $s0, $s0, 4
/* 020E7C 80045A7C 0220202D */  daddu $a0, $s1, $zero
/* 020E80 80045A80 8E050000 */  lw    $a1, ($s0)
/* 020E84 80045A84 0C0B1EAF */  jal   get_variable
/* 020E88 80045A88 0040802D */   daddu $s0, $v0, $zero
/* 020E8C 80045A8C 0200202D */  daddu $a0, $s0, $zero
/* 020E90 80045A90 0C00FB3A */  jal   get_enemy
/* 020E94 80045A94 0040802D */   daddu $s0, $v0, $zero
/* 020E98 80045A98 AC5000D8 */  sw    $s0, 0xd8($v0)
/* 020E9C 80045A9C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 020EA0 80045AA0 8FB10014 */  lw    $s1, 0x14($sp)
/* 020EA4 80045AA4 8FB00010 */  lw    $s0, 0x10($sp)
/* 020EA8 80045AA8 24020002 */  addiu $v0, $zero, 2
/* 020EAC 80045AAC 03E00008 */  jr    $ra
/* 020EB0 80045AB0 27BD0020 */   addiu $sp, $sp, 0x20

/* 020EB4 80045AB4 00000000 */  nop   
/* 020EB8 80045AB8 00000000 */  nop   
/* 020EBC 80045ABC 00000000 */  nop   
