
.section .text8005F450, "ax"

nuPiInit:
/* 03A850 8005F450 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03A854 8005F454 24040096 */  addiu $a0, $zero, 0x96
/* 03A858 8005F458 3C05800B */  lui   $a1, 0x800b
/* 03A85C 8005F45C 24A5C5D0 */  addiu $a1, $a1, -0x3a30
/* 03A860 8005F460 3C06800B */  lui   $a2, 0x800b
/* 03A864 8005F464 24C6C5E8 */  addiu $a2, $a2, -0x3a18
/* 03A868 8005F468 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03A86C 8005F46C 0C018278 */  jal   osCreatePiManager
/* 03A870 8005F470 24070032 */   addiu $a3, $zero, 0x32
/* 03A874 8005F474 0C0183C4 */  jal   osCartRomInit
/* 03A878 8005F478 00000000 */   nop   
/* 03A87C 8005F47C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03A880 8005F480 3C01800A */  lui   $at, 0x800a
/* 03A884 8005F484 AC22A638 */  sw    $v0, -0x59c8($at)
/* 03A888 8005F488 03E00008 */  jr    $ra
/* 03A88C 8005F48C 27BD0018 */   addiu $sp, $sp, 0x18

nuPiReadRom:
/* 03A890 8005F490 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 03A894 8005F494 AFB30054 */  sw    $s3, 0x54($sp)
/* 03A898 8005F498 0080982D */  daddu $s3, $a0, $zero
/* 03A89C 8005F49C AFB20050 */  sw    $s2, 0x50($sp)
/* 03A8A0 8005F4A0 00A0902D */  daddu $s2, $a1, $zero
/* 03A8A4 8005F4A4 AFB1004C */  sw    $s1, 0x4c($sp)
/* 03A8A8 8005F4A8 00C0882D */  daddu $s1, $a2, $zero
/* 03A8AC 8005F4AC AFB00048 */  sw    $s0, 0x48($sp)
/* 03A8B0 8005F4B0 27B00028 */  addiu $s0, $sp, 0x28
/* 03A8B4 8005F4B4 0200202D */  daddu $a0, $s0, $zero
/* 03A8B8 8005F4B8 27A50040 */  addiu $a1, $sp, 0x40
/* 03A8BC 8005F4BC AFBF0058 */  sw    $ra, 0x58($sp)
/* 03A8C0 8005F4C0 0C019560 */  jal   osCreateMesgQueue
/* 03A8C4 8005F4C4 24060001 */   addiu $a2, $zero, 1
/* 03A8C8 8005F4C8 0240202D */  daddu $a0, $s2, $zero
/* 03A8CC 8005F4CC 0220282D */  daddu $a1, $s1, $zero
/* 03A8D0 8005F4D0 A3A00012 */  sb    $zero, 0x12($sp)
/* 03A8D4 8005F4D4 0C0185C8 */  jal   osInvalDCache
/* 03A8D8 8005F4D8 AFB00014 */   sw    $s0, 0x14($sp)
/* 03A8DC 8005F4DC 0240202D */  daddu $a0, $s2, $zero
/* 03A8E0 8005F4E0 0C0185F4 */  jal   osInvalICache
/* 03A8E4 8005F4E4 0220282D */   daddu $a1, $s1, $zero
/* 03A8E8 8005F4E8 12200015 */  beqz  $s1, .L8005F540
/* 03A8EC 8005F4EC 00000000 */   nop   
.L8005F4F0:
/* 03A8F0 8005F4F0 2E224001 */  sltiu $v0, $s1, 0x4001
/* 03A8F4 8005F4F4 14400002 */  bnez  $v0, .L8005F500
/* 03A8F8 8005F4F8 0220802D */   daddu $s0, $s1, $zero
/* 03A8FC 8005F4FC 24104000 */  addiu $s0, $zero, 0x4000
.L8005F500:
/* 03A900 8005F500 27A50010 */  addiu $a1, $sp, 0x10
/* 03A904 8005F504 3C04800A */  lui   $a0, 0x800a
/* 03A908 8005F508 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 03A90C 8005F50C 0000302D */  daddu $a2, $zero, $zero
/* 03A910 8005F510 AFB20018 */  sw    $s2, 0x18($sp)
/* 03A914 8005F514 AFB3001C */  sw    $s3, 0x1c($sp)
/* 03A918 8005F518 0C018388 */  jal   osEPiStartDma
/* 03A91C 8005F51C AFB00020 */   sw    $s0, 0x20($sp)
/* 03A920 8005F520 27A40028 */  addiu $a0, $sp, 0x28
/* 03A924 8005F524 27A50040 */  addiu $a1, $sp, 0x40
/* 03A928 8005F528 0C0195BC */  jal   osRecvMesg
/* 03A92C 8005F52C 24060001 */   addiu $a2, $zero, 1
/* 03A930 8005F530 02709821 */  addu  $s3, $s3, $s0
/* 03A934 8005F534 02308823 */  subu  $s1, $s1, $s0
/* 03A938 8005F538 1620FFED */  bnez  $s1, .L8005F4F0
/* 03A93C 8005F53C 02509021 */   addu  $s2, $s2, $s0
.L8005F540:
/* 03A940 8005F540 8FBF0058 */  lw    $ra, 0x58($sp)
/* 03A944 8005F544 8FB30054 */  lw    $s3, 0x54($sp)
/* 03A948 8005F548 8FB20050 */  lw    $s2, 0x50($sp)
/* 03A94C 8005F54C 8FB1004C */  lw    $s1, 0x4c($sp)
/* 03A950 8005F550 8FB00048 */  lw    $s0, 0x48($sp)
/* 03A954 8005F554 03E00008 */  jr    $ra
/* 03A958 8005F558 27BD0060 */   addiu $sp, $sp, 0x60

