.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel make_spinning_player_display_list
/* 07ABB4 800E1704 27BDFE80 */  addiu $sp, $sp, -0x180
/* 07ABB8 800E1708 F7B60158 */  sdc1  $f22, 0x158($sp)
/* 07ABBC 800E170C 4480B000 */  mtc1  $zero, $f22
/* 07ABC0 800E1710 AFB10134 */  sw    $s1, 0x134($sp)
/* 07ABC4 800E1714 3C118011 */  lui   $s1, 0x8011
/* 07ABC8 800E1718 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 07ABCC 800E171C AFB3013C */  sw    $s3, 0x13c($sp)
/* 07ABD0 800E1720 0000982D */  daddu $s3, $zero, $zero
/* 07ABD4 800E1724 AFB60148 */  sw    $s6, 0x148($sp)
/* 07ABD8 800E1728 3C16800B */  lui   $s6, 0x800b
/* 07ABDC 800E172C 26D61D80 */  addiu $s6, $s6, 0x1d80
/* 07ABE0 800E1730 AFB50144 */  sw    $s5, 0x144($sp)
/* 07ABE4 800E1734 241500FF */  addiu $s5, $zero, 0xff
/* 07ABE8 800E1738 AFB00130 */  sw    $s0, 0x130($sp)
/* 07ABEC 800E173C 27B000A0 */  addiu $s0, $sp, 0xa0
/* 07ABF0 800E1740 AFB20138 */  sw    $s2, 0x138($sp)
/* 07ABF4 800E1744 27B20060 */  addiu $s2, $sp, 0x60
/* 07ABF8 800E1748 AFB40140 */  sw    $s4, 0x140($sp)
/* 07ABFC 800E174C 27B400E0 */  addiu $s4, $sp, 0xe0
/* 07AC00 800E1750 AFBF014C */  sw    $ra, 0x14c($sp)
/* 07AC04 800E1754 F7BE0178 */  sdc1  $f30, 0x178($sp)
/* 07AC08 800E1758 F7BC0170 */  sdc1  $f28, 0x170($sp)
/* 07AC0C 800E175C F7BA0168 */  sdc1  $f26, 0x168($sp)
/* 07AC10 800E1760 F7B80160 */  sdc1  $f24, 0x160($sp)
/* 07AC14 800E1764 F7B40150 */  sdc1  $f20, 0x150($sp)
.L800E1768:
/* 07AC18 800E1768 3C03800A */  lui   $v1, 0x800a
/* 07AC1C 800E176C 8463A634 */  lh    $v1, -0x59cc($v1)
/* 07AC20 800E1770 00031080 */  sll   $v0, $v1, 2
/* 07AC24 800E1774 00431021 */  addu  $v0, $v0, $v1
/* 07AC28 800E1778 00021080 */  sll   $v0, $v0, 2
/* 07AC2C 800E177C 00431023 */  subu  $v0, $v0, $v1
/* 07AC30 800E1780 000218C0 */  sll   $v1, $v0, 3
/* 07AC34 800E1784 00431021 */  addu  $v0, $v0, $v1
/* 07AC38 800E1788 000210C0 */  sll   $v0, $v0, 3
/* 07AC3C 800E178C 00561021 */  addu  $v0, $v0, $s6
/* 07AC40 800E1790 C440006C */  lwc1  $f0, 0x6c($v0)
/* 07AC44 800E1794 16600064 */  bnez  $s3, .L800E1928
/* 07AC48 800E1798 46000507 */   neg.s $f20, $f0
/* 07AC4C 800E179C C62200A8 */  lwc1  $f2, 0xa8($s1)
/* 07AC50 800E17A0 3C0142B4 */  lui   $at, 0x42b4
/* 07AC54 800E17A4 44810000 */  mtc1  $at, $f0
/* 07AC58 800E17A8 00000000 */  nop   
/* 07AC5C 800E17AC 4602003C */  c.lt.s $f0, $f2
/* 07AC60 800E17B0 00000000 */  nop   
/* 07AC64 800E17B4 4500000A */  bc1f  .L800E17E0
/* 07AC68 800E17B8 00000000 */   nop   
/* 07AC6C 800E17BC 3C014334 */  lui   $at, 0x4334
/* 07AC70 800E17C0 44812000 */  mtc1  $at, $f4
/* 07AC74 800E17C4 00000000 */  nop   
/* 07AC78 800E17C8 4604103E */  c.le.s $f2, $f4
/* 07AC7C 800E17CC 00000000 */  nop   
/* 07AC80 800E17D0 45000003 */  bc1f  .L800E17E0
/* 07AC84 800E17D4 00000000 */   nop   
/* 07AC88 800E17D8 0803861C */  j     .L800E1870
/* 07AC8C 800E17DC 46022501 */   sub.s $f20, $f4, $f2

