
.section .text80025C60, "ax"

func_80025C60:
/* 001060 80025C60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001064 80025C64 3C05B3FF */  lui   $a1, 0xb3ff
/* 001068 80025C68 34A50014 */  ori   $a1, $a1, 0x14
/* 00106C 80025C6C AFB00010 */  sw    $s0, 0x10($sp)
/* 001070 80025C70 3C10800A */  lui   $s0, 0x800a
/* 001074 80025C74 2610A638 */  addiu $s0, $s0, -0x59c8
/* 001078 80025C78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00107C 80025C7C 8E040000 */  lw    $a0, ($s0)
/* 001080 80025C80 0C018358 */  jal   osEPiWriteIo
/* 001084 80025C84 0000302D */   daddu $a2, $zero, $zero
/* 001088 80025C88 3C05B3FF */  lui   $a1, 0xb3ff
/* 00108C 80025C8C 34A50004 */  ori   $a1, $a1, 4
/* 001090 80025C90 8E040000 */  lw    $a0, ($s0)
/* 001094 80025C94 0C018358 */  jal   osEPiWriteIo
/* 001098 80025C98 0000302D */   daddu $a2, $zero, $zero
/* 00109C 80025C9C 3C05B3FF */  lui   $a1, 0xb3ff
/* 0010A0 80025CA0 3C064953 */  lui   $a2, 0x4953
/* 0010A4 80025CA4 8E040000 */  lw    $a0, ($s0)
/* 0010A8 80025CA8 0C018358 */  jal   osEPiWriteIo
/* 0010AC 80025CAC 34C63634 */   ori   $a2, $a2, 0x3634
/* 0010B0 80025CB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0010B4 80025CB4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0010B8 80025CB8 03E00008 */  jr    $ra
/* 0010BC 80025CBC 27BD0018 */   addiu $sp, $sp, 0x18

/* 0010C0 80025CC0 AFA40000 */  sw    $a0, ($sp)
/* 0010C4 80025CC4 AFA50004 */  sw    $a1, 4($sp)
/* 0010C8 80025CC8 AFA60008 */  sw    $a2, 8($sp)
/* 0010CC 80025CCC AFA7000C */  sw    $a3, 0xc($sp)
/* 0010D0 80025CD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0010D4 80025CD4 0080302D */  daddu $a2, $a0, $zero
/* 0010D8 80025CD8 3C048002 */  lui   $a0, 0x8002
/* 0010DC 80025CDC 24845D74 */  addiu $a0, $a0, 0x5d74
/* 0010E0 80025CE0 0000282D */  daddu $a1, $zero, $zero
/* 0010E4 80025CE4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0010E8 80025CE8 0C0192A8 */  jal   _Printf
/* 0010EC 80025CEC 27A7001C */   addiu $a3, $sp, 0x1c
/* 0010F0 80025CF0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0010F4 80025CF4 03E00008 */  jr    $ra
/* 0010F8 80025CF8 27BD0018 */   addiu $sp, $sp, 0x18

func_80025CFC:
/* 0010FC 80025CFC AFA40000 */  sw    $a0, ($sp)
/* 001100 80025D00 AFA50004 */  sw    $a1, 4($sp)
/* 001104 80025D04 AFA60008 */  sw    $a2, 8($sp)
/* 001108 80025D08 AFA7000C */  sw    $a3, 0xc($sp)
/* 00110C 80025D0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001110 80025D10 0080302D */  daddu $a2, $a0, $zero
/* 001114 80025D14 3C048002 */  lui   $a0, 0x8002
/* 001118 80025D18 24845D74 */  addiu $a0, $a0, 0x5d74
/* 00111C 80025D1C 0000282D */  daddu $a1, $zero, $zero
/* 001120 80025D20 AFBF0010 */  sw    $ra, 0x10($sp)
/* 001124 80025D24 0C0192A8 */  jal   _Printf
/* 001128 80025D28 27A7001C */   addiu $a3, $sp, 0x1c
/* 00112C 80025D2C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 001130 80025D30 03E00008 */  jr    $ra
/* 001134 80025D34 27BD0018 */   addiu $sp, $sp, 0x18