/* 03A95C 8005F55C 00000000 */  nop   
nuGfxInit:
/* 03A960 8005F560 27BDF7E8 */  addiu $sp, $sp, -0x818
/* 03A964 8005F564 AFBF0810 */  sw    $ra, 0x810($sp)
/* 03A968 8005F568 0C01807C */  jal   nuGfxThreadStart
/* 03A96C 8005F56C 00000000 */   nop   
/* 03A970 8005F570 3C048009 */  lui   $a0, 0x8009
/* 03A974 8005F574 24843BA8 */  addiu $a0, $a0, 0x3ba8
/* 03A978 8005F578 0C017CBC */  jal   nuGfxSetCfb
/* 03A97C 8005F57C 24050003 */   addiu $a1, $zero, 3
/* 03A980 8005F580 3C028000 */  lui   $v0, 0x8000
/* 03A984 8005F584 34420400 */  ori   $v0, $v0, 0x400
/* 03A988 8005F588 3C048006 */  lui   $a0, 0x8006
/* 03A98C 8005F58C 24840350 */  addiu $a0, $a0, 0x350
/* 03A990 8005F590 3C01800A */  lui   $at, 0x800a
/* 03A994 8005F594 AC22A5DC */  sw    $v0, -0x5a24($at)
/* 03A998 8005F598 0C0180C4 */  jal   nuGfxSwapCfbFuncSet
/* 03A99C 8005F59C 00000000 */   nop   
/* 03A9A0 8005F5A0 3C028009 */  lui   $v0, 0x8009
/* 03A9A4 8005F5A4 24423BA0 */  addiu $v0, $v0, 0x3ba0
/* 03A9A8 8005F5A8 3C01800A */  lui   $at, 0x800a
/* 03A9AC 8005F5AC AC22A610 */  sw    $v0, -0x59f0($at)
/* 03A9B0 8005F5B0 0C00B2CE */  jal   nuGfxTaskMgrInit
/* 03A9B4 8005F5B4 00000000 */   nop   
/* 03A9B8 8005F5B8 27A40010 */  addiu $a0, $sp, 0x10
/* 03A9BC 8005F5BC 27A50028 */  addiu $a1, $sp, 0x28
/* 03A9C0 8005F5C0 00A42823 */  subu  $a1, $a1, $a0
/* 03A9C4 8005F5C4 3C02DE00 */  lui   $v0, 0xde00
/* 03A9C8 8005F5C8 AFA20010 */  sw    $v0, 0x10($sp)
/* 03A9CC 8005F5CC 3C020009 */  lui   $v0, 9
/* 03A9D0 8005F5D0 24423BB8 */  addiu $v0, $v0, 0x3bb8
/* 03A9D4 8005F5D4 AC820004 */  sw    $v0, 4($a0)
/* 03A9D8 8005F5D8 3C02E900 */  lui   $v0, 0xe900
/* 03A9DC 8005F5DC AFA20018 */  sw    $v0, 0x18($sp)
/* 03A9E0 8005F5E0 3C02DF00 */  lui   $v0, 0xdf00
/* 03A9E4 8005F5E4 0000302D */  daddu $a2, $zero, $zero
/* 03A9E8 8005F5E8 00C0382D */  daddu $a3, $a2, $zero
/* 03A9EC 8005F5EC AFA0001C */  sw    $zero, 0x1c($sp)
/* 03A9F0 8005F5F0 AFA20020 */  sw    $v0, 0x20($sp)
/* 03A9F4 8005F5F4 0C00B331 */  jal   nuGfxTaskStart
/* 03A9F8 8005F5F8 AFA00024 */   sw    $zero, 0x24($sp)
/* 03A9FC 8005F5FC 0C017CB4 */  jal   nuGfxTaskAllEndWait
/* 03AA00 8005F600 00000000 */   nop   
/* 03AA04 8005F604 8FBF0810 */  lw    $ra, 0x810($sp)
/* 03AA08 8005F608 03E00008 */  jr    $ra
/* 03AA0C 8005F60C 27BD0818 */   addiu $sp, $sp, 0x818

nuContInit:
/* 03AA10 8005F610 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03AA14 8005F614 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03AA18 8005F618 0C00B38C */  jal   nuSiMgrInit
/* 03AA1C 8005F61C AFB00010 */   sw    $s0, 0x10($sp)
/* 03AA20 8005F620 0C018144 */  jal   nuContMgrInit
/* 03AA24 8005F624 0040802D */   daddu $s0, $v0, $zero
/* 03AA28 8005F628 0C017DAC */  jal   nuContPakMgrInit
/* 03AA2C 8005F62C 00000000 */   nop   
/* 03AA30 8005F630 0C017F23 */  jal   nuContRmbMgrInit
/* 03AA34 8005F634 00000000 */   nop   
/* 03AA38 8005F638 320200FF */  andi  $v0, $s0, 0xff
/* 03AA3C 8005F63C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03AA40 8005F640 8FB00010 */  lw    $s0, 0x10($sp)
/* 03AA44 8005F644 03E00008 */  jr    $ra
/* 03AA48 8005F648 27BD0018 */   addiu $sp, $sp, 0x18

/* 03AA4C 8005F64C 00000000 */  nop   
nuContDataGet:
/* 03AA50 8005F650 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03AA54 8005F654 AFB10014 */  sw    $s1, 0x14($sp)
/* 03AA58 8005F658 0080882D */  daddu $s1, $a0, $zero
/* 03AA5C 8005F65C AFB00010 */  sw    $s0, 0x10($sp)
/* 03AA60 8005F660 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03AA64 8005F664 0C018183 */  jal   nuContDataClose
/* 03AA68 8005F668 00A0802D */   daddu $s0, $a1, $zero
/* 03AA6C 8005F66C 00102040 */  sll   $a0, $s0, 1
/* 03AA70 8005F670 00902021 */  addu  $a0, $a0, $s0
/* 03AA74 8005F674 00042040 */  sll   $a0, $a0, 1
/* 03AA78 8005F678 3C02800B */  lui   $v0, 0x800b
/* 03AA7C 8005F67C 24421D68 */  addiu $v0, $v0, 0x1d68
/* 03AA80 8005F680 00822021 */  addu  $a0, $a0, $v0
/* 03AA84 8005F684 0220282D */  daddu $a1, $s1, $zero
/* 03AA88 8005F688 0C019194 */  jal   bcopy
/* 03AA8C 8005F68C 24060006 */   addiu $a2, $zero, 6
/* 03AA90 8005F690 0C01818D */  jal   nuContDataOpen
/* 03AA94 8005F694 00000000 */   nop   
/* 03AA98 8005F698 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03AA9C 8005F69C 8FB10014 */  lw    $s1, 0x14($sp)
/* 03AAA0 8005F6A0 8FB00010 */  lw    $s0, 0x10($sp)
/* 03AAA4 8005F6A4 03E00008 */  jr    $ra
/* 03AAA8 8005F6A8 27BD0020 */   addiu $sp, $sp, 0x20

/* 03AAAC 8005F6AC 00000000 */  nop   
nuContPakMgrInit:
/* 03AAB0 8005F6B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03AAB4 8005F6B4 3C048009 */  lui   $a0, 0x8009
/* 03AAB8 8005F6B8 24843CD0 */  addiu $a0, $a0, 0x3cd0
/* 03AABC 8005F6BC AFBF0010 */  sw    $ra, 0x10($sp)
/* 03AAC0 8005F6C0 0C0180FC */  jal   nuSiCallBackAdd
/* 03AAC4 8005F6C4 00000000 */   nop   
/* 03AAC8 8005F6C8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03AACC 8005F6CC 03E00008 */  jr    $ra
/* 03AAD0 8005F6D0 27BD0018 */   addiu $sp, $sp, 0x18

nuContPakMgrRemove:
/* 03AAD4 8005F6D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03AAD8 8005F6D8 3C048009 */  lui   $a0, 0x8009
/* 03AADC 8005F6DC 24843CD0 */  addiu $a0, $a0, 0x3cd0
/* 03AAE0 8005F6E0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03AAE4 8005F6E4 0C018124 */  jal   nuSiCallBackRemove
/* 03AAE8 8005F6E8 00000000 */   nop   
/* 03AAEC 8005F6EC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03AAF0 8005F6F0 03E00008 */  jr    $ra
/* 03AAF4 8005F6F4 27BD0018 */   addiu $sp, $sp, 0x18