.L800E17E0:
/* 07AC90 800E17E0 C62000A8 */  lwc1  $f0, 0xa8($s1)
/* 07AC94 800E17E4 3C014334 */  lui   $at, 0x4334
/* 07AC98 800E17E8 44812000 */  mtc1  $at, $f4
/* 07AC9C 800E17EC 00000000 */  nop   
/* 07ACA0 800E17F0 4600203C */  c.lt.s $f4, $f0
/* 07ACA4 800E17F4 00000000 */  nop   
/* 07ACA8 800E17F8 4500000C */  bc1f  .L800E182C
/* 07ACAC 800E17FC 00000000 */   nop   
/* 07ACB0 800E1800 3C014387 */  lui   $at, 0x4387
/* 07ACB4 800E1804 44812000 */  mtc1  $at, $f4
/* 07ACB8 800E1808 00000000 */  nop   
/* 07ACBC 800E180C 4604003E */  c.le.s $f0, $f4
/* 07ACC0 800E1810 00000000 */  nop   
/* 07ACC4 800E1814 45000008 */  bc1f  .L800E1838
/* 07ACC8 800E1818 00000000 */   nop   
/* 07ACCC 800E181C 3C014334 */  lui   $at, 0x4334
/* 07ACD0 800E1820 44812000 */  mtc1  $at, $f4
/* 07ACD4 800E1824 0803861C */  j     .L800E1870
/* 07ACD8 800E1828 46040501 */   sub.s $f20, $f0, $f4

.L800E182C:
/* 07ACDC 800E182C 3C014387 */  lui   $at, 0x4387
/* 07ACE0 800E1830 44812000 */  mtc1  $at, $f4
/* 07ACE4 800E1834 00000000 */  nop   
.L800E1838:
/* 07ACE8 800E1838 4600203C */  c.lt.s $f4, $f0
/* 07ACEC 800E183C 00000000 */  nop   
/* 07ACF0 800E1840 4500000A */  bc1f  .L800E186C
/* 07ACF4 800E1844 00000000 */   nop   
/* 07ACF8 800E1848 3C0143B4 */  lui   $at, 0x43b4
/* 07ACFC 800E184C 44811000 */  mtc1  $at, $f2
/* 07AD00 800E1850 00000000 */  nop   
/* 07AD04 800E1854 4602003E */  c.le.s $f0, $f2
/* 07AD08 800E1858 00000000 */  nop   
/* 07AD0C 800E185C 45000003 */  bc1f  .L800E186C
/* 07AD10 800E1860 00000000 */   nop   
/* 07AD14 800E1864 0803861C */  j     .L800E1870
/* 07AD18 800E1868 46001501 */   sub.s $f20, $f2, $f0