/* 001138 80025D38 AFA40000 */  sw    $a0, ($sp)
/* 00113C 80025D3C AFA50004 */  sw    $a1, 4($sp)
/* 001140 80025D40 AFA60008 */  sw    $a2, 8($sp)
/* 001144 80025D44 AFA7000C */  sw    $a3, 0xc($sp)
/* 001148 80025D48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00114C 80025D4C 0080302D */  daddu $a2, $a0, $zero
/* 001150 80025D50 3C048002 */  lui   $a0, 0x8002
/* 001154 80025D54 24845D74 */  addiu $a0, $a0, 0x5d74
/* 001158 80025D58 0000282D */  daddu $a1, $zero, $zero
/* 00115C 80025D5C AFBF0010 */  sw    $ra, 0x10($sp)
/* 001160 80025D60 0C0192A8 */  jal   _Printf
/* 001164 80025D64 27A7001C */   addiu $a3, $sp, 0x1c
/* 001168 80025D68 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00116C 80025D6C 03E00008 */  jr    $ra
/* 001170 80025D70 27BD0018 */   addiu $sp, $sp, 0x18

/* 001174 80025D74 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 001178 80025D78 AFB30024 */  sw    $s3, 0x24($sp)
/* 00117C 80025D7C 00A0982D */  daddu $s3, $a1, $zero
/* 001180 80025D80 AFB40028 */  sw    $s4, 0x28($sp)
/* 001184 80025D84 00C0A02D */  daddu $s4, $a2, $zero
/* 001188 80025D88 3C05B3FF */  lui   $a1, 0xb3ff
/* 00118C 80025D8C AFB1001C */  sw    $s1, 0x1c($sp)
/* 001190 80025D90 3C11800A */  lui   $s1, 0x800a
/* 001194 80025D94 2631A638 */  addiu $s1, $s1, -0x59c8
/* 001198 80025D98 AFB00018 */  sw    $s0, 0x18($sp)
/* 00119C 80025D9C 27B00010 */  addiu $s0, $sp, 0x10
/* 0011A0 80025DA0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0011A4 80025DA4 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0011A8 80025DA8 AFB70034 */  sw    $s7, 0x34($sp)
/* 0011AC 80025DAC AFB60030 */  sw    $s6, 0x30($sp)
/* 0011B0 80025DB0 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0011B4 80025DB4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0011B8 80025DB8 8E240000 */  lw    $a0, ($s1)
/* 0011BC 80025DBC 0C018370 */  jal   osEPiReadIo
/* 0011C0 80025DC0 0200302D */   daddu $a2, $s0, $zero
/* 0011C4 80025DC4 3C034953 */  lui   $v1, 0x4953
/* 0011C8 80025DC8 8FA20010 */  lw    $v0, 0x10($sp)
/* 0011CC 80025DCC 34633634 */  ori   $v1, $v1, 0x3634
/* 0011D0 80025DD0 14430050 */  bne   $v0, $v1, .L80025F14
/* 0011D4 80025DD4 24020001 */   addiu $v0, $zero, 1
/* 0011D8 80025DD8 3C05B3FF */  lui   $a1, 0xb3ff
/* 0011DC 80025DDC 34A50004 */  ori   $a1, $a1, 4
/* 0011E0 80025DE0 8E240000 */  lw    $a0, ($s1)
/* 0011E4 80025DE4 0C018370 */  jal   osEPiReadIo
/* 0011E8 80025DE8 0200302D */   daddu $a2, $s0, $zero
/* 0011EC 80025DEC 3C05B3FF */  lui   $a1, 0xb3ff
/* 0011F0 80025DF0 0200302D */  daddu $a2, $s0, $zero
/* 0011F4 80025DF4 8E240000 */  lw    $a0, ($s1)
/* 0011F8 80025DF8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0011FC 80025DFC 0C018370 */  jal   osEPiReadIo
/* 001200 80025E00 34A50014 */   ori   $a1, $a1, 0x14
/* 001204 80025E04 8FB20010 */  lw    $s2, 0x10($sp)
/* 001208 80025E08 3402FFDF */  ori   $v0, $zero, 0xffdf
/* 00120C 80025E0C 02541821 */  addu  $v1, $s2, $s4
/* 001210 80025E10 0043102A */  slt   $v0, $v0, $v1
/* 001214 80025E14 1040000B */  beqz  $v0, .L80025E44
/* 001218 80025E18 3C02FFFF */   lui   $v0, 0xffff
/* 00121C 80025E1C 34420020 */  ori   $v0, $v0, 0x20
/* 001220 80025E20 00621821 */  addu  $v1, $v1, $v0
/* 001224 80025E24 0203102A */  slt   $v0, $s0, $v1
/* 001228 80025E28 1440003A */  bnez  $v0, .L80025F14
/* 00122C 80025E2C 24020001 */   addiu $v0, $zero, 1
/* 001230 80025E30 0250102A */  slt   $v0, $s2, $s0
/* 001234 80025E34 10400008 */  beqz  $v0, .L80025E58
/* 001238 80025E38 24020001 */   addiu $v0, $zero, 1
/* 00123C 80025E3C 080097C5 */  j     func_80025F14
/* 001240 80025E40 00000000 */   nop   