contPakOpen:
/* 03AAF8 8005F6F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03AAFC 8005F6FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 03AB00 8005F700 AFB00010 */  sw    $s0, 0x10($sp)
/* 03AB04 8005F704 8C90000C */  lw    $s0, 0xc($a0)
/* 03AB08 8005F708 8E050000 */  lw    $a1, ($s0)
/* 03AB0C 8005F70C AE00000C */  sw    $zero, 0xc($s0)
/* 03AB10 8005F710 8CA60008 */  lw    $a2, 8($a1)
/* 03AB14 8005F714 3C04800E */  lui   $a0, 0x800e
/* 03AB18 8005F718 2484AC78 */  addiu $a0, $a0, -0x5388
/* 03AB1C 8005F71C 0C01A464 */  jal   osPfsInitPak
/* 03AB20 8005F720 00000000 */   nop   
/* 03AB24 8005F724 0040182D */  daddu $v1, $v0, $zero
/* 03AB28 8005F728 14600002 */  bnez  $v1, .L8005F734
/* 03AB2C 8005F72C 24020001 */   addiu $v0, $zero, 1
/* 03AB30 8005F730 AE02000C */  sw    $v0, 0xc($s0)
.L8005F734:
/* 03AB34 8005F734 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03AB38 8005F738 8FB00010 */  lw    $s0, 0x10($sp)
/* 03AB3C 8005F73C 0060102D */  daddu $v0, $v1, $zero
/* 03AB40 8005F740 03E00008 */  jr    $ra
/* 03AB44 8005F744 27BD0018 */   addiu $sp, $sp, 0x18

contPakFree:
/* 03AB48 8005F748 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03AB4C 8005F74C AFBF0010 */  sw    $ra, 0x10($sp)
/* 03AB50 8005F750 8C85000C */  lw    $a1, 0xc($a0)
/* 03AB54 8005F754 8CA20000 */  lw    $v0, ($a1)
/* 03AB58 8005F758 8C440000 */  lw    $a0, ($v0)
/* 03AB5C 8005F75C 0C01A3E0 */  jal   osPfsFreeBlocks
/* 03AB60 8005F760 24A50004 */   addiu $a1, $a1, 4
/* 03AB64 8005F764 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03AB68 8005F768 03E00008 */  jr    $ra
/* 03AB6C 8005F76C 27BD0018 */   addiu $sp, $sp, 0x18

contPakFileReadWrite:
/* 03AB70 8005F770 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03AB74 8005F774 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03AB78 8005F778 8C83000C */  lw    $v1, 0xc($a0)
/* 03AB7C 8005F77C 8C620008 */  lw    $v0, 8($v1)
/* 03AB80 8005F780 8C650000 */  lw    $a1, ($v1)
/* 03AB84 8005F784 9066000C */  lbu   $a2, 0xc($v1)
/* 03AB88 8005F788 AFA20010 */  sw    $v0, 0x10($sp)
/* 03AB8C 8005F78C 8C620010 */  lw    $v0, 0x10($v1)
/* 03AB90 8005F790 AFA20014 */  sw    $v0, 0x14($sp)
/* 03AB94 8005F794 8CA40000 */  lw    $a0, ($a1)
/* 03AB98 8005F798 8CA50004 */  lw    $a1, 4($a1)
/* 03AB9C 8005F79C 0C01A1F8 */  jal   osPfsReadWriteFile
/* 03ABA0 8005F7A0 8C670004 */   lw    $a3, 4($v1)
/* 03ABA4 8005F7A4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03ABA8 8005F7A8 03E00008 */  jr    $ra
/* 03ABAC 8005F7AC 27BD0020 */   addiu $sp, $sp, 0x20

contPakFileOpen:
/* 03ABB0 8005F7B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03ABB4 8005F7B4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 03ABB8 8005F7B8 AFB20028 */  sw    $s2, 0x28($sp)
/* 03ABBC 8005F7BC AFB10024 */  sw    $s1, 0x24($sp)
/* 03ABC0 8005F7C0 AFB00020 */  sw    $s0, 0x20($sp)
/* 03ABC4 8005F7C4 8C90000C */  lw    $s0, 0xc($a0)
/* 03ABC8 8005F7C8 3C058009 */  lui   $a1, 0x8009
/* 03ABCC 8005F7CC 94A53CA0 */  lhu   $a1, 0x3ca0($a1)
/* 03ABD0 8005F7D0 3C068009 */  lui   $a2, 0x8009
/* 03ABD4 8005F7D4 8CC63CA4 */  lw    $a2, 0x3ca4($a2)
/* 03ABD8 8005F7D8 8E110000 */  lw    $s1, ($s0)
/* 03ABDC 8005F7DC 8E020008 */  lw    $v0, 8($s0)
/* 03ABE0 8005F7E0 26320004 */  addiu $s2, $s1, 4
/* 03ABE4 8005F7E4 AFA20010 */  sw    $v0, 0x10($sp)
/* 03ABE8 8005F7E8 AFB20014 */  sw    $s2, 0x14($sp)
/* 03ABEC 8005F7EC 8E240000 */  lw    $a0, ($s1)
/* 03ABF0 8005F7F0 0C01A370 */  jal   osPfsFindFile
/* 03ABF4 8005F7F4 8E070004 */   lw    $a3, 4($s0)
/* 03ABF8 8005F7F8 0040202D */  daddu $a0, $v0, $zero
/* 03ABFC 8005F7FC 24020005 */  addiu $v0, $zero, 5
/* 03AC00 8005F800 14820011 */  bne   $a0, $v0, .L8005F848
/* 03AC04 8005F804 24020001 */   addiu $v0, $zero, 1
/* 03AC08 8005F808 8E030010 */  lw    $v1, 0x10($s0)
/* 03AC0C 8005F80C 1462000E */  bne   $v1, $v0, .L8005F848
/* 03AC10 8005F810 00000000 */   nop   
/* 03AC14 8005F814 8E020008 */  lw    $v0, 8($s0)
/* 03AC18 8005F818 3C058009 */  lui   $a1, 0x8009
/* 03AC1C 8005F81C 94A53CA0 */  lhu   $a1, 0x3ca0($a1)
/* 03AC20 8005F820 3C068009 */  lui   $a2, 0x8009
/* 03AC24 8005F824 8CC63CA4 */  lw    $a2, 0x3ca4($a2)
/* 03AC28 8005F828 AFA20010 */  sw    $v0, 0x10($sp)
/* 03AC2C 8005F82C 8E02000C */  lw    $v0, 0xc($s0)
/* 03AC30 8005F830 AFB20018 */  sw    $s2, 0x18($sp)
/* 03AC34 8005F834 AFA20014 */  sw    $v0, 0x14($sp)
/* 03AC38 8005F838 8E240000 */  lw    $a0, ($s1)
/* 03AC3C 8005F83C 0C01A064 */  jal   osPfsAllocateFile
/* 03AC40 8005F840 8E070004 */   lw    $a3, 4($s0)
/* 03AC44 8005F844 0040202D */  daddu $a0, $v0, $zero
.L8005F848:
/* 03AC48 8005F848 8FBF002C */  lw    $ra, 0x2c($sp)
/* 03AC4C 8005F84C 8FB20028 */  lw    $s2, 0x28($sp)
/* 03AC50 8005F850 8FB10024 */  lw    $s1, 0x24($sp)
/* 03AC54 8005F854 8FB00020 */  lw    $s0, 0x20($sp)
/* 03AC58 8005F858 0080102D */  daddu $v0, $a0, $zero
/* 03AC5C 8005F85C 03E00008 */  jr    $ra
/* 03AC60 8005F860 27BD0030 */   addiu $sp, $sp, 0x30