.L800E186C:
/* 07AD1C 800E186C C63400A8 */  lwc1  $f20, 0xa8($s1)
.L800E1870:
/* 07AD20 800E1870 3C0141C8 */  lui   $at, 0x41c8
/* 07AD24 800E1874 44810000 */  mtc1  $at, $f0
/* 07AD28 800E1878 00000000 */  nop   
/* 07AD2C 800E187C 4600A003 */  div.s $f0, $f20, $f0
/* 07AD30 800E1880 4600010D */  trunc.w.s $f4, $f0
/* 07AD34 800E1884 44062000 */  mfc1  $a2, $f4
/* 07AD38 800E1888 00000000 */  nop   
/* 07AD3C 800E188C 00061100 */  sll   $v0, $a2, 4
/* 07AD40 800E1890 00461023 */  subu  $v0, $v0, $a2
/* 07AD44 800E1894 00021080 */  sll   $v0, $v0, 2
/* 07AD48 800E1898 02A23023 */  subu  $a2, $s5, $v0
/* 07AD4C 800E189C 28C20064 */  slti  $v0, $a2, 0x64
/* 07AD50 800E18A0 54400001 */  bnezl $v0, .L800E18A8
/* 07AD54 800E18A4 24060064 */   addiu $a2, $zero, 0x64
.L800E18A8:
/* 07AD58 800E18A8 0000202D */  daddu $a0, $zero, $zero
/* 07AD5C 800E18AC 24050006 */  addiu $a1, $zero, 6
/* 07AD60 800E18B0 00C0382D */  daddu $a3, $a2, $zero
/* 07AD64 800E18B4 AFA60010 */  sw    $a2, 0x10($sp)
/* 07AD68 800E18B8 AFB50014 */  sw    $s5, 0x14($sp)
/* 07AD6C 800E18BC 0C0B77FE */  jal   func_802DDFF8
/* 07AD70 800E18C0 AFA00018 */   sw    $zero, 0x18($sp)
/* 07AD74 800E18C4 4405A000 */  mfc1  $a1, $f20
/* 07AD78 800E18C8 4406B000 */  mfc1  $a2, $f22
/* 07AD7C 800E18CC 3C07BF80 */  lui   $a3, 0xbf80
/* 07AD80 800E18D0 0200202D */  daddu $a0, $s0, $zero
/* 07AD84 800E18D4 0C019EC8 */  jal   guRotateF
/* 07AD88 800E18D8 E7B60010 */   swc1  $f22, 0x10($sp)
/* 07AD8C 800E18DC C62C008C */  lwc1  $f12, 0x8c($s1)
/* 07AD90 800E18E0 0C00A6C9 */  jal   clamp_angle
/* 07AD94 800E18E4 00000000 */   nop   
/* 07AD98 800E18E8 44050000 */  mfc1  $a1, $f0
/* 07AD9C 800E18EC 4406B000 */  mfc1  $a2, $f22
/* 07ADA0 800E18F0 4407B000 */  mfc1  $a3, $f22
/* 07ADA4 800E18F4 3C013F80 */  lui   $at, 0x3f80
/* 07ADA8 800E18F8 44812000 */  mtc1  $at, $f4
/* 07ADAC 800E18FC 27A40020 */  addiu $a0, $sp, 0x20
/* 07ADB0 800E1900 0C019EC8 */  jal   guRotateF
/* 07ADB4 800E1904 E7A40010 */   swc1  $f4, 0x10($sp)
/* 07ADB8 800E1908 0200202D */  daddu $a0, $s0, $zero
/* 07ADBC 800E190C 27A50020 */  addiu $a1, $sp, 0x20
/* 07ADC0 800E1910 0C019D80 */  jal   guMtxCatF
/* 07ADC4 800E1914 00A0302D */   daddu $a2, $a1, $zero
/* 07ADC8 800E1918 C63E0028 */  lwc1  $f30, 0x28($s1)
/* 07ADCC 800E191C C638002C */  lwc1  $f24, 0x2c($s1)
/* 07ADD0 800E1920 0803867B */  j     .L800E19EC
/* 07ADD4 800E1924 C63C0030 */   lwc1  $f28, 0x30($s1)

.L800E1928:
/* 07ADD8 800E1928 0260202D */  daddu $a0, $s3, $zero
/* 07ADDC 800E192C 27A50120 */  addiu $a1, $sp, 0x120
/* 07ADE0 800E1930 27A60124 */  addiu $a2, $sp, 0x124
/* 07ADE4 800E1934 0C03964E */  jal   func_800E5938
/* 07ADE8 800E1938 27A70128 */   addiu $a3, $sp, 0x128
/* 07ADEC 800E193C 8FA60124 */  lw    $a2, 0x124($sp)
/* 07ADF0 800E1940 3C028000 */  lui   $v0, 0x8000
/* 07ADF4 800E1944 14C20004 */  bne   $a2, $v0, .L800E1958
/* 07ADF8 800E1948 46000686 */   mov.s $f26, $f0
/* 07ADFC 800E194C C638002C */  lwc1  $f24, 0x2c($s1)
/* 07AE00 800E1950 0803865A */  j     .L800E1968
/* 07AE04 800E1954 0000202D */   daddu $a0, $zero, $zero