.L80025E44:
/* 001244 80025E44 0250102A */  slt   $v0, $s2, $s0
/* 001248 80025E48 10400003 */  beqz  $v0, .L80025E58
/* 00124C 80025E4C 0203102A */   slt   $v0, $s0, $v1
/* 001250 80025E50 14400030 */  bnez  $v0, .L80025F14
/* 001254 80025E54 24020001 */   addiu $v0, $zero, 1
.L80025E58:
/* 001258 80025E58 12800027 */  beqz  $s4, .L80025EF8
/* 00125C 80025E5C 3C1E0FFF */   lui   $fp, 0xfff
/* 001260 80025E60 37DEFFFC */  ori   $fp, $fp, 0xfffc
/* 001264 80025E64 3C17B3FF */  lui   $s7, 0xb3ff
/* 001268 80025E68 36F70020 */  ori   $s7, $s7, 0x20
/* 00126C 80025E6C 3C15800A */  lui   $s5, 0x800a
/* 001270 80025E70 26B5A638 */  addiu $s5, $s5, -0x59c8
/* 001274 80025E74 3C16FFFF */  lui   $s6, 0xffff
/* 001278 80025E78 36D60020 */  ori   $s6, $s6, 0x20
.L80025E7C:
/* 00127C 80025E7C 92620000 */  lbu   $v0, ($s3)
/* 001280 80025E80 1040001A */  beqz  $v0, .L80025EEC
/* 001284 80025E84 025E8824 */   and   $s1, $s2, $fp
/* 001288 80025E88 02378821 */  addu  $s1, $s1, $s7
/* 00128C 80025E8C 0220282D */  daddu $a1, $s1, $zero
/* 001290 80025E90 27A60010 */  addiu $a2, $sp, 0x10
/* 001294 80025E94 32500003 */  andi  $s0, $s2, 3
/* 001298 80025E98 26520001 */  addiu $s2, $s2, 1
/* 00129C 80025E9C 24070003 */  addiu $a3, $zero, 3
/* 0012A0 80025EA0 00F08023 */  subu  $s0, $a3, $s0
/* 0012A4 80025EA4 8EA40000 */  lw    $a0, ($s5)
/* 0012A8 80025EA8 0C018370 */  jal   osEPiReadIo
/* 0012AC 80025EAC 00F08004 */   sllv  $s0, $s0, $a3
/* 0012B0 80025EB0 0220282D */  daddu $a1, $s1, $zero
/* 0012B4 80025EB4 240700FF */  addiu $a3, $zero, 0xff
/* 0012B8 80025EB8 02071004 */  sllv  $v0, $a3, $s0
/* 0012BC 80025EBC 00021027 */  nor   $v0, $zero, $v0
/* 0012C0 80025EC0 8EA40000 */  lw    $a0, ($s5)
/* 0012C4 80025EC4 8FA30010 */  lw    $v1, 0x10($sp)
/* 0012C8 80025EC8 92660000 */  lbu   $a2, ($s3)
/* 0012CC 80025ECC 00621824 */  and   $v1, $v1, $v0
/* 0012D0 80025ED0 02063004 */  sllv  $a2, $a2, $s0
/* 0012D4 80025ED4 0C018358 */  jal   osEPiWriteIo
/* 0012D8 80025ED8 00663025 */   or    $a2, $v1, $a2
/* 0012DC 80025EDC 3407FFDF */  ori   $a3, $zero, 0xffdf
/* 0012E0 80025EE0 00F2102A */  slt   $v0, $a3, $s2
/* 0012E4 80025EE4 54400001 */  bnezl $v0, .L80025EEC
/* 0012E8 80025EE8 02569021 */   addu  $s2, $s2, $s6
.L80025EEC:
/* 0012EC 80025EEC 2694FFFF */  addiu $s4, $s4, -1
/* 0012F0 80025EF0 1680FFE2 */  bnez  $s4, .L80025E7C
/* 0012F4 80025EF4 26730001 */   addiu $s3, $s3, 1
.L80025EF8:
/* 0012F8 80025EF8 3C04800A */  lui   $a0, 0x800a
/* 0012FC 80025EFC 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 001300 80025F00 3C05B3FF */  lui   $a1, 0xb3ff
/* 001304 80025F04 34A50014 */  ori   $a1, $a1, 0x14
/* 001308 80025F08 0C018358 */  jal   osEPiWriteIo
/* 00130C 80025F0C 0240302D */   daddu $a2, $s2, $zero
/* 001310 80025F10 24020001 */  addiu $v0, $zero, 1
func_80025F14:
.L80025F14:
/* 001314 80025F14 8FBF003C */  lw    $ra, 0x3c($sp)
/* 001318 80025F18 8FBE0038 */  lw    $fp, 0x38($sp)
/* 00131C 80025F1C 8FB70034 */  lw    $s7, 0x34($sp)
/* 001320 80025F20 8FB60030 */  lw    $s6, 0x30($sp)
/* 001324 80025F24 8FB5002C */  lw    $s5, 0x2c($sp)
/* 001328 80025F28 8FB40028 */  lw    $s4, 0x28($sp)
/* 00132C 80025F2C 8FB30024 */  lw    $s3, 0x24($sp)
/* 001330 80025F30 8FB20020 */  lw    $s2, 0x20($sp)
/* 001334 80025F34 8FB1001C */  lw    $s1, 0x1c($sp)
/* 001338 80025F38 8FB00018 */  lw    $s0, 0x18($sp)
/* 00133C 80025F3C 03E00008 */  jr    $ra
/* 001340 80025F40 27BD0040 */   addiu $sp, $sp, 0x40

/* 001344 80025F44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001348 80025F48 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00134C 80025F4C 0080382D */  daddu $a3, $a0, $zero
/* 001350 80025F50 3C048009 */  lui   $a0, 0x8009
/* 001354 80025F54 24847D30 */  addiu $a0, $a0, 0x7d30
/* 001358 80025F58 0C00973F */  jal   func_80025CFC
/* 00135C 80025F5C 00000000 */   nop   
func_80025F60:
/* 001360 80025F60 080097D8 */  j     func_80025F60
/* 001364 80025F64 00000000 */   nop   

/* 001368 80025F68 00000000 */  nop   
/* 00136C 80025F6C 00000000 */  nop   