contPakFileDelete:
/* 03AC64 8005F864 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03AC68 8005F868 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03AC6C 8005F86C 8C82000C */  lw    $v0, 0xc($a0)
/* 03AC70 8005F870 3C058009 */  lui   $a1, 0x8009
/* 03AC74 8005F874 94A53CA0 */  lhu   $a1, 0x3ca0($a1)
/* 03AC78 8005F878 3C068009 */  lui   $a2, 0x8009
/* 03AC7C 8005F87C 8CC63CA4 */  lw    $a2, 0x3ca4($a2)
/* 03AC80 8005F880 8C430008 */  lw    $v1, 8($v0)
/* 03AC84 8005F884 8C440000 */  lw    $a0, ($v0)
/* 03AC88 8005F888 AFA30010 */  sw    $v1, 0x10($sp)
/* 03AC8C 8005F88C 8C840000 */  lw    $a0, ($a0)
/* 03AC90 8005F890 0C01A170 */  jal   osPfsDeleteFile
/* 03AC94 8005F894 8C470004 */   lw    $a3, 4($v0)
/* 03AC98 8005F898 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03AC9C 8005F89C 03E00008 */  jr    $ra
/* 03ACA0 8005F8A0 27BD0020 */   addiu $sp, $sp, 0x20

contPakFileState:
/* 03ACA4 8005F8A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03ACA8 8005F8A8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03ACAC 8005F8AC 8C83000C */  lw    $v1, 0xc($a0)
/* 03ACB0 8005F8B0 8C620000 */  lw    $v0, ($v1)
/* 03ACB4 8005F8B4 8C660004 */  lw    $a2, 4($v1)
/* 03ACB8 8005F8B8 8C440000 */  lw    $a0, ($v0)
/* 03ACBC 8005F8BC 0C01A308 */  jal   osPfsFileState
/* 03ACC0 8005F8C0 8C450004 */   lw    $a1, 4($v0)
/* 03ACC4 8005F8C4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03ACC8 8005F8C8 03E00008 */  jr    $ra
/* 03ACCC 8005F8CC 27BD0018 */   addiu $sp, $sp, 0x18

contPakFileNum:
/* 03ACD0 8005F8D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03ACD4 8005F8D4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03ACD8 8005F8D8 8C82000C */  lw    $v0, 0xc($a0)
/* 03ACDC 8005F8DC 8C430000 */  lw    $v1, ($v0)
/* 03ACE0 8005F8E0 8C450004 */  lw    $a1, 4($v0)
/* 03ACE4 8005F8E4 8C460008 */  lw    $a2, 8($v0)
/* 03ACE8 8005F8E8 0C01A424 */  jal   osPfsNumFiles
/* 03ACEC 8005F8EC 8C640000 */   lw    $a0, ($v1)
/* 03ACF0 8005F8F0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03ACF4 8005F8F4 03E00008 */  jr    $ra
/* 03ACF8 8005F8F8 27BD0018 */   addiu $sp, $sp, 0x18

contPakRepairId:
/* 03ACFC 8005F8FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03AD00 8005F900 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03AD04 8005F904 8C82000C */  lw    $v0, 0xc($a0)
/* 03AD08 8005F908 0C01A518 */  jal   osPfsRepairId
/* 03AD0C 8005F90C 8C440000 */   lw    $a0, ($v0)
/* 03AD10 8005F910 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03AD14 8005F914 03E00008 */  jr    $ra
/* 03AD18 8005F918 27BD0018 */   addiu $sp, $sp, 0x18

/* 03AD1C 8005F91C 00000000 */  nop   
osMotorStop:
/* 03AD20 8005F920 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03AD24 8005F924 AFB20018 */  sw    $s2, 0x18($sp)
/* 03AD28 8005F928 0080902D */  daddu $s2, $a0, $zero
/* 03AD2C 8005F92C 00A0302D */  daddu $a2, $a1, $zero
/* 03AD30 8005F930 AFB00010 */  sw    $s0, 0x10($sp)
/* 03AD34 8005F934 AFBF0020 */  sw    $ra, 0x20($sp)
/* 03AD38 8005F938 AFB3001C */  sw    $s3, 0x1c($sp)
/* 03AD3C 8005F93C AFB10014 */  sw    $s1, 0x14($sp)
/* 03AD40 8005F940 92430006 */  lbu   $v1, 6($s2)
/* 03AD44 8005F944 24130002 */  addiu $s3, $zero, 2
/* 03AD48 8005F948 10730069 */  beq   $v1, $s3, .L8005FAF0
/* 03AD4C 8005F94C 0000802D */   daddu $s0, $zero, $zero
/* 03AD50 8005F950 28620003 */  slti  $v0, $v1, 3
/* 03AD54 8005F954 10400005 */  beqz  $v0, .L8005F96C
/* 03AD58 8005F958 24020001 */   addiu $v0, $zero, 1
/* 03AD5C 8005F95C 1062000A */  beq   $v1, $v0, .L8005F988
/* 03AD60 8005F960 0200102D */   daddu $v0, $s0, $zero
/* 03AD64 8005F964 08017EBD */  j     func_8005FAF4
/* 03AD68 8005F968 00000000 */   nop   

.L8005F96C:
/* 03AD6C 8005F96C 24020003 */  addiu $v0, $zero, 3
/* 03AD70 8005F970 10620018 */  beq   $v1, $v0, .L8005F9D4
/* 03AD74 8005F974 24020004 */   addiu $v0, $zero, 4
/* 03AD78 8005F978 10620048 */  beq   $v1, $v0, .L8005FA9C
/* 03AD7C 8005F97C 0200102D */   daddu $v0, $s0, $zero
/* 03AD80 8005F980 08017EBD */  j     func_8005FAF4
/* 03AD84 8005F984 00000000 */   nop   