.L800E1958:
/* 07AE08 800E1958 4486C000 */  mtc1  $a2, $f24
/* 07AE0C 800E195C 00000000 */  nop   
/* 07AE10 800E1960 4680C620 */  cvt.s.w $f24, $f24
/* 07AE14 800E1964 0000202D */  daddu $a0, $zero, $zero
.L800E1968:
/* 07AE18 800E1968 2405FFFF */  addiu $a1, $zero, -1
/* 07AE1C 800E196C 24060007 */  addiu $a2, $zero, 7
/* 07AE20 800E1970 0080382D */  daddu $a3, $a0, $zero
/* 07AE24 800E1974 C63E0028 */  lwc1  $f30, 0x28($s1)
/* 07AE28 800E1978 C63C0030 */  lwc1  $f28, 0x30($s1)
/* 07AE2C 800E197C 24020040 */  addiu $v0, $zero, 0x40
/* 07AE30 800E1980 AFA00010 */  sw    $zero, 0x10($sp)
/* 07AE34 800E1984 AFA00014 */  sw    $zero, 0x14($sp)
/* 07AE38 800E1988 AFA20018 */  sw    $v0, 0x18($sp)
/* 07AE3C 800E198C 0C0B77B9 */  jal   func_802DDEE4
/* 07AE40 800E1990 AFA0001C */   sw    $zero, 0x1c($sp)
/* 07AE44 800E1994 4405A000 */  mfc1  $a1, $f20
/* 07AE48 800E1998 4406B000 */  mfc1  $a2, $f22
/* 07AE4C 800E199C 3C07BF80 */  lui   $a3, 0xbf80
/* 07AE50 800E19A0 27A40020 */  addiu $a0, $sp, 0x20
/* 07AE54 800E19A4 0C019EC8 */  jal   guRotateF
/* 07AE58 800E19A8 E7B60010 */   swc1  $f22, 0x10($sp)
/* 07AE5C 800E19AC 4405A000 */  mfc1  $a1, $f20
/* 07AE60 800E19B0 4406B000 */  mfc1  $a2, $f22
/* 07AE64 800E19B4 3C07BF80 */  lui   $a3, 0xbf80
/* 07AE68 800E19B8 0200202D */  daddu $a0, $s0, $zero
/* 07AE6C 800E19BC 0C019EC8 */  jal   guRotateF
/* 07AE70 800E19C0 E7B60010 */   swc1  $f22, 0x10($sp)
/* 07AE74 800E19C4 4405D000 */  mfc1  $a1, $f26
/* 07AE78 800E19C8 4406B000 */  mfc1  $a2, $f22
/* 07AE7C 800E19CC 3C073F80 */  lui   $a3, 0x3f80
/* 07AE80 800E19D0 27A40020 */  addiu $a0, $sp, 0x20
/* 07AE84 800E19D4 0C019EC8 */  jal   guRotateF
/* 07AE88 800E19D8 E7B60010 */   swc1  $f22, 0x10($sp)
/* 07AE8C 800E19DC 0200202D */  daddu $a0, $s0, $zero
/* 07AE90 800E19E0 27A50020 */  addiu $a1, $sp, 0x20
/* 07AE94 800E19E4 0C019D80 */  jal   guMtxCatF
/* 07AE98 800E19E8 00A0302D */   daddu $a2, $a1, $zero
.L800E19EC:
/* 07AE9C 800E19EC 862200B0 */  lh    $v0, 0xb0($s1)
/* 07AEA0 800E19F0 3C013F00 */  lui   $at, 0x3f00
/* 07AEA4 800E19F4 44812000 */  mtc1  $at, $f4
/* 07AEA8 800E19F8 00021023 */  negu  $v0, $v0
/* 07AEAC 800E19FC 44820000 */  mtc1  $v0, $f0
/* 07AEB0 800E1A00 00000000 */  nop   
/* 07AEB4 800E1A04 46800020 */  cvt.s.w $f0, $f0
/* 07AEB8 800E1A08 46040102 */  mul.s $f4, $f0, $f4
/* 07AEBC 800E1A0C 00000000 */  nop   
/* 07AEC0 800E1A10 4405B000 */  mfc1  $a1, $f22
/* 07AEC4 800E1A14 4407B000 */  mfc1  $a3, $f22
/* 07AEC8 800E1A18 44062000 */  mfc1  $a2, $f4
/* 07AECC 800E1A1C 0C019E40 */  jal   guTranslateF
/* 07AED0 800E1A20 0240202D */   daddu $a0, $s2, $zero
/* 07AED4 800E1A24 0240202D */  daddu $a0, $s2, $zero
/* 07AED8 800E1A28 27A50020 */  addiu $a1, $sp, 0x20
/* 07AEDC 800E1A2C 0C019D80 */  jal   guMtxCatF
/* 07AEE0 800E1A30 00A0302D */   daddu $a2, $a1, $zero
/* 07AEE4 800E1A34 4405A000 */  mfc1  $a1, $f20
/* 07AEE8 800E1A38 4406B000 */  mfc1  $a2, $f22
/* 07AEEC 800E1A3C 3C073F80 */  lui   $a3, 0x3f80
/* 07AEF0 800E1A40 0200202D */  daddu $a0, $s0, $zero
/* 07AEF4 800E1A44 0C019EC8 */  jal   guRotateF
/* 07AEF8 800E1A48 E7B60010 */   swc1  $f22, 0x10($sp)
/* 07AEFC 800E1A4C 27A40020 */  addiu $a0, $sp, 0x20
/* 07AF00 800E1A50 0200282D */  daddu $a1, $s0, $zero
/* 07AF04 800E1A54 0C019D80 */  jal   guMtxCatF
/* 07AF08 800E1A58 0080302D */   daddu $a2, $a0, $zero
/* 07AF0C 800E1A5C 8E2500A8 */  lw    $a1, 0xa8($s1)
/* 07AF10 800E1A60 4406B000 */  mfc1  $a2, $f22
/* 07AF14 800E1A64 3C073F80 */  lui   $a3, 0x3f80
/* 07AF18 800E1A68 0200202D */  daddu $a0, $s0, $zero
/* 07AF1C 800E1A6C 0C019EC8 */  jal   guRotateF
/* 07AF20 800E1A70 E7B60010 */   swc1  $f22, 0x10($sp)
/* 07AF24 800E1A74 27A40020 */  addiu $a0, $sp, 0x20
/* 07AF28 800E1A78 0200282D */  daddu $a1, $s0, $zero
/* 07AF2C 800E1A7C 0C019D80 */  jal   guMtxCatF
/* 07AF30 800E1A80 0080302D */   daddu $a2, $a0, $zero
/* 07AF34 800E1A84 862200B0 */  lh    $v0, 0xb0($s1)
/* 07AF38 800E1A88 3C013F00 */  lui   $at, 0x3f00
/* 07AF3C 800E1A8C 44812000 */  mtc1  $at, $f4
/* 07AF40 800E1A90 44820000 */  mtc1  $v0, $f0
/* 07AF44 800E1A94 00000000 */  nop   
/* 07AF48 800E1A98 46800020 */  cvt.s.w $f0, $f0
/* 07AF4C 800E1A9C 46040102 */  mul.s $f4, $f0, $f4
/* 07AF50 800E1AA0 00000000 */  nop   
/* 07AF54 800E1AA4 4405B000 */  mfc1  $a1, $f22
/* 07AF58 800E1AA8 4407B000 */  mfc1  $a3, $f22
/* 07AF5C 800E1AAC 44062000 */  mfc1  $a2, $f4
/* 07AF60 800E1AB0 0C019E40 */  jal   guTranslateF
/* 07AF64 800E1AB4 0240202D */   daddu $a0, $s2, $zero
/* 07AF68 800E1AB8 27A40020 */  addiu $a0, $sp, 0x20
/* 07AF6C 800E1ABC 0240282D */  daddu $a1, $s2, $zero
/* 07AF70 800E1AC0 0C019D80 */  jal   guMtxCatF
/* 07AF74 800E1AC4 0080302D */   daddu $a2, $a0, $zero
/* 07AF78 800E1AC8 3C013F36 */  lui   $at, 0x3f36
/* 07AF7C 800E1ACC 3421DB6E */  ori   $at, $at, 0xdb6e
/* 07AF80 800E1AD0 44810000 */  mtc1  $at, $f0
/* 07AF84 800E1AD4 00000000 */  nop   
/* 07AF88 800E1AD8 44050000 */  mfc1  $a1, $f0
/* 07AF8C 800E1ADC 0280202D */  daddu $a0, $s4, $zero
/* 07AF90 800E1AE0 00A0302D */  daddu $a2, $a1, $zero
/* 07AF94 800E1AE4 0C019DF0 */  jal   guScaleF
/* 07AF98 800E1AE8 00A0382D */   daddu $a3, $a1, $zero
/* 07AF9C 800E1AEC 27A40020 */  addiu $a0, $sp, 0x20
/* 07AFA0 800E1AF0 0280282D */  daddu $a1, $s4, $zero
/* 07AFA4 800E1AF4 0C019D80 */  jal   guMtxCatF
/* 07AFA8 800E1AF8 0080302D */   daddu $a2, $a0, $zero
/* 07AFAC 800E1AFC 4405F000 */  mfc1  $a1, $f30
/* 07AFB0 800E1B00 4406C000 */  mfc1  $a2, $f24
/* 07AFB4 800E1B04 4407E000 */  mfc1  $a3, $f28
/* 07AFB8 800E1B08 0C019E40 */  jal   guTranslateF
/* 07AFBC 800E1B0C 0240202D */   daddu $a0, $s2, $zero
/* 07AFC0 800E1B10 27A40020 */  addiu $a0, $sp, 0x20
/* 07AFC4 800E1B14 0240282D */  daddu $a1, $s2, $zero
/* 07AFC8 800E1B18 0C019D80 */  jal   guMtxCatF
/* 07AFCC 800E1B1C 0080302D */   daddu $a2, $a0, $zero
/* 07AFD0 800E1B20 C62200A8 */  lwc1  $f2, 0xa8($s1)
/* 07AFD4 800E1B24 3C0142B4 */  lui   $at, 0x42b4
/* 07AFD8 800E1B28 44810000 */  mtc1  $at, $f0
/* 07AFDC 800E1B2C 00000000 */  nop   
/* 07AFE0 800E1B30 4602003E */  c.le.s $f0, $f2
/* 07AFE4 800E1B34 00000000 */  nop   
/* 07AFE8 800E1B38 45000008 */  bc1f  .L800E1B5C
/* 07AFEC 800E1B3C 0000202D */   daddu $a0, $zero, $zero
/* 07AFF0 800E1B40 3C014387 */  lui   $at, 0x4387
/* 07AFF4 800E1B44 44812000 */  mtc1  $at, $f4
/* 07AFF8 800E1B48 00000000 */  nop   
/* 07AFFC 800E1B4C 4604103C */  c.lt.s $f2, $f4
/* 07B000 800E1B50 00000000 */  nop   
/* 07B004 800E1B54 45030001 */  bc1tl .L800E1B5C
/* 07B008 800E1B58 3C041000 */   lui   $a0, 0x1000
.L800E1B5C:
/* 07B00C 800E1B5C 27A20020 */  addiu $v0, $sp, 0x20
/* 07B010 800E1B60 AFA20010 */  sw    $v0, 0x10($sp)
/* 07B014 800E1B64 0000282D */  daddu $a1, $zero, $zero
/* 07B018 800E1B68 00A0302D */  daddu $a2, $a1, $zero
/* 07B01C 800E1B6C 0C0B7710 */  jal   render_sprite
/* 07B020 800E1B70 00A0382D */   daddu $a3, $a1, $zero
/* 07B024 800E1B74 26730001 */  addiu $s3, $s3, 1
/* 07B028 800E1B78 2A620002 */  slti  $v0, $s3, 2
/* 07B02C 800E1B7C 1440FEFA */  bnez  $v0, .L800E1768
/* 07B030 800E1B80 00000000 */   nop   
/* 07B034 800E1B84 8FBF014C */  lw    $ra, 0x14c($sp)
/* 07B038 800E1B88 8FB60148 */  lw    $s6, 0x148($sp)
/* 07B03C 800E1B8C 8FB50144 */  lw    $s5, 0x144($sp)
/* 07B040 800E1B90 8FB40140 */  lw    $s4, 0x140($sp)
/* 07B044 800E1B94 8FB3013C */  lw    $s3, 0x13c($sp)
/* 07B048 800E1B98 8FB20138 */  lw    $s2, 0x138($sp)
/* 07B04C 800E1B9C 8FB10134 */  lw    $s1, 0x134($sp)
/* 07B050 800E1BA0 8FB00130 */  lw    $s0, 0x130($sp)
/* 07B054 800E1BA4 D7BE0178 */  ldc1  $f30, 0x178($sp)
/* 07B058 800E1BA8 D7BC0170 */  ldc1  $f28, 0x170($sp)
/* 07B05C 800E1BAC D7BA0168 */  ldc1  $f26, 0x168($sp)
/* 07B060 800E1BB0 D7B80160 */  ldc1  $f24, 0x160($sp)
/* 07B064 800E1BB4 D7B60158 */  ldc1  $f22, 0x158($sp)
/* 07B068 800E1BB8 D7B40150 */  ldc1  $f20, 0x150($sp)
/* 07B06C 800E1BBC 03E00008 */  jr    $ra
/* 07B070 800E1BC0 27BD0180 */   addiu $sp, $sp, 0x180
