
.section .text802B2000, "ax"

func_802B2000:
/* 316F30 802B2000 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 316F34 802B2004 3C040031 */  lui   $a0, 0x31
/* 316F38 802B2008 248469F0 */  addiu $a0, $a0, 0x69f0
/* 316F3C 802B200C 3C050031 */  lui   $a1, 0x31
/* 316F40 802B2010 24A56A70 */  addiu $a1, $a1, 0x6a70
/* 316F44 802B2014 3C068020 */  lui   $a2, 0x8020
/* 316F48 802B2018 24C60000 */  addiu $a2, $a2, 0
/* 316F4C 802B201C AFBF0010 */  sw    $ra, 0x10($sp)
/* 316F50 802B2020 0C00A5CF */  jal   dma_copy
/* 316F54 802B2024 00000000 */   nop   
/* 316F58 802B2028 0C080000 */  jal   func_80200000
/* 316F5C 802B202C 00000000 */   nop   
/* 316F60 802B2030 8FBF0010 */  lw    $ra, 0x10($sp)
/* 316F64 802B2034 03E00008 */  jr    $ra
/* 316F68 802B2038 27BD0018 */   addiu $sp, $sp, 0x18

func_802B203C:
/* 316F6C 802B203C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 316F70 802B2040 3C040031 */  lui   $a0, 0x31
/* 316F74 802B2044 24846A70 */  addiu $a0, $a0, 0x6a70
/* 316F78 802B2048 3C050031 */  lui   $a1, 0x31
/* 316F7C 802B204C 24A56C00 */  addiu $a1, $a1, 0x6c00
/* 316F80 802B2050 3C068020 */  lui   $a2, 0x8020
/* 316F84 802B2054 24C60080 */  addiu $a2, $a2, 0x80
/* 316F88 802B2058 AFBF0010 */  sw    $ra, 0x10($sp)
/* 316F8C 802B205C 0C00A5CF */  jal   dma_copy
/* 316F90 802B2060 00000000 */   nop   
/* 316F94 802B2064 0C080020 */  jal   func_80200080
/* 316F98 802B2068 00000000 */   nop   
/* 316F9C 802B206C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 316FA0 802B2070 03E00008 */  jr    $ra
/* 316FA4 802B2074 27BD0018 */   addiu $sp, $sp, 0x18

func_802B2078:
/* 316FA8 802B2078 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 316FAC 802B207C 3C040031 */  lui   $a0, 0x31
/* 316FB0 802B2080 24846C00 */  addiu $a0, $a0, 0x6c00
/* 316FB4 802B2084 3C050031 */  lui   $a1, 0x31
/* 316FB8 802B2088 24A56D90 */  addiu $a1, $a1, 0x6d90
/* 316FBC 802B208C 3C06802B */  lui   $a2, 0x802b
/* 316FC0 802B2090 24C6E000 */  addiu $a2, $a2, -0x2000
/* 316FC4 802B2094 AFBF0010 */  sw    $ra, 0x10($sp)
/* 316FC8 802B2098 0C00A5CF */  jal   dma_copy
/* 316FCC 802B209C 00000000 */   nop   
/* 316FD0 802B20A0 0C0AB800 */  jal   func_802AE000
/* 316FD4 802B20A4 00000000 */   nop   
/* 316FD8 802B20A8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 316FDC 802B20AC 03E00008 */  jr    $ra
/* 316FE0 802B20B0 27BD0018 */   addiu $sp, $sp, 0x18

func_802B20B4:
/* 316FE4 802B20B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 316FE8 802B20B8 3C040031 */  lui   $a0, 0x31
/* 316FEC 802B20BC 24846D90 */  addiu $a0, $a0, 0x6d90
/* 316FF0 802B20C0 3C050031 */  lui   $a1, 0x31
/* 316FF4 802B20C4 24A56F30 */  addiu $a1, $a1, 0x6f30
/* 316FF8 802B20C8 3C06802B */  lui   $a2, 0x802b
/* 316FFC 802B20CC 24C6E000 */  addiu $a2, $a2, -0x2000
/* 317000 802B20D0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 317004 802B20D4 0C00A5CF */  jal   dma_copy
/* 317008 802B20D8 00000000 */   nop   
/* 31700C 802B20DC 0C0AB800 */  jal   func_802AE000
/* 317010 802B20E0 00000000 */   nop   
/* 317014 802B20E4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 317018 802B20E8 03E00008 */  jr    $ra
/* 31701C 802B20EC 27BD0018 */   addiu $sp, $sp, 0x18