.L8005F988:
/* 03AD88 8005F988 96420004 */  lhu   $v0, 4($s2)
/* 03AD8C 8005F98C 1040000C */  beqz  $v0, .L8005F9C0
/* 03AD90 8005F990 00062040 */   sll   $a0, $a2, 1
/* 03AD94 8005F994 00862021 */  addu  $a0, $a0, $a2
/* 03AD98 8005F998 00042080 */  sll   $a0, $a0, 2
/* 03AD9C 8005F99C 00862021 */  addu  $a0, $a0, $a2
/* 03ADA0 8005F9A0 000420C0 */  sll   $a0, $a0, 3
/* 03ADA4 8005F9A4 3C02800E */  lui   $v0, 0x800e
/* 03ADA8 8005F9A8 2442AAD8 */  addiu $v0, $v0, -0x5528
/* 03ADAC 8005F9AC 00822021 */  addu  $a0, $a0, $v0
/* 03ADB0 8005F9B0 0C019F80 */  jal   osMotorAccess
/* 03ADB4 8005F9B4 0000282D */   daddu $a1, $zero, $zero
/* 03ADB8 8005F9B8 08017E71 */  j     func_8005F9C4
/* 03ADBC 8005F9BC 0040802D */   daddu $s0, $v0, $zero

.L8005F9C0:
/* 03ADC0 8005F9C0 A2530006 */  sb    $s3, 6($s2)
func_8005F9C4:
/* 03ADC4 8005F9C4 96420004 */  lhu   $v0, 4($s2)
/* 03ADC8 8005F9C8 2442FFFF */  addiu $v0, $v0, -1
/* 03ADCC 8005F9CC 08017EBC */  j     func_8005FAF0
/* 03ADD0 8005F9D0 A6420004 */   sh    $v0, 4($s2)

.L8005F9D4:
/* 03ADD4 8005F9D4 96420002 */  lhu   $v0, 2($s2)
/* 03ADD8 8005F9D8 1040001F */  beqz  $v0, .L8005FA58
/* 03ADDC 8005F9DC 00062040 */   sll   $a0, $a2, 1
/* 03ADE0 8005F9E0 96420004 */  lhu   $v0, 4($s2)
/* 03ADE4 8005F9E4 96430000 */  lhu   $v1, ($s2)
/* 03ADE8 8005F9E8 00431021 */  addu  $v0, $v0, $v1
/* 03ADEC 8005F9EC 304300FF */  andi  $v1, $v0, 0xff
/* 03ADF0 8005F9F0 3042FFFF */  andi  $v0, $v0, 0xffff
/* 03ADF4 8005F9F4 00021202 */  srl   $v0, $v0, 8
/* 03ADF8 8005F9F8 1040000B */  beqz  $v0, .L8005FA28
/* 03ADFC 8005F9FC A6430004 */   sh    $v1, 4($s2)
/* 03AE00 8005FA00 00062040 */  sll   $a0, $a2, 1
/* 03AE04 8005FA04 00862021 */  addu  $a0, $a0, $a2
/* 03AE08 8005FA08 00042080 */  sll   $a0, $a0, 2
/* 03AE0C 8005FA0C 00862021 */  addu  $a0, $a0, $a2
/* 03AE10 8005FA10 000420C0 */  sll   $a0, $a0, 3
/* 03AE14 8005FA14 3C02800E */  lui   $v0, 0x800e
/* 03AE18 8005FA18 2442AAD8 */  addiu $v0, $v0, -0x5528
/* 03AE1C 8005FA1C 00822021 */  addu  $a0, $a0, $v0
/* 03AE20 8005FA20 08017E92 */  j     func_8005FA48
/* 03AE24 8005FA24 24050001 */   addiu $a1, $zero, 1

.L8005FA28:
/* 03AE28 8005FA28 00862021 */  addu  $a0, $a0, $a2
/* 03AE2C 8005FA2C 00042080 */  sll   $a0, $a0, 2
/* 03AE30 8005FA30 00862021 */  addu  $a0, $a0, $a2
/* 03AE34 8005FA34 000420C0 */  sll   $a0, $a0, 3
/* 03AE38 8005FA38 3C02800E */  lui   $v0, 0x800e
/* 03AE3C 8005FA3C 2442AAD8 */  addiu $v0, $v0, -0x5528
/* 03AE40 8005FA40 00822021 */  addu  $a0, $a0, $v0
/* 03AE44 8005FA44 0000282D */  daddu $a1, $zero, $zero
func_8005FA48:
/* 03AE48 8005FA48 0C019F80 */  jal   osMotorAccess
/* 03AE4C 8005FA4C 00000000 */   nop   
/* 03AE50 8005FA50 08017EA3 */  j     func_8005FA8C
/* 03AE54 8005FA54 0040802D */   daddu $s0, $v0, $zero

.L8005FA58:
/* 03AE58 8005FA58 00862021 */  addu  $a0, $a0, $a2
/* 03AE5C 8005FA5C 00042080 */  sll   $a0, $a0, 2
/* 03AE60 8005FA60 00862021 */  addu  $a0, $a0, $a2
/* 03AE64 8005FA64 000420C0 */  sll   $a0, $a0, 3
/* 03AE68 8005FA68 3C02800E */  lui   $v0, 0x800e
/* 03AE6C 8005FA6C 2442AAD8 */  addiu $v0, $v0, -0x5528
/* 03AE70 8005FA70 00822021 */  addu  $a0, $a0, $v0
/* 03AE74 8005FA74 0C019F80 */  jal   osMotorAccess
/* 03AE78 8005FA78 0000282D */   daddu $a1, $zero, $zero
/* 03AE7C 8005FA7C 0040802D */  daddu $s0, $v0, $zero
/* 03AE80 8005FA80 24020001 */  addiu $v0, $zero, 1
/* 03AE84 8005FA84 A2420006 */  sb    $v0, 6($s2)
/* 03AE88 8005FA88 A6530004 */  sh    $s3, 4($s2)
func_8005FA8C:
/* 03AE8C 8005FA8C 96420002 */  lhu   $v0, 2($s2)
/* 03AE90 8005FA90 2442FFFF */  addiu $v0, $v0, -1
/* 03AE94 8005FA94 08017EBC */  j     func_8005FAF0
/* 03AE98 8005FA98 A6420002 */   sh    $v0, 2($s2)

