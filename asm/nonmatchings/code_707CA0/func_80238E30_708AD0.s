.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238E30_708AD0
/* 708AD0 80238E30 3C014008 */  lui       $at, 0x4008
/* 708AD4 80238E34 44811800 */  mtc1      $at, $f3
/* 708AD8 80238E38 44801000 */  mtc1      $zero, $f2
/* 708ADC 80238E3C C4800084 */  lwc1      $f0, 0x84($a0)
/* 708AE0 80238E40 46800021 */  cvt.d.w   $f0, $f0
/* 708AE4 80238E44 46220002 */  mul.d     $f0, $f0, $f2
/* 708AE8 80238E48 00000000 */  nop       
/* 708AEC 80238E4C 3C014059 */  lui       $at, 0x4059
/* 708AF0 80238E50 44811800 */  mtc1      $at, $f3
/* 708AF4 80238E54 44801000 */  mtc1      $zero, $f2
/* 708AF8 80238E58 00000000 */  nop       
/* 708AFC 80238E5C 46220003 */  div.d     $f0, $f0, $f2
/* 708B00 80238E60 3C013FF0 */  lui       $at, 0x3ff0
/* 708B04 80238E64 44811800 */  mtc1      $at, $f3
/* 708B08 80238E68 44801000 */  mtc1      $zero, $f2
/* 708B0C 80238E6C 3C02800E */  lui       $v0, %hi(gBattleStatus+0xDC)
/* 708B10 80238E70 8C42C14C */  lw        $v0, %lo(gBattleStatus+0xDC)($v0)
/* 708B14 80238E74 46220000 */  add.d     $f0, $f0, $f2
/* 708B18 80238E78 C44A0170 */  lwc1      $f10, 0x170($v0)
/* 708B1C 80238E7C 46200020 */  cvt.s.d   $f0, $f0
/* 708B20 80238E80 460A0081 */  sub.s     $f2, $f0, $f10
/* 708B24 80238E84 3C014040 */  lui       $at, 0x4040
/* 708B28 80238E88 44814000 */  mtc1      $at, $f8
/* 708B2C 80238E8C 00000000 */  nop       
/* 708B30 80238E90 46081083 */  div.s     $f2, $f2, $f8
/* 708B34 80238E94 46025280 */  add.s     $f10, $f10, $f2
/* 708B38 80238E98 C4460174 */  lwc1      $f6, 0x174($v0)
/* 708B3C 80238E9C 46060081 */  sub.s     $f2, $f0, $f6
/* 708B40 80238EA0 C4440178 */  lwc1      $f4, 0x178($v0)
/* 708B44 80238EA4 46040001 */  sub.s     $f0, $f0, $f4
/* 708B48 80238EA8 46081083 */  div.s     $f2, $f2, $f8
/* 708B4C 80238EAC 46023180 */  add.s     $f6, $f6, $f2
/* 708B50 80238EB0 46080003 */  div.s     $f0, $f0, $f8
/* 708B54 80238EB4 46002100 */  add.s     $f4, $f4, $f0
/* 708B58 80238EB8 E44A0170 */  swc1      $f10, 0x170($v0)
/* 708B5C 80238EBC E4460174 */  swc1      $f6, 0x174($v0)
/* 708B60 80238EC0 E4440178 */  swc1      $f4, 0x178($v0)
/* 708B64 80238EC4 03E00008 */  jr        $ra
/* 708B68 80238EC8 24020002 */   addiu    $v0, $zero, 2
/* 708B6C 80238ECC 00000000 */  nop       