.L8005FA9C:
/* 03AE9C 8005FA9C 3C04800E */  lui   $a0, 0x800e
/* 03AEA0 8005FAA0 2484AC78 */  addiu $a0, $a0, -0x5388
/* 03AEA4 8005FAA4 00061040 */  sll   $v0, $a2, 1
/* 03AEA8 8005FAA8 00461021 */  addu  $v0, $v0, $a2
/* 03AEAC 8005FAAC 00021080 */  sll   $v0, $v0, 2
/* 03AEB0 8005FAB0 00461021 */  addu  $v0, $v0, $a2
/* 03AEB4 8005FAB4 000210C0 */  sll   $v0, $v0, 3
/* 03AEB8 8005FAB8 3C03800E */  lui   $v1, 0x800e
/* 03AEBC 8005FABC 2463AAD8 */  addiu $v1, $v1, -0x5528
/* 03AEC0 8005FAC0 00438821 */  addu  $s1, $v0, $v1
/* 03AEC4 8005FAC4 0C019FD1 */  jal   osMotorInit
/* 03AEC8 8005FAC8 0220282D */   daddu $a1, $s1, $zero
/* 03AECC 8005FACC 0040802D */  daddu $s0, $v0, $zero
/* 03AED0 8005FAD0 16000005 */  bnez  $s0, .L8005FAE8
/* 03AED4 8005FAD4 24020001 */   addiu $v0, $zero, 1
/* 03AED8 8005FAD8 0220202D */  daddu $a0, $s1, $zero
/* 03AEDC 8005FADC 0C019F80 */  jal   osMotorAccess
/* 03AEE0 8005FAE0 0000282D */   daddu $a1, $zero, $zero
/* 03AEE4 8005FAE4 24020001 */  addiu $v0, $zero, 1
.L8005FAE8:
/* 03AEE8 8005FAE8 A2420006 */  sb    $v0, 6($s2)
/* 03AEEC 8005FAEC A6530004 */  sh    $s3, 4($s2)
func_8005FAF0:
.L8005FAF0:
/* 03AEF0 8005FAF0 0200102D */  daddu $v0, $s0, $zero
func_8005FAF4:
/* 03AEF4 8005FAF4 8FBF0020 */  lw    $ra, 0x20($sp)
/* 03AEF8 8005FAF8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 03AEFC 8005FAFC 8FB20018 */  lw    $s2, 0x18($sp)
/* 03AF00 8005FB00 8FB10014 */  lw    $s1, 0x14($sp)
/* 03AF04 8005FB04 8FB00010 */  lw    $s0, 0x10($sp)
/* 03AF08 8005FB08 03E00008 */  jr    $ra
/* 03AF0C 8005FB0C 27BD0028 */   addiu $sp, $sp, 0x28

contRmbControl:
/* 03AF10 8005FB10 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03AF14 8005FB14 AFB10014 */  sw    $s1, 0x14($sp)
/* 03AF18 8005FB18 0000882D */  daddu $s1, $zero, $zero
/* 03AF1C 8005FB1C AFB40020 */  sw    $s4, 0x20($sp)
/* 03AF20 8005FB20 24140002 */  addiu $s4, $zero, 2
/* 03AF24 8005FB24 AFB50024 */  sw    $s5, 0x24($sp)
/* 03AF28 8005FB28 24150001 */  addiu $s5, $zero, 1
/* 03AF2C 8005FB2C AFB3001C */  sw    $s3, 0x1c($sp)
/* 03AF30 8005FB30 0220982D */  daddu $s3, $s1, $zero
/* 03AF34 8005FB34 AFB20018 */  sw    $s2, 0x18($sp)
/* 03AF38 8005FB38 0220902D */  daddu $s2, $s1, $zero
/* 03AF3C 8005FB3C AFBF0028 */  sw    $ra, 0x28($sp)
/* 03AF40 8005FB40 AFB00010 */  sw    $s0, 0x10($sp)
.L8005FB44:
/* 03AF44 8005FB44 3C02800B */  lui   $v0, 0x800b
/* 03AF48 8005FB48 24421D40 */  addiu $v0, $v0, 0x1d40
/* 03AF4C 8005FB4C 02428021 */  addu  $s0, $s2, $v0
/* 03AF50 8005FB50 92030007 */  lbu   $v1, 7($s0)
/* 03AF54 8005FB54 10740015 */  beq   $v1, $s4, .L8005FBAC
/* 03AF58 8005FB58 28620003 */   slti  $v0, $v1, 3
/* 03AF5C 8005FB5C 50400007 */  beql  $v0, $zero, .L8005FB7C
/* 03AF60 8005FB60 28620083 */   slti  $v0, $v1, 0x83
/* 03AF64 8005FB64 5060003B */  beql  $v1, $zero, .L8005FC54
/* 03AF68 8005FB68 26730068 */   addiu $s3, $s3, 0x68
/* 03AF6C 8005FB6C 10750009 */  beq   $v1, $s5, .L8005FB94
/* 03AF70 8005FB70 0200202D */   daddu $a0, $s0, $zero
/* 03AF74 8005FB74 08017F15 */  j     func_8005FC54
/* 03AF78 8005FB78 26730068 */   addiu $s3, $s3, 0x68

.L8005FB7C:
/* 03AF7C 8005FB7C 10400034 */  beqz  $v0, .L8005FC50
/* 03AF80 8005FB80 28620081 */   slti  $v0, $v1, 0x81
/* 03AF84 8005FB84 54400033 */  bnezl $v0, .L8005FC54
/* 03AF88 8005FB88 26730068 */   addiu $s3, $s3, 0x68
/* 03AF8C 8005FB8C 08017F0E */  j     func_8005FC38
/* 03AF90 8005FB90 00000000 */   nop   

.L8005FB94:
/* 03AF94 8005FB94 0C017E48 */  jal   osMotorStop
/* 03AF98 8005FB98 0220282D */   daddu $a1, $s1, $zero
/* 03AF9C 8005FB9C 5440002C */  bnezl $v0, .L8005FC50
/* 03AFA0 8005FBA0 A2000007 */   sb    $zero, 7($s0)
/* 03AFA4 8005FBA4 08017F15 */  j     func_8005FC54
/* 03AFA8 8005FBA8 26730068 */   addiu $s3, $s3, 0x68

.L8005FBAC:
/* 03AFAC 8005FBAC 92020008 */  lbu   $v0, 8($s0)
/* 03AFB0 8005FBB0 14400019 */  bnez  $v0, .L8005FC18
/* 03AFB4 8005FBB4 0200202D */   daddu $a0, $s0, $zero
/* 03AFB8 8005FBB8 96030004 */  lhu   $v1, 4($s0)
/* 03AFBC 8005FBBC 3C028009 */  lui   $v0, 0x8009
/* 03AFC0 8005FBC0 8C423CE0 */  lw    $v0, 0x3ce0($v0)
/* 03AFC4 8005FBC4 14400002 */  bnez  $v0, .L8005FBD0
/* 03AFC8 8005FBC8 0062001B */   divu  $zero, $v1, $v0
/* 03AFCC 8005FBCC 0007000D */  break 7
.L8005FBD0:
/* 03AFD0 8005FBD0 00001010 */  mfhi  $v0
/* 03AFD4 8005FBD4 1440000C */  bnez  $v0, .L8005FC08
/* 03AFD8 8005FBD8 00000000 */   nop   
/* 03AFDC 8005FBDC 3C04800E */  lui   $a0, 0x800e
/* 03AFE0 8005FBE0 2484AC78 */  addiu $a0, $a0, -0x5388
/* 03AFE4 8005FBE4 3C05800E */  lui   $a1, 0x800e
/* 03AFE8 8005FBE8 24A5AAD8 */  addiu $a1, $a1, -0x5528
/* 03AFEC 8005FBEC 02652821 */  addu  $a1, $s3, $a1
/* 03AFF0 8005FBF0 0C019FD1 */  jal   osMotorInit
/* 03AFF4 8005FBF4 0220302D */   daddu $a2, $s1, $zero
/* 03AFF8 8005FBF8 14400003 */  bnez  $v0, .L8005FC08
/* 03AFFC 8005FBFC 00000000 */   nop   
/* 03B000 8005FC00 A2150008 */  sb    $s5, 8($s0)
/* 03B004 8005FC04 A2140009 */  sb    $s4, 9($s0)
.L8005FC08:
/* 03B008 8005FC08 96020004 */  lhu   $v0, 4($s0)
/* 03B00C 8005FC0C 24420001 */  addiu $v0, $v0, 1
/* 03B010 8005FC10 08017F14 */  j     func_8005FC50
/* 03B014 8005FC14 A6020004 */   sh    $v0, 4($s0)

.L8005FC18:
/* 03B018 8005FC18 0C017E48 */  jal   osMotorStop
/* 03B01C 8005FC1C 0220282D */   daddu $a1, $s1, $zero
/* 03B020 8005FC20 5040000C */  beql  $v0, $zero, .L8005FC54
/* 03B024 8005FC24 26730068 */   addiu $s3, $s3, 0x68
/* 03B028 8005FC28 A6110004 */  sh    $s1, 4($s0)
/* 03B02C 8005FC2C A2000008 */  sb    $zero, 8($s0)
/* 03B030 8005FC30 08017F14 */  j     func_8005FC50
/* 03B034 8005FC34 A2000009 */   sb    $zero, 9($s0)

func_8005FC38:
/* 03B038 8005FC38 92020009 */  lbu   $v0, 9($s0)
/* 03B03C 8005FC3C 54540005 */  bnel  $v0, $s4, .L8005FC54
/* 03B040 8005FC40 26730068 */   addiu $s3, $s3, 0x68
/* 03B044 8005FC44 0200202D */  daddu $a0, $s0, $zero
/* 03B048 8005FC48 0C017E48 */  jal   osMotorStop
/* 03B04C 8005FC4C 0220282D */   daddu $a1, $s1, $zero
func_8005FC50:
.L8005FC50:
/* 03B050 8005FC50 26730068 */  addiu $s3, $s3, 0x68
func_8005FC54:
.L8005FC54:
/* 03B054 8005FC54 26310001 */  addiu $s1, $s1, 1
/* 03B058 8005FC58 2E220004 */  sltiu $v0, $s1, 4
/* 03B05C 8005FC5C 1440FFB9 */  bnez  $v0, .L8005FB44
/* 03B060 8005FC60 2652000A */   addiu $s2, $s2, 0xa
/* 03B064 8005FC64 8FBF0028 */  lw    $ra, 0x28($sp)
/* 03B068 8005FC68 8FB50024 */  lw    $s5, 0x24($sp)
/* 03B06C 8005FC6C 8FB40020 */  lw    $s4, 0x20($sp)
/* 03B070 8005FC70 8FB3001C */  lw    $s3, 0x1c($sp)
/* 03B074 8005FC74 8FB20018 */  lw    $s2, 0x18($sp)
/* 03B078 8005FC78 8FB10014 */  lw    $s1, 0x14($sp)
/* 03B07C 8005FC7C 8FB00010 */  lw    $s0, 0x10($sp)
/* 03B080 8005FC80 0000102D */  daddu $v0, $zero, $zero
/* 03B084 8005FC84 03E00008 */  jr    $ra
/* 03B088 8005FC88 27BD0030 */   addiu $sp, $sp, 0x30

nuContRmbMgrInit:
/* 03B08C 8005FC8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03B090 8005FC90 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03B094 8005FC94 0000202D */  daddu $a0, $zero, $zero
/* 03B098 8005FC98 24050002 */  addiu $a1, $zero, 2
/* 03B09C 8005FC9C 0080182D */  daddu $v1, $a0, $zero
.L8005FCA0:
/* 03B0A0 8005FCA0 3C01800B */  lui   $at, 0x800b
/* 03B0A4 8005FCA4 00230821 */  addu  $at, $at, $v1
/* 03B0A8 8005FCA8 A0251D46 */  sb    $a1, 0x1d46($at)
/* 03B0AC 8005FCAC 3C01800B */  lui   $at, 0x800b
/* 03B0B0 8005FCB0 00230821 */  addu  $at, $at, $v1
/* 03B0B4 8005FCB4 A0201D47 */  sb    $zero, 0x1d47($at)
/* 03B0B8 8005FCB8 3C01800B */  lui   $at, 0x800b
/* 03B0BC 8005FCBC 00230821 */  addu  $at, $at, $v1
/* 03B0C0 8005FCC0 A4241D44 */  sh    $a0, 0x1d44($at)
/* 03B0C4 8005FCC4 24840001 */  addiu $a0, $a0, 1
/* 03B0C8 8005FCC8 2C820004 */  sltiu $v0, $a0, 4
/* 03B0CC 8005FCCC 1440FFF4 */  bnez  $v0, .L8005FCA0
/* 03B0D0 8005FCD0 2463000A */   addiu $v1, $v1, 0xa
/* 03B0D4 8005FCD4 3C048009 */  lui   $a0, 0x8009
/* 03B0D8 8005FCD8 0C0180FC */  jal   nuSiCallBackAdd
/* 03B0DC 8005FCDC 24843D00 */   addiu $a0, $a0, 0x3d00
/* 03B0E0 8005FCE0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03B0E4 8005FCE4 03E00008 */  jr    $ra
/* 03B0E8 8005FCE8 27BD0018 */   addiu $sp, $sp, 0x18

nuContRmbMgrRemove:
/* 03B0EC 8005FCEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03B0F0 8005FCF0 3C048009 */  lui   $a0, 0x8009
/* 03B0F4 8005FCF4 24843D00 */  addiu $a0, $a0, 0x3d00
/* 03B0F8 8005FCF8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03B0FC 8005FCFC 0C018124 */  jal   nuSiCallBackRemove
/* 03B100 8005FD00 00000000 */   nop   
/* 03B104 8005FD04 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03B108 8005FD08 03E00008 */  jr    $ra
/* 03B10C 8005FD0C 27BD0018 */   addiu $sp, $sp, 0x18

contRmbCheckMesg:
/* 03B110 8005FD10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03B114 8005FD14 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03B118 8005FD18 8C82000C */  lw    $v0, 0xc($a0)
/* 03B11C 8005FD1C 3C04800E */  lui   $a0, 0x800e
/* 03B120 8005FD20 2484AC78 */  addiu $a0, $a0, -0x5388
/* 03B124 8005FD24 90460000 */  lbu   $a2, ($v0)
/* 03B128 8005FD28 3C02800E */  lui   $v0, 0x800e
/* 03B12C 8005FD2C 2442AAD8 */  addiu $v0, $v0, -0x5528
/* 03B130 8005FD30 00062840 */  sll   $a1, $a2, 1
/* 03B134 8005FD34 00A62821 */  addu  $a1, $a1, $a2
/* 03B138 8005FD38 00052880 */  sll   $a1, $a1, 2
/* 03B13C 8005FD3C 00A62821 */  addu  $a1, $a1, $a2
/* 03B140 8005FD40 000528C0 */  sll   $a1, $a1, 3
/* 03B144 8005FD44 0C019FD1 */  jal   osMotorInit
/* 03B148 8005FD48 00A22821 */   addu  $a1, $a1, $v0
/* 03B14C 8005FD4C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03B150 8005FD50 03E00008 */  jr    $ra
/* 03B154 8005FD54 27BD0018 */   addiu $sp, $sp, 0x18

contRmbStartMesg:
/* 03B158 8005FD58 8C84000C */  lw    $a0, 0xc($a0)
/* 03B15C 8005FD5C 90830000 */  lbu   $v1, ($a0)
/* 03B160 8005FD60 8C850008 */  lw    $a1, 8($a0)
/* 03B164 8005FD64 00031080 */  sll   $v0, $v1, 2
/* 03B168 8005FD68 00431021 */  addu  $v0, $v0, $v1
/* 03B16C 8005FD6C 90A30006 */  lbu   $v1, 6($a1)
/* 03B170 8005FD70 00021040 */  sll   $v0, $v0, 1
/* 03B174 8005FD74 3C01800B */  lui   $at, 0x800b
/* 03B178 8005FD78 00220821 */  addu  $at, $at, $v0
/* 03B17C 8005FD7C A0231D46 */  sb    $v1, 0x1d46($at)
/* 03B180 8005FD80 90830000 */  lbu   $v1, ($a0)
/* 03B184 8005FD84 00031080 */  sll   $v0, $v1, 2
/* 03B188 8005FD88 00431021 */  addu  $v0, $v0, $v1
/* 03B18C 8005FD8C 94A30002 */  lhu   $v1, 2($a1)
/* 03B190 8005FD90 00021040 */  sll   $v0, $v0, 1
/* 03B194 8005FD94 3C01800B */  lui   $at, 0x800b
/* 03B198 8005FD98 00220821 */  addu  $at, $at, $v0
/* 03B19C 8005FD9C A4231D42 */  sh    $v1, 0x1d42($at)
/* 03B1A0 8005FDA0 90830000 */  lbu   $v1, ($a0)
/* 03B1A4 8005FDA4 00031080 */  sll   $v0, $v1, 2
/* 03B1A8 8005FDA8 00431021 */  addu  $v0, $v0, $v1
/* 03B1AC 8005FDAC 94A30000 */  lhu   $v1, ($a1)
/* 03B1B0 8005FDB0 00021040 */  sll   $v0, $v0, 1
/* 03B1B4 8005FDB4 3C01800B */  lui   $at, 0x800b
/* 03B1B8 8005FDB8 00220821 */  addu  $at, $at, $v0
/* 03B1BC 8005FDBC A4231D40 */  sh    $v1, 0x1d40($at)
/* 03B1C0 8005FDC0 90830000 */  lbu   $v1, ($a0)
/* 03B1C4 8005FDC4 00031080 */  sll   $v0, $v1, 2
/* 03B1C8 8005FDC8 00431021 */  addu  $v0, $v0, $v1
/* 03B1CC 8005FDCC 00021040 */  sll   $v0, $v0, 1
/* 03B1D0 8005FDD0 3C01800B */  lui   $at, 0x800b
/* 03B1D4 8005FDD4 00220821 */  addu  $at, $at, $v0
/* 03B1D8 8005FDD8 A4201D44 */  sh    $zero, 0x1d44($at)
/* 03B1DC 8005FDDC 03E00008 */  jr    $ra
/* 03B1E0 8005FDE0 0000102D */   daddu $v0, $zero, $zero

/* 03B1E4 8005FDE4 8C82000C */  lw    $v0, 0xc($a0)
/* 03B1E8 8005FDE8 90430000 */  lbu   $v1, ($v0)
/* 03B1EC 8005FDEC 00031080 */  sll   $v0, $v1, 2
/* 03B1F0 8005FDF0 00431021 */  addu  $v0, $v0, $v1
/* 03B1F4 8005FDF4 00021040 */  sll   $v0, $v0, 1
/* 03B1F8 8005FDF8 3C01800B */  lui   $at, 0x800b
/* 03B1FC 8005FDFC 00220821 */  addu  $at, $at, $v0
/* 03B200 8005FE00 A4201D42 */  sh    $zero, 0x1d42($at)
/* 03B204 8005FE04 03E00008 */  jr    $ra
/* 03B208 8005FE08 0000102D */   daddu $v0, $zero, $zero

/* 03B20C 8005FE0C 0000282D */  daddu $a1, $zero, $zero
/* 03B210 8005FE10 24060004 */  addiu $a2, $zero, 4
/* 03B214 8005FE14 3C03800B */  lui   $v1, 0x800b
/* 03B218 8005FE18 24631D47 */  addiu $v1, $v1, 0x1d47
/* 03B21C 8005FE1C 00A0202D */  daddu $a0, $a1, $zero
.L8005FE20:
/* 03B220 8005FE20 3C01800B */  lui   $at, 0x800b
/* 03B224 8005FE24 00240821 */  addu  $at, $at, $a0
/* 03B228 8005FE28 A0261D46 */  sb    $a2, 0x1d46($at)
/* 03B22C 8005FE2C 2484000A */  addiu $a0, $a0, 0xa
/* 03B230 8005FE30 90620000 */  lbu   $v0, ($v1)
/* 03B234 8005FE34 24A50001 */  addiu $a1, $a1, 1
/* 03B238 8005FE38 34420080 */  ori   $v0, $v0, 0x80
/* 03B23C 8005FE3C A0620000 */  sb    $v0, ($v1)
/* 03B240 8005FE40 2CA20004 */  sltiu $v0, $a1, 4
/* 03B244 8005FE44 1440FFF6 */  bnez  $v0, .L8005FE20
/* 03B248 8005FE48 2463000A */   addiu $v1, $v1, 0xa
/* 03B24C 8005FE4C 03E00008 */  jr    $ra
/* 03B250 8005FE50 0000102D */   daddu $v0, $zero, $zero

/* 03B254 8005FE54 0000202D */  daddu $a0, $zero, $zero
/* 03B258 8005FE58 3C03800B */  lui   $v1, 0x800b
/* 03B25C 8005FE5C 24631D47 */  addiu $v1, $v1, 0x1d47
.L8005FE60:
/* 03B260 8005FE60 90620000 */  lbu   $v0, ($v1)
/* 03B264 8005FE64 24840001 */  addiu $a0, $a0, 1
/* 03B268 8005FE68 3042007F */  andi  $v0, $v0, 0x7f
/* 03B26C 8005FE6C A0620000 */  sb    $v0, ($v1)
/* 03B270 8005FE70 2C820004 */  sltiu $v0, $a0, 4
/* 03B274 8005FE74 1440FFFA */  bnez  $v0, .L8005FE60
/* 03B278 8005FE78 2463000A */   addiu $v1, $v1, 0xa
/* 03B27C 8005FE7C 03E00008 */  jr    $ra
/* 03B280 8005FE80 0000102D */   daddu $v0, $zero, $zero

/* 03B284 8005FE84 00000000 */  nop   
/* 03B288 8005FE88 00000000 */  nop   
/* 03B28C 8005FE8C 00000000 */  nop   
