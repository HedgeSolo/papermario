
.section .text802C4920, "ax"

fixed_var_to_float:
/* 0E92D0 802C4920 3C02F2E3 */  lui   $v0, 0xf2e3
/* 0E92D4 802C4924 34421100 */  ori   $v0, $v0, 0x1100
/* 0E92D8 802C4928 0044102A */  slt   $v0, $v0, $a0
/* 0E92DC 802C492C 10400005 */  beqz  $v0, .L802C4944
/* 0E92E0 802C4930 3C020DB5 */   lui   $v0, 0xdb5
/* 0E92E4 802C4934 44840000 */  mtc1  $a0, $f0
/* 0E92E8 802C4938 00000000 */  nop   
/* 0E92EC 802C493C 03E00008 */  jr    $ra
/* 0E92F0 802C4940 46800020 */   cvt.s.w $f0, $f0

.L802C4944:
/* 0E92F4 802C4944 34428580 */  ori   $v0, $v0, 0x8580
/* 0E92F8 802C4948 00821021 */  addu  $v0, $a0, $v0
/* 0E92FC 802C494C 3C013A80 */  lui   $at, 0x3a80
/* 0E9300 802C4950 44811000 */  mtc1  $at, $f2
/* 0E9304 802C4954 44820000 */  mtc1  $v0, $f0
/* 0E9308 802C4958 00000000 */  nop   
/* 0E930C 802C495C 46800020 */  cvt.s.w $f0, $f0
/* 0E9310 802C4960 46020002 */  mul.s $f0, $f0, $f2
/* 0E9314 802C4964 03E00008 */  jr    $ra
/* 0E9318 802C4968 00000000 */   nop   

float_to_fixed_var:
/* 0E931C 802C496C 3C014480 */  lui   $at, 0x4480
/* 0E9320 802C4970 44810000 */  mtc1  $at, $f0
/* 0E9324 802C4974 00000000 */  nop   
/* 0E9328 802C4978 46006302 */  mul.s $f12, $f12, $f0
/* 0E932C 802C497C 00000000 */  nop   
/* 0E9330 802C4980 3C03F24A */  lui   $v1, 0xf24a
/* 0E9334 802C4984 34637A80 */  ori   $v1, $v1, 0x7a80
/* 0E9338 802C4988 4600608D */  trunc.w.s $f2, $f12
/* 0E933C 802C498C 44021000 */  mfc1  $v0, $f2
/* 0E9340 802C4990 03E00008 */  jr    $ra
/* 0E9344 802C4994 00431021 */   addu  $v0, $v0, $v1

si_handle_return:
/* 0E9348 802C4998 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E934C 802C499C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E9350 802C49A0 0C0B0FCF */  jal   kill_script
/* 0E9354 802C49A4 00000000 */   nop   
/* 0E9358 802C49A8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E935C 802C49AC 240200FF */  addiu $v0, $zero, 0xff
/* 0E9360 802C49B0 03E00008 */  jr    $ra
/* 0E9364 802C49B4 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_label:
/* 0E9368 802C49B8 03E00008 */  jr    $ra
/* 0E936C 802C49BC 24020002 */   addiu $v0, $zero, 2

si_handle_goto:
/* 0E9370 802C49C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E9374 802C49C4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9378 802C49C8 0080802D */  daddu $s0, $a0, $zero
/* 0E937C 802C49CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E9380 802C49D0 8E02000C */  lw    $v0, 0xc($s0)
/* 0E9384 802C49D4 0C0B1EAF */  jal   get_variable
/* 0E9388 802C49D8 8C450000 */   lw    $a1, ($v0)
/* 0E938C 802C49DC 0200202D */  daddu $a0, $s0, $zero
/* 0E9390 802C49E0 0C0B2224 */  jal   si_goto_label
/* 0E9394 802C49E4 0040282D */   daddu $a1, $v0, $zero
/* 0E9398 802C49E8 AE020008 */  sw    $v0, 8($s0)
/* 0E939C 802C49EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E93A0 802C49F0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E93A4 802C49F4 24020002 */  addiu $v0, $zero, 2
/* 0E93A8 802C49F8 03E00008 */  jr    $ra
/* 0E93AC 802C49FC 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_Loop:
/* 0E93B0 802C4A00 8C83000C */  lw    $v1, 0xc($a0)
/* 0E93B4 802C4A04 90820006 */  lbu   $v0, 6($a0)
/* 0E93B8 802C4A08 8C660000 */  lw    $a2, ($v1)
/* 0E93BC 802C4A0C 24420001 */  addiu $v0, $v0, 1
/* 0E93C0 802C4A10 A0820006 */  sb    $v0, 6($a0)
/* 0E93C4 802C4A14 00021600 */  sll   $v0, $v0, 0x18
/* 0E93C8 802C4A18 00022E03 */  sra   $a1, $v0, 0x18
/* 0E93CC 802C4A1C 28A20008 */  slti  $v0, $a1, 8
/* 0E93D0 802C4A20 14400003 */  bnez  $v0, .L802C4A30
/* 0E93D4 802C4A24 24630004 */   addiu $v1, $v1, 4
func_802C4A28:
/* 0E93D8 802C4A28 080B128A */  j     func_802C4A28
/* 0E93DC 802C4A2C 00000000 */   nop   

.L802C4A30:
/* 0E93E0 802C4A30 00051080 */  sll   $v0, $a1, 2
/* 0E93E4 802C4A34 00821021 */  addu  $v0, $a0, $v0
/* 0E93E8 802C4A38 AC4300D0 */  sw    $v1, 0xd0($v0)
/* 0E93EC 802C4A3C AC4600F0 */  sw    $a2, 0xf0($v0)
/* 0E93F0 802C4A40 03E00008 */  jr    $ra
/* 0E93F4 802C4A44 24020002 */   addiu $v0, $zero, 2

si_handle_end_loop:
/* 0E93F8 802C4A48 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E93FC 802C4A4C AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9400 802C4A50 0080882D */  daddu $s1, $a0, $zero
/* 0E9404 802C4A54 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0E9408 802C4A58 AFB20018 */  sw    $s2, 0x18($sp)
/* 0E940C 802C4A5C AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9410 802C4A60 82320006 */  lb    $s2, 6($s1)
/* 0E9414 802C4A64 06410003 */  bgez  $s2, .L802C4A74
/* 0E9418 802C4A68 00121080 */   sll   $v0, $s2, 2
func_802C4A6C:
/* 0E941C 802C4A6C 080B129B */  j     func_802C4A6C
/* 0E9420 802C4A70 00000000 */   nop   

.L802C4A74:
/* 0E9424 802C4A74 02221821 */  addu  $v1, $s1, $v0
/* 0E9428 802C4A78 8C7000F0 */  lw    $s0, 0xf0($v1)
/* 0E942C 802C4A7C 16000004 */  bnez  $s0, .L802C4A90
/* 0E9430 802C4A80 3C02FF67 */   lui   $v0, 0xff67
/* 0E9434 802C4A84 8C6300D0 */  lw    $v1, 0xd0($v1)
/* 0E9438 802C4A88 080B12BC */  j     func_802C4AF0
/* 0E943C 802C4A8C 24020002 */   addiu $v0, $zero, 2

.L802C4A90:
/* 0E9440 802C4A90 34426980 */  ori   $v0, $v0, 0x6980
/* 0E9444 802C4A94 0202102A */  slt   $v0, $s0, $v0
/* 0E9448 802C4A98 14400004 */  bnez  $v0, .L802C4AAC
/* 0E944C 802C4A9C 0220202D */   daddu $a0, $s1, $zero
/* 0E9450 802C4AA0 2610FFFF */  addiu $s0, $s0, -1
/* 0E9454 802C4AA4 080B12B2 */  j     func_802C4AC8
/* 0E9458 802C4AA8 AC7000F0 */   sw    $s0, 0xf0($v1)

.L802C4AAC:
/* 0E945C 802C4AAC 0C0B1EAF */  jal   get_variable
/* 0E9460 802C4AB0 0200282D */   daddu $a1, $s0, $zero
/* 0E9464 802C4AB4 0220202D */  daddu $a0, $s1, $zero
/* 0E9468 802C4AB8 0200282D */  daddu $a1, $s0, $zero
/* 0E946C 802C4ABC 2450FFFF */  addiu $s0, $v0, -1
/* 0E9470 802C4AC0 0C0B2026 */  jal   set_variable
/* 0E9474 802C4AC4 0200302D */   daddu $a2, $s0, $zero
func_802C4AC8:
/* 0E9478 802C4AC8 16000006 */  bnez  $s0, .L802C4AE4
/* 0E947C 802C4ACC 00121080 */   sll   $v0, $s2, 2
/* 0E9480 802C4AD0 92230006 */  lbu   $v1, 6($s1)
/* 0E9484 802C4AD4 24020002 */  addiu $v0, $zero, 2
/* 0E9488 802C4AD8 2463FFFF */  addiu $v1, $v1, -1
/* 0E948C 802C4ADC 080B12BD */  j     func_802C4AF4
/* 0E9490 802C4AE0 A2230006 */   sb    $v1, 6($s1)

.L802C4AE4:
/* 0E9494 802C4AE4 02221021 */  addu  $v0, $s1, $v0
/* 0E9498 802C4AE8 8C4300D0 */  lw    $v1, 0xd0($v0)
/* 0E949C 802C4AEC 24020002 */  addiu $v0, $zero, 2
func_802C4AF0:
/* 0E94A0 802C4AF0 AE230008 */  sw    $v1, 8($s1)
func_802C4AF4:
/* 0E94A4 802C4AF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0E94A8 802C4AF8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E94AC 802C4AFC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E94B0 802C4B00 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E94B4 802C4B04 03E00008 */  jr    $ra
/* 0E94B8 802C4B08 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_break_loop:
/* 0E94BC 802C4B0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E94C0 802C4B10 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E94C4 802C4B14 0080802D */  daddu $s0, $a0, $zero
/* 0E94C8 802C4B18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E94CC 802C4B1C 82020006 */  lb    $v0, 6($s0)
/* 0E94D0 802C4B20 04410003 */  bgez  $v0, .L802C4B30
/* 0E94D4 802C4B24 00000000 */   nop   
func_802C4B28:
/* 0E94D8 802C4B28 080B12CA */  j     func_802C4B28
/* 0E94DC 802C4B2C 00000000 */   nop   

.L802C4B30:
/* 0E94E0 802C4B30 0C0B22B9 */  jal   si_goto_end_loop
/* 0E94E4 802C4B34 0200202D */   daddu $a0, $s0, $zero
/* 0E94E8 802C4B38 92030006 */  lbu   $v1, 6($s0)
/* 0E94EC 802C4B3C AE020008 */  sw    $v0, 8($s0)
/* 0E94F0 802C4B40 2463FFFF */  addiu $v1, $v1, -1
/* 0E94F4 802C4B44 A2030006 */  sb    $v1, 6($s0)
/* 0E94F8 802C4B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E94FC 802C4B4C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9500 802C4B50 24020002 */  addiu $v0, $zero, 2
/* 0E9504 802C4B54 03E00008 */  jr    $ra
/* 0E9508 802C4B58 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_wait:
/* 0E950C 802C4B5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E9510 802C4B60 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9514 802C4B64 0080802D */  daddu $s0, $a0, $zero
/* 0E9518 802C4B68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E951C 802C4B6C 82020005 */  lb    $v0, 5($s0)
/* 0E9520 802C4B70 14400006 */  bnez  $v0, .L802C4B8C
/* 0E9524 802C4B74 8E05000C */   lw    $a1, 0xc($s0)
/* 0E9528 802C4B78 0C0B1EAF */  jal   get_variable
/* 0E952C 802C4B7C 8CA50000 */   lw    $a1, ($a1)
/* 0E9530 802C4B80 AE020070 */  sw    $v0, 0x70($s0)
/* 0E9534 802C4B84 24020001 */  addiu $v0, $zero, 1
/* 0E9538 802C4B88 A2020005 */  sb    $v0, 5($s0)
.L802C4B8C:
/* 0E953C 802C4B8C 8E020070 */  lw    $v0, 0x70($s0)
/* 0E9540 802C4B90 10400004 */  beqz  $v0, .L802C4BA4
/* 0E9544 802C4B94 2442FFFF */   addiu $v0, $v0, -1
/* 0E9548 802C4B98 AE020070 */  sw    $v0, 0x70($s0)
/* 0E954C 802C4B9C 080B12EA */  j     func_802C4BA8
/* 0E9550 802C4BA0 2C420001 */   sltiu $v0, $v0, 1

.L802C4BA4:
/* 0E9554 802C4BA4 24020002 */  addiu $v0, $zero, 2
func_802C4BA8:
/* 0E9558 802C4BA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E955C 802C4BAC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9560 802C4BB0 03E00008 */  jr    $ra
/* 0E9564 802C4BB4 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_wait_seconds:
/* 0E9568 802C4BB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E956C 802C4BBC AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9570 802C4BC0 0080802D */  daddu $s0, $a0, $zero
/* 0E9574 802C4BC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E9578 802C4BC8 82020005 */  lb    $v0, 5($s0)
/* 0E957C 802C4BCC 14400011 */  bnez  $v0, .L802C4C14
/* 0E9580 802C4BD0 8E05000C */   lw    $a1, 0xc($s0)
/* 0E9584 802C4BD4 0C0B210B */  jal   get_float_variable
/* 0E9588 802C4BD8 8CA50000 */   lw    $a1, ($a1)
/* 0E958C 802C4BDC 3C0141F0 */  lui   $at, 0x41f0
/* 0E9590 802C4BE0 44811000 */  mtc1  $at, $f2
/* 0E9594 802C4BE4 00000000 */  nop   
/* 0E9598 802C4BE8 46020002 */  mul.s $f0, $f0, $f2
/* 0E959C 802C4BEC 00000000 */  nop   
/* 0E95A0 802C4BF0 3C013FE0 */  lui   $at, 0x3fe0
/* 0E95A4 802C4BF4 44811800 */  mtc1  $at, $f3
/* 0E95A8 802C4BF8 44801000 */  mtc1  $zero, $f2
/* 0E95AC 802C4BFC 46000021 */  cvt.d.s $f0, $f0
/* 0E95B0 802C4C00 46220000 */  add.d $f0, $f0, $f2
/* 0E95B4 802C4C04 24020001 */  addiu $v0, $zero, 1
/* 0E95B8 802C4C08 A2020005 */  sb    $v0, 5($s0)
/* 0E95BC 802C4C0C 4620010D */  trunc.w.d $f4, $f0
/* 0E95C0 802C4C10 E6040070 */  swc1  $f4, 0x70($s0)
.L802C4C14:
/* 0E95C4 802C4C14 8E020070 */  lw    $v0, 0x70($s0)
/* 0E95C8 802C4C18 10400004 */  beqz  $v0, .L802C4C2C
/* 0E95CC 802C4C1C 2442FFFF */   addiu $v0, $v0, -1
/* 0E95D0 802C4C20 AE020070 */  sw    $v0, 0x70($s0)
/* 0E95D4 802C4C24 080B130C */  j     func_802C4C30
/* 0E95D8 802C4C28 2C420001 */   sltiu $v0, $v0, 1

.L802C4C2C:
/* 0E95DC 802C4C2C 24020002 */  addiu $v0, $zero, 2
func_802C4C30:
/* 0E95E0 802C4C30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E95E4 802C4C34 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E95E8 802C4C38 03E00008 */  jr    $ra
/* 0E95EC 802C4C3C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_if_equal:
/* 0E95F0 802C4C40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E95F4 802C4C44 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E95F8 802C4C48 0080882D */  daddu $s1, $a0, $zero
/* 0E95FC 802C4C4C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9600 802C4C50 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9604 802C4C54 8E30000C */  lw    $s0, 0xc($s1)
/* 0E9608 802C4C58 8E050000 */  lw    $a1, ($s0)
/* 0E960C 802C4C5C 0C0B1EAF */  jal   get_variable
/* 0E9610 802C4C60 26100004 */   addiu $s0, $s0, 4
/* 0E9614 802C4C64 0220202D */  daddu $a0, $s1, $zero
/* 0E9618 802C4C68 8E050000 */  lw    $a1, ($s0)
/* 0E961C 802C4C6C 0C0B1EAF */  jal   get_variable
/* 0E9620 802C4C70 0040802D */   daddu $s0, $v0, $zero
/* 0E9624 802C4C74 12020005 */  beq   $s0, $v0, .L802C4C8C
/* 0E9628 802C4C78 24020002 */   addiu $v0, $zero, 2
/* 0E962C 802C4C7C 0C0B223F */  jal   si_skip_if
/* 0E9630 802C4C80 0220202D */   daddu $a0, $s1, $zero
/* 0E9634 802C4C84 AE220008 */  sw    $v0, 8($s1)
/* 0E9638 802C4C88 24020002 */  addiu $v0, $zero, 2
.L802C4C8C:
/* 0E963C 802C4C8C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9640 802C4C90 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9644 802C4C94 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9648 802C4C98 03E00008 */  jr    $ra
/* 0E964C 802C4C9C 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_not_equal:
/* 0E9650 802C4CA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9654 802C4CA4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9658 802C4CA8 0080882D */  daddu $s1, $a0, $zero
/* 0E965C 802C4CAC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9660 802C4CB0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9664 802C4CB4 8E30000C */  lw    $s0, 0xc($s1)
/* 0E9668 802C4CB8 8E050000 */  lw    $a1, ($s0)
/* 0E966C 802C4CBC 0C0B1EAF */  jal   get_variable
/* 0E9670 802C4CC0 26100004 */   addiu $s0, $s0, 4
/* 0E9674 802C4CC4 0220202D */  daddu $a0, $s1, $zero
/* 0E9678 802C4CC8 8E050000 */  lw    $a1, ($s0)
/* 0E967C 802C4CCC 0C0B1EAF */  jal   get_variable
/* 0E9680 802C4CD0 0040802D */   daddu $s0, $v0, $zero
/* 0E9684 802C4CD4 16020005 */  bne   $s0, $v0, .L802C4CEC
/* 0E9688 802C4CD8 24020002 */   addiu $v0, $zero, 2
/* 0E968C 802C4CDC 0C0B223F */  jal   si_skip_if
/* 0E9690 802C4CE0 0220202D */   daddu $a0, $s1, $zero
/* 0E9694 802C4CE4 AE220008 */  sw    $v0, 8($s1)
/* 0E9698 802C4CE8 24020002 */  addiu $v0, $zero, 2
.L802C4CEC:
/* 0E969C 802C4CEC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E96A0 802C4CF0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E96A4 802C4CF4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E96A8 802C4CF8 03E00008 */  jr    $ra
/* 0E96AC 802C4CFC 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_less:
/* 0E96B0 802C4D00 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E96B4 802C4D04 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E96B8 802C4D08 0080882D */  daddu $s1, $a0, $zero
/* 0E96BC 802C4D0C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E96C0 802C4D10 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E96C4 802C4D14 8E30000C */  lw    $s0, 0xc($s1)
/* 0E96C8 802C4D18 8E050000 */  lw    $a1, ($s0)
/* 0E96CC 802C4D1C 0C0B1EAF */  jal   get_variable
/* 0E96D0 802C4D20 26100004 */   addiu $s0, $s0, 4
/* 0E96D4 802C4D24 0220202D */  daddu $a0, $s1, $zero
/* 0E96D8 802C4D28 8E050000 */  lw    $a1, ($s0)
/* 0E96DC 802C4D2C 0C0B1EAF */  jal   get_variable
/* 0E96E0 802C4D30 0040802D */   daddu $s0, $v0, $zero
/* 0E96E4 802C4D34 0202802A */  slt   $s0, $s0, $v0
/* 0E96E8 802C4D38 16000005 */  bnez  $s0, .L802C4D50
/* 0E96EC 802C4D3C 24020002 */   addiu $v0, $zero, 2
/* 0E96F0 802C4D40 0C0B223F */  jal   si_skip_if
/* 0E96F4 802C4D44 0220202D */   daddu $a0, $s1, $zero
/* 0E96F8 802C4D48 AE220008 */  sw    $v0, 8($s1)
/* 0E96FC 802C4D4C 24020002 */  addiu $v0, $zero, 2
.L802C4D50:
/* 0E9700 802C4D50 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9704 802C4D54 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9708 802C4D58 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E970C 802C4D5C 03E00008 */  jr    $ra
/* 0E9710 802C4D60 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_greater:
/* 0E9714 802C4D64 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9718 802C4D68 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E971C 802C4D6C 0080882D */  daddu $s1, $a0, $zero
/* 0E9720 802C4D70 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9724 802C4D74 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9728 802C4D78 8E30000C */  lw    $s0, 0xc($s1)
/* 0E972C 802C4D7C 8E050000 */  lw    $a1, ($s0)
/* 0E9730 802C4D80 0C0B1EAF */  jal   get_variable
/* 0E9734 802C4D84 26100004 */   addiu $s0, $s0, 4
/* 0E9738 802C4D88 0220202D */  daddu $a0, $s1, $zero
/* 0E973C 802C4D8C 8E050000 */  lw    $a1, ($s0)
/* 0E9740 802C4D90 0C0B1EAF */  jal   get_variable
/* 0E9744 802C4D94 0040802D */   daddu $s0, $v0, $zero
/* 0E9748 802C4D98 0050102A */  slt   $v0, $v0, $s0
/* 0E974C 802C4D9C 14400005 */  bnez  $v0, .L802C4DB4
/* 0E9750 802C4DA0 24020002 */   addiu $v0, $zero, 2
/* 0E9754 802C4DA4 0C0B223F */  jal   si_skip_if
/* 0E9758 802C4DA8 0220202D */   daddu $a0, $s1, $zero
/* 0E975C 802C4DAC AE220008 */  sw    $v0, 8($s1)
/* 0E9760 802C4DB0 24020002 */  addiu $v0, $zero, 2
.L802C4DB4:
/* 0E9764 802C4DB4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9768 802C4DB8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E976C 802C4DBC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9770 802C4DC0 03E00008 */  jr    $ra
/* 0E9774 802C4DC4 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_less_equal:
/* 0E9778 802C4DC8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E977C 802C4DCC AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9780 802C4DD0 0080882D */  daddu $s1, $a0, $zero
/* 0E9784 802C4DD4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9788 802C4DD8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E978C 802C4DDC 8E30000C */  lw    $s0, 0xc($s1)
/* 0E9790 802C4DE0 8E050000 */  lw    $a1, ($s0)
/* 0E9794 802C4DE4 0C0B1EAF */  jal   get_variable
/* 0E9798 802C4DE8 26100004 */   addiu $s0, $s0, 4
/* 0E979C 802C4DEC 0220202D */  daddu $a0, $s1, $zero
/* 0E97A0 802C4DF0 8E050000 */  lw    $a1, ($s0)
/* 0E97A4 802C4DF4 0C0B1EAF */  jal   get_variable
/* 0E97A8 802C4DF8 0040802D */   daddu $s0, $v0, $zero
/* 0E97AC 802C4DFC 0050102A */  slt   $v0, $v0, $s0
/* 0E97B0 802C4E00 10400005 */  beqz  $v0, .L802C4E18
/* 0E97B4 802C4E04 24020002 */   addiu $v0, $zero, 2
/* 0E97B8 802C4E08 0C0B223F */  jal   si_skip_if
/* 0E97BC 802C4E0C 0220202D */   daddu $a0, $s1, $zero
/* 0E97C0 802C4E10 AE220008 */  sw    $v0, 8($s1)
/* 0E97C4 802C4E14 24020002 */  addiu $v0, $zero, 2
.L802C4E18:
/* 0E97C8 802C4E18 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E97CC 802C4E1C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E97D0 802C4E20 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E97D4 802C4E24 03E00008 */  jr    $ra
/* 0E97D8 802C4E28 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_greater_equal:
/* 0E97DC 802C4E2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E97E0 802C4E30 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E97E4 802C4E34 0080882D */  daddu $s1, $a0, $zero
/* 0E97E8 802C4E38 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E97EC 802C4E3C AFB00010 */  sw    $s0, 0x10($sp)
/* 0E97F0 802C4E40 8E30000C */  lw    $s0, 0xc($s1)
/* 0E97F4 802C4E44 8E050000 */  lw    $a1, ($s0)
/* 0E97F8 802C4E48 0C0B1EAF */  jal   get_variable
/* 0E97FC 802C4E4C 26100004 */   addiu $s0, $s0, 4
/* 0E9800 802C4E50 0220202D */  daddu $a0, $s1, $zero
/* 0E9804 802C4E54 8E050000 */  lw    $a1, ($s0)
/* 0E9808 802C4E58 0C0B1EAF */  jal   get_variable
/* 0E980C 802C4E5C 0040802D */   daddu $s0, $v0, $zero
/* 0E9810 802C4E60 0202802A */  slt   $s0, $s0, $v0
/* 0E9814 802C4E64 12000005 */  beqz  $s0, .L802C4E7C
/* 0E9818 802C4E68 24020002 */   addiu $v0, $zero, 2
/* 0E981C 802C4E6C 0C0B223F */  jal   si_skip_if
/* 0E9820 802C4E70 0220202D */   daddu $a0, $s1, $zero
/* 0E9824 802C4E74 AE220008 */  sw    $v0, 8($s1)
/* 0E9828 802C4E78 24020002 */  addiu $v0, $zero, 2
.L802C4E7C:
/* 0E982C 802C4E7C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9830 802C4E80 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9834 802C4E84 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9838 802C4E88 03E00008 */  jr    $ra
/* 0E983C 802C4E8C 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_AND:
/* 0E9840 802C4E90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9844 802C4E94 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9848 802C4E98 0080882D */  daddu $s1, $a0, $zero
/* 0E984C 802C4E9C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9850 802C4EA0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9854 802C4EA4 8E30000C */  lw    $s0, 0xc($s1)
/* 0E9858 802C4EA8 8E050000 */  lw    $a1, ($s0)
/* 0E985C 802C4EAC 0C0B1EAF */  jal   get_variable
/* 0E9860 802C4EB0 26100004 */   addiu $s0, $s0, 4
/* 0E9864 802C4EB4 8E030000 */  lw    $v1, ($s0)
/* 0E9868 802C4EB8 00431024 */  and   $v0, $v0, $v1
/* 0E986C 802C4EBC 14400005 */  bnez  $v0, .L802C4ED4
/* 0E9870 802C4EC0 24020002 */   addiu $v0, $zero, 2
/* 0E9874 802C4EC4 0C0B223F */  jal   si_skip_if
/* 0E9878 802C4EC8 0220202D */   daddu $a0, $s1, $zero
/* 0E987C 802C4ECC AE220008 */  sw    $v0, 8($s1)
/* 0E9880 802C4ED0 24020002 */  addiu $v0, $zero, 2
.L802C4ED4:
/* 0E9884 802C4ED4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9888 802C4ED8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E988C 802C4EDC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9890 802C4EE0 03E00008 */  jr    $ra
/* 0E9894 802C4EE4 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_if_not_AND:
/* 0E9898 802C4EE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E989C 802C4EEC AFB10014 */  sw    $s1, 0x14($sp)
/* 0E98A0 802C4EF0 0080882D */  daddu $s1, $a0, $zero
/* 0E98A4 802C4EF4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E98A8 802C4EF8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E98AC 802C4EFC 8E30000C */  lw    $s0, 0xc($s1)
/* 0E98B0 802C4F00 8E050000 */  lw    $a1, ($s0)
/* 0E98B4 802C4F04 0C0B1EAF */  jal   get_variable
/* 0E98B8 802C4F08 26100004 */   addiu $s0, $s0, 4
/* 0E98BC 802C4F0C 8E030000 */  lw    $v1, ($s0)
/* 0E98C0 802C4F10 00431024 */  and   $v0, $v0, $v1
/* 0E98C4 802C4F14 10400005 */  beqz  $v0, .L802C4F2C
/* 0E98C8 802C4F18 24020002 */   addiu $v0, $zero, 2
/* 0E98CC 802C4F1C 0C0B223F */  jal   si_skip_if
/* 0E98D0 802C4F20 0220202D */   daddu $a0, $s1, $zero
/* 0E98D4 802C4F24 AE220008 */  sw    $v0, 8($s1)
/* 0E98D8 802C4F28 24020002 */  addiu $v0, $zero, 2
.L802C4F2C:
/* 0E98DC 802C4F2C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E98E0 802C4F30 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E98E4 802C4F34 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E98E8 802C4F38 03E00008 */  jr    $ra
/* 0E98EC 802C4F3C 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_else:
/* 0E98F0 802C4F40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E98F4 802C4F44 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E98F8 802C4F48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E98FC 802C4F4C 0C0B225E */  jal   si_skip_else
/* 0E9900 802C4F50 0080802D */   daddu $s0, $a0, $zero
/* 0E9904 802C4F54 AE020008 */  sw    $v0, 8($s0)
/* 0E9908 802C4F58 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E990C 802C4F5C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9910 802C4F60 24020002 */  addiu $v0, $zero, 2
/* 0E9914 802C4F64 03E00008 */  jr    $ra
/* 0E9918 802C4F68 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_end_if:
/* 0E991C 802C4F6C 03E00008 */  jr    $ra
/* 0E9920 802C4F70 24020002 */   addiu $v0, $zero, 2

si_handle_switch:
/* 0E9924 802C4F74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E9928 802C4F78 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E992C 802C4F7C 0080802D */  daddu $s0, $a0, $zero
/* 0E9930 802C4F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E9934 802C4F84 8E02000C */  lw    $v0, 0xc($s0)
/* 0E9938 802C4F88 0C0B1EAF */  jal   get_variable
/* 0E993C 802C4F8C 8C450000 */   lw    $a1, ($v0)
/* 0E9940 802C4F90 92030007 */  lbu   $v1, 7($s0)
/* 0E9944 802C4F94 0040282D */  daddu $a1, $v0, $zero
/* 0E9948 802C4F98 24630001 */  addiu $v1, $v1, 1
/* 0E994C 802C4F9C A2030007 */  sb    $v1, 7($s0)
/* 0E9950 802C4FA0 00031E00 */  sll   $v1, $v1, 0x18
/* 0E9954 802C4FA4 00032603 */  sra   $a0, $v1, 0x18
/* 0E9958 802C4FA8 28820008 */  slti  $v0, $a0, 8
/* 0E995C 802C4FAC 14400003 */  bnez  $v0, .L802C4FBC
/* 0E9960 802C4FB0 24020002 */   addiu $v0, $zero, 2
func_802C4FB4:
/* 0E9964 802C4FB4 080B13ED */  j     func_802C4FB4
/* 0E9968 802C4FB8 00000000 */   nop   

.L802C4FBC:
/* 0E996C 802C4FBC 00441804 */  sllv  $v1, $a0, $v0
/* 0E9970 802C4FC0 02031821 */  addu  $v1, $s0, $v1
/* 0E9974 802C4FC4 02042021 */  addu  $a0, $s0, $a0
/* 0E9978 802C4FC8 AC650118 */  sw    $a1, 0x118($v1)
/* 0E997C 802C4FCC 24030001 */  addiu $v1, $zero, 1
/* 0E9980 802C4FD0 A0830110 */  sb    $v1, 0x110($a0)
/* 0E9984 802C4FD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E9988 802C4FD8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E998C 802C4FDC 03E00008 */  jr    $ra
/* 0E9990 802C4FE0 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_switch_const:
/* 0E9994 802C4FE4 8C82000C */  lw    $v0, 0xc($a0)
/* 0E9998 802C4FE8 90830007 */  lbu   $v1, 7($a0)
/* 0E999C 802C4FEC 8C450000 */  lw    $a1, ($v0)
/* 0E99A0 802C4FF0 24630001 */  addiu $v1, $v1, 1
/* 0E99A4 802C4FF4 A0830007 */  sb    $v1, 7($a0)
/* 0E99A8 802C4FF8 00031E00 */  sll   $v1, $v1, 0x18
/* 0E99AC 802C4FFC 00031E03 */  sra   $v1, $v1, 0x18
/* 0E99B0 802C5000 28620008 */  slti  $v0, $v1, 8
/* 0E99B4 802C5004 14400003 */  bnez  $v0, .L802C5014
/* 0E99B8 802C5008 00031080 */   sll   $v0, $v1, 2
func_802C500C:
/* 0E99BC 802C500C 080B1403 */  j     func_802C500C
/* 0E99C0 802C5010 00000000 */   nop   

.L802C5014:
/* 0E99C4 802C5014 00821021 */  addu  $v0, $a0, $v0
/* 0E99C8 802C5018 00831821 */  addu  $v1, $a0, $v1
/* 0E99CC 802C501C AC450118 */  sw    $a1, 0x118($v0)
/* 0E99D0 802C5020 24020001 */  addiu $v0, $zero, 1
/* 0E99D4 802C5024 A0620110 */  sb    $v0, 0x110($v1)
/* 0E99D8 802C5028 03E00008 */  jr    $ra
/* 0E99DC 802C502C 24020002 */   addiu $v0, $zero, 2

si_handle_case_equal:
/* 0E99E0 802C5030 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E99E4 802C5034 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E99E8 802C5038 0080882D */  daddu $s1, $a0, $zero
/* 0E99EC 802C503C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E99F0 802C5040 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E99F4 802C5044 82300007 */  lb    $s0, 7($s1)
/* 0E99F8 802C5048 06010003 */  bgez  $s0, .L802C5058
/* 0E99FC 802C504C 8E25000C */   lw    $a1, 0xc($s1)
func_802C5050:
/* 0E9A00 802C5050 080B1414 */  j     func_802C5050
/* 0E9A04 802C5054 00000000 */   nop   

.L802C5058:
/* 0E9A08 802C5058 8CA50000 */  lw    $a1, ($a1)
/* 0E9A0C 802C505C 0C0B1EAF */  jal   get_variable
/* 0E9A10 802C5060 0220202D */   daddu $a0, $s1, $zero
/* 0E9A14 802C5064 0040282D */  daddu $a1, $v0, $zero
/* 0E9A18 802C5068 00101080 */  sll   $v0, $s0, 2
/* 0E9A1C 802C506C 02221021 */  addu  $v0, $s1, $v0
/* 0E9A20 802C5070 02302021 */  addu  $a0, $s1, $s0
/* 0E9A24 802C5074 80830110 */  lb    $v1, 0x110($a0)
/* 0E9A28 802C5078 1C600005 */  bgtz  $v1, .L802C5090
/* 0E9A2C 802C507C 8C420118 */   lw    $v0, 0x118($v0)
/* 0E9A30 802C5080 0C0B2279 */  jal   si_goto_end_case
/* 0E9A34 802C5084 0220202D */   daddu $a0, $s1, $zero
/* 0E9A38 802C5088 080B1429 */  j     func_802C50A4
/* 0E9A3C 802C508C AE220008 */   sw    $v0, 8($s1)

.L802C5090:
/* 0E9A40 802C5090 50A20004 */  beql  $a1, $v0, .L802C50A4
/* 0E9A44 802C5094 A0800110 */   sb    $zero, 0x110($a0)
/* 0E9A48 802C5098 0C0B2298 */  jal   si_goto_next_case
/* 0E9A4C 802C509C 0220202D */   daddu $a0, $s1, $zero
/* 0E9A50 802C50A0 AE220008 */  sw    $v0, 8($s1)
func_802C50A4:
.L802C50A4:
/* 0E9A54 802C50A4 24020002 */  addiu $v0, $zero, 2
/* 0E9A58 802C50A8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9A5C 802C50AC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9A60 802C50B0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9A64 802C50B4 03E00008 */  jr    $ra
/* 0E9A68 802C50B8 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_not_equal:
/* 0E9A6C 802C50BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9A70 802C50C0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9A74 802C50C4 0080882D */  daddu $s1, $a0, $zero
/* 0E9A78 802C50C8 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9A7C 802C50CC AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9A80 802C50D0 82300007 */  lb    $s0, 7($s1)
/* 0E9A84 802C50D4 06010003 */  bgez  $s0, .L802C50E4
/* 0E9A88 802C50D8 8E25000C */   lw    $a1, 0xc($s1)
func_802C50DC:
/* 0E9A8C 802C50DC 080B1437 */  j     func_802C50DC
/* 0E9A90 802C50E0 00000000 */   nop   

.L802C50E4:
/* 0E9A94 802C50E4 8CA50000 */  lw    $a1, ($a1)
/* 0E9A98 802C50E8 0C0B1EAF */  jal   get_variable
/* 0E9A9C 802C50EC 0220202D */   daddu $a0, $s1, $zero
/* 0E9AA0 802C50F0 0040282D */  daddu $a1, $v0, $zero
/* 0E9AA4 802C50F4 00101080 */  sll   $v0, $s0, 2
/* 0E9AA8 802C50F8 02221021 */  addu  $v0, $s1, $v0
/* 0E9AAC 802C50FC 02302021 */  addu  $a0, $s1, $s0
/* 0E9AB0 802C5100 80830110 */  lb    $v1, 0x110($a0)
/* 0E9AB4 802C5104 1C600005 */  bgtz  $v1, .L802C511C
/* 0E9AB8 802C5108 8C420118 */   lw    $v0, 0x118($v0)
/* 0E9ABC 802C510C 0C0B2279 */  jal   si_goto_end_case
/* 0E9AC0 802C5110 0220202D */   daddu $a0, $s1, $zero
/* 0E9AC4 802C5114 080B144C */  j     func_802C5130
/* 0E9AC8 802C5118 AE220008 */   sw    $v0, 8($s1)

.L802C511C:
/* 0E9ACC 802C511C 54A20004 */  bnel  $a1, $v0, .L802C5130
/* 0E9AD0 802C5120 A0800110 */   sb    $zero, 0x110($a0)
/* 0E9AD4 802C5124 0C0B2298 */  jal   si_goto_next_case
/* 0E9AD8 802C5128 0220202D */   daddu $a0, $s1, $zero
/* 0E9ADC 802C512C AE220008 */  sw    $v0, 8($s1)
func_802C5130:
.L802C5130:
/* 0E9AE0 802C5130 24020002 */  addiu $v0, $zero, 2
/* 0E9AE4 802C5134 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9AE8 802C5138 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9AEC 802C513C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9AF0 802C5140 03E00008 */  jr    $ra
/* 0E9AF4 802C5144 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_less:
/* 0E9AF8 802C5148 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9AFC 802C514C AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9B00 802C5150 0080882D */  daddu $s1, $a0, $zero
/* 0E9B04 802C5154 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9B08 802C5158 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9B0C 802C515C 82300007 */  lb    $s0, 7($s1)
/* 0E9B10 802C5160 06010003 */  bgez  $s0, .L802C5170
/* 0E9B14 802C5164 8E25000C */   lw    $a1, 0xc($s1)
func_802C5168:
/* 0E9B18 802C5168 080B145A */  j     func_802C5168
/* 0E9B1C 802C516C 00000000 */   nop   

.L802C5170:
/* 0E9B20 802C5170 8CA50000 */  lw    $a1, ($a1)
/* 0E9B24 802C5174 0C0B1EAF */  jal   get_variable
/* 0E9B28 802C5178 0220202D */   daddu $a0, $s1, $zero
/* 0E9B2C 802C517C 0040282D */  daddu $a1, $v0, $zero
/* 0E9B30 802C5180 00101080 */  sll   $v0, $s0, 2
/* 0E9B34 802C5184 02221021 */  addu  $v0, $s1, $v0
/* 0E9B38 802C5188 02302021 */  addu  $a0, $s1, $s0
/* 0E9B3C 802C518C 80830110 */  lb    $v1, 0x110($a0)
/* 0E9B40 802C5190 8C420118 */  lw    $v0, 0x118($v0)
/* 0E9B44 802C5194 1C600005 */  bgtz  $v1, .L802C51AC
/* 0E9B48 802C5198 0045102A */   slt   $v0, $v0, $a1
/* 0E9B4C 802C519C 0C0B2279 */  jal   si_goto_end_case
/* 0E9B50 802C51A0 0220202D */   daddu $a0, $s1, $zero
/* 0E9B54 802C51A4 080B1470 */  j     func_802C51C0
/* 0E9B58 802C51A8 AE220008 */   sw    $v0, 8($s1)

.L802C51AC:
/* 0E9B5C 802C51AC 54400004 */  bnezl $v0, .L802C51C0
/* 0E9B60 802C51B0 A0800110 */   sb    $zero, 0x110($a0)
/* 0E9B64 802C51B4 0C0B2298 */  jal   si_goto_next_case
/* 0E9B68 802C51B8 0220202D */   daddu $a0, $s1, $zero
/* 0E9B6C 802C51BC AE220008 */  sw    $v0, 8($s1)
func_802C51C0:
.L802C51C0:
/* 0E9B70 802C51C0 24020002 */  addiu $v0, $zero, 2
/* 0E9B74 802C51C4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9B78 802C51C8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9B7C 802C51CC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9B80 802C51D0 03E00008 */  jr    $ra
/* 0E9B84 802C51D4 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_less_equal:
/* 0E9B88 802C51D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9B8C 802C51DC AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9B90 802C51E0 0080882D */  daddu $s1, $a0, $zero
/* 0E9B94 802C51E4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9B98 802C51E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9B9C 802C51EC 82300007 */  lb    $s0, 7($s1)
/* 0E9BA0 802C51F0 06010003 */  bgez  $s0, .L802C5200
/* 0E9BA4 802C51F4 8E25000C */   lw    $a1, 0xc($s1)
func_802C51F8:
/* 0E9BA8 802C51F8 080B147E */  j     func_802C51F8
/* 0E9BAC 802C51FC 00000000 */   nop   

.L802C5200:
/* 0E9BB0 802C5200 8CA50000 */  lw    $a1, ($a1)
/* 0E9BB4 802C5204 0C0B1EAF */  jal   get_variable
/* 0E9BB8 802C5208 0220202D */   daddu $a0, $s1, $zero
/* 0E9BBC 802C520C 0040282D */  daddu $a1, $v0, $zero
/* 0E9BC0 802C5210 00101080 */  sll   $v0, $s0, 2
/* 0E9BC4 802C5214 02221021 */  addu  $v0, $s1, $v0
/* 0E9BC8 802C5218 02302021 */  addu  $a0, $s1, $s0
/* 0E9BCC 802C521C 80830110 */  lb    $v1, 0x110($a0)
/* 0E9BD0 802C5220 8C420118 */  lw    $v0, 0x118($v0)
/* 0E9BD4 802C5224 1C600005 */  bgtz  $v1, .L802C523C
/* 0E9BD8 802C5228 00A2102A */   slt   $v0, $a1, $v0
/* 0E9BDC 802C522C 0C0B2279 */  jal   si_goto_end_case
/* 0E9BE0 802C5230 0220202D */   daddu $a0, $s1, $zero
/* 0E9BE4 802C5234 080B1494 */  j     func_802C5250
/* 0E9BE8 802C5238 AE220008 */   sw    $v0, 8($s1)

.L802C523C:
/* 0E9BEC 802C523C 50400004 */  beql  $v0, $zero, .L802C5250
/* 0E9BF0 802C5240 A0800110 */   sb    $zero, 0x110($a0)
/* 0E9BF4 802C5244 0C0B2298 */  jal   si_goto_next_case
/* 0E9BF8 802C5248 0220202D */   daddu $a0, $s1, $zero
/* 0E9BFC 802C524C AE220008 */  sw    $v0, 8($s1)
func_802C5250:
.L802C5250:
/* 0E9C00 802C5250 24020002 */  addiu $v0, $zero, 2
/* 0E9C04 802C5254 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9C08 802C5258 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9C0C 802C525C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9C10 802C5260 03E00008 */  jr    $ra
/* 0E9C14 802C5264 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_greater:
/* 0E9C18 802C5268 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9C1C 802C526C AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9C20 802C5270 0080882D */  daddu $s1, $a0, $zero
/* 0E9C24 802C5274 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9C28 802C5278 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9C2C 802C527C 82300007 */  lb    $s0, 7($s1)
/* 0E9C30 802C5280 06010003 */  bgez  $s0, .L802C5290
/* 0E9C34 802C5284 8E25000C */   lw    $a1, 0xc($s1)
func_802C5288:
/* 0E9C38 802C5288 080B14A2 */  j     func_802C5288
/* 0E9C3C 802C528C 00000000 */   nop   

.L802C5290:
/* 0E9C40 802C5290 8CA50000 */  lw    $a1, ($a1)
/* 0E9C44 802C5294 0C0B1EAF */  jal   get_variable
/* 0E9C48 802C5298 0220202D */   daddu $a0, $s1, $zero
/* 0E9C4C 802C529C 0040282D */  daddu $a1, $v0, $zero
/* 0E9C50 802C52A0 00101080 */  sll   $v0, $s0, 2
/* 0E9C54 802C52A4 02221021 */  addu  $v0, $s1, $v0
/* 0E9C58 802C52A8 02302021 */  addu  $a0, $s1, $s0
/* 0E9C5C 802C52AC 80830110 */  lb    $v1, 0x110($a0)
/* 0E9C60 802C52B0 8C420118 */  lw    $v0, 0x118($v0)
/* 0E9C64 802C52B4 1C600005 */  bgtz  $v1, .L802C52CC
/* 0E9C68 802C52B8 00A2102A */   slt   $v0, $a1, $v0
/* 0E9C6C 802C52BC 0C0B2279 */  jal   si_goto_end_case
/* 0E9C70 802C52C0 0220202D */   daddu $a0, $s1, $zero
/* 0E9C74 802C52C4 080B14B8 */  j     func_802C52E0
/* 0E9C78 802C52C8 AE220008 */   sw    $v0, 8($s1)

.L802C52CC:
/* 0E9C7C 802C52CC 54400004 */  bnezl $v0, .L802C52E0
/* 0E9C80 802C52D0 A0800110 */   sb    $zero, 0x110($a0)
/* 0E9C84 802C52D4 0C0B2298 */  jal   si_goto_next_case
/* 0E9C88 802C52D8 0220202D */   daddu $a0, $s1, $zero
/* 0E9C8C 802C52DC AE220008 */  sw    $v0, 8($s1)
func_802C52E0:
.L802C52E0:
/* 0E9C90 802C52E0 24020002 */  addiu $v0, $zero, 2
/* 0E9C94 802C52E4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9C98 802C52E8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9C9C 802C52EC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9CA0 802C52F0 03E00008 */  jr    $ra
/* 0E9CA4 802C52F4 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_greater_equal:
/* 0E9CA8 802C52F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9CAC 802C52FC AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9CB0 802C5300 0080882D */  daddu $s1, $a0, $zero
/* 0E9CB4 802C5304 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9CB8 802C5308 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9CBC 802C530C 82300007 */  lb    $s0, 7($s1)
/* 0E9CC0 802C5310 06010003 */  bgez  $s0, .L802C5320
/* 0E9CC4 802C5314 8E25000C */   lw    $a1, 0xc($s1)
func_802C5318:
/* 0E9CC8 802C5318 080B14C6 */  j     func_802C5318
/* 0E9CCC 802C531C 00000000 */   nop   

.L802C5320:
/* 0E9CD0 802C5320 8CA50000 */  lw    $a1, ($a1)
/* 0E9CD4 802C5324 0C0B1EAF */  jal   get_variable
/* 0E9CD8 802C5328 0220202D */   daddu $a0, $s1, $zero
/* 0E9CDC 802C532C 0040282D */  daddu $a1, $v0, $zero
/* 0E9CE0 802C5330 00101080 */  sll   $v0, $s0, 2
/* 0E9CE4 802C5334 02221021 */  addu  $v0, $s1, $v0
/* 0E9CE8 802C5338 02302021 */  addu  $a0, $s1, $s0
/* 0E9CEC 802C533C 80830110 */  lb    $v1, 0x110($a0)
/* 0E9CF0 802C5340 8C420118 */  lw    $v0, 0x118($v0)
/* 0E9CF4 802C5344 1C600005 */  bgtz  $v1, .L802C535C
/* 0E9CF8 802C5348 0045102A */   slt   $v0, $v0, $a1
/* 0E9CFC 802C534C 0C0B2279 */  jal   si_goto_end_case
/* 0E9D00 802C5350 0220202D */   daddu $a0, $s1, $zero
/* 0E9D04 802C5354 080B14DC */  j     func_802C5370
/* 0E9D08 802C5358 AE220008 */   sw    $v0, 8($s1)

.L802C535C:
/* 0E9D0C 802C535C 50400004 */  beql  $v0, $zero, .L802C5370
/* 0E9D10 802C5360 A0800110 */   sb    $zero, 0x110($a0)
/* 0E9D14 802C5364 0C0B2298 */  jal   si_goto_next_case
/* 0E9D18 802C5368 0220202D */   daddu $a0, $s1, $zero
/* 0E9D1C 802C536C AE220008 */  sw    $v0, 8($s1)
func_802C5370:
.L802C5370:
/* 0E9D20 802C5370 24020002 */  addiu $v0, $zero, 2
/* 0E9D24 802C5374 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9D28 802C5378 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9D2C 802C537C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9D30 802C5380 03E00008 */  jr    $ra
/* 0E9D34 802C5384 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_range:
/* 0E9D38 802C5388 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9D3C 802C538C AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9D40 802C5390 0080882D */  daddu $s1, $a0, $zero
/* 0E9D44 802C5394 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0E9D48 802C5398 AFB20018 */  sw    $s2, 0x18($sp)
/* 0E9D4C 802C539C AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9D50 802C53A0 82320007 */  lb    $s2, 7($s1)
/* 0E9D54 802C53A4 06410003 */  bgez  $s2, .L802C53B4
/* 0E9D58 802C53A8 8E30000C */   lw    $s0, 0xc($s1)
func_802C53AC:
/* 0E9D5C 802C53AC 080B14EB */  j     func_802C53AC
/* 0E9D60 802C53B0 00000000 */   nop   

.L802C53B4:
/* 0E9D64 802C53B4 8E050000 */  lw    $a1, ($s0)
/* 0E9D68 802C53B8 26100004 */  addiu $s0, $s0, 4
/* 0E9D6C 802C53BC 0C0B1EAF */  jal   get_variable
/* 0E9D70 802C53C0 0220202D */   daddu $a0, $s1, $zero
/* 0E9D74 802C53C4 0220202D */  daddu $a0, $s1, $zero
/* 0E9D78 802C53C8 8E050000 */  lw    $a1, ($s0)
/* 0E9D7C 802C53CC 0C0B1EAF */  jal   get_variable
/* 0E9D80 802C53D0 0040802D */   daddu $s0, $v0, $zero
/* 0E9D84 802C53D4 0040302D */  daddu $a2, $v0, $zero
/* 0E9D88 802C53D8 00121080 */  sll   $v0, $s2, 2
/* 0E9D8C 802C53DC 02221021 */  addu  $v0, $s1, $v0
/* 0E9D90 802C53E0 02322821 */  addu  $a1, $s1, $s2
/* 0E9D94 802C53E4 80A30110 */  lb    $v1, 0x110($a1)
/* 0E9D98 802C53E8 8C440118 */  lw    $a0, 0x118($v0)
/* 0E9D9C 802C53EC 1C600005 */  bgtz  $v1, .L802C5404
/* 0E9DA0 802C53F0 0090102A */   slt   $v0, $a0, $s0
/* 0E9DA4 802C53F4 0C0B2279 */  jal   si_goto_end_case
/* 0E9DA8 802C53F8 0220202D */   daddu $a0, $s1, $zero
/* 0E9DAC 802C53FC 080B150A */  j     func_802C5428
/* 0E9DB0 802C5400 AE220008 */   sw    $v0, 8($s1)

.L802C5404:
/* 0E9DB4 802C5404 14400005 */  bnez  $v0, .L802C541C
/* 0E9DB8 802C5408 00C4102A */   slt   $v0, $a2, $a0
/* 0E9DBC 802C540C 14400003 */  bnez  $v0, .L802C541C
/* 0E9DC0 802C5410 00000000 */   nop   
/* 0E9DC4 802C5414 080B150A */  j     func_802C5428
/* 0E9DC8 802C5418 A0A00110 */   sb    $zero, 0x110($a1)

.L802C541C:
/* 0E9DCC 802C541C 0C0B2298 */  jal   si_goto_next_case
/* 0E9DD0 802C5420 0220202D */   daddu $a0, $s1, $zero
/* 0E9DD4 802C5424 AE220008 */  sw    $v0, 8($s1)
func_802C5428:
/* 0E9DD8 802C5428 24020002 */  addiu $v0, $zero, 2
/* 0E9DDC 802C542C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0E9DE0 802C5430 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E9DE4 802C5434 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9DE8 802C5438 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9DEC 802C543C 03E00008 */  jr    $ra
/* 0E9DF0 802C5440 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_default:
/* 0E9DF4 802C5444 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E9DF8 802C5448 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9DFC 802C544C 0080802D */  daddu $s0, $a0, $zero
/* 0E9E00 802C5450 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E9E04 802C5454 82020007 */  lb    $v0, 7($s0)
/* 0E9E08 802C5458 04410003 */  bgez  $v0, .L802C5468
/* 0E9E0C 802C545C 02021821 */   addu  $v1, $s0, $v0
func_802C5460:
/* 0E9E10 802C5460 080B1518 */  j     func_802C5460
/* 0E9E14 802C5464 00000000 */   nop   

.L802C5468:
/* 0E9E18 802C5468 80620110 */  lb    $v0, 0x110($v1)
/* 0E9E1C 802C546C 18400003 */  blez  $v0, .L802C547C
/* 0E9E20 802C5470 00000000 */   nop   
/* 0E9E24 802C5474 080B1522 */  j     func_802C5488
/* 0E9E28 802C5478 A0600110 */   sb    $zero, 0x110($v1)

.L802C547C:
/* 0E9E2C 802C547C 0C0B2279 */  jal   si_goto_end_case
/* 0E9E30 802C5480 0200202D */   daddu $a0, $s0, $zero
/* 0E9E34 802C5484 AE020008 */  sw    $v0, 8($s0)
func_802C5488:
/* 0E9E38 802C5488 24020002 */  addiu $v0, $zero, 2
/* 0E9E3C 802C548C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E9E40 802C5490 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9E44 802C5494 03E00008 */  jr    $ra
/* 0E9E48 802C5498 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_case_AND:
/* 0E9E4C 802C549C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E9E50 802C54A0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9E54 802C54A4 0080802D */  daddu $s0, $a0, $zero
/* 0E9E58 802C54A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E9E5C 802C54AC 82030007 */  lb    $v1, 7($s0)
/* 0E9E60 802C54B0 8E04000C */  lw    $a0, 0xc($s0)
/* 0E9E64 802C54B4 04610003 */  bgez  $v1, .L802C54C4
/* 0E9E68 802C54B8 00031080 */   sll   $v0, $v1, 2
func_802C54BC:
/* 0E9E6C 802C54BC 080B152F */  j     func_802C54BC
/* 0E9E70 802C54C0 00000000 */   nop   

.L802C54C4:
/* 0E9E74 802C54C4 02021021 */  addu  $v0, $s0, $v0
/* 0E9E78 802C54C8 02032821 */  addu  $a1, $s0, $v1
/* 0E9E7C 802C54CC 8C840000 */  lw    $a0, ($a0)
/* 0E9E80 802C54D0 80A30110 */  lb    $v1, 0x110($a1)
/* 0E9E84 802C54D4 8C420118 */  lw    $v0, 0x118($v0)
/* 0E9E88 802C54D8 1C600005 */  bgtz  $v1, .L802C54F0
/* 0E9E8C 802C54DC 00821024 */   and   $v0, $a0, $v0
/* 0E9E90 802C54E0 0C0B2279 */  jal   si_goto_end_case
/* 0E9E94 802C54E4 0200202D */   daddu $a0, $s0, $zero
/* 0E9E98 802C54E8 080B1541 */  j     func_802C5504
/* 0E9E9C 802C54EC AE020008 */   sw    $v0, 8($s0)

.L802C54F0:
/* 0E9EA0 802C54F0 54400004 */  bnezl $v0, .L802C5504
/* 0E9EA4 802C54F4 A0A00110 */   sb    $zero, 0x110($a1)
/* 0E9EA8 802C54F8 0C0B2298 */  jal   si_goto_next_case
/* 0E9EAC 802C54FC 0200202D */   daddu $a0, $s0, $zero
/* 0E9EB0 802C5500 AE020008 */  sw    $v0, 8($s0)
func_802C5504:
.L802C5504:
/* 0E9EB4 802C5504 24020002 */  addiu $v0, $zero, 2
/* 0E9EB8 802C5508 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0E9EBC 802C550C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9EC0 802C5510 03E00008 */  jr    $ra
/* 0E9EC4 802C5514 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_case_equal_OR:
/* 0E9EC8 802C5518 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9ECC 802C551C AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9ED0 802C5520 0080882D */  daddu $s1, $a0, $zero
/* 0E9ED4 802C5524 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9ED8 802C5528 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9EDC 802C552C 82300007 */  lb    $s0, 7($s1)
/* 0E9EE0 802C5530 06010003 */  bgez  $s0, .L802C5540
/* 0E9EE4 802C5534 8E25000C */   lw    $a1, 0xc($s1)
func_802C5538:
/* 0E9EE8 802C5538 080B154E */  j     func_802C5538
/* 0E9EEC 802C553C 00000000 */   nop   

.L802C5540:
/* 0E9EF0 802C5540 8CA50000 */  lw    $a1, ($a1)
/* 0E9EF4 802C5544 0C0B1EAF */  jal   get_variable
/* 0E9EF8 802C5548 0220202D */   daddu $a0, $s1, $zero
/* 0E9EFC 802C554C 0040282D */  daddu $a1, $v0, $zero
/* 0E9F00 802C5550 00101080 */  sll   $v0, $s0, 2
/* 0E9F04 802C5554 02221021 */  addu  $v0, $s1, $v0
/* 0E9F08 802C5558 02302021 */  addu  $a0, $s1, $s0
/* 0E9F0C 802C555C 80830110 */  lb    $v1, 0x110($a0)
/* 0E9F10 802C5560 14600005 */  bnez  $v1, .L802C5578
/* 0E9F14 802C5564 8C420118 */   lw    $v0, 0x118($v0)
/* 0E9F18 802C5568 0C0B2279 */  jal   si_goto_end_case
/* 0E9F1C 802C556C 0220202D */   daddu $a0, $s1, $zero
/* 0E9F20 802C5570 080B1568 */  j     func_802C55A0
/* 0E9F24 802C5574 AE220008 */   sw    $v0, 8($s1)

.L802C5578:
/* 0E9F28 802C5578 14A20004 */  bne   $a1, $v0, .L802C558C
/* 0E9F2C 802C557C 2402FFFF */   addiu $v0, $zero, -1
/* 0E9F30 802C5580 2402FFFF */  addiu $v0, $zero, -1
/* 0E9F34 802C5584 080B1568 */  j     func_802C55A0
/* 0E9F38 802C5588 A0820110 */   sb    $v0, 0x110($a0)

.L802C558C:
/* 0E9F3C 802C558C 10620005 */  beq   $v1, $v0, .L802C55A4
/* 0E9F40 802C5590 24020002 */   addiu $v0, $zero, 2
/* 0E9F44 802C5594 0C0B2298 */  jal   si_goto_next_case
/* 0E9F48 802C5598 0220202D */   daddu $a0, $s1, $zero
/* 0E9F4C 802C559C AE220008 */  sw    $v0, 8($s1)
func_802C55A0:
/* 0E9F50 802C55A0 24020002 */  addiu $v0, $zero, 2
.L802C55A4:
/* 0E9F54 802C55A4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9F58 802C55A8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E9F5C 802C55AC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E9F60 802C55B0 03E00008 */  jr    $ra
/* 0E9F64 802C55B4 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_case_equal_AND:
/* 0E9F68 802C55B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E9F6C 802C55BC AFB10014 */  sw    $s1, 0x14($sp)
/* 0E9F70 802C55C0 0080882D */  daddu $s1, $a0, $zero
/* 0E9F74 802C55C4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E9F78 802C55C8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E9F7C 802C55CC 82300007 */  lb    $s0, 7($s1)
/* 0E9F80 802C55D0 06010003 */  bgez  $s0, .L802C55E0
/* 0E9F84 802C55D4 8E25000C */   lw    $a1, 0xc($s1)
func_802C55D8:
/* 0E9F88 802C55D8 080B1576 */  j     func_802C55D8
/* 0E9F8C 802C55DC 00000000 */   nop   

.L802C55E0:
/* 0E9F90 802C55E0 8CA50000 */  lw    $a1, ($a1)
/* 0E9F94 802C55E4 0C0B1EAF */  jal   get_variable
/* 0E9F98 802C55E8 0220202D */   daddu $a0, $s1, $zero
/* 0E9F9C 802C55EC 0040302D */  daddu $a2, $v0, $zero
/* 0E9FA0 802C55F0 00101080 */  sll   $v0, $s0, 2
/* 0E9FA4 802C55F4 02221021 */  addu  $v0, $s1, $v0
/* 0E9FA8 802C55F8 02301821 */  addu  $v1, $s1, $s0
/* 0E9FAC 802C55FC 80640110 */  lb    $a0, 0x110($v1)
/* 0E9FB0 802C5600 8C420118 */  lw    $v0, 0x118($v0)
/* 0E9FB4 802C5604 14800005 */  bnez  $a0, .L802C561C
/* 0E9FB8 802C5608 2405FFFE */   addiu $a1, $zero, -2
/* 0E9FBC 802C560C 0C0B2279 */  jal   si_goto_end_case
/* 0E9FC0 802C5610 0220202D */   daddu $a0, $s1, $zero
/* 0E9FC4 802C5614 080B1591 */  j     func_802C5644
/* 0E9FC8 802C5618 AE220008 */   sw    $v0, 8($s1)

.L802C561C:
/* 0E9FCC 802C561C 10850006 */  beq   $a0, $a1, .L802C5638
/* 0E9FD0 802C5620 0220202D */   daddu $a0, $s1, $zero
/* 0E9FD4 802C5624 54C20004 */  bnel  $a2, $v0, .L802C5638
/* 0E9FD8 802C5628 A0650110 */   sb    $a1, 0x110($v1)
/* 0E9FDC 802C562C 2402FFFF */  addiu $v0, $zero, -1
/* 0E9FE0 802C5630 080B1591 */  j     func_802C5644
/* 0E9FE4 802C5634 A0620110 */   sb    $v0, 0x110($v1)

.L802C5638:
/* 0E9FE8 802C5638 0C0B2298 */  jal   si_goto_next_case
/* 0E9FEC 802C563C 00000000 */   nop   
/* 0E9FF0 802C5640 AE220008 */  sw    $v0, 8($s1)
func_802C5644:
/* 0E9FF4 802C5644 24020002 */  addiu $v0, $zero, 2
/* 0E9FF8 802C5648 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E9FFC 802C564C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA000 802C5650 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA004 802C5654 03E00008 */  jr    $ra
/* 0EA008 802C5658 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_end_case_group:
/* 0EA00C 802C565C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EA010 802C5660 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA014 802C5664 0080802D */  daddu $s0, $a0, $zero
/* 0EA018 802C5668 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EA01C 802C566C 82020007 */  lb    $v0, 7($s0)
/* 0EA020 802C5670 04410003 */  bgez  $v0, .L802C5680
/* 0EA024 802C5674 02021821 */   addu  $v1, $s0, $v0
func_802C5678:
/* 0EA028 802C5678 080B159E */  j     func_802C5678
/* 0EA02C 802C567C 00000000 */   nop   

.L802C5680:
/* 0EA030 802C5680 80640110 */  lb    $a0, 0x110($v1)
/* 0EA034 802C5684 14800003 */  bnez  $a0, .L802C5694
/* 0EA038 802C5688 2402FFFF */   addiu $v0, $zero, -1
/* 0EA03C 802C568C 080B15AD */  j     func_802C56B4
/* 0EA040 802C5690 0200202D */   daddu $a0, $s0, $zero

.L802C5694:
/* 0EA044 802C5694 10820006 */  beq   $a0, $v0, .L802C56B0
/* 0EA048 802C5698 0200202D */   daddu $a0, $s0, $zero
/* 0EA04C 802C569C 24020001 */  addiu $v0, $zero, 1
/* 0EA050 802C56A0 0C0B2298 */  jal   si_goto_next_case
/* 0EA054 802C56A4 A0620110 */   sb    $v0, 0x110($v1)
/* 0EA058 802C56A8 080B15B0 */  j     func_802C56C0
/* 0EA05C 802C56AC AE020008 */   sw    $v0, 8($s0)

.L802C56B0:
/* 0EA060 802C56B0 A0600110 */  sb    $zero, 0x110($v1)
func_802C56B4:
/* 0EA064 802C56B4 0C0B2279 */  jal   si_goto_end_case
/* 0EA068 802C56B8 00000000 */   nop   
/* 0EA06C 802C56BC AE020008 */  sw    $v0, 8($s0)
func_802C56C0:
/* 0EA070 802C56C0 24020002 */  addiu $v0, $zero, 2
/* 0EA074 802C56C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EA078 802C56C8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA07C 802C56CC 03E00008 */  jr    $ra
/* 0EA080 802C56D0 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_break_case:
/* 0EA084 802C56D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EA088 802C56D8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA08C 802C56DC 0080802D */  daddu $s0, $a0, $zero
/* 0EA090 802C56E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EA094 802C56E4 82020007 */  lb    $v0, 7($s0)
/* 0EA098 802C56E8 04410003 */  bgez  $v0, .L802C56F8
/* 0EA09C 802C56EC 00000000 */   nop   
func_802C56F0:
/* 0EA0A0 802C56F0 080B15BC */  j     func_802C56F0
/* 0EA0A4 802C56F4 00000000 */   nop   

.L802C56F8:
/* 0EA0A8 802C56F8 0C0B2279 */  jal   si_goto_end_case
/* 0EA0AC 802C56FC 0200202D */   daddu $a0, $s0, $zero
/* 0EA0B0 802C5700 AE020008 */  sw    $v0, 8($s0)
/* 0EA0B4 802C5704 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EA0B8 802C5708 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA0BC 802C570C 24020002 */  addiu $v0, $zero, 2
/* 0EA0C0 802C5710 03E00008 */  jr    $ra
/* 0EA0C4 802C5714 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_end_switch:
/* 0EA0C8 802C5718 80820007 */  lb    $v0, 7($a0)
/* 0EA0CC 802C571C 04430003 */  bgezl $v0, .L802C572C
/* 0EA0D0 802C5720 00821021 */   addu  $v0, $a0, $v0
func_802C5724:
/* 0EA0D4 802C5724 080B15C9 */  j     func_802C5724
/* 0EA0D8 802C5728 00000000 */   nop   

.L802C572C:
/* 0EA0DC 802C572C A0400110 */  sb    $zero, 0x110($v0)
/* 0EA0E0 802C5730 90820007 */  lbu   $v0, 7($a0)
/* 0EA0E4 802C5734 2442FFFF */  addiu $v0, $v0, -1
/* 0EA0E8 802C5738 A0820007 */  sb    $v0, 7($a0)
/* 0EA0EC 802C573C 03E00008 */  jr    $ra
/* 0EA0F0 802C5740 24020002 */   addiu $v0, $zero, 2

si_handle_set_var:
/* 0EA0F4 802C5744 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA0F8 802C5748 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA0FC 802C574C 0080802D */  daddu $s0, $a0, $zero
/* 0EA100 802C5750 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA104 802C5754 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA108 802C5758 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA10C 802C575C 8C450004 */  lw    $a1, 4($v0)
/* 0EA110 802C5760 0C0B1EAF */  jal   get_variable
/* 0EA114 802C5764 8C510000 */   lw    $s1, ($v0)
/* 0EA118 802C5768 0200202D */  daddu $a0, $s0, $zero
/* 0EA11C 802C576C 0220282D */  daddu $a1, $s1, $zero
/* 0EA120 802C5770 0C0B2026 */  jal   set_variable
/* 0EA124 802C5774 0040302D */   daddu $a2, $v0, $zero
/* 0EA128 802C5778 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA12C 802C577C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA130 802C5780 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA134 802C5784 24020002 */  addiu $v0, $zero, 2
/* 0EA138 802C5788 03E00008 */  jr    $ra
/* 0EA13C 802C578C 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_set_const:
/* 0EA140 802C5790 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EA144 802C5794 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EA148 802C5798 8C82000C */  lw    $v0, 0xc($a0)
/* 0EA14C 802C579C 8C450000 */  lw    $a1, ($v0)
/* 0EA150 802C57A0 0C0B2026 */  jal   set_variable
/* 0EA154 802C57A4 8C460004 */   lw    $a2, 4($v0)
/* 0EA158 802C57A8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EA15C 802C57AC 24020002 */  addiu $v0, $zero, 2
/* 0EA160 802C57B0 03E00008 */  jr    $ra
/* 0EA164 802C57B4 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_set_float:
/* 0EA168 802C57B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA16C 802C57BC AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA170 802C57C0 0080802D */  daddu $s0, $a0, $zero
/* 0EA174 802C57C4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA178 802C57C8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA17C 802C57CC 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA180 802C57D0 8C450004 */  lw    $a1, 4($v0)
/* 0EA184 802C57D4 0C0B210B */  jal   get_float_variable
/* 0EA188 802C57D8 8C510000 */   lw    $s1, ($v0)
/* 0EA18C 802C57DC 0200202D */  daddu $a0, $s0, $zero
/* 0EA190 802C57E0 44060000 */  mfc1  $a2, $f0
/* 0EA194 802C57E4 0C0B2190 */  jal   set_float_variable
/* 0EA198 802C57E8 0220282D */   daddu $a1, $s1, $zero
/* 0EA19C 802C57EC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA1A0 802C57F0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA1A4 802C57F4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA1A8 802C57F8 24020002 */  addiu $v0, $zero, 2
/* 0EA1AC 802C57FC 03E00008 */  jr    $ra
/* 0EA1B0 802C5800 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_add:
/* 0EA1B4 802C5804 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA1B8 802C5808 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA1BC 802C580C 0080882D */  daddu $s1, $a0, $zero
/* 0EA1C0 802C5810 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA1C4 802C5814 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA1C8 802C5818 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA1CC 802C581C 8E22000C */  lw    $v0, 0xc($s1)
/* 0EA1D0 802C5820 8C450004 */  lw    $a1, 4($v0)
/* 0EA1D4 802C5824 0C0B1EAF */  jal   get_variable
/* 0EA1D8 802C5828 8C520000 */   lw    $s2, ($v0)
/* 0EA1DC 802C582C 0040802D */  daddu $s0, $v0, $zero
/* 0EA1E0 802C5830 0220202D */  daddu $a0, $s1, $zero
/* 0EA1E4 802C5834 0C0B1EAF */  jal   get_variable
/* 0EA1E8 802C5838 0240282D */   daddu $a1, $s2, $zero
/* 0EA1EC 802C583C 0220202D */  daddu $a0, $s1, $zero
/* 0EA1F0 802C5840 0240282D */  daddu $a1, $s2, $zero
/* 0EA1F4 802C5844 0C0B2026 */  jal   set_variable
/* 0EA1F8 802C5848 02023021 */   addu  $a2, $s0, $v0
/* 0EA1FC 802C584C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA200 802C5850 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA204 802C5854 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA208 802C5858 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA20C 802C585C 24020002 */  addiu $v0, $zero, 2
/* 0EA210 802C5860 03E00008 */  jr    $ra
/* 0EA214 802C5864 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_subtract:
/* 0EA218 802C5868 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA21C 802C586C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA220 802C5870 0080882D */  daddu $s1, $a0, $zero
/* 0EA224 802C5874 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA228 802C5878 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA22C 802C587C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA230 802C5880 8E22000C */  lw    $v0, 0xc($s1)
/* 0EA234 802C5884 8C450004 */  lw    $a1, 4($v0)
/* 0EA238 802C5888 0C0B1EAF */  jal   get_variable
/* 0EA23C 802C588C 8C520000 */   lw    $s2, ($v0)
/* 0EA240 802C5890 0040802D */  daddu $s0, $v0, $zero
/* 0EA244 802C5894 0220202D */  daddu $a0, $s1, $zero
/* 0EA248 802C5898 0C0B1EAF */  jal   get_variable
/* 0EA24C 802C589C 0240282D */   daddu $a1, $s2, $zero
/* 0EA250 802C58A0 0220202D */  daddu $a0, $s1, $zero
/* 0EA254 802C58A4 0240282D */  daddu $a1, $s2, $zero
/* 0EA258 802C58A8 0C0B2026 */  jal   set_variable
/* 0EA25C 802C58AC 00503023 */   subu  $a2, $v0, $s0
/* 0EA260 802C58B0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA264 802C58B4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA268 802C58B8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA26C 802C58BC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA270 802C58C0 24020002 */  addiu $v0, $zero, 2
/* 0EA274 802C58C4 03E00008 */  jr    $ra
/* 0EA278 802C58C8 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_multiply:
/* 0EA27C 802C58CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA280 802C58D0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA284 802C58D4 0080882D */  daddu $s1, $a0, $zero
/* 0EA288 802C58D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA28C 802C58DC AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA290 802C58E0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA294 802C58E4 8E22000C */  lw    $v0, 0xc($s1)
/* 0EA298 802C58E8 8C450004 */  lw    $a1, 4($v0)
/* 0EA29C 802C58EC 0C0B1EAF */  jal   get_variable
/* 0EA2A0 802C58F0 8C520000 */   lw    $s2, ($v0)
/* 0EA2A4 802C58F4 0040802D */  daddu $s0, $v0, $zero
/* 0EA2A8 802C58F8 0220202D */  daddu $a0, $s1, $zero
/* 0EA2AC 802C58FC 0C0B1EAF */  jal   get_variable
/* 0EA2B0 802C5900 0240282D */   daddu $a1, $s2, $zero
/* 0EA2B4 802C5904 02020018 */  mult  $s0, $v0
/* 0EA2B8 802C5908 0220202D */  daddu $a0, $s1, $zero
/* 0EA2BC 802C590C 00003012 */  mflo  $a2
/* 0EA2C0 802C5910 0C0B2026 */  jal   set_variable
/* 0EA2C4 802C5914 0240282D */   daddu $a1, $s2, $zero
/* 0EA2C8 802C5918 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA2CC 802C591C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA2D0 802C5920 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA2D4 802C5924 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA2D8 802C5928 24020002 */  addiu $v0, $zero, 2
/* 0EA2DC 802C592C 03E00008 */  jr    $ra
/* 0EA2E0 802C5930 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_divide:
/* 0EA2E4 802C5934 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA2E8 802C5938 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA2EC 802C593C 0080882D */  daddu $s1, $a0, $zero
/* 0EA2F0 802C5940 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA2F4 802C5944 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA2F8 802C5948 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA2FC 802C594C 8E22000C */  lw    $v0, 0xc($s1)
/* 0EA300 802C5950 8C450004 */  lw    $a1, 4($v0)
/* 0EA304 802C5954 0C0B1EAF */  jal   get_variable
/* 0EA308 802C5958 8C520000 */   lw    $s2, ($v0)
/* 0EA30C 802C595C 0220202D */  daddu $a0, $s1, $zero
/* 0EA310 802C5960 0240282D */  daddu $a1, $s2, $zero
/* 0EA314 802C5964 0C0B1EAF */  jal   get_variable
/* 0EA318 802C5968 0040802D */   daddu $s0, $v0, $zero
/* 0EA31C 802C596C 16000002 */  bnez  $s0, .L802C5978
/* 0EA320 802C5970 0050001A */   div   $zero, $v0, $s0
/* 0EA324 802C5974 0007000D */  break 7
.L802C5978:
/* 0EA328 802C5978 2401FFFF */  addiu $at, $zero, -1
/* 0EA32C 802C597C 16010004 */  bne   $s0, $at, .L802C5990
/* 0EA330 802C5980 3C018000 */   lui   $at, 0x8000
/* 0EA334 802C5984 14410002 */  bne   $v0, $at, .L802C5990
/* 0EA338 802C5988 00000000 */   nop   
/* 0EA33C 802C598C 0006000D */  break 6
.L802C5990:
/* 0EA340 802C5990 00003012 */  mflo  $a2
/* 0EA344 802C5994 0220202D */  daddu $a0, $s1, $zero
/* 0EA348 802C5998 0C0B2026 */  jal   set_variable
/* 0EA34C 802C599C 0240282D */   daddu $a1, $s2, $zero
/* 0EA350 802C59A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA354 802C59A4 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA358 802C59A8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA35C 802C59AC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA360 802C59B0 24020002 */  addiu $v0, $zero, 2
/* 0EA364 802C59B4 03E00008 */  jr    $ra
/* 0EA368 802C59B8 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_mod:
/* 0EA36C 802C59BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EA370 802C59C0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA374 802C59C4 0080882D */  daddu $s1, $a0, $zero
/* 0EA378 802C59C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA37C 802C59CC AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA380 802C59D0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA384 802C59D4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0EA388 802C59D8 8E22000C */  lw    $v0, 0xc($s1)
/* 0EA38C 802C59DC 8C450004 */  lw    $a1, 4($v0)
/* 0EA390 802C59E0 0C0B1EAF */  jal   get_variable
/* 0EA394 802C59E4 8C520000 */   lw    $s2, ($v0)
/* 0EA398 802C59E8 3C013FE0 */  lui   $at, 0x3fe0
/* 0EA39C 802C59EC 4481A800 */  mtc1  $at, $f21
/* 0EA3A0 802C59F0 4480A000 */  mtc1  $zero, $f20
/* 0EA3A4 802C59F4 44820000 */  mtc1  $v0, $f0
/* 0EA3A8 802C59F8 00000000 */  nop   
/* 0EA3AC 802C59FC 46800021 */  cvt.d.w $f0, $f0
/* 0EA3B0 802C5A00 46340000 */  add.d $f0, $f0, $f20
/* 0EA3B4 802C5A04 0220202D */  daddu $a0, $s1, $zero
/* 0EA3B8 802C5A08 4620008D */  trunc.w.d $f2, $f0
/* 0EA3BC 802C5A0C 44101000 */  mfc1  $s0, $f2
/* 0EA3C0 802C5A10 0C0B1EAF */  jal   get_variable
/* 0EA3C4 802C5A14 0240282D */   daddu $a1, $s2, $zero
/* 0EA3C8 802C5A18 44820000 */  mtc1  $v0, $f0
/* 0EA3CC 802C5A1C 00000000 */  nop   
/* 0EA3D0 802C5A20 46800021 */  cvt.d.w $f0, $f0
/* 0EA3D4 802C5A24 46340000 */  add.d $f0, $f0, $f20
/* 0EA3D8 802C5A28 4620008D */  trunc.w.d $f2, $f0
/* 0EA3DC 802C5A2C 44021000 */  mfc1  $v0, $f2
/* 0EA3E0 802C5A30 16000002 */  bnez  $s0, .L802C5A3C
/* 0EA3E4 802C5A34 0050001A */   div   $zero, $v0, $s0
/* 0EA3E8 802C5A38 0007000D */  break 7
.L802C5A3C:
/* 0EA3EC 802C5A3C 2401FFFF */  addiu $at, $zero, -1
/* 0EA3F0 802C5A40 16010004 */  bne   $s0, $at, .L802C5A54
/* 0EA3F4 802C5A44 3C018000 */   lui   $at, 0x8000
/* 0EA3F8 802C5A48 14410002 */  bne   $v0, $at, .L802C5A54
/* 0EA3FC 802C5A4C 00000000 */   nop   
/* 0EA400 802C5A50 0006000D */  break 6
.L802C5A54:
/* 0EA404 802C5A54 00003010 */  mfhi  $a2
/* 0EA408 802C5A58 0220202D */  daddu $a0, $s1, $zero
/* 0EA40C 802C5A5C 0C0B2026 */  jal   set_variable
/* 0EA410 802C5A60 0240282D */   daddu $a1, $s2, $zero
/* 0EA414 802C5A64 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA418 802C5A68 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA41C 802C5A6C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA420 802C5A70 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA424 802C5A74 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0EA428 802C5A78 24020002 */  addiu $v0, $zero, 2
/* 0EA42C 802C5A7C 03E00008 */  jr    $ra
/* 0EA430 802C5A80 27BD0028 */   addiu $sp, $sp, 0x28

si_handle_addF:
/* 0EA434 802C5A84 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EA438 802C5A88 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA43C 802C5A8C 0080802D */  daddu $s0, $a0, $zero
/* 0EA440 802C5A90 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA444 802C5A94 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA448 802C5A98 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0EA44C 802C5A9C 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA450 802C5AA0 8C450004 */  lw    $a1, 4($v0)
/* 0EA454 802C5AA4 0C0B210B */  jal   get_float_variable
/* 0EA458 802C5AA8 8C510000 */   lw    $s1, ($v0)
/* 0EA45C 802C5AAC 46000506 */  mov.s $f20, $f0
/* 0EA460 802C5AB0 0200202D */  daddu $a0, $s0, $zero
/* 0EA464 802C5AB4 0C0B210B */  jal   get_float_variable
/* 0EA468 802C5AB8 0220282D */   daddu $a1, $s1, $zero
/* 0EA46C 802C5ABC 4600A500 */  add.s $f20, $f20, $f0
/* 0EA470 802C5AC0 0200202D */  daddu $a0, $s0, $zero
/* 0EA474 802C5AC4 4406A000 */  mfc1  $a2, $f20
/* 0EA478 802C5AC8 0C0B2190 */  jal   set_float_variable
/* 0EA47C 802C5ACC 0220282D */   daddu $a1, $s1, $zero
/* 0EA480 802C5AD0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA484 802C5AD4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA488 802C5AD8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA48C 802C5ADC D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0EA490 802C5AE0 24020002 */  addiu $v0, $zero, 2
/* 0EA494 802C5AE4 03E00008 */  jr    $ra
/* 0EA498 802C5AE8 27BD0028 */   addiu $sp, $sp, 0x28

si_handle_subtractF:
/* 0EA49C 802C5AEC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EA4A0 802C5AF0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA4A4 802C5AF4 0080802D */  daddu $s0, $a0, $zero
/* 0EA4A8 802C5AF8 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA4AC 802C5AFC AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA4B0 802C5B00 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0EA4B4 802C5B04 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA4B8 802C5B08 8C450004 */  lw    $a1, 4($v0)
/* 0EA4BC 802C5B0C 0C0B210B */  jal   get_float_variable
/* 0EA4C0 802C5B10 8C510000 */   lw    $s1, ($v0)
/* 0EA4C4 802C5B14 46000506 */  mov.s $f20, $f0
/* 0EA4C8 802C5B18 0200202D */  daddu $a0, $s0, $zero
/* 0EA4CC 802C5B1C 0C0B210B */  jal   get_float_variable
/* 0EA4D0 802C5B20 0220282D */   daddu $a1, $s1, $zero
/* 0EA4D4 802C5B24 46140001 */  sub.s $f0, $f0, $f20
/* 0EA4D8 802C5B28 0200202D */  daddu $a0, $s0, $zero
/* 0EA4DC 802C5B2C 44060000 */  mfc1  $a2, $f0
/* 0EA4E0 802C5B30 0C0B2190 */  jal   set_float_variable
/* 0EA4E4 802C5B34 0220282D */   daddu $a1, $s1, $zero
/* 0EA4E8 802C5B38 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA4EC 802C5B3C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA4F0 802C5B40 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA4F4 802C5B44 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0EA4F8 802C5B48 24020002 */  addiu $v0, $zero, 2
/* 0EA4FC 802C5B4C 03E00008 */  jr    $ra
/* 0EA500 802C5B50 27BD0028 */   addiu $sp, $sp, 0x28

si_handle_multiplyF:
/* 0EA504 802C5B54 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EA508 802C5B58 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA50C 802C5B5C 0080802D */  daddu $s0, $a0, $zero
/* 0EA510 802C5B60 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA514 802C5B64 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA518 802C5B68 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0EA51C 802C5B6C 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA520 802C5B70 8C450004 */  lw    $a1, 4($v0)
/* 0EA524 802C5B74 0C0B210B */  jal   get_float_variable
/* 0EA528 802C5B78 8C510000 */   lw    $s1, ($v0)
/* 0EA52C 802C5B7C 46000506 */  mov.s $f20, $f0
/* 0EA530 802C5B80 0200202D */  daddu $a0, $s0, $zero
/* 0EA534 802C5B84 0C0B210B */  jal   get_float_variable
/* 0EA538 802C5B88 0220282D */   daddu $a1, $s1, $zero
/* 0EA53C 802C5B8C 4600A502 */  mul.s $f20, $f20, $f0
/* 0EA540 802C5B90 00000000 */  nop   
/* 0EA544 802C5B94 0200202D */  daddu $a0, $s0, $zero
/* 0EA548 802C5B98 4406A000 */  mfc1  $a2, $f20
/* 0EA54C 802C5B9C 0C0B2190 */  jal   set_float_variable
/* 0EA550 802C5BA0 0220282D */   daddu $a1, $s1, $zero
/* 0EA554 802C5BA4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA558 802C5BA8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA55C 802C5BAC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA560 802C5BB0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0EA564 802C5BB4 24020002 */  addiu $v0, $zero, 2
/* 0EA568 802C5BB8 03E00008 */  jr    $ra
/* 0EA56C 802C5BBC 27BD0028 */   addiu $sp, $sp, 0x28

si_handle_divideF:
/* 0EA570 802C5BC0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EA574 802C5BC4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA578 802C5BC8 0080802D */  daddu $s0, $a0, $zero
/* 0EA57C 802C5BCC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA580 802C5BD0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA584 802C5BD4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0EA588 802C5BD8 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA58C 802C5BDC 8C450004 */  lw    $a1, 4($v0)
/* 0EA590 802C5BE0 0C0B210B */  jal   get_float_variable
/* 0EA594 802C5BE4 8C510000 */   lw    $s1, ($v0)
/* 0EA598 802C5BE8 46000506 */  mov.s $f20, $f0
/* 0EA59C 802C5BEC 0200202D */  daddu $a0, $s0, $zero
/* 0EA5A0 802C5BF0 0C0B210B */  jal   get_float_variable
/* 0EA5A4 802C5BF4 0220282D */   daddu $a1, $s1, $zero
/* 0EA5A8 802C5BF8 0200202D */  daddu $a0, $s0, $zero
/* 0EA5AC 802C5BFC 46140003 */  div.s $f0, $f0, $f20
/* 0EA5B0 802C5C00 44060000 */  mfc1  $a2, $f0
/* 0EA5B4 802C5C04 0C0B2190 */  jal   set_float_variable
/* 0EA5B8 802C5C08 0220282D */   daddu $a1, $s1, $zero
/* 0EA5BC 802C5C0C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA5C0 802C5C10 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA5C4 802C5C14 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA5C8 802C5C18 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0EA5CC 802C5C1C 24020002 */  addiu $v0, $zero, 2
/* 0EA5D0 802C5C20 03E00008 */  jr    $ra
/* 0EA5D4 802C5C24 27BD0028 */   addiu $sp, $sp, 0x28

si_handle_set_int_buffer_ptr:
/* 0EA5D8 802C5C28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EA5DC 802C5C2C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA5E0 802C5C30 0080802D */  daddu $s0, $a0, $zero
/* 0EA5E4 802C5C34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EA5E8 802C5C38 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA5EC 802C5C3C 0C0B1EAF */  jal   get_variable
/* 0EA5F0 802C5C40 8C450000 */   lw    $a1, ($v0)
/* 0EA5F4 802C5C44 AE020138 */  sw    $v0, 0x138($s0)
/* 0EA5F8 802C5C48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EA5FC 802C5C4C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA600 802C5C50 24020002 */  addiu $v0, $zero, 2
/* 0EA604 802C5C54 03E00008 */  jr    $ra
/* 0EA608 802C5C58 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_set_float_buffer_ptr:
/* 0EA60C 802C5C5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EA610 802C5C60 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA614 802C5C64 0080802D */  daddu $s0, $a0, $zero
/* 0EA618 802C5C68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EA61C 802C5C6C 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA620 802C5C70 0C0B1EAF */  jal   get_variable
/* 0EA624 802C5C74 8C450000 */   lw    $a1, ($v0)
/* 0EA628 802C5C78 AE020138 */  sw    $v0, 0x138($s0)
/* 0EA62C 802C5C7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EA630 802C5C80 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA634 802C5C84 24020002 */  addiu $v0, $zero, 2
/* 0EA638 802C5C88 03E00008 */  jr    $ra
/* 0EA63C 802C5C8C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_get_1_word:
/* 0EA640 802C5C90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EA644 802C5C94 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EA648 802C5C98 8C83000C */  lw    $v1, 0xc($a0)
/* 0EA64C 802C5C9C 8C820138 */  lw    $v0, 0x138($a0)
/* 0EA650 802C5CA0 8C650000 */  lw    $a1, ($v1)
/* 0EA654 802C5CA4 8C460000 */  lw    $a2, ($v0)
/* 0EA658 802C5CA8 24420004 */  addiu $v0, $v0, 4
/* 0EA65C 802C5CAC 0C0B2026 */  jal   set_variable
/* 0EA660 802C5CB0 AC820138 */   sw    $v0, 0x138($a0)
/* 0EA664 802C5CB4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EA668 802C5CB8 24020002 */  addiu $v0, $zero, 2
/* 0EA66C 802C5CBC 03E00008 */  jr    $ra
/* 0EA670 802C5CC0 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_get_2_word:
/* 0EA674 802C5CC4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA678 802C5CC8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA67C 802C5CCC 0080802D */  daddu $s0, $a0, $zero
/* 0EA680 802C5CD0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA684 802C5CD4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA688 802C5CD8 8E11000C */  lw    $s1, 0xc($s0)
/* 0EA68C 802C5CDC 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA690 802C5CE0 8E250000 */  lw    $a1, ($s1)
/* 0EA694 802C5CE4 26310004 */  addiu $s1, $s1, 4
/* 0EA698 802C5CE8 8C460000 */  lw    $a2, ($v0)
/* 0EA69C 802C5CEC 24420004 */  addiu $v0, $v0, 4
/* 0EA6A0 802C5CF0 0C0B2026 */  jal   set_variable
/* 0EA6A4 802C5CF4 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA6A8 802C5CF8 0200202D */  daddu $a0, $s0, $zero
/* 0EA6AC 802C5CFC 8C820138 */  lw    $v0, 0x138($a0)
/* 0EA6B0 802C5D00 8E250000 */  lw    $a1, ($s1)
/* 0EA6B4 802C5D04 8C460000 */  lw    $a2, ($v0)
/* 0EA6B8 802C5D08 24420004 */  addiu $v0, $v0, 4
/* 0EA6BC 802C5D0C 0C0B2026 */  jal   set_variable
/* 0EA6C0 802C5D10 AC820138 */   sw    $v0, 0x138($a0)
/* 0EA6C4 802C5D14 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA6C8 802C5D18 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA6CC 802C5D1C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA6D0 802C5D20 24020002 */  addiu $v0, $zero, 2
/* 0EA6D4 802C5D24 03E00008 */  jr    $ra
/* 0EA6D8 802C5D28 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_3_word:
/* 0EA6DC 802C5D2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA6E0 802C5D30 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA6E4 802C5D34 0080802D */  daddu $s0, $a0, $zero
/* 0EA6E8 802C5D38 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA6EC 802C5D3C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA6F0 802C5D40 8E11000C */  lw    $s1, 0xc($s0)
/* 0EA6F4 802C5D44 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA6F8 802C5D48 8E250000 */  lw    $a1, ($s1)
/* 0EA6FC 802C5D4C 26310004 */  addiu $s1, $s1, 4
/* 0EA700 802C5D50 8C460000 */  lw    $a2, ($v0)
/* 0EA704 802C5D54 24420004 */  addiu $v0, $v0, 4
/* 0EA708 802C5D58 0C0B2026 */  jal   set_variable
/* 0EA70C 802C5D5C AE020138 */   sw    $v0, 0x138($s0)
/* 0EA710 802C5D60 8E250000 */  lw    $a1, ($s1)
/* 0EA714 802C5D64 26310004 */  addiu $s1, $s1, 4
/* 0EA718 802C5D68 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA71C 802C5D6C 0200202D */  daddu $a0, $s0, $zero
/* 0EA720 802C5D70 8C460000 */  lw    $a2, ($v0)
/* 0EA724 802C5D74 24420004 */  addiu $v0, $v0, 4
/* 0EA728 802C5D78 0C0B2026 */  jal   set_variable
/* 0EA72C 802C5D7C AE020138 */   sw    $v0, 0x138($s0)
/* 0EA730 802C5D80 0200202D */  daddu $a0, $s0, $zero
/* 0EA734 802C5D84 8C820138 */  lw    $v0, 0x138($a0)
/* 0EA738 802C5D88 8E250000 */  lw    $a1, ($s1)
/* 0EA73C 802C5D8C 8C460000 */  lw    $a2, ($v0)
/* 0EA740 802C5D90 24420004 */  addiu $v0, $v0, 4
/* 0EA744 802C5D94 0C0B2026 */  jal   set_variable
/* 0EA748 802C5D98 AC820138 */   sw    $v0, 0x138($a0)
/* 0EA74C 802C5D9C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA750 802C5DA0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA754 802C5DA4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA758 802C5DA8 24020002 */  addiu $v0, $zero, 2
/* 0EA75C 802C5DAC 03E00008 */  jr    $ra
/* 0EA760 802C5DB0 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_4_word:
/* 0EA764 802C5DB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA768 802C5DB8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA76C 802C5DBC 0080802D */  daddu $s0, $a0, $zero
/* 0EA770 802C5DC0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA774 802C5DC4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA778 802C5DC8 8E11000C */  lw    $s1, 0xc($s0)
/* 0EA77C 802C5DCC 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA780 802C5DD0 8E250000 */  lw    $a1, ($s1)
/* 0EA784 802C5DD4 26310004 */  addiu $s1, $s1, 4
/* 0EA788 802C5DD8 8C460000 */  lw    $a2, ($v0)
/* 0EA78C 802C5DDC 24420004 */  addiu $v0, $v0, 4
/* 0EA790 802C5DE0 0C0B2026 */  jal   set_variable
/* 0EA794 802C5DE4 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA798 802C5DE8 8E250000 */  lw    $a1, ($s1)
/* 0EA79C 802C5DEC 26310004 */  addiu $s1, $s1, 4
/* 0EA7A0 802C5DF0 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA7A4 802C5DF4 0200202D */  daddu $a0, $s0, $zero
/* 0EA7A8 802C5DF8 8C460000 */  lw    $a2, ($v0)
/* 0EA7AC 802C5DFC 24420004 */  addiu $v0, $v0, 4
/* 0EA7B0 802C5E00 0C0B2026 */  jal   set_variable
/* 0EA7B4 802C5E04 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA7B8 802C5E08 8E250000 */  lw    $a1, ($s1)
/* 0EA7BC 802C5E0C 26310004 */  addiu $s1, $s1, 4
/* 0EA7C0 802C5E10 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA7C4 802C5E14 0200202D */  daddu $a0, $s0, $zero
/* 0EA7C8 802C5E18 8C460000 */  lw    $a2, ($v0)
/* 0EA7CC 802C5E1C 24420004 */  addiu $v0, $v0, 4
/* 0EA7D0 802C5E20 0C0B2026 */  jal   set_variable
/* 0EA7D4 802C5E24 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA7D8 802C5E28 0200202D */  daddu $a0, $s0, $zero
/* 0EA7DC 802C5E2C 8C820138 */  lw    $v0, 0x138($a0)
/* 0EA7E0 802C5E30 8E250000 */  lw    $a1, ($s1)
/* 0EA7E4 802C5E34 8C460000 */  lw    $a2, ($v0)
/* 0EA7E8 802C5E38 24420004 */  addiu $v0, $v0, 4
/* 0EA7EC 802C5E3C 0C0B2026 */  jal   set_variable
/* 0EA7F0 802C5E40 AC820138 */   sw    $v0, 0x138($a0)
/* 0EA7F4 802C5E44 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA7F8 802C5E48 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA7FC 802C5E4C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA800 802C5E50 24020002 */  addiu $v0, $zero, 2
/* 0EA804 802C5E54 03E00008 */  jr    $ra
/* 0EA808 802C5E58 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_Nth_word:
/* 0EA80C 802C5E5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA810 802C5E60 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA814 802C5E64 0080802D */  daddu $s0, $a0, $zero
/* 0EA818 802C5E68 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA81C 802C5E6C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA820 802C5E70 8E02000C */  lw    $v0, 0xc($s0)
/* 0EA824 802C5E74 8C450004 */  lw    $a1, 4($v0)
/* 0EA828 802C5E78 0C0B1EAF */  jal   get_variable
/* 0EA82C 802C5E7C 8C510000 */   lw    $s1, ($v0)
/* 0EA830 802C5E80 0200202D */  daddu $a0, $s0, $zero
/* 0EA834 802C5E84 8C830138 */  lw    $v1, 0x138($a0)
/* 0EA838 802C5E88 00021080 */  sll   $v0, $v0, 2
/* 0EA83C 802C5E8C 00431021 */  addu  $v0, $v0, $v1
/* 0EA840 802C5E90 8C460000 */  lw    $a2, ($v0)
/* 0EA844 802C5E94 0C0B2026 */  jal   set_variable
/* 0EA848 802C5E98 0220282D */   daddu $a1, $s1, $zero
/* 0EA84C 802C5E9C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA850 802C5EA0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA854 802C5EA4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA858 802C5EA8 24020002 */  addiu $v0, $zero, 2
/* 0EA85C 802C5EAC 03E00008 */  jr    $ra
/* 0EA860 802C5EB0 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_1_float:
/* 0EA864 802C5EB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA868 802C5EB8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA86C 802C5EBC 0080802D */  daddu $s0, $a0, $zero
/* 0EA870 802C5EC0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EA874 802C5EC4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA878 802C5EC8 8E03000C */  lw    $v1, 0xc($s0)
/* 0EA87C 802C5ECC 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA880 802C5ED0 8C710000 */  lw    $s1, ($v1)
/* 0EA884 802C5ED4 8C450000 */  lw    $a1, ($v0)
/* 0EA888 802C5ED8 24420004 */  addiu $v0, $v0, 4
/* 0EA88C 802C5EDC 0C0B210B */  jal   get_float_variable
/* 0EA890 802C5EE0 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA894 802C5EE4 0200202D */  daddu $a0, $s0, $zero
/* 0EA898 802C5EE8 44060000 */  mfc1  $a2, $f0
/* 0EA89C 802C5EEC 0C0B2190 */  jal   set_float_variable
/* 0EA8A0 802C5EF0 0220282D */   daddu $a1, $s1, $zero
/* 0EA8A4 802C5EF4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EA8A8 802C5EF8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA8AC 802C5EFC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA8B0 802C5F00 24020002 */  addiu $v0, $zero, 2
/* 0EA8B4 802C5F04 03E00008 */  jr    $ra
/* 0EA8B8 802C5F08 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_2_float:
/* 0EA8BC 802C5F0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA8C0 802C5F10 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA8C4 802C5F14 0080802D */  daddu $s0, $a0, $zero
/* 0EA8C8 802C5F18 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA8CC 802C5F1C AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA8D0 802C5F20 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA8D4 802C5F24 8E11000C */  lw    $s1, 0xc($s0)
/* 0EA8D8 802C5F28 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA8DC 802C5F2C 8E320000 */  lw    $s2, ($s1)
/* 0EA8E0 802C5F30 26310004 */  addiu $s1, $s1, 4
/* 0EA8E4 802C5F34 8C450000 */  lw    $a1, ($v0)
/* 0EA8E8 802C5F38 24420004 */  addiu $v0, $v0, 4
/* 0EA8EC 802C5F3C 0C0B210B */  jal   get_float_variable
/* 0EA8F0 802C5F40 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA8F4 802C5F44 0200202D */  daddu $a0, $s0, $zero
/* 0EA8F8 802C5F48 44060000 */  mfc1  $a2, $f0
/* 0EA8FC 802C5F4C 0C0B2190 */  jal   set_float_variable
/* 0EA900 802C5F50 0240282D */   daddu $a1, $s2, $zero
/* 0EA904 802C5F54 0200202D */  daddu $a0, $s0, $zero
/* 0EA908 802C5F58 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA90C 802C5F5C 8E310000 */  lw    $s1, ($s1)
/* 0EA910 802C5F60 8C450000 */  lw    $a1, ($v0)
/* 0EA914 802C5F64 24420004 */  addiu $v0, $v0, 4
/* 0EA918 802C5F68 0C0B210B */  jal   get_float_variable
/* 0EA91C 802C5F6C AE020138 */   sw    $v0, 0x138($s0)
/* 0EA920 802C5F70 0200202D */  daddu $a0, $s0, $zero
/* 0EA924 802C5F74 44060000 */  mfc1  $a2, $f0
/* 0EA928 802C5F78 0C0B2190 */  jal   set_float_variable
/* 0EA92C 802C5F7C 0220282D */   daddu $a1, $s1, $zero
/* 0EA930 802C5F80 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA934 802C5F84 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA938 802C5F88 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA93C 802C5F8C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EA940 802C5F90 24020002 */  addiu $v0, $zero, 2
/* 0EA944 802C5F94 03E00008 */  jr    $ra
/* 0EA948 802C5F98 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_3_float:
/* 0EA94C 802C5F9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EA950 802C5FA0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EA954 802C5FA4 0080802D */  daddu $s0, $a0, $zero
/* 0EA958 802C5FA8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EA95C 802C5FAC AFB20018 */  sw    $s2, 0x18($sp)
/* 0EA960 802C5FB0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EA964 802C5FB4 8E11000C */  lw    $s1, 0xc($s0)
/* 0EA968 802C5FB8 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA96C 802C5FBC 8E320000 */  lw    $s2, ($s1)
/* 0EA970 802C5FC0 26310004 */  addiu $s1, $s1, 4
/* 0EA974 802C5FC4 8C450000 */  lw    $a1, ($v0)
/* 0EA978 802C5FC8 24420004 */  addiu $v0, $v0, 4
/* 0EA97C 802C5FCC 0C0B210B */  jal   get_float_variable
/* 0EA980 802C5FD0 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA984 802C5FD4 0200202D */  daddu $a0, $s0, $zero
/* 0EA988 802C5FD8 44060000 */  mfc1  $a2, $f0
/* 0EA98C 802C5FDC 0C0B2190 */  jal   set_float_variable
/* 0EA990 802C5FE0 0240282D */   daddu $a1, $s2, $zero
/* 0EA994 802C5FE4 8E320000 */  lw    $s2, ($s1)
/* 0EA998 802C5FE8 26310004 */  addiu $s1, $s1, 4
/* 0EA99C 802C5FEC 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA9A0 802C5FF0 0200202D */  daddu $a0, $s0, $zero
/* 0EA9A4 802C5FF4 8C450000 */  lw    $a1, ($v0)
/* 0EA9A8 802C5FF8 24420004 */  addiu $v0, $v0, 4
/* 0EA9AC 802C5FFC 0C0B210B */  jal   get_float_variable
/* 0EA9B0 802C6000 AE020138 */   sw    $v0, 0x138($s0)
/* 0EA9B4 802C6004 0200202D */  daddu $a0, $s0, $zero
/* 0EA9B8 802C6008 44060000 */  mfc1  $a2, $f0
/* 0EA9BC 802C600C 0C0B2190 */  jal   set_float_variable
/* 0EA9C0 802C6010 0240282D */   daddu $a1, $s2, $zero
/* 0EA9C4 802C6014 0200202D */  daddu $a0, $s0, $zero
/* 0EA9C8 802C6018 8E020138 */  lw    $v0, 0x138($s0)
/* 0EA9CC 802C601C 8E310000 */  lw    $s1, ($s1)
/* 0EA9D0 802C6020 8C450000 */  lw    $a1, ($v0)
/* 0EA9D4 802C6024 24420004 */  addiu $v0, $v0, 4
/* 0EA9D8 802C6028 0C0B210B */  jal   get_float_variable
/* 0EA9DC 802C602C AE020138 */   sw    $v0, 0x138($s0)
/* 0EA9E0 802C6030 0200202D */  daddu $a0, $s0, $zero
/* 0EA9E4 802C6034 44060000 */  mfc1  $a2, $f0
/* 0EA9E8 802C6038 0C0B2190 */  jal   set_float_variable
/* 0EA9EC 802C603C 0220282D */   daddu $a1, $s1, $zero
/* 0EA9F0 802C6040 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EA9F4 802C6044 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EA9F8 802C6048 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EA9FC 802C604C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAA00 802C6050 24020002 */  addiu $v0, $zero, 2
/* 0EAA04 802C6054 03E00008 */  jr    $ra
/* 0EAA08 802C6058 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_4_float:
/* 0EAA0C 802C605C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAA10 802C6060 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAA14 802C6064 0080802D */  daddu $s0, $a0, $zero
/* 0EAA18 802C6068 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EAA1C 802C606C AFB20018 */  sw    $s2, 0x18($sp)
/* 0EAA20 802C6070 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EAA24 802C6074 8E11000C */  lw    $s1, 0xc($s0)
/* 0EAA28 802C6078 8E020138 */  lw    $v0, 0x138($s0)
/* 0EAA2C 802C607C 8E320000 */  lw    $s2, ($s1)
/* 0EAA30 802C6080 26310004 */  addiu $s1, $s1, 4
/* 0EAA34 802C6084 8C450000 */  lw    $a1, ($v0)
/* 0EAA38 802C6088 24420004 */  addiu $v0, $v0, 4
/* 0EAA3C 802C608C 0C0B210B */  jal   get_float_variable
/* 0EAA40 802C6090 AE020138 */   sw    $v0, 0x138($s0)
/* 0EAA44 802C6094 0200202D */  daddu $a0, $s0, $zero
/* 0EAA48 802C6098 44060000 */  mfc1  $a2, $f0
/* 0EAA4C 802C609C 0C0B2190 */  jal   set_float_variable
/* 0EAA50 802C60A0 0240282D */   daddu $a1, $s2, $zero
/* 0EAA54 802C60A4 8E320000 */  lw    $s2, ($s1)
/* 0EAA58 802C60A8 26310004 */  addiu $s1, $s1, 4
/* 0EAA5C 802C60AC 8E020138 */  lw    $v0, 0x138($s0)
/* 0EAA60 802C60B0 0200202D */  daddu $a0, $s0, $zero
/* 0EAA64 802C60B4 8C450000 */  lw    $a1, ($v0)
/* 0EAA68 802C60B8 24420004 */  addiu $v0, $v0, 4
/* 0EAA6C 802C60BC 0C0B210B */  jal   get_float_variable
/* 0EAA70 802C60C0 AE020138 */   sw    $v0, 0x138($s0)
/* 0EAA74 802C60C4 0200202D */  daddu $a0, $s0, $zero
/* 0EAA78 802C60C8 44060000 */  mfc1  $a2, $f0
/* 0EAA7C 802C60CC 0C0B2190 */  jal   set_float_variable
/* 0EAA80 802C60D0 0240282D */   daddu $a1, $s2, $zero
/* 0EAA84 802C60D4 8E320000 */  lw    $s2, ($s1)
/* 0EAA88 802C60D8 26310004 */  addiu $s1, $s1, 4
/* 0EAA8C 802C60DC 8E020138 */  lw    $v0, 0x138($s0)
/* 0EAA90 802C60E0 0200202D */  daddu $a0, $s0, $zero
/* 0EAA94 802C60E4 8C450000 */  lw    $a1, ($v0)
/* 0EAA98 802C60E8 24420004 */  addiu $v0, $v0, 4
/* 0EAA9C 802C60EC 0C0B210B */  jal   get_float_variable
/* 0EAAA0 802C60F0 AE020138 */   sw    $v0, 0x138($s0)
/* 0EAAA4 802C60F4 0200202D */  daddu $a0, $s0, $zero
/* 0EAAA8 802C60F8 44060000 */  mfc1  $a2, $f0
/* 0EAAAC 802C60FC 0C0B2190 */  jal   set_float_variable
/* 0EAAB0 802C6100 0240282D */   daddu $a1, $s2, $zero
/* 0EAAB4 802C6104 0200202D */  daddu $a0, $s0, $zero
/* 0EAAB8 802C6108 8E020138 */  lw    $v0, 0x138($s0)
/* 0EAABC 802C610C 8E310000 */  lw    $s1, ($s1)
/* 0EAAC0 802C6110 8C450000 */  lw    $a1, ($v0)
/* 0EAAC4 802C6114 24420004 */  addiu $v0, $v0, 4
/* 0EAAC8 802C6118 0C0B210B */  jal   get_float_variable
/* 0EAACC 802C611C AE020138 */   sw    $v0, 0x138($s0)
/* 0EAAD0 802C6120 0200202D */  daddu $a0, $s0, $zero
/* 0EAAD4 802C6124 44060000 */  mfc1  $a2, $f0
/* 0EAAD8 802C6128 0C0B2190 */  jal   set_float_variable
/* 0EAADC 802C612C 0220282D */   daddu $a1, $s1, $zero
/* 0EAAE0 802C6130 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EAAE4 802C6134 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EAAE8 802C6138 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAAEC 802C613C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAAF0 802C6140 24020002 */  addiu $v0, $zero, 2
/* 0EAAF4 802C6144 03E00008 */  jr    $ra
/* 0EAAF8 802C6148 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_get_Nth_float:
/* 0EAAFC 802C614C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAB00 802C6150 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAB04 802C6154 0080802D */  daddu $s0, $a0, $zero
/* 0EAB08 802C6158 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EAB0C 802C615C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EAB10 802C6160 8E02000C */  lw    $v0, 0xc($s0)
/* 0EAB14 802C6164 8C450004 */  lw    $a1, 4($v0)
/* 0EAB18 802C6168 0C0B1EAF */  jal   get_variable
/* 0EAB1C 802C616C 8C510000 */   lw    $s1, ($v0)
/* 0EAB20 802C6170 0200202D */  daddu $a0, $s0, $zero
/* 0EAB24 802C6174 8C830138 */  lw    $v1, 0x138($a0)
/* 0EAB28 802C6178 00021080 */  sll   $v0, $v0, 2
/* 0EAB2C 802C617C 00431021 */  addu  $v0, $v0, $v1
/* 0EAB30 802C6180 C4420000 */  lwc1  $f2, ($v0)
/* 0EAB34 802C6184 468010A0 */  cvt.s.w $f2, $f2
/* 0EAB38 802C6188 44061000 */  mfc1  $a2, $f2
/* 0EAB3C 802C618C 0C0B2190 */  jal   set_float_variable
/* 0EAB40 802C6190 0220282D */   daddu $a1, $s1, $zero
/* 0EAB44 802C6194 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EAB48 802C6198 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAB4C 802C619C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAB50 802C61A0 24020002 */  addiu $v0, $zero, 2
/* 0EAB54 802C61A4 03E00008 */  jr    $ra
/* 0EAB58 802C61A8 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_set_array:
/* 0EAB5C 802C61AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EAB60 802C61B0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAB64 802C61B4 0080802D */  daddu $s0, $a0, $zero
/* 0EAB68 802C61B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EAB6C 802C61BC 8E02000C */  lw    $v0, 0xc($s0)
/* 0EAB70 802C61C0 0C0B1EAF */  jal   get_variable
/* 0EAB74 802C61C4 8C450000 */   lw    $a1, ($v0)
/* 0EAB78 802C61C8 AE02013C */  sw    $v0, 0x13c($s0)
/* 0EAB7C 802C61CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EAB80 802C61D0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAB84 802C61D4 24020002 */  addiu $v0, $zero, 2
/* 0EAB88 802C61D8 03E00008 */  jr    $ra
/* 0EAB8C 802C61DC 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_set_flag_array:
/* 0EAB90 802C61E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EAB94 802C61E4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAB98 802C61E8 0080802D */  daddu $s0, $a0, $zero
/* 0EAB9C 802C61EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EABA0 802C61F0 8E02000C */  lw    $v0, 0xc($s0)
/* 0EABA4 802C61F4 0C0B1EAF */  jal   get_variable
/* 0EABA8 802C61F8 8C450000 */   lw    $a1, ($v0)
/* 0EABAC 802C61FC AE020140 */  sw    $v0, 0x140($s0)
/* 0EABB0 802C6200 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EABB4 802C6204 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EABB8 802C6208 24020002 */  addiu $v0, $zero, 2
/* 0EABBC 802C620C 03E00008 */  jr    $ra
/* 0EABC0 802C6210 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_allocate_array:
/* 0EABC4 802C6214 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EABC8 802C6218 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EABCC 802C621C 0080882D */  daddu $s1, $a0, $zero
/* 0EABD0 802C6220 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EABD4 802C6224 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EABD8 802C6228 8E30000C */  lw    $s0, 0xc($s1)
/* 0EABDC 802C622C 8E050000 */  lw    $a1, ($s0)
/* 0EABE0 802C6230 0C0B1EAF */  jal   get_variable
/* 0EABE4 802C6234 26100004 */   addiu $s0, $s0, 4
/* 0EABE8 802C6238 8E100000 */  lw    $s0, ($s0)
/* 0EABEC 802C623C 0C00AB39 */  jal   heap_malloc
/* 0EABF0 802C6240 00022080 */   sll   $a0, $v0, 2
/* 0EABF4 802C6244 0220202D */  daddu $a0, $s1, $zero
/* 0EABF8 802C6248 0040302D */  daddu $a2, $v0, $zero
/* 0EABFC 802C624C AC82013C */  sw    $v0, 0x13c($a0)
/* 0EAC00 802C6250 0C0B2026 */  jal   set_variable
/* 0EAC04 802C6254 0200282D */   daddu $a1, $s0, $zero
/* 0EAC08 802C6258 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EAC0C 802C625C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAC10 802C6260 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAC14 802C6264 24020002 */  addiu $v0, $zero, 2
/* 0EAC18 802C6268 03E00008 */  jr    $ra
/* 0EAC1C 802C626C 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_AND:
/* 0EAC20 802C6270 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAC24 802C6274 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EAC28 802C6278 0080882D */  daddu $s1, $a0, $zero
/* 0EAC2C 802C627C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EAC30 802C6280 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EAC34 802C6284 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAC38 802C6288 8E22000C */  lw    $v0, 0xc($s1)
/* 0EAC3C 802C628C 8C450004 */  lw    $a1, 4($v0)
/* 0EAC40 802C6290 0C0B1EAF */  jal   get_variable
/* 0EAC44 802C6294 8C520000 */   lw    $s2, ($v0)
/* 0EAC48 802C6298 0040802D */  daddu $s0, $v0, $zero
/* 0EAC4C 802C629C 0220202D */  daddu $a0, $s1, $zero
/* 0EAC50 802C62A0 0C0B1EAF */  jal   get_variable
/* 0EAC54 802C62A4 0240282D */   daddu $a1, $s2, $zero
/* 0EAC58 802C62A8 0220202D */  daddu $a0, $s1, $zero
/* 0EAC5C 802C62AC 0240282D */  daddu $a1, $s2, $zero
/* 0EAC60 802C62B0 0C0B2026 */  jal   set_variable
/* 0EAC64 802C62B4 02023024 */   and   $a2, $s0, $v0
/* 0EAC68 802C62B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EAC6C 802C62BC 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EAC70 802C62C0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAC74 802C62C4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAC78 802C62C8 24020002 */  addiu $v0, $zero, 2
/* 0EAC7C 802C62CC 03E00008 */  jr    $ra
/* 0EAC80 802C62D0 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_AND_const:
/* 0EAC84 802C62D4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAC88 802C62D8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EAC8C 802C62DC 0080882D */  daddu $s1, $a0, $zero
/* 0EAC90 802C62E0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EAC94 802C62E4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EAC98 802C62E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAC9C 802C62EC 8E22000C */  lw    $v0, 0xc($s1)
/* 0EACA0 802C62F0 8C520000 */  lw    $s2, ($v0)
/* 0EACA4 802C62F4 8C500004 */  lw    $s0, 4($v0)
/* 0EACA8 802C62F8 0C0B1EAF */  jal   get_variable
/* 0EACAC 802C62FC 0240282D */   daddu $a1, $s2, $zero
/* 0EACB0 802C6300 0220202D */  daddu $a0, $s1, $zero
/* 0EACB4 802C6304 0240282D */  daddu $a1, $s2, $zero
/* 0EACB8 802C6308 0C0B2026 */  jal   set_variable
/* 0EACBC 802C630C 02023024 */   and   $a2, $s0, $v0
/* 0EACC0 802C6310 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EACC4 802C6314 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EACC8 802C6318 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EACCC 802C631C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EACD0 802C6320 24020002 */  addiu $v0, $zero, 2
/* 0EACD4 802C6324 03E00008 */  jr    $ra
/* 0EACD8 802C6328 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_OR:
/* 0EACDC 802C632C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EACE0 802C6330 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EACE4 802C6334 0080882D */  daddu $s1, $a0, $zero
/* 0EACE8 802C6338 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EACEC 802C633C AFB20018 */  sw    $s2, 0x18($sp)
/* 0EACF0 802C6340 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EACF4 802C6344 8E22000C */  lw    $v0, 0xc($s1)
/* 0EACF8 802C6348 8C450004 */  lw    $a1, 4($v0)
/* 0EACFC 802C634C 0C0B1EAF */  jal   get_variable
/* 0EAD00 802C6350 8C520000 */   lw    $s2, ($v0)
/* 0EAD04 802C6354 0040802D */  daddu $s0, $v0, $zero
/* 0EAD08 802C6358 0220202D */  daddu $a0, $s1, $zero
/* 0EAD0C 802C635C 0C0B1EAF */  jal   get_variable
/* 0EAD10 802C6360 0240282D */   daddu $a1, $s2, $zero
/* 0EAD14 802C6364 0220202D */  daddu $a0, $s1, $zero
/* 0EAD18 802C6368 0240282D */  daddu $a1, $s2, $zero
/* 0EAD1C 802C636C 0C0B2026 */  jal   set_variable
/* 0EAD20 802C6370 02023025 */   or    $a2, $s0, $v0
/* 0EAD24 802C6374 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EAD28 802C6378 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EAD2C 802C637C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAD30 802C6380 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAD34 802C6384 24020002 */  addiu $v0, $zero, 2
/* 0EAD38 802C6388 03E00008 */  jr    $ra
/* 0EAD3C 802C638C 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_OR_const:
/* 0EAD40 802C6390 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAD44 802C6394 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EAD48 802C6398 0080882D */  daddu $s1, $a0, $zero
/* 0EAD4C 802C639C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EAD50 802C63A0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EAD54 802C63A4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAD58 802C63A8 8E22000C */  lw    $v0, 0xc($s1)
/* 0EAD5C 802C63AC 8C520000 */  lw    $s2, ($v0)
/* 0EAD60 802C63B0 8C500004 */  lw    $s0, 4($v0)
/* 0EAD64 802C63B4 0C0B1EAF */  jal   get_variable
/* 0EAD68 802C63B8 0240282D */   daddu $a1, $s2, $zero
/* 0EAD6C 802C63BC 0220202D */  daddu $a0, $s1, $zero
/* 0EAD70 802C63C0 0240282D */  daddu $a1, $s2, $zero
/* 0EAD74 802C63C4 0C0B2026 */  jal   set_variable
/* 0EAD78 802C63C8 02023025 */   or    $a2, $s0, $v0
/* 0EAD7C 802C63CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EAD80 802C63D0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EAD84 802C63D4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAD88 802C63D8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAD8C 802C63DC 24020002 */  addiu $v0, $zero, 2
/* 0EAD90 802C63E0 03E00008 */  jr    $ra
/* 0EAD94 802C63E4 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_call:
/* 0EAD98 802C63E8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAD9C 802C63EC AFB10014 */  sw    $s1, 0x14($sp)
/* 0EADA0 802C63F0 0080882D */  daddu $s1, $a0, $zero
/* 0EADA4 802C63F4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EADA8 802C63F8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EADAC 802C63FC 82220005 */  lb    $v0, 5($s1)
/* 0EADB0 802C6400 8E30000C */  lw    $s0, 0xc($s1)
/* 0EADB4 802C6404 10400004 */  beqz  $v0, .L802C6418
/* 0EADB8 802C6408 0000282D */   daddu $a1, $zero, $zero
/* 0EADBC 802C640C 8E260080 */  lw    $a2, 0x80($s1)
/* 0EADC0 802C6410 080B1914 */  j     func_802C6450
/* 0EADC4 802C6414 00000000 */   nop   

.L802C6418:
/* 0EADC8 802C6418 8E050000 */  lw    $a1, ($s0)
/* 0EADCC 802C641C 26100004 */  addiu $s0, $s0, 4
/* 0EADD0 802C6420 0C0B1EAF */  jal   get_variable
/* 0EADD4 802C6424 0220202D */   daddu $a0, $s1, $zero
/* 0EADD8 802C6428 0220202D */  daddu $a0, $s1, $zero
/* 0EADDC 802C642C AC820080 */  sw    $v0, 0x80($a0)
/* 0EADE0 802C6430 0040302D */  daddu $a2, $v0, $zero
/* 0EADE4 802C6434 24050001 */  addiu $a1, $zero, 1
/* 0EADE8 802C6438 90820001 */  lbu   $v0, 1($a0)
/* 0EADEC 802C643C 00A0182D */  daddu $v1, $a1, $zero
/* 0EADF0 802C6440 AC90000C */  sw    $s0, 0xc($a0)
/* 0EADF4 802C6444 A0830005 */  sb    $v1, 5($a0)
/* 0EADF8 802C6448 2442FFFF */  addiu $v0, $v0, -1
/* 0EADFC 802C644C A0820001 */  sb    $v0, 1($a0)
func_802C6450:
/* 0EAE00 802C6450 00C0F809 */  jalr  $a2
/* 0EAE04 802C6454 00000000 */  nop   
/* 0EAE08 802C6458 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EAE0C 802C645C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAE10 802C6460 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAE14 802C6464 03E00008 */  jr    $ra
/* 0EAE18 802C6468 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_exec1:
/* 0EAE1C 802C646C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EAE20 802C6470 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAE24 802C6474 0080802D */  daddu $s0, $a0, $zero
/* 0EAE28 802C6478 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EAE2C 802C647C 8E02000C */  lw    $v0, 0xc($s0)
/* 0EAE30 802C6480 0C0B1EAF */  jal   get_variable
/* 0EAE34 802C6484 8C450000 */   lw    $a1, ($v0)
/* 0EAE38 802C6488 0040202D */  daddu $a0, $v0, $zero
/* 0EAE3C 802C648C 92050003 */  lbu   $a1, 3($s0)
/* 0EAE40 802C6490 92070004 */  lbu   $a3, 4($s0)
/* 0EAE44 802C6494 0C0B0D74 */  jal   start_script_in_group
/* 0EAE48 802C6498 0000302D */   daddu $a2, $zero, $zero
/* 0EAE4C 802C649C 0000202D */  daddu $a0, $zero, $zero
/* 0EAE50 802C64A0 0200282D */  daddu $a1, $s0, $zero
/* 0EAE54 802C64A4 8E030148 */  lw    $v1, 0x148($s0)
/* 0EAE58 802C64A8 0040302D */  daddu $a2, $v0, $zero
/* 0EAE5C 802C64AC ACC30148 */  sw    $v1, 0x148($a2)
/* 0EAE60 802C64B0 8E02014C */  lw    $v0, 0x14c($s0)
/* 0EAE64 802C64B4 00C0182D */  daddu $v1, $a2, $zero
/* 0EAE68 802C64B8 ACC2014C */  sw    $v0, 0x14c($a2)
.L802C64BC:
/* 0EAE6C 802C64BC 8CA20084 */  lw    $v0, 0x84($a1)
/* 0EAE70 802C64C0 24A50004 */  addiu $a1, $a1, 4
/* 0EAE74 802C64C4 24840001 */  addiu $a0, $a0, 1
/* 0EAE78 802C64C8 AC620084 */  sw    $v0, 0x84($v1)
/* 0EAE7C 802C64CC 28820010 */  slti  $v0, $a0, 0x10
/* 0EAE80 802C64D0 1440FFFA */  bnez  $v0, .L802C64BC
/* 0EAE84 802C64D4 24630004 */   addiu $v1, $v1, 4
/* 0EAE88 802C64D8 0000202D */  daddu $a0, $zero, $zero
/* 0EAE8C 802C64DC 0200282D */  daddu $a1, $s0, $zero
/* 0EAE90 802C64E0 00C0182D */  daddu $v1, $a2, $zero
.L802C64E4:
/* 0EAE94 802C64E4 8CA200C4 */  lw    $v0, 0xc4($a1)
/* 0EAE98 802C64E8 24A50004 */  addiu $a1, $a1, 4
/* 0EAE9C 802C64EC 24840001 */  addiu $a0, $a0, 1
/* 0EAEA0 802C64F0 AC6200C4 */  sw    $v0, 0xc4($v1)
/* 0EAEA4 802C64F4 28820003 */  slti  $v0, $a0, 3
/* 0EAEA8 802C64F8 1440FFFA */  bnez  $v0, .L802C64E4
/* 0EAEAC 802C64FC 24630004 */   addiu $v1, $v1, 4
/* 0EAEB0 802C6500 8E02013C */  lw    $v0, 0x13c($s0)
/* 0EAEB4 802C6504 ACC2013C */  sw    $v0, 0x13c($a2)
/* 0EAEB8 802C6508 8E030140 */  lw    $v1, 0x140($s0)
/* 0EAEBC 802C650C ACC30140 */  sw    $v1, 0x140($a2)
/* 0EAEC0 802C6510 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EAEC4 802C6514 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAEC8 802C6518 24020002 */  addiu $v0, $zero, 2
/* 0EAECC 802C651C 03E00008 */  jr    $ra
/* 0EAED0 802C6520 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_exec2:
/* 0EAED4 802C6524 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EAED8 802C6528 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EAEDC 802C652C 0080882D */  daddu $s1, $a0, $zero
/* 0EAEE0 802C6530 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EAEE4 802C6534 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAEE8 802C6538 8E30000C */  lw    $s0, 0xc($s1)
/* 0EAEEC 802C653C 8E050000 */  lw    $a1, ($s0)
/* 0EAEF0 802C6540 0C0B1EAF */  jal   get_variable
/* 0EAEF4 802C6544 26100004 */   addiu $s0, $s0, 4
/* 0EAEF8 802C6548 0040202D */  daddu $a0, $v0, $zero
/* 0EAEFC 802C654C 92250003 */  lbu   $a1, 3($s1)
/* 0EAF00 802C6550 92270004 */  lbu   $a3, 4($s1)
/* 0EAF04 802C6554 8E100000 */  lw    $s0, ($s0)
/* 0EAF08 802C6558 0C0B0D74 */  jal   start_script_in_group
/* 0EAF0C 802C655C 0000302D */   daddu $a2, $zero, $zero
/* 0EAF10 802C6560 0000202D */  daddu $a0, $zero, $zero
/* 0EAF14 802C6564 0220282D */  daddu $a1, $s1, $zero
/* 0EAF18 802C6568 8E230148 */  lw    $v1, 0x148($s1)
/* 0EAF1C 802C656C 0040382D */  daddu $a3, $v0, $zero
/* 0EAF20 802C6570 ACE30148 */  sw    $v1, 0x148($a3)
/* 0EAF24 802C6574 8E22014C */  lw    $v0, 0x14c($s1)
/* 0EAF28 802C6578 00E0182D */  daddu $v1, $a3, $zero
/* 0EAF2C 802C657C ACE2014C */  sw    $v0, 0x14c($a3)
.L802C6580:
/* 0EAF30 802C6580 8CA20084 */  lw    $v0, 0x84($a1)
/* 0EAF34 802C6584 24A50004 */  addiu $a1, $a1, 4
/* 0EAF38 802C6588 24840001 */  addiu $a0, $a0, 1
/* 0EAF3C 802C658C AC620084 */  sw    $v0, 0x84($v1)
/* 0EAF40 802C6590 28820010 */  slti  $v0, $a0, 0x10
/* 0EAF44 802C6594 1440FFFA */  bnez  $v0, .L802C6580
/* 0EAF48 802C6598 24630004 */   addiu $v1, $v1, 4
/* 0EAF4C 802C659C 0000202D */  daddu $a0, $zero, $zero
/* 0EAF50 802C65A0 0220282D */  daddu $a1, $s1, $zero
/* 0EAF54 802C65A4 00E0182D */  daddu $v1, $a3, $zero
.L802C65A8:
/* 0EAF58 802C65A8 8CA200C4 */  lw    $v0, 0xc4($a1)
/* 0EAF5C 802C65AC 24A50004 */  addiu $a1, $a1, 4
/* 0EAF60 802C65B0 24840001 */  addiu $a0, $a0, 1
/* 0EAF64 802C65B4 AC6200C4 */  sw    $v0, 0xc4($v1)
/* 0EAF68 802C65B8 28820003 */  slti  $v0, $a0, 3
/* 0EAF6C 802C65BC 1440FFFA */  bnez  $v0, .L802C65A8
/* 0EAF70 802C65C0 24630004 */   addiu $v1, $v1, 4
/* 0EAF74 802C65C4 8CE60144 */  lw    $a2, 0x144($a3)
/* 0EAF78 802C65C8 8E22013C */  lw    $v0, 0x13c($s1)
/* 0EAF7C 802C65CC 0220202D */  daddu $a0, $s1, $zero
/* 0EAF80 802C65D0 ACE2013C */  sw    $v0, 0x13c($a3)
/* 0EAF84 802C65D4 8C820140 */  lw    $v0, 0x140($a0)
/* 0EAF88 802C65D8 0200282D */  daddu $a1, $s0, $zero
/* 0EAF8C 802C65DC 0C0B2026 */  jal   set_variable
/* 0EAF90 802C65E0 ACE20140 */   sw    $v0, 0x140($a3)
/* 0EAF94 802C65E4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EAF98 802C65E8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EAF9C 802C65EC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAFA0 802C65F0 24020002 */  addiu $v0, $zero, 2
/* 0EAFA4 802C65F4 03E00008 */  jr    $ra
/* 0EAFA8 802C65F8 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_exec_wait:
/* 0EAFAC 802C65FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EAFB0 802C6600 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAFB4 802C6604 0080802D */  daddu $s0, $a0, $zero
/* 0EAFB8 802C6608 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EAFBC 802C660C 8E02000C */  lw    $v0, 0xc($s0)
/* 0EAFC0 802C6610 0C0B1EAF */  jal   get_variable
/* 0EAFC4 802C6614 8C450000 */   lw    $a1, ($v0)
/* 0EAFC8 802C6618 0200202D */  daddu $a0, $s0, $zero
/* 0EAFCC 802C661C 0040282D */  daddu $a1, $v0, $zero
/* 0EAFD0 802C6620 0C0B0DF2 */  jal   start_child_script
/* 0EAFD4 802C6624 0000302D */   daddu $a2, $zero, $zero
/* 0EAFD8 802C6628 A2000002 */  sb    $zero, 2($s0)
/* 0EAFDC 802C662C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EAFE0 802C6630 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EAFE4 802C6634 240200FF */  addiu $v0, $zero, 0xff
/* 0EAFE8 802C6638 03E00008 */  jr    $ra
/* 0EAFEC 802C663C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_jump:
/* 0EAFF0 802C6640 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EAFF4 802C6644 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EAFF8 802C6648 0080802D */  daddu $s0, $a0, $zero
/* 0EAFFC 802C664C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB000 802C6650 8E02000C */  lw    $v0, 0xc($s0)
/* 0EB004 802C6654 0C0B1EAF */  jal   get_variable
/* 0EB008 802C6658 8C450000 */   lw    $a1, ($v0)
/* 0EB00C 802C665C 0200202D */  daddu $a0, $s0, $zero
/* 0EB010 802C6660 0C0B0F41 */  jal   restart_script
/* 0EB014 802C6664 AC82015C */   sw    $v0, 0x15c($a0)
/* 0EB018 802C6668 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB01C 802C666C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB020 802C6670 24020002 */  addiu $v0, $zero, 2
/* 0EB024 802C6674 03E00008 */  jr    $ra
/* 0EB028 802C6678 27BD0018 */   addiu $sp, $sp, 0x18

_bound_script_trigger_handler:
/* 0EB02C 802C667C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EB030 802C6680 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB034 802C6684 0080802D */  daddu $s0, $a0, $zero
/* 0EB038 802C6688 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EB03C 802C668C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EB040 802C6690 8E020014 */  lw    $v0, 0x14($s0)
/* 0EB044 802C6694 14400014 */  bnez  $v0, .L802C66E8
/* 0EB048 802C6698 00000000 */   nop   
/* 0EB04C 802C669C 8E110010 */  lw    $s1, 0x10($s0)
/* 0EB050 802C66A0 0C05171B */  jal   is_trigger_bound
/* 0EB054 802C66A4 0220282D */   daddu $a1, $s1, $zero
/* 0EB058 802C66A8 14400015 */  bnez  $v0, .L802C6700
/* 0EB05C 802C66AC 0000102D */   daddu $v0, $zero, $zero
/* 0EB060 802C66B0 0220202D */  daddu $a0, $s1, $zero
/* 0EB064 802C66B4 8E050018 */  lw    $a1, 0x18($s0)
/* 0EB068 802C66B8 0C0B0CF8 */  jal   start_script
/* 0EB06C 802C66BC 24060020 */   addiu $a2, $zero, 0x20
/* 0EB070 802C66C0 AE020014 */  sw    $v0, 0x14($s0)
/* 0EB074 802C66C4 8C430144 */  lw    $v1, 0x144($v0)
/* 0EB078 802C66C8 8E04001C */  lw    $a0, 0x1c($s0)
/* 0EB07C 802C66CC AE030034 */  sw    $v1, 0x34($s0)
/* 0EB080 802C66D0 AC440084 */  sw    $a0, 0x84($v0)
/* 0EB084 802C66D4 8E030020 */  lw    $v1, 0x20($s0)
/* 0EB088 802C66D8 AC430088 */  sw    $v1, 0x88($v0)
/* 0EB08C 802C66DC 8E030024 */  lw    $v1, 0x24($s0)
/* 0EB090 802C66E0 AC50014C */  sw    $s0, 0x14c($v0)
/* 0EB094 802C66E4 AC43008C */  sw    $v1, 0x8c($v0)
.L802C66E8:
/* 0EB098 802C66E8 0C0B1059 */  jal   does_script_exist
/* 0EB09C 802C66EC 8E040034 */   lw    $a0, 0x34($s0)
/* 0EB0A0 802C66F0 14400003 */  bnez  $v0, .L802C6700
/* 0EB0A4 802C66F4 24020001 */   addiu $v0, $zero, 1
/* 0EB0A8 802C66F8 AE000014 */  sw    $zero, 0x14($s0)
/* 0EB0AC 802C66FC 0000102D */  daddu $v0, $zero, $zero
.L802C6700:
/* 0EB0B0 802C6700 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EB0B4 802C6704 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EB0B8 802C6708 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB0BC 802C670C 03E00008 */  jr    $ra
/* 0EB0C0 802C6710 27BD0020 */   addiu $sp, $sp, 0x20

si_handle_bind:
/* 0EB0C4 802C6714 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0EB0C8 802C6718 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0EB0CC 802C671C 0080982D */  daddu $s3, $a0, $zero
/* 0EB0D0 802C6720 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0EB0D4 802C6724 AFB40040 */  sw    $s4, 0x40($sp)
/* 0EB0D8 802C6728 AFB20038 */  sw    $s2, 0x38($sp)
/* 0EB0DC 802C672C AFB10034 */  sw    $s1, 0x34($sp)
/* 0EB0E0 802C6730 AFB00030 */  sw    $s0, 0x30($sp)
/* 0EB0E4 802C6734 8E70000C */  lw    $s0, 0xc($s3)
/* 0EB0E8 802C6738 8E050000 */  lw    $a1, ($s0)
/* 0EB0EC 802C673C 0C0B1EAF */  jal   get_variable
/* 0EB0F0 802C6740 26100004 */   addiu $s0, $s0, 4
/* 0EB0F4 802C6744 8E030000 */  lw    $v1, ($s0)
/* 0EB0F8 802C6748 26100004 */  addiu $s0, $s0, 4
/* 0EB0FC 802C674C 8E110000 */  lw    $s1, ($s0)
/* 0EB100 802C6750 26100004 */  addiu $s0, $s0, 4
/* 0EB104 802C6754 0260202D */  daddu $a0, $s3, $zero
/* 0EB108 802C6758 3C060100 */  lui   $a2, 0x100
/* 0EB10C 802C675C 8E120000 */  lw    $s2, ($s0)
/* 0EB110 802C6760 8E140004 */  lw    $s4, 4($s0)
/* 0EB114 802C6764 0040802D */  daddu $s0, $v0, $zero
/* 0EB118 802C6768 0220282D */  daddu $a1, $s1, $zero
/* 0EB11C 802C676C 00661825 */  or    $v1, $v1, $a2
/* 0EB120 802C6770 0C0B1EAF */  jal   get_variable
/* 0EB124 802C6774 AFA30010 */   sw    $v1, 0x10($sp)
/* 0EB128 802C6778 0260202D */  daddu $a0, $s3, $zero
/* 0EB12C 802C677C 0220282D */  daddu $a1, $s1, $zero
/* 0EB130 802C6780 0C0B1F6A */  jal   get_variable_index
/* 0EB134 802C6784 AFA20018 */   sw    $v0, 0x18($sp)
/* 0EB138 802C6788 27A40010 */  addiu $a0, $sp, 0x10
/* 0EB13C 802C678C A7A20014 */  sh    $v0, 0x14($sp)
/* 0EB140 802C6790 3C02802C */  lui   $v0, 0x802c
/* 0EB144 802C6794 2442667C */  addiu $v0, $v0, 0x667c
/* 0EB148 802C6798 AFB20028 */  sw    $s2, 0x28($sp)
/* 0EB14C 802C679C AFA00024 */  sw    $zero, 0x24($sp)
/* 0EB150 802C67A0 0C0515DB */  jal   create_trigger
/* 0EB154 802C67A4 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0EB158 802C67A8 0040882D */  daddu $s1, $v0, $zero
/* 0EB15C 802C67AC AE300010 */  sw    $s0, 0x10($s1)
/* 0EB160 802C67B0 AE200014 */  sw    $zero, 0x14($s1)
/* 0EB164 802C67B4 92620003 */  lbu   $v0, 3($s3)
/* 0EB168 802C67B8 AE220018 */  sw    $v0, 0x18($s1)
/* 0EB16C 802C67BC 8E650084 */  lw    $a1, 0x84($s3)
/* 0EB170 802C67C0 0C0B1EAF */  jal   get_variable
/* 0EB174 802C67C4 0260202D */   daddu $a0, $s3, $zero
/* 0EB178 802C67C8 AE22001C */  sw    $v0, 0x1c($s1)
/* 0EB17C 802C67CC 8E650088 */  lw    $a1, 0x88($s3)
/* 0EB180 802C67D0 0C0B1EAF */  jal   get_variable
/* 0EB184 802C67D4 0260202D */   daddu $a0, $s3, $zero
/* 0EB188 802C67D8 AE220020 */  sw    $v0, 0x20($s1)
/* 0EB18C 802C67DC 8E65008C */  lw    $a1, 0x8c($s3)
/* 0EB190 802C67E0 0C0B1EAF */  jal   get_variable
/* 0EB194 802C67E4 0260202D */   daddu $a0, $s3, $zero
/* 0EB198 802C67E8 12800005 */  beqz  $s4, .L802C6800
/* 0EB19C 802C67EC AE220024 */   sw    $v0, 0x24($s1)
/* 0EB1A0 802C67F0 0260202D */  daddu $a0, $s3, $zero
/* 0EB1A4 802C67F4 0280282D */  daddu $a1, $s4, $zero
/* 0EB1A8 802C67F8 0C0B2026 */  jal   set_variable
/* 0EB1AC 802C67FC 0220302D */   daddu $a2, $s1, $zero
.L802C6800:
/* 0EB1B0 802C6800 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0EB1B4 802C6804 8FB40040 */  lw    $s4, 0x40($sp)
/* 0EB1B8 802C6808 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0EB1BC 802C680C 8FB20038 */  lw    $s2, 0x38($sp)
/* 0EB1C0 802C6810 8FB10034 */  lw    $s1, 0x34($sp)
/* 0EB1C4 802C6814 8FB00030 */  lw    $s0, 0x30($sp)
/* 0EB1C8 802C6818 24020002 */  addiu $v0, $zero, 2
/* 0EB1CC 802C681C 03E00008 */  jr    $ra
/* 0EB1D0 802C6820 27BD0048 */   addiu $sp, $sp, 0x48

DeleteTrigger:
/* 0EB1D4 802C6824 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB1D8 802C6828 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB1DC 802C682C 8C82000C */  lw    $v0, 0xc($a0)
/* 0EB1E0 802C6830 0C0B1EAF */  jal   get_variable
/* 0EB1E4 802C6834 8C450000 */   lw    $a1, ($v0)
/* 0EB1E8 802C6838 0C0516FD */  jal   delete_trigger
/* 0EB1EC 802C683C 0040202D */   daddu $a0, $v0, $zero
/* 0EB1F0 802C6840 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB1F4 802C6844 24020002 */  addiu $v0, $zero, 2
/* 0EB1F8 802C6848 03E00008 */  jr    $ra
/* 0EB1FC 802C684C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_unbind:
/* 0EB200 802C6850 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB204 802C6854 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB208 802C6858 0C0516FD */  jal   delete_trigger
/* 0EB20C 802C685C 8C84014C */   lw    $a0, 0x14c($a0)
/* 0EB210 802C6860 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB214 802C6864 24020002 */  addiu $v0, $zero, 2
/* 0EB218 802C6868 03E00008 */  jr    $ra
/* 0EB21C 802C686C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_kill:
/* 0EB220 802C6870 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB224 802C6874 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB228 802C6878 8C82000C */  lw    $v0, 0xc($a0)
/* 0EB22C 802C687C 0C0B1EAF */  jal   get_variable
/* 0EB230 802C6880 8C450000 */   lw    $a1, ($v0)
/* 0EB234 802C6884 0C0B102B */  jal   kill_script_by_ID
/* 0EB238 802C6888 0040202D */   daddu $a0, $v0, $zero
/* 0EB23C 802C688C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB240 802C6890 24020002 */  addiu $v0, $zero, 2
/* 0EB244 802C6894 03E00008 */  jr    $ra
/* 0EB248 802C6898 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_set_priority:
/* 0EB24C 802C689C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB250 802C68A0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB254 802C68A4 0080802D */  daddu $s0, $a0, $zero
/* 0EB258 802C68A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB25C 802C68AC 8E02000C */  lw    $v0, 0xc($s0)
/* 0EB260 802C68B0 0C0B1EAF */  jal   get_variable
/* 0EB264 802C68B4 8C450000 */   lw    $a1, ($v0)
/* 0EB268 802C68B8 0200202D */  daddu $a0, $s0, $zero
/* 0EB26C 802C68BC 0C0B1076 */  jal   set_script_priority
/* 0EB270 802C68C0 0040282D */   daddu $a1, $v0, $zero
/* 0EB274 802C68C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB278 802C68C8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB27C 802C68CC 24020002 */  addiu $v0, $zero, 2
/* 0EB280 802C68D0 03E00008 */  jr    $ra
/* 0EB284 802C68D4 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_set_timescale:
/* 0EB288 802C68D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB28C 802C68DC AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB290 802C68E0 0080802D */  daddu $s0, $a0, $zero
/* 0EB294 802C68E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB298 802C68E8 8E02000C */  lw    $v0, 0xc($s0)
/* 0EB29C 802C68EC 0C0B210B */  jal   get_float_variable
/* 0EB2A0 802C68F0 8C450000 */   lw    $a1, ($v0)
/* 0EB2A4 802C68F4 44050000 */  mfc1  $a1, $f0
/* 0EB2A8 802C68F8 0C0B1078 */  jal   set_script_timescale
/* 0EB2AC 802C68FC 0200202D */   daddu $a0, $s0, $zero
/* 0EB2B0 802C6900 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB2B4 802C6904 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB2B8 802C6908 24020002 */  addiu $v0, $zero, 2
/* 0EB2BC 802C690C 03E00008 */  jr    $ra
/* 0EB2C0 802C6910 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_set_group:
/* 0EB2C4 802C6914 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB2C8 802C6918 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB2CC 802C691C 0080802D */  daddu $s0, $a0, $zero
/* 0EB2D0 802C6920 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB2D4 802C6924 8E02000C */  lw    $v0, 0xc($s0)
/* 0EB2D8 802C6928 0C0B1EAF */  jal   get_variable
/* 0EB2DC 802C692C 8C450000 */   lw    $a1, ($v0)
/* 0EB2E0 802C6930 0200202D */  daddu $a0, $s0, $zero
/* 0EB2E4 802C6934 0C0B1086 */  jal   set_script_group
/* 0EB2E8 802C6938 0040282D */   daddu $a1, $v0, $zero
/* 0EB2EC 802C693C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB2F0 802C6940 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB2F4 802C6944 24020002 */  addiu $v0, $zero, 2
/* 0EB2F8 802C6948 03E00008 */  jr    $ra
/* 0EB2FC 802C694C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_suspend_all:
/* 0EB300 802C6950 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB304 802C6954 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB308 802C6958 8C82000C */  lw    $v0, 0xc($a0)
/* 0EB30C 802C695C 0C0B1EAF */  jal   get_variable
/* 0EB310 802C6960 8C450000 */   lw    $a1, ($v0)
/* 0EB314 802C6964 0C0B117A */  jal   suspend_all_group
/* 0EB318 802C6968 0040202D */   daddu $a0, $v0, $zero
/* 0EB31C 802C696C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB320 802C6970 24020002 */  addiu $v0, $zero, 2
/* 0EB324 802C6974 03E00008 */  jr    $ra
/* 0EB328 802C6978 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_resume_all:
/* 0EB32C 802C697C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB330 802C6980 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB334 802C6984 8C82000C */  lw    $v0, 0xc($a0)
/* 0EB338 802C6988 0C0B1EAF */  jal   get_variable
/* 0EB33C 802C698C 8C450000 */   lw    $a1, ($v0)
/* 0EB340 802C6990 0C0B1192 */  jal   resume_all_group
/* 0EB344 802C6994 0040202D */   daddu $a0, $v0, $zero
/* 0EB348 802C6998 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB34C 802C699C 24020002 */  addiu $v0, $zero, 2
/* 0EB350 802C69A0 03E00008 */  jr    $ra
/* 0EB354 802C69A4 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_suspend_others:
/* 0EB358 802C69A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB35C 802C69AC AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB360 802C69B0 0080802D */  daddu $s0, $a0, $zero
/* 0EB364 802C69B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB368 802C69B8 8E02000C */  lw    $v0, 0xc($s0)
/* 0EB36C 802C69BC 0C0B1EAF */  jal   get_variable
/* 0EB370 802C69C0 8C450000 */   lw    $a1, ($v0)
/* 0EB374 802C69C4 0200202D */  daddu $a0, $s0, $zero
/* 0EB378 802C69C8 0C0B11AA */  jal   suspend_group_others
/* 0EB37C 802C69CC 0040282D */   daddu $a1, $v0, $zero
/* 0EB380 802C69D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB384 802C69D4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB388 802C69D8 24020002 */  addiu $v0, $zero, 2
/* 0EB38C 802C69DC 03E00008 */  jr    $ra
/* 0EB390 802C69E0 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_resume_others:
/* 0EB394 802C69E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB398 802C69E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB39C 802C69EC 0080802D */  daddu $s0, $a0, $zero
/* 0EB3A0 802C69F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB3A4 802C69F4 8E02000C */  lw    $v0, 0xc($s0)
/* 0EB3A8 802C69F8 0C0B1EAF */  jal   get_variable
/* 0EB3AC 802C69FC 8C450000 */   lw    $a1, ($v0)
/* 0EB3B0 802C6A00 0200202D */  daddu $a0, $s0, $zero
/* 0EB3B4 802C6A04 0C0B11C7 */  jal   resume_group_others
/* 0EB3B8 802C6A08 0040282D */   daddu $a1, $v0, $zero
/* 0EB3BC 802C6A0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB3C0 802C6A10 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB3C4 802C6A14 24020002 */  addiu $v0, $zero, 2
/* 0EB3C8 802C6A18 03E00008 */  jr    $ra
/* 0EB3CC 802C6A1C 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_suspend:
/* 0EB3D0 802C6A20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB3D4 802C6A24 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB3D8 802C6A28 8C82000C */  lw    $v0, 0xc($a0)
/* 0EB3DC 802C6A2C 0C0B1EAF */  jal   get_variable
/* 0EB3E0 802C6A30 8C450000 */   lw    $a1, ($v0)
/* 0EB3E4 802C6A34 0C0B1108 */  jal   suspend_all_script
/* 0EB3E8 802C6A38 0040202D */   daddu $a0, $v0, $zero
/* 0EB3EC 802C6A3C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB3F0 802C6A40 24020002 */  addiu $v0, $zero, 2
/* 0EB3F4 802C6A44 03E00008 */  jr    $ra
/* 0EB3F8 802C6A48 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_resume:
/* 0EB3FC 802C6A4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB400 802C6A50 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB404 802C6A54 8C82000C */  lw    $v0, 0xc($a0)
/* 0EB408 802C6A58 0C0B1EAF */  jal   get_variable
/* 0EB40C 802C6A5C 8C450000 */   lw    $a1, ($v0)
/* 0EB410 802C6A60 0C0B1123 */  jal   resume_all_script
/* 0EB414 802C6A64 0040202D */   daddu $a0, $v0, $zero
/* 0EB418 802C6A68 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB41C 802C6A6C 24020002 */  addiu $v0, $zero, 2
/* 0EB420 802C6A70 03E00008 */  jr    $ra
/* 0EB424 802C6A74 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_does_script_exist:
/* 0EB428 802C6A78 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EB42C 802C6A7C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EB430 802C6A80 0080882D */  daddu $s1, $a0, $zero
/* 0EB434 802C6A84 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EB438 802C6A88 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB43C 802C6A8C 8E30000C */  lw    $s0, 0xc($s1)
/* 0EB440 802C6A90 8E050000 */  lw    $a1, ($s0)
/* 0EB444 802C6A94 0C0B1EAF */  jal   get_variable
/* 0EB448 802C6A98 26100004 */   addiu $s0, $s0, 4
/* 0EB44C 802C6A9C 8E100000 */  lw    $s0, ($s0)
/* 0EB450 802C6AA0 0C0B1059 */  jal   does_script_exist
/* 0EB454 802C6AA4 0040202D */   daddu $a0, $v0, $zero
/* 0EB458 802C6AA8 0220202D */  daddu $a0, $s1, $zero
/* 0EB45C 802C6AAC 0040302D */  daddu $a2, $v0, $zero
/* 0EB460 802C6AB0 0C0B2026 */  jal   set_variable
/* 0EB464 802C6AB4 0200282D */   daddu $a1, $s0, $zero
/* 0EB468 802C6AB8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EB46C 802C6ABC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EB470 802C6AC0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB474 802C6AC4 24020002 */  addiu $v0, $zero, 2
/* 0EB478 802C6AC8 03E00008 */  jr    $ra
/* 0EB47C 802C6ACC 27BD0020 */   addiu $sp, $sp, 0x20

/* 0EB480 802C6AD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB484 802C6AD4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB488 802C6AD8 0080802D */  daddu $s0, $a0, $zero
/* 0EB48C 802C6ADC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB490 802C6AE0 8E020014 */  lw    $v0, 0x14($s0)
/* 0EB494 802C6AE4 1440000F */  bnez  $v0, .L802C6B24
/* 0EB498 802C6AE8 00000000 */   nop   
/* 0EB49C 802C6AEC 8E040010 */  lw    $a0, 0x10($s0)
/* 0EB4A0 802C6AF0 8E050018 */  lw    $a1, 0x18($s0)
/* 0EB4A4 802C6AF4 0C0B0CF8 */  jal   start_script
/* 0EB4A8 802C6AF8 24060020 */   addiu $a2, $zero, 0x20
/* 0EB4AC 802C6AFC AE020014 */  sw    $v0, 0x14($s0)
/* 0EB4B0 802C6B00 8C430144 */  lw    $v1, 0x144($v0)
/* 0EB4B4 802C6B04 8E04001C */  lw    $a0, 0x1c($s0)
/* 0EB4B8 802C6B08 AE030034 */  sw    $v1, 0x34($s0)
/* 0EB4BC 802C6B0C AC440084 */  sw    $a0, 0x84($v0)
/* 0EB4C0 802C6B10 8E030020 */  lw    $v1, 0x20($s0)
/* 0EB4C4 802C6B14 AC430088 */  sw    $v1, 0x88($v0)
/* 0EB4C8 802C6B18 8E030024 */  lw    $v1, 0x24($s0)
/* 0EB4CC 802C6B1C AC50014C */  sw    $s0, 0x14c($v0)
/* 0EB4D0 802C6B20 AC43008C */  sw    $v1, 0x8c($v0)
.L802C6B24:
/* 0EB4D4 802C6B24 0C0B1059 */  jal   does_script_exist
/* 0EB4D8 802C6B28 8E040034 */   lw    $a0, 0x34($s0)
/* 0EB4DC 802C6B2C 14400005 */  bnez  $v0, .L802C6B44
/* 0EB4E0 802C6B30 2403FFFD */   addiu $v1, $zero, -3
/* 0EB4E4 802C6B34 8E020000 */  lw    $v0, ($s0)
/* 0EB4E8 802C6B38 AE000014 */  sw    $zero, 0x14($s0)
/* 0EB4EC 802C6B3C 00431024 */  and   $v0, $v0, $v1
/* 0EB4F0 802C6B40 AE020000 */  sw    $v0, ($s0)
.L802C6B44:
/* 0EB4F4 802C6B44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB4F8 802C6B48 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB4FC 802C6B4C 03E00008 */  jr    $ra
/* 0EB500 802C6B50 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_bind_lock:
/* 0EB504 802C6B54 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0EB508 802C6B58 AFB10034 */  sw    $s1, 0x34($sp)
/* 0EB50C 802C6B5C 0080882D */  daddu $s1, $a0, $zero
/* 0EB510 802C6B60 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0EB514 802C6B64 AFB60048 */  sw    $s6, 0x48($sp)
/* 0EB518 802C6B68 AFB50044 */  sw    $s5, 0x44($sp)
/* 0EB51C 802C6B6C AFB40040 */  sw    $s4, 0x40($sp)
/* 0EB520 802C6B70 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0EB524 802C6B74 AFB20038 */  sw    $s2, 0x38($sp)
/* 0EB528 802C6B78 AFB00030 */  sw    $s0, 0x30($sp)
/* 0EB52C 802C6B7C 8E30000C */  lw    $s0, 0xc($s1)
/* 0EB530 802C6B80 8E050000 */  lw    $a1, ($s0)
/* 0EB534 802C6B84 0C0B1EAF */  jal   get_variable
/* 0EB538 802C6B88 26100004 */   addiu $s0, $s0, 4
/* 0EB53C 802C6B8C 8E120000 */  lw    $s2, ($s0)
/* 0EB540 802C6B90 26100004 */  addiu $s0, $s0, 4
/* 0EB544 802C6B94 8E130000 */  lw    $s3, ($s0)
/* 0EB548 802C6B98 26100004 */  addiu $s0, $s0, 4
/* 0EB54C 802C6B9C 8E050000 */  lw    $a1, ($s0)
/* 0EB550 802C6BA0 26100004 */  addiu $s0, $s0, 4
/* 0EB554 802C6BA4 0220202D */  daddu $a0, $s1, $zero
/* 0EB558 802C6BA8 0C0B1EAF */  jal   get_variable
/* 0EB55C 802C6BAC 0040B02D */   daddu $s6, $v0, $zero
/* 0EB560 802C6BB0 0220202D */  daddu $a0, $s1, $zero
/* 0EB564 802C6BB4 0260282D */  daddu $a1, $s3, $zero
/* 0EB568 802C6BB8 3C030100 */  lui   $v1, 0x100
/* 0EB56C 802C6BBC 02439025 */  or    $s2, $s2, $v1
/* 0EB570 802C6BC0 8E140000 */  lw    $s4, ($s0)
/* 0EB574 802C6BC4 8E150004 */  lw    $s5, 4($s0)
/* 0EB578 802C6BC8 0040802D */  daddu $s0, $v0, $zero
/* 0EB57C 802C6BCC 0C0B1EAF */  jal   get_variable
/* 0EB580 802C6BD0 AFB20010 */   sw    $s2, 0x10($sp)
/* 0EB584 802C6BD4 0220202D */  daddu $a0, $s1, $zero
/* 0EB588 802C6BD8 0260282D */  daddu $a1, $s3, $zero
/* 0EB58C 802C6BDC 0C0B1F6A */  jal   get_variable_index
/* 0EB590 802C6BE0 AFA20018 */   sw    $v0, 0x18($sp)
/* 0EB594 802C6BE4 27A40010 */  addiu $a0, $sp, 0x10
/* 0EB598 802C6BE8 A7A20014 */  sh    $v0, 0x14($sp)
/* 0EB59C 802C6BEC 3C02802C */  lui   $v0, 0x802c
/* 0EB5A0 802C6BF0 24426AD0 */  addiu $v0, $v0, 0x6ad0
/* 0EB5A4 802C6BF4 AFB0002C */  sw    $s0, 0x2c($sp)
/* 0EB5A8 802C6BF8 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0EB5AC 802C6BFC AFB40024 */  sw    $s4, 0x24($sp)
/* 0EB5B0 802C6C00 0C0515DB */  jal   create_trigger
/* 0EB5B4 802C6C04 AFB50028 */   sw    $s5, 0x28($sp)
/* 0EB5B8 802C6C08 0040802D */  daddu $s0, $v0, $zero
/* 0EB5BC 802C6C0C AE160010 */  sw    $s6, 0x10($s0)
/* 0EB5C0 802C6C10 AE000014 */  sw    $zero, 0x14($s0)
/* 0EB5C4 802C6C14 92220003 */  lbu   $v0, 3($s1)
/* 0EB5C8 802C6C18 AE020018 */  sw    $v0, 0x18($s0)
/* 0EB5CC 802C6C1C 8E250084 */  lw    $a1, 0x84($s1)
/* 0EB5D0 802C6C20 0C0B1EAF */  jal   get_variable
/* 0EB5D4 802C6C24 0220202D */   daddu $a0, $s1, $zero
/* 0EB5D8 802C6C28 AE02001C */  sw    $v0, 0x1c($s0)
/* 0EB5DC 802C6C2C 8E250088 */  lw    $a1, 0x88($s1)
/* 0EB5E0 802C6C30 0C0B1EAF */  jal   get_variable
/* 0EB5E4 802C6C34 0220202D */   daddu $a0, $s1, $zero
/* 0EB5E8 802C6C38 AE020020 */  sw    $v0, 0x20($s0)
/* 0EB5EC 802C6C3C 8E25008C */  lw    $a1, 0x8c($s1)
/* 0EB5F0 802C6C40 0C0B1EAF */  jal   get_variable
/* 0EB5F4 802C6C44 0220202D */   daddu $a0, $s1, $zero
/* 0EB5F8 802C6C48 AE020024 */  sw    $v0, 0x24($s0)
/* 0EB5FC 802C6C4C 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0EB600 802C6C50 8FB60048 */  lw    $s6, 0x48($sp)
/* 0EB604 802C6C54 8FB50044 */  lw    $s5, 0x44($sp)
/* 0EB608 802C6C58 8FB40040 */  lw    $s4, 0x40($sp)
/* 0EB60C 802C6C5C 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0EB610 802C6C60 8FB20038 */  lw    $s2, 0x38($sp)
/* 0EB614 802C6C64 8FB10034 */  lw    $s1, 0x34($sp)
/* 0EB618 802C6C68 8FB00030 */  lw    $s0, 0x30($sp)
/* 0EB61C 802C6C6C 24020002 */  addiu $v0, $zero, 2
/* 0EB620 802C6C70 03E00008 */  jr    $ra
/* 0EB624 802C6C74 27BD0050 */   addiu $sp, $sp, 0x50

si_handle_thread:
/* 0EB628 802C6C78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB62C 802C6C7C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB630 802C6C80 0080802D */  daddu $s0, $a0, $zero
/* 0EB634 802C6C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB638 802C6C88 8E040008 */  lw    $a0, 8($s0)
/* 0EB63C 802C6C8C 24060057 */  addiu $a2, $zero, 0x57
/* 0EB640 802C6C90 0080282D */  daddu $a1, $a0, $zero
.L802C6C94:
/* 0EB644 802C6C94 8CA30000 */  lw    $v1, ($a1)
/* 0EB648 802C6C98 24A50004 */  addiu $a1, $a1, 4
/* 0EB64C 802C6C9C 8CA20000 */  lw    $v0, ($a1)
/* 0EB650 802C6CA0 24A50004 */  addiu $a1, $a1, 4
/* 0EB654 802C6CA4 00021080 */  sll   $v0, $v0, 2
/* 0EB658 802C6CA8 1466FFFA */  bne   $v1, $a2, .L802C6C94
/* 0EB65C 802C6CAC 00A22821 */   addu  $a1, $a1, $v0
/* 0EB660 802C6CB0 AE050008 */  sw    $a1, 8($s0)
/* 0EB664 802C6CB4 92050003 */  lbu   $a1, 3($s0)
/* 0EB668 802C6CB8 92070004 */  lbu   $a3, 4($s0)
/* 0EB66C 802C6CBC 0C0B0D74 */  jal   start_script_in_group
/* 0EB670 802C6CC0 24060060 */   addiu $a2, $zero, 0x60
/* 0EB674 802C6CC4 8E030148 */  lw    $v1, 0x148($s0)
/* 0EB678 802C6CC8 0040302D */  daddu $a2, $v0, $zero
/* 0EB67C 802C6CCC ACC30148 */  sw    $v1, 0x148($a2)
/* 0EB680 802C6CD0 8E02014C */  lw    $v0, 0x14c($s0)
/* 0EB684 802C6CD4 0000282D */  daddu $a1, $zero, $zero
/* 0EB688 802C6CD8 ACC2014C */  sw    $v0, 0x14c($a2)
/* 0EB68C 802C6CDC 8E02013C */  lw    $v0, 0x13c($s0)
/* 0EB690 802C6CE0 0200202D */  daddu $a0, $s0, $zero
/* 0EB694 802C6CE4 ACC2013C */  sw    $v0, 0x13c($a2)
/* 0EB698 802C6CE8 8E020140 */  lw    $v0, 0x140($s0)
/* 0EB69C 802C6CEC 00C0182D */  daddu $v1, $a2, $zero
/* 0EB6A0 802C6CF0 ACC20140 */  sw    $v0, 0x140($a2)
.L802C6CF4:
/* 0EB6A4 802C6CF4 8C820084 */  lw    $v0, 0x84($a0)
/* 0EB6A8 802C6CF8 24840004 */  addiu $a0, $a0, 4
/* 0EB6AC 802C6CFC 24A50001 */  addiu $a1, $a1, 1
/* 0EB6B0 802C6D00 AC620084 */  sw    $v0, 0x84($v1)
/* 0EB6B4 802C6D04 28A20010 */  slti  $v0, $a1, 0x10
/* 0EB6B8 802C6D08 1440FFFA */  bnez  $v0, .L802C6CF4
/* 0EB6BC 802C6D0C 24630004 */   addiu $v1, $v1, 4
/* 0EB6C0 802C6D10 0000282D */  daddu $a1, $zero, $zero
/* 0EB6C4 802C6D14 0200202D */  daddu $a0, $s0, $zero
/* 0EB6C8 802C6D18 00C0182D */  daddu $v1, $a2, $zero
.L802C6D1C:
/* 0EB6CC 802C6D1C 8C8200C4 */  lw    $v0, 0xc4($a0)
/* 0EB6D0 802C6D20 24840004 */  addiu $a0, $a0, 4
/* 0EB6D4 802C6D24 24A50001 */  addiu $a1, $a1, 1
/* 0EB6D8 802C6D28 AC6200C4 */  sw    $v0, 0xc4($v1)
/* 0EB6DC 802C6D2C 28A20003 */  slti  $v0, $a1, 3
/* 0EB6E0 802C6D30 1440FFFA */  bnez  $v0, .L802C6D1C
/* 0EB6E4 802C6D34 24630004 */   addiu $v1, $v1, 4
/* 0EB6E8 802C6D38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB6EC 802C6D3C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB6F0 802C6D40 24020002 */  addiu $v0, $zero, 2
/* 0EB6F4 802C6D44 03E00008 */  jr    $ra
/* 0EB6F8 802C6D48 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_end_thread:
/* 0EB6FC 802C6D4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB700 802C6D50 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB704 802C6D54 0C0B0FCF */  jal   kill_script
/* 0EB708 802C6D58 00000000 */   nop   
/* 0EB70C 802C6D5C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB710 802C6D60 240200FF */  addiu $v0, $zero, 0xff
/* 0EB714 802C6D64 03E00008 */  jr    $ra
/* 0EB718 802C6D68 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_child_thread:
/* 0EB71C 802C6D6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB720 802C6D70 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EB724 802C6D74 0080802D */  daddu $s0, $a0, $zero
/* 0EB728 802C6D78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EB72C 802C6D7C 8E050008 */  lw    $a1, 8($s0)
/* 0EB730 802C6D80 24060059 */  addiu $a2, $zero, 0x59
/* 0EB734 802C6D84 00A0202D */  daddu $a0, $a1, $zero
.L802C6D88:
/* 0EB738 802C6D88 8C830000 */  lw    $v1, ($a0)
/* 0EB73C 802C6D8C 24840004 */  addiu $a0, $a0, 4
/* 0EB740 802C6D90 8C820000 */  lw    $v0, ($a0)
/* 0EB744 802C6D94 24840004 */  addiu $a0, $a0, 4
/* 0EB748 802C6D98 00021080 */  sll   $v0, $v0, 2
/* 0EB74C 802C6D9C 1466FFFA */  bne   $v1, $a2, .L802C6D88
/* 0EB750 802C6DA0 00822021 */   addu  $a0, $a0, $v0
/* 0EB754 802C6DA4 AE040008 */  sw    $a0, 8($s0)
/* 0EB758 802C6DA8 0200202D */  daddu $a0, $s0, $zero
/* 0EB75C 802C6DAC 0C0B0E7E */  jal   func_802C39F8
/* 0EB760 802C6DB0 24060060 */   addiu $a2, $zero, 0x60
/* 0EB764 802C6DB4 8E040148 */  lw    $a0, 0x148($s0)
/* 0EB768 802C6DB8 0040182D */  daddu $v1, $v0, $zero
/* 0EB76C 802C6DBC AC640148 */  sw    $a0, 0x148($v1)
/* 0EB770 802C6DC0 8E02014C */  lw    $v0, 0x14c($s0)
/* 0EB774 802C6DC4 AC62014C */  sw    $v0, 0x14c($v1)
/* 0EB778 802C6DC8 92020004 */  lbu   $v0, 4($s0)
/* 0EB77C 802C6DCC A0620004 */  sb    $v0, 4($v1)
/* 0EB780 802C6DD0 8E02013C */  lw    $v0, 0x13c($s0)
/* 0EB784 802C6DD4 AC62013C */  sw    $v0, 0x13c($v1)
/* 0EB788 802C6DD8 8E040140 */  lw    $a0, 0x140($s0)
/* 0EB78C 802C6DDC AC640140 */  sw    $a0, 0x140($v1)
/* 0EB790 802C6DE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EB794 802C6DE4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EB798 802C6DE8 24020002 */  addiu $v0, $zero, 2
/* 0EB79C 802C6DEC 03E00008 */  jr    $ra
/* 0EB7A0 802C6DF0 27BD0018 */   addiu $sp, $sp, 0x18

si_handle_end_child_thread:
/* 0EB7A4 802C6DF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EB7A8 802C6DF8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EB7AC 802C6DFC 0C0B0FCF */  jal   kill_script
/* 0EB7B0 802C6E00 00000000 */   nop   
/* 0EB7B4 802C6E04 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EB7B8 802C6E08 0000102D */  daddu $v0, $zero, $zero
/* 0EB7BC 802C6E0C 03E00008 */  jr    $ra
/* 0EB7C0 802C6E10 27BD0018 */   addiu $sp, $sp, 0x18

func_802C6E14:
/* 0EB7C4 802C6E14 03E00008 */  jr    $ra
/* 0EB7C8 802C6E18 24020002 */   addiu $v0, $zero, 2

si_handle_print_debug_var:
/* 0EB7CC 802C6E1C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EB7D0 802C6E20 0080382D */  daddu $a3, $a0, $zero
/* 0EB7D4 802C6E24 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0EB7D8 802C6E28 AFB20020 */  sw    $s2, 0x20($sp)
/* 0EB7DC 802C6E2C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0EB7E0 802C6E30 AFB00018 */  sw    $s0, 0x18($sp)
/* 0EB7E4 802C6E34 8CE2000C */  lw    $v0, 0xc($a3)
/* 0EB7E8 802C6E38 8C500000 */  lw    $s0, ($v0)
/* 0EB7EC 802C6E3C 3C11EFE8 */  lui   $s1, 0xefe8
/* 0EB7F0 802C6E40 36312080 */  ori   $s1, $s1, 0x2080
/* 0EB7F4 802C6E44 0230102A */  slt   $v0, $s1, $s0
/* 0EB7F8 802C6E48 14400007 */  bnez  $v0, .L802C6E68
/* 0EB7FC 802C6E4C 3C12F2E3 */   lui   $s2, 0xf2e3
/* 0EB800 802C6E50 3C04802E */  lui   $a0, 0x802e
/* 0EB804 802C6E54 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB808 802C6E58 3C05802E */  lui   $a1, 0x802e
/* 0EB80C 802C6E5C 24A59D98 */  addiu $a1, $a1, -0x6268
/* 0EB810 802C6E60 080B1CDE */  j     func_802C7378
/* 0EB814 802C6E64 0200302D */   daddu $a2, $s0, $zero

.L802C6E68:
/* 0EB818 802C6E68 36521100 */  ori   $s2, $s2, 0x1100
/* 0EB81C 802C6E6C 0250102A */  slt   $v0, $s2, $s0
/* 0EB820 802C6E70 1440000D */  bnez  $v0, .L802C6EA8
/* 0EB824 802C6E74 3C02F414 */   lui   $v0, 0xf414
/* 0EB828 802C6E78 0C0B1248 */  jal   fixed_var_to_float
/* 0EB82C 802C6E7C 0200202D */   daddu $a0, $s0, $zero
/* 0EB830 802C6E80 3C04802E */  lui   $a0, 0x802e
/* 0EB834 802C6E84 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB838 802C6E88 460000A1 */  cvt.d.s $f2, $f0
/* 0EB83C 802C6E8C 44071000 */  mfc1  $a3, $f2
/* 0EB840 802C6E90 44061800 */  mfc1  $a2, $f3
/* 0EB844 802C6E94 3C05802E */  lui   $a1, 0x802e
/* 0EB848 802C6E98 0C01953C */  jal   sprintf
/* 0EB84C 802C6E9C 24A59DA8 */   addiu $a1, $a1, -0x6258
/* 0EB850 802C6EA0 080B1CE0 */  j     func_802C7380
/* 0EB854 802C6EA4 00000000 */   nop   

.L802C6EA8:
/* 0EB858 802C6EA8 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0EB85C 802C6EAC 0050102A */  slt   $v0, $v0, $s0
/* 0EB860 802C6EB0 14400016 */  bnez  $v0, .L802C6F0C
/* 0EB864 802C6EB4 3C02F545 */   lui   $v0, 0xf545
/* 0EB868 802C6EB8 3C020C84 */  lui   $v0, 0xc84
/* 0EB86C 802C6EBC 34425880 */  ori   $v0, $v0, 0x5880
/* 0EB870 802C6EC0 02028021 */  addu  $s0, $s0, $v0
/* 0EB874 802C6EC4 06010002 */  bgez  $s0, .L802C6ED0
/* 0EB878 802C6EC8 0200182D */   daddu $v1, $s0, $zero
/* 0EB87C 802C6ECC 2603001F */  addiu $v1, $s0, 0x1f
.L802C6ED0:
/* 0EB880 802C6ED0 00034143 */  sra   $t0, $v1, 5
/* 0EB884 802C6ED4 0100182D */  daddu $v1, $t0, $zero
/* 0EB888 802C6ED8 00031140 */  sll   $v0, $v1, 5
/* 0EB88C 802C6EDC 02024023 */  subu  $t0, $s0, $v0
/* 0EB890 802C6EE0 3C04802E */  lui   $a0, 0x802e
/* 0EB894 802C6EE4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB898 802C6EE8 3C05802E */  lui   $a1, 0x802e
/* 0EB89C 802C6EEC 24A59DBC */  addiu $a1, $a1, -0x6244
/* 0EB8A0 802C6EF0 0200302D */  daddu $a2, $s0, $zero
/* 0EB8A4 802C6EF4 00031880 */  sll   $v1, $v1, 2
/* 0EB8A8 802C6EF8 8CE20140 */  lw    $v0, 0x140($a3)
/* 0EB8AC 802C6EFC 00621821 */  addu  $v1, $v1, $v0
/* 0EB8B0 802C6F00 8C620000 */  lw    $v0, ($v1)
/* 0EB8B4 802C6F04 080B1C7F */  j     func_802C71FC
/* 0EB8B8 802C6F08 24070001 */   addiu $a3, $zero, 1

.L802C6F0C:
/* 0EB8BC 802C6F0C 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0EB8C0 802C6F10 0050102A */  slt   $v0, $v0, $s0
/* 0EB8C4 802C6F14 14400021 */  bnez  $v0, .L802C6F9C
/* 0EB8C8 802C6F18 3C02F676 */   lui   $v0, 0xf676
/* 0EB8CC 802C6F1C 3C020B53 */  lui   $v0, 0xb53
/* 0EB8D0 802C6F20 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0EB8D4 802C6F24 02028021 */  addu  $s0, $s0, $v0
/* 0EB8D8 802C6F28 8CE3013C */  lw    $v1, 0x13c($a3)
/* 0EB8DC 802C6F2C 00101080 */  sll   $v0, $s0, 2
/* 0EB8E0 802C6F30 00431021 */  addu  $v0, $v0, $v1
/* 0EB8E4 802C6F34 8C470000 */  lw    $a3, ($v0)
/* 0EB8E8 802C6F38 0227102A */  slt   $v0, $s1, $a3
/* 0EB8EC 802C6F3C 14400007 */  bnez  $v0, .L802C6F5C
/* 0EB8F0 802C6F40 0247102A */   slt   $v0, $s2, $a3
/* 0EB8F4 802C6F44 3C04802E */  lui   $a0, 0x802e
/* 0EB8F8 802C6F48 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB8FC 802C6F4C 3C05802E */  lui   $a1, 0x802e
/* 0EB900 802C6F50 24A59DCC */  addiu $a1, $a1, -0x6234
/* 0EB904 802C6F54 080B1CDE */  j     func_802C7378
/* 0EB908 802C6F58 00E0302D */   daddu $a2, $a3, $zero

.L802C6F5C:
/* 0EB90C 802C6F5C 1440000A */  bnez  $v0, .L802C6F88
/* 0EB910 802C6F60 00000000 */   nop   
/* 0EB914 802C6F64 0C0B1248 */  jal   fixed_var_to_float
/* 0EB918 802C6F68 00E0202D */   daddu $a0, $a3, $zero
/* 0EB91C 802C6F6C 46000021 */  cvt.d.s $f0, $f0
/* 0EB920 802C6F70 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EB924 802C6F74 3C04802E */  lui   $a0, 0x802e
/* 0EB928 802C6F78 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB92C 802C6F7C 3C05802E */  lui   $a1, 0x802e
/* 0EB930 802C6F80 080B1CCE */  j     func_802C7338
/* 0EB934 802C6F84 24A59DDC */   addiu $a1, $a1, -0x6224

.L802C6F88:
/* 0EB938 802C6F88 3C04802E */  lui   $a0, 0x802e
/* 0EB93C 802C6F8C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB940 802C6F90 3C05802E */  lui   $a1, 0x802e
/* 0EB944 802C6F94 080B1CD6 */  j     func_802C7358
/* 0EB948 802C6F98 24A59DF0 */   addiu $a1, $a1, -0x6210

.L802C6F9C:
/* 0EB94C 802C6F9C 34429800 */  ori   $v0, $v0, 0x9800
/* 0EB950 802C6FA0 0050102A */  slt   $v0, $v0, $s0
/* 0EB954 802C6FA4 14400020 */  bnez  $v0, .L802C7028
/* 0EB958 802C6FA8 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0EB95C 802C6FAC 3C020A21 */  lui   $v0, 0xa21
/* 0EB960 802C6FB0 3442FE80 */  ori   $v0, $v0, 0xfe80
/* 0EB964 802C6FB4 02028021 */  addu  $s0, $s0, $v0
/* 0EB968 802C6FB8 0C05154E */  jal   get_global_byte
/* 0EB96C 802C6FBC 0200202D */   daddu $a0, $s0, $zero
/* 0EB970 802C6FC0 0040382D */  daddu $a3, $v0, $zero
/* 0EB974 802C6FC4 0227102A */  slt   $v0, $s1, $a3
/* 0EB978 802C6FC8 14400007 */  bnez  $v0, .L802C6FE8
/* 0EB97C 802C6FCC 0247102A */   slt   $v0, $s2, $a3
/* 0EB980 802C6FD0 3C04802E */  lui   $a0, 0x802e
/* 0EB984 802C6FD4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB988 802C6FD8 3C05802E */  lui   $a1, 0x802e
/* 0EB98C 802C6FDC 24A59E00 */  addiu $a1, $a1, -0x6200
/* 0EB990 802C6FE0 080B1CDE */  j     func_802C7378
/* 0EB994 802C6FE4 00E0302D */   daddu $a2, $a3, $zero

.L802C6FE8:
/* 0EB998 802C6FE8 1440000A */  bnez  $v0, .L802C7014
/* 0EB99C 802C6FEC 00000000 */   nop   
/* 0EB9A0 802C6FF0 0C0B1248 */  jal   fixed_var_to_float
/* 0EB9A4 802C6FF4 00E0202D */   daddu $a0, $a3, $zero
/* 0EB9A8 802C6FF8 46000021 */  cvt.d.s $f0, $f0
/* 0EB9AC 802C6FFC F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EB9B0 802C7000 3C04802E */  lui   $a0, 0x802e
/* 0EB9B4 802C7004 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB9B8 802C7008 3C05802E */  lui   $a1, 0x802e
/* 0EB9BC 802C700C 080B1CCE */  j     func_802C7338
/* 0EB9C0 802C7010 24A59E10 */   addiu $a1, $a1, -0x61f0

.L802C7014:
/* 0EB9C4 802C7014 3C04802E */  lui   $a0, 0x802e
/* 0EB9C8 802C7018 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EB9CC 802C701C 3C05802E */  lui   $a1, 0x802e
/* 0EB9D0 802C7020 080B1CD6 */  j     func_802C7358
/* 0EB9D4 802C7024 24A59E24 */   addiu $a1, $a1, -0x61dc

.L802C7028:
/* 0EB9D8 802C7028 3442C500 */  ori   $v0, $v0, 0xc500
/* 0EB9DC 802C702C 0050102A */  slt   $v0, $v0, $s0
/* 0EB9E0 802C7030 14400020 */  bnez  $v0, .L802C70B4
/* 0EB9E4 802C7034 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0EB9E8 802C7038 3C0208F0 */  lui   $v0, 0x8f0
/* 0EB9EC 802C703C 3442D180 */  ori   $v0, $v0, 0xd180
/* 0EB9F0 802C7040 02028021 */  addu  $s0, $s0, $v0
/* 0EB9F4 802C7044 0C051594 */  jal   get_area_byte
/* 0EB9F8 802C7048 0200202D */   daddu $a0, $s0, $zero
/* 0EB9FC 802C704C 0040382D */  daddu $a3, $v0, $zero
/* 0EBA00 802C7050 0227102A */  slt   $v0, $s1, $a3
/* 0EBA04 802C7054 14400007 */  bnez  $v0, .L802C7074
/* 0EBA08 802C7058 0247102A */   slt   $v0, $s2, $a3
/* 0EBA0C 802C705C 3C04802E */  lui   $a0, 0x802e
/* 0EBA10 802C7060 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA14 802C7064 3C05802E */  lui   $a1, 0x802e
/* 0EBA18 802C7068 24A59E34 */  addiu $a1, $a1, -0x61cc
/* 0EBA1C 802C706C 080B1CDE */  j     func_802C7378
/* 0EBA20 802C7070 00E0302D */   daddu $a2, $a3, $zero

.L802C7074:
/* 0EBA24 802C7074 1440000A */  bnez  $v0, .L802C70A0
/* 0EBA28 802C7078 00000000 */   nop   
/* 0EBA2C 802C707C 0C0B1248 */  jal   fixed_var_to_float
/* 0EBA30 802C7080 00E0202D */   daddu $a0, $a3, $zero
/* 0EBA34 802C7084 46000021 */  cvt.d.s $f0, $f0
/* 0EBA38 802C7088 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EBA3C 802C708C 3C04802E */  lui   $a0, 0x802e
/* 0EBA40 802C7090 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA44 802C7094 3C05802E */  lui   $a1, 0x802e
/* 0EBA48 802C7098 080B1CCE */  j     func_802C7338
/* 0EBA4C 802C709C 24A59E44 */   addiu $a1, $a1, -0x61bc

.L802C70A0:
/* 0EBA50 802C70A0 3C04802E */  lui   $a0, 0x802e
/* 0EBA54 802C70A4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA58 802C70A8 3C05802E */  lui   $a1, 0x802e
/* 0EBA5C 802C70AC 080B1CD6 */  j     func_802C7358
/* 0EBA60 802C70B0 24A59E58 */   addiu $a1, $a1, -0x61a8

.L802C70B4:
/* 0EBA64 802C70B4 3442F200 */  ori   $v0, $v0, 0xf200
/* 0EBA68 802C70B8 0050102A */  slt   $v0, $v0, $s0
/* 0EBA6C 802C70BC 1440000C */  bnez  $v0, .L802C70F0
/* 0EBA70 802C70C0 3C02FA0A */   lui   $v0, 0xfa0a
/* 0EBA74 802C70C4 3C0207BF */  lui   $v0, 0x7bf
/* 0EBA78 802C70C8 3442A480 */  ori   $v0, $v0, 0xa480
/* 0EBA7C 802C70CC 02028021 */  addu  $s0, $s0, $v0
/* 0EBA80 802C70D0 0C05152F */  jal   get_global_flag
/* 0EBA84 802C70D4 0200202D */   daddu $a0, $s0, $zero
/* 0EBA88 802C70D8 3C04802E */  lui   $a0, 0x802e
/* 0EBA8C 802C70DC 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBA90 802C70E0 3C05802E */  lui   $a1, 0x802e
/* 0EBA94 802C70E4 24A59E68 */  addiu $a1, $a1, -0x6198
/* 0EBA98 802C70E8 080B1C4A */  j     func_802C7128
/* 0EBA9C 802C70EC 0200302D */   daddu $a2, $s0, $zero

.L802C70F0:
/* 0EBAA0 802C70F0 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0EBAA4 802C70F4 0050102A */  slt   $v0, $v0, $s0
/* 0EBAA8 802C70F8 1440000F */  bnez  $v0, .L802C7138
/* 0EBAAC 802C70FC 3C02FB3B */   lui   $v0, 0xfb3b
/* 0EBAB0 802C7100 3C02068E */  lui   $v0, 0x68e
/* 0EBAB4 802C7104 34427780 */  ori   $v0, $v0, 0x7780
/* 0EBAB8 802C7108 02028021 */  addu  $s0, $s0, $v0
/* 0EBABC 802C710C 0C05157C */  jal   get_area_flag
/* 0EBAC0 802C7110 0200202D */   daddu $a0, $s0, $zero
/* 0EBAC4 802C7114 3C04802E */  lui   $a0, 0x802e
/* 0EBAC8 802C7118 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBACC 802C711C 3C05802E */  lui   $a1, 0x802e
/* 0EBAD0 802C7120 24A59E78 */  addiu $a1, $a1, -0x6188
/* 0EBAD4 802C7124 0200302D */  daddu $a2, $s0, $zero
func_802C7128:
/* 0EBAD8 802C7128 0C01953C */  jal   sprintf
/* 0EBADC 802C712C 0040382D */   daddu $a3, $v0, $zero
/* 0EBAE0 802C7130 080B1CE0 */  j     func_802C7380
/* 0EBAE4 802C7134 00000000 */   nop   

.L802C7138:
/* 0EBAE8 802C7138 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0EBAEC 802C713C 0050102A */  slt   $v0, $v0, $s0
/* 0EBAF0 802C7140 14400017 */  bnez  $v0, .L802C71A0
/* 0EBAF4 802C7144 3C02FC6C */   lui   $v0, 0xfc6c
/* 0EBAF8 802C7148 3C02055D */  lui   $v0, 0x55d
/* 0EBAFC 802C714C 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0EBB00 802C7150 02028021 */  addu  $s0, $s0, $v0
/* 0EBB04 802C7154 06010002 */  bgez  $s0, .L802C7160
/* 0EBB08 802C7158 0200182D */   daddu $v1, $s0, $zero
/* 0EBB0C 802C715C 2603001F */  addiu $v1, $s0, 0x1f
.L802C7160:
/* 0EBB10 802C7160 00034143 */  sra   $t0, $v1, 5
/* 0EBB14 802C7164 0100182D */  daddu $v1, $t0, $zero
/* 0EBB18 802C7168 00031140 */  sll   $v0, $v1, 5
/* 0EBB1C 802C716C 02024023 */  subu  $t0, $s0, $v0
/* 0EBB20 802C7170 3C04802E */  lui   $a0, 0x802e
/* 0EBB24 802C7174 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBB28 802C7178 3C05802E */  lui   $a1, 0x802e
/* 0EBB2C 802C717C 24A59E88 */  addiu $a1, $a1, -0x6178
/* 0EBB30 802C7180 0200302D */  daddu $a2, $s0, $zero
/* 0EBB34 802C7184 00031880 */  sll   $v1, $v1, 2
/* 0EBB38 802C7188 3C02802E */  lui   $v0, 0x802e
/* 0EBB3C 802C718C 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0EBB40 802C7190 00621821 */  addu  $v1, $v1, $v0
/* 0EBB44 802C7194 8C620000 */  lw    $v0, ($v1)
/* 0EBB48 802C7198 080B1C7F */  j     func_802C71FC
/* 0EBB4C 802C719C 24070001 */   addiu $a3, $zero, 1

.L802C71A0:
/* 0EBB50 802C71A0 34427900 */  ori   $v0, $v0, 0x7900
/* 0EBB54 802C71A4 0050102A */  slt   $v0, $v0, $s0
/* 0EBB58 802C71A8 14400019 */  bnez  $v0, .L802C7210
/* 0EBB5C 802C71AC 3C02FD9D */   lui   $v0, 0xfd9d
/* 0EBB60 802C71B0 3C02042C */  lui   $v0, 0x42c
/* 0EBB64 802C71B4 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0EBB68 802C71B8 02028021 */  addu  $s0, $s0, $v0
/* 0EBB6C 802C71BC 06010002 */  bgez  $s0, .L802C71C8
/* 0EBB70 802C71C0 0200182D */   daddu $v1, $s0, $zero
/* 0EBB74 802C71C4 2603001F */  addiu $v1, $s0, 0x1f
.L802C71C8:
/* 0EBB78 802C71C8 00034143 */  sra   $t0, $v1, 5
/* 0EBB7C 802C71CC 0100182D */  daddu $v1, $t0, $zero
/* 0EBB80 802C71D0 00031140 */  sll   $v0, $v1, 5
/* 0EBB84 802C71D4 02024023 */  subu  $t0, $s0, $v0
/* 0EBB88 802C71D8 3C04802E */  lui   $a0, 0x802e
/* 0EBB8C 802C71DC 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBB90 802C71E0 3C05802E */  lui   $a1, 0x802e
/* 0EBB94 802C71E4 24A59E98 */  addiu $a1, $a1, -0x6168
/* 0EBB98 802C71E8 0200302D */  daddu $a2, $s0, $zero
/* 0EBB9C 802C71EC 00031880 */  sll   $v1, $v1, 2
/* 0EBBA0 802C71F0 00E31821 */  addu  $v1, $a3, $v1
/* 0EBBA4 802C71F4 24070001 */  addiu $a3, $zero, 1
/* 0EBBA8 802C71F8 8C6200C4 */  lw    $v0, 0xc4($v1)
func_802C71FC:
/* 0EBBAC 802C71FC 01073804 */  sllv  $a3, $a3, $t0
/* 0EBBB0 802C7200 0C01953C */  jal   sprintf
/* 0EBBB4 802C7204 00473824 */   and   $a3, $v0, $a3
/* 0EBBB8 802C7208 080B1CE0 */  j     func_802C7380
/* 0EBBBC 802C720C 00000000 */   nop   

.L802C7210:
/* 0EBBC0 802C7210 3442A600 */  ori   $v0, $v0, 0xa600
/* 0EBBC4 802C7214 0050102A */  slt   $v0, $v0, $s0
/* 0EBBC8 802C7218 14400026 */  bnez  $v0, .L802C72B4
/* 0EBBCC 802C721C 3C02FECE */   lui   $v0, 0xfece
/* 0EBBD0 802C7220 3C0202FA */  lui   $v0, 0x2fa
/* 0EBBD4 802C7224 3442F080 */  ori   $v0, $v0, 0xf080
/* 0EBBD8 802C7228 02028021 */  addu  $s0, $s0, $v0
/* 0EBBDC 802C722C 3C04EFE8 */  lui   $a0, 0xefe8
/* 0EBBE0 802C7230 3C03802E */  lui   $v1, 0x802e
/* 0EBBE4 802C7234 8C63A484 */  lw    $v1, -0x5b7c($v1)
/* 0EBBE8 802C7238 00101080 */  sll   $v0, $s0, 2
/* 0EBBEC 802C723C 00431021 */  addu  $v0, $v0, $v1
/* 0EBBF0 802C7240 8C470000 */  lw    $a3, ($v0)
/* 0EBBF4 802C7244 34842080 */  ori   $a0, $a0, 0x2080
/* 0EBBF8 802C7248 0087202A */  slt   $a0, $a0, $a3
/* 0EBBFC 802C724C 14800007 */  bnez  $a0, .L802C726C
/* 0EBC00 802C7250 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EBC04 802C7254 3C04802E */  lui   $a0, 0x802e
/* 0EBC08 802C7258 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBC0C 802C725C 3C05802E */  lui   $a1, 0x802e
/* 0EBC10 802C7260 24A59EA8 */  addiu $a1, $a1, -0x6158
/* 0EBC14 802C7264 080B1CDE */  j     func_802C7378
/* 0EBC18 802C7268 00E0302D */   daddu $a2, $a3, $zero

.L802C726C:
/* 0EBC1C 802C726C 34421100 */  ori   $v0, $v0, 0x1100
/* 0EBC20 802C7270 0047102A */  slt   $v0, $v0, $a3
/* 0EBC24 802C7274 1440000A */  bnez  $v0, .L802C72A0
/* 0EBC28 802C7278 00000000 */   nop   
/* 0EBC2C 802C727C 0C0B1248 */  jal   fixed_var_to_float
/* 0EBC30 802C7280 00E0202D */   daddu $a0, $a3, $zero
/* 0EBC34 802C7284 46000021 */  cvt.d.s $f0, $f0
/* 0EBC38 802C7288 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EBC3C 802C728C 3C04802E */  lui   $a0, 0x802e
/* 0EBC40 802C7290 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBC44 802C7294 3C05802E */  lui   $a1, 0x802e
/* 0EBC48 802C7298 080B1CCE */  j     func_802C7338
/* 0EBC4C 802C729C 24A59EB8 */   addiu $a1, $a1, -0x6148

.L802C72A0:
/* 0EBC50 802C72A0 3C04802E */  lui   $a0, 0x802e
/* 0EBC54 802C72A4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBC58 802C72A8 3C05802E */  lui   $a1, 0x802e
/* 0EBC5C 802C72AC 080B1CD6 */  j     func_802C7358
/* 0EBC60 802C72B0 24A59ECC */   addiu $a1, $a1, -0x6134

.L802C72B4:
/* 0EBC64 802C72B4 3442D300 */  ori   $v0, $v0, 0xd300
/* 0EBC68 802C72B8 0050102A */  slt   $v0, $v0, $s0
/* 0EBC6C 802C72BC 1440002A */  bnez  $v0, .L802C7368
/* 0EBC70 802C72C0 0200302D */   daddu $a2, $s0, $zero
/* 0EBC74 802C72C4 3C0201C9 */  lui   $v0, 0x1c9
/* 0EBC78 802C72C8 3442C380 */  ori   $v0, $v0, 0xc380
/* 0EBC7C 802C72CC 02028021 */  addu  $s0, $s0, $v0
/* 0EBC80 802C72D0 00101080 */  sll   $v0, $s0, 2
/* 0EBC84 802C72D4 00E21021 */  addu  $v0, $a3, $v0
/* 0EBC88 802C72D8 8C470084 */  lw    $a3, 0x84($v0)
/* 0EBC8C 802C72DC 3C02EFE8 */  lui   $v0, 0xefe8
/* 0EBC90 802C72E0 34422080 */  ori   $v0, $v0, 0x2080
/* 0EBC94 802C72E4 0047102A */  slt   $v0, $v0, $a3
/* 0EBC98 802C72E8 14400007 */  bnez  $v0, .L802C7308
/* 0EBC9C 802C72EC 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EBCA0 802C72F0 3C04802E */  lui   $a0, 0x802e
/* 0EBCA4 802C72F4 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBCA8 802C72F8 3C05802E */  lui   $a1, 0x802e
/* 0EBCAC 802C72FC 24A59EDC */  addiu $a1, $a1, -0x6124
/* 0EBCB0 802C7300 080B1CDE */  j     func_802C7378
/* 0EBCB4 802C7304 00E0302D */   daddu $a2, $a3, $zero

.L802C7308:
/* 0EBCB8 802C7308 34421100 */  ori   $v0, $v0, 0x1100
/* 0EBCBC 802C730C 0047102A */  slt   $v0, $v0, $a3
/* 0EBCC0 802C7310 1440000D */  bnez  $v0, .L802C7348
/* 0EBCC4 802C7314 00000000 */   nop   
/* 0EBCC8 802C7318 0C0B1248 */  jal   fixed_var_to_float
/* 0EBCCC 802C731C 00E0202D */   daddu $a0, $a3, $zero
/* 0EBCD0 802C7320 46000021 */  cvt.d.s $f0, $f0
/* 0EBCD4 802C7324 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0EBCD8 802C7328 3C04802E */  lui   $a0, 0x802e
/* 0EBCDC 802C732C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBCE0 802C7330 3C05802E */  lui   $a1, 0x802e
/* 0EBCE4 802C7334 24A59EEC */  addiu $a1, $a1, -0x6114
func_802C7338:
/* 0EBCE8 802C7338 0C01953C */  jal   sprintf
/* 0EBCEC 802C733C 0200302D */   daddu $a2, $s0, $zero
/* 0EBCF0 802C7340 080B1CE0 */  j     func_802C7380
/* 0EBCF4 802C7344 00000000 */   nop   

.L802C7348:
/* 0EBCF8 802C7348 3C04802E */  lui   $a0, 0x802e
/* 0EBCFC 802C734C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBD00 802C7350 3C05802E */  lui   $a1, 0x802e
/* 0EBD04 802C7354 24A59F00 */  addiu $a1, $a1, -0x6100
func_802C7358:
/* 0EBD08 802C7358 0C01953C */  jal   sprintf
/* 0EBD0C 802C735C 0200302D */   daddu $a2, $s0, $zero
/* 0EBD10 802C7360 080B1CE0 */  j     func_802C7380
/* 0EBD14 802C7364 00000000 */   nop   

.L802C7368:
/* 0EBD18 802C7368 3C04802E */  lui   $a0, 0x802e
/* 0EBD1C 802C736C 2484ACA0 */  addiu $a0, $a0, -0x5360
/* 0EBD20 802C7370 3C05802E */  lui   $a1, 0x802e
/* 0EBD24 802C7374 24A59F10 */  addiu $a1, $a1, -0x60f0
func_802C7378:
/* 0EBD28 802C7378 0C01953C */  jal   sprintf
/* 0EBD2C 802C737C 00000000 */   nop   
func_802C7380:
/* 0EBD30 802C7380 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0EBD34 802C7384 8FB20020 */  lw    $s2, 0x20($sp)
/* 0EBD38 802C7388 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0EBD3C 802C738C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0EBD40 802C7390 24020002 */  addiu $v0, $zero, 2
/* 0EBD44 802C7394 03E00008 */  jr    $ra
/* 0EBD48 802C7398 27BD0028 */   addiu $sp, $sp, 0x28

func_802C739C:
/* 0EBD4C 802C739C 8C82000C */  lw    $v0, 0xc($a0)
/* 0EBD50 802C73A0 8C420000 */  lw    $v0, ($v0)
/* 0EBD54 802C73A4 AC820160 */  sw    $v0, 0x160($a0)
/* 0EBD58 802C73A8 03E00008 */  jr    $ra
/* 0EBD5C 802C73AC 24020002 */   addiu $v0, $zero, 2

func_802C73B0:
/* 0EBD60 802C73B0 03E00008 */  jr    $ra
/* 0EBD64 802C73B4 24020002 */   addiu $v0, $zero, 2

func_802C73B8:
/* 0EBD68 802C73B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EBD6C 802C73BC AFB10014 */  sw    $s1, 0x14($sp)
/* 0EBD70 802C73C0 0080882D */  daddu $s1, $a0, $zero
/* 0EBD74 802C73C4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EBD78 802C73C8 0000802D */  daddu $s0, $zero, $zero
/* 0EBD7C 802C73CC AFBF0018 */  sw    $ra, 0x18($sp)
.L802C73D0:
/* 0EBD80 802C73D0 0C0B11E4 */  jal   get_script_by_index
/* 0EBD84 802C73D4 0200202D */   daddu $a0, $s0, $zero
/* 0EBD88 802C73D8 12220004 */  beq   $s1, $v0, .L802C73EC
/* 0EBD8C 802C73DC 26100001 */   addiu $s0, $s0, 1
/* 0EBD90 802C73E0 2A020080 */  slti  $v0, $s0, 0x80
/* 0EBD94 802C73E4 1440FFFA */  bnez  $v0, .L802C73D0
/* 0EBD98 802C73E8 00000000 */   nop   
.L802C73EC:
/* 0EBD9C 802C73EC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EBDA0 802C73F0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EBDA4 802C73F4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EBDA8 802C73F8 24020001 */  addiu $v0, $zero, 1
/* 0EBDAC 802C73FC 03E00008 */  jr    $ra
/* 0EBDB0 802C7400 27BD0020 */   addiu $sp, $sp, 0x20

si_execute_next_command:
/* 0EBDB4 802C7404 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EBDB8 802C7408 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EBDBC 802C740C 0080802D */  daddu $s0, $a0, $zero
/* 0EBDC0 802C7410 AFBF0014 */  sw    $ra, 0x14($sp)
.L802C7414:
/* 0EBDC4 802C7414 92030002 */  lbu   $v1, 2($s0)
/* 0EBDC8 802C7418 2C62005F */  sltiu $v0, $v1, 0x5f
/* 0EBDCC 802C741C 1040018B */  beqz  $v0, .L802C7A4C
/* 0EBDD0 802C7420 24050002 */   addiu $a1, $zero, 2
/* 0EBDD4 802C7424 00A31004 */  sllv  $v0, $v1, $a1
/* 0EBDD8 802C7428 3C01802E */  lui   $at, 0x802e
/* 0EBDDC 802C742C 00220821 */  addu  $at, $at, $v0
/* 0EBDE0 802C7430 8C229F20 */  lw    $v0, -0x60e0($at)
/* 0EBDE4 802C7434 00400008 */  jr    $v0
/* 0EBDE8 802C7438 00000000 */   nop   
/* 0EBDEC 802C743C 8E030008 */  lw    $v1, 8($s0)
/* 0EBDF0 802C7440 24050003 */  addiu $a1, $zero, 3
/* 0EBDF4 802C7444 0060102D */  daddu $v0, $v1, $zero
/* 0EBDF8 802C7448 AE020164 */  sw    $v0, 0x164($s0)
/* 0EBDFC 802C744C 90620003 */  lbu   $v0, 3($v1)
/* 0EBE00 802C7450 24630004 */  addiu $v1, $v1, 4
/* 0EBE04 802C7454 A2020002 */  sb    $v0, 2($s0)
/* 0EBE08 802C7458 8C640000 */  lw    $a0, ($v1)
/* 0EBE0C 802C745C 24630004 */  addiu $v1, $v1, 4
/* 0EBE10 802C7460 AE03000C */  sw    $v1, 0xc($s0)
/* 0EBE14 802C7464 A2000005 */  sb    $zero, 5($s0)
/* 0EBE18 802C7468 00041080 */  sll   $v0, $a0, 2
/* 0EBE1C 802C746C 00621821 */  addu  $v1, $v1, $v0
/* 0EBE20 802C7470 A2040001 */  sb    $a0, 1($s0)
/* 0EBE24 802C7474 080B1E95 */  j     si_handle_end
/* 0EBE28 802C7478 AE030008 */   sw    $v1, 8($s0)

/* 0EBE2C 802C747C 0C0B1266 */  jal   si_handle_return
/* 0EBE30 802C7480 0200202D */   daddu $a0, $s0, $zero
/* 0EBE34 802C7484 080B1E95 */  j     si_handle_end
/* 0EBE38 802C7488 0040282D */   daddu $a1, $v0, $zero

/* 0EBE3C 802C748C 0C0B126E */  jal   si_handle_label
/* 0EBE40 802C7490 0200202D */   daddu $a0, $s0, $zero
/* 0EBE44 802C7494 080B1E95 */  j     si_handle_end
/* 0EBE48 802C7498 0040282D */   daddu $a1, $v0, $zero

/* 0EBE4C 802C749C 0C0B1270 */  jal   si_handle_goto
/* 0EBE50 802C74A0 0200202D */   daddu $a0, $s0, $zero
/* 0EBE54 802C74A4 080B1E95 */  j     si_handle_end
/* 0EBE58 802C74A8 0040282D */   daddu $a1, $v0, $zero

/* 0EBE5C 802C74AC 0C0B1280 */  jal   si_handle_Loop
/* 0EBE60 802C74B0 0200202D */   daddu $a0, $s0, $zero
/* 0EBE64 802C74B4 080B1E95 */  j     si_handle_end
/* 0EBE68 802C74B8 0040282D */   daddu $a1, $v0, $zero

/* 0EBE6C 802C74BC 0C0B1292 */  jal   si_handle_end_loop
/* 0EBE70 802C74C0 0200202D */   daddu $a0, $s0, $zero
/* 0EBE74 802C74C4 080B1E95 */  j     si_handle_end
/* 0EBE78 802C74C8 0040282D */   daddu $a1, $v0, $zero

/* 0EBE7C 802C74CC 0C0B12C3 */  jal   si_handle_break_loop
/* 0EBE80 802C74D0 0200202D */   daddu $a0, $s0, $zero
/* 0EBE84 802C74D4 080B1E95 */  j     si_handle_end
/* 0EBE88 802C74D8 0040282D */   daddu $a1, $v0, $zero

/* 0EBE8C 802C74DC 0C0B12D7 */  jal   si_handle_wait
/* 0EBE90 802C74E0 0200202D */   daddu $a0, $s0, $zero
/* 0EBE94 802C74E4 080B1E95 */  j     si_handle_end
/* 0EBE98 802C74E8 0040282D */   daddu $a1, $v0, $zero

/* 0EBE9C 802C74EC 0C0B12EE */  jal   si_handle_wait_seconds
/* 0EBEA0 802C74F0 0200202D */   daddu $a0, $s0, $zero
/* 0EBEA4 802C74F4 080B1E95 */  j     si_handle_end
/* 0EBEA8 802C74F8 0040282D */   daddu $a1, $v0, $zero

/* 0EBEAC 802C74FC 0C0B1310 */  jal   si_handle_if_equal
/* 0EBEB0 802C7500 0200202D */   daddu $a0, $s0, $zero
/* 0EBEB4 802C7504 080B1E95 */  j     si_handle_end
/* 0EBEB8 802C7508 0040282D */   daddu $a1, $v0, $zero

/* 0EBEBC 802C750C 0C0B1328 */  jal   si_handle_if_not_equal
/* 0EBEC0 802C7510 0200202D */   daddu $a0, $s0, $zero
/* 0EBEC4 802C7514 080B1E95 */  j     si_handle_end
/* 0EBEC8 802C7518 0040282D */   daddu $a1, $v0, $zero

/* 0EBECC 802C751C 0C0B1340 */  jal   si_handle_if_less
/* 0EBED0 802C7520 0200202D */   daddu $a0, $s0, $zero
/* 0EBED4 802C7524 080B1E95 */  j     si_handle_end
/* 0EBED8 802C7528 0040282D */   daddu $a1, $v0, $zero

/* 0EBEDC 802C752C 0C0B1359 */  jal   si_handle_if_greater
/* 0EBEE0 802C7530 0200202D */   daddu $a0, $s0, $zero
/* 0EBEE4 802C7534 080B1E95 */  j     si_handle_end
/* 0EBEE8 802C7538 0040282D */   daddu $a1, $v0, $zero

/* 0EBEEC 802C753C 0C0B1372 */  jal   si_handle_if_less_equal
/* 0EBEF0 802C7540 0200202D */   daddu $a0, $s0, $zero
/* 0EBEF4 802C7544 080B1E95 */  j     si_handle_end
/* 0EBEF8 802C7548 0040282D */   daddu $a1, $v0, $zero

/* 0EBEFC 802C754C 0C0B138B */  jal   si_handle_if_greater_equal
/* 0EBF00 802C7550 0200202D */   daddu $a0, $s0, $zero
/* 0EBF04 802C7554 080B1E95 */  j     si_handle_end
/* 0EBF08 802C7558 0040282D */   daddu $a1, $v0, $zero

/* 0EBF0C 802C755C 0C0B13A4 */  jal   si_handle_if_AND
/* 0EBF10 802C7560 0200202D */   daddu $a0, $s0, $zero
/* 0EBF14 802C7564 080B1E95 */  j     si_handle_end
/* 0EBF18 802C7568 0040282D */   daddu $a1, $v0, $zero

/* 0EBF1C 802C756C 0C0B13BA */  jal   si_handle_if_not_AND
/* 0EBF20 802C7570 0200202D */   daddu $a0, $s0, $zero
/* 0EBF24 802C7574 080B1E95 */  j     si_handle_end
/* 0EBF28 802C7578 0040282D */   daddu $a1, $v0, $zero

/* 0EBF2C 802C757C 0C0B13D0 */  jal   si_handle_else
/* 0EBF30 802C7580 0200202D */   daddu $a0, $s0, $zero
/* 0EBF34 802C7584 080B1E95 */  j     si_handle_end
/* 0EBF38 802C7588 0040282D */   daddu $a1, $v0, $zero

/* 0EBF3C 802C758C 0C0B13DB */  jal   si_handle_end_if
/* 0EBF40 802C7590 0200202D */   daddu $a0, $s0, $zero
/* 0EBF44 802C7594 080B1E95 */  j     si_handle_end
/* 0EBF48 802C7598 0040282D */   daddu $a1, $v0, $zero

/* 0EBF4C 802C759C 0C0B13DD */  jal   si_handle_switch
/* 0EBF50 802C75A0 0200202D */   daddu $a0, $s0, $zero
/* 0EBF54 802C75A4 080B1E95 */  j     si_handle_end
/* 0EBF58 802C75A8 0040282D */   daddu $a1, $v0, $zero

/* 0EBF5C 802C75AC 0C0B13F9 */  jal   si_handle_switch_const
/* 0EBF60 802C75B0 0200202D */   daddu $a0, $s0, $zero
/* 0EBF64 802C75B4 080B1E95 */  j     si_handle_end
/* 0EBF68 802C75B8 0040282D */   daddu $a1, $v0, $zero

/* 0EBF6C 802C75BC 0C0B140C */  jal   si_handle_case_equal
/* 0EBF70 802C75C0 0200202D */   daddu $a0, $s0, $zero
/* 0EBF74 802C75C4 080B1E95 */  j     si_handle_end
/* 0EBF78 802C75C8 0040282D */   daddu $a1, $v0, $zero

/* 0EBF7C 802C75CC 0C0B142F */  jal   si_handle_case_not_equal
/* 0EBF80 802C75D0 0200202D */   daddu $a0, $s0, $zero
/* 0EBF84 802C75D4 080B1E95 */  j     si_handle_end
/* 0EBF88 802C75D8 0040282D */   daddu $a1, $v0, $zero

/* 0EBF8C 802C75DC 0C0B1452 */  jal   si_handle_case_less
/* 0EBF90 802C75E0 0200202D */   daddu $a0, $s0, $zero
/* 0EBF94 802C75E4 080B1E95 */  j     si_handle_end
/* 0EBF98 802C75E8 0040282D */   daddu $a1, $v0, $zero

/* 0EBF9C 802C75EC 0C0B1476 */  jal   si_handle_case_less_equal
/* 0EBFA0 802C75F0 0200202D */   daddu $a0, $s0, $zero
/* 0EBFA4 802C75F4 080B1E95 */  j     si_handle_end
/* 0EBFA8 802C75F8 0040282D */   daddu $a1, $v0, $zero

/* 0EBFAC 802C75FC 0C0B149A */  jal   si_handle_case_greater
/* 0EBFB0 802C7600 0200202D */   daddu $a0, $s0, $zero
/* 0EBFB4 802C7604 080B1E95 */  j     si_handle_end
/* 0EBFB8 802C7608 0040282D */   daddu $a1, $v0, $zero

/* 0EBFBC 802C760C 0C0B14BE */  jal   si_handle_case_greater_equal
/* 0EBFC0 802C7610 0200202D */   daddu $a0, $s0, $zero
/* 0EBFC4 802C7614 080B1E95 */  j     si_handle_end
/* 0EBFC8 802C7618 0040282D */   daddu $a1, $v0, $zero

/* 0EBFCC 802C761C 0C0B1511 */  jal   si_handle_case_default
/* 0EBFD0 802C7620 0200202D */   daddu $a0, $s0, $zero
/* 0EBFD4 802C7624 080B1E95 */  j     si_handle_end
/* 0EBFD8 802C7628 0040282D */   daddu $a1, $v0, $zero

/* 0EBFDC 802C762C 0C0B15B5 */  jal   si_handle_break_case
/* 0EBFE0 802C7630 0200202D */   daddu $a0, $s0, $zero
/* 0EBFE4 802C7634 080B1E95 */  j     si_handle_end
/* 0EBFE8 802C7638 0040282D */   daddu $a1, $v0, $zero

/* 0EBFEC 802C763C 0C0B1546 */  jal   si_handle_case_equal_OR
/* 0EBFF0 802C7640 0200202D */   daddu $a0, $s0, $zero
/* 0EBFF4 802C7644 080B1E95 */  j     si_handle_end
/* 0EBFF8 802C7648 0040282D */   daddu $a1, $v0, $zero

/* 0EBFFC 802C764C 0C0B1597 */  jal   si_handle_end_case_group
/* 0EC000 802C7650 0200202D */   daddu $a0, $s0, $zero
/* 0EC004 802C7654 080B1E95 */  j     si_handle_end
/* 0EC008 802C7658 0040282D */   daddu $a1, $v0, $zero

/* 0EC00C 802C765C 0C0B156E */  jal   si_handle_case_equal_AND
/* 0EC010 802C7660 0200202D */   daddu $a0, $s0, $zero
/* 0EC014 802C7664 080B1E95 */  j     si_handle_end
/* 0EC018 802C7668 0040282D */   daddu $a1, $v0, $zero

/* 0EC01C 802C766C 0C0B1527 */  jal   si_handle_case_AND
/* 0EC020 802C7670 0200202D */   daddu $a0, $s0, $zero
/* 0EC024 802C7674 080B1E95 */  j     si_handle_end
/* 0EC028 802C7678 0040282D */   daddu $a1, $v0, $zero

/* 0EC02C 802C767C 0C0B14E2 */  jal   si_handle_case_range
/* 0EC030 802C7680 0200202D */   daddu $a0, $s0, $zero
/* 0EC034 802C7684 080B1E95 */  j     si_handle_end
/* 0EC038 802C7688 0040282D */   daddu $a1, $v0, $zero

/* 0EC03C 802C768C 0C0B15C6 */  jal   si_handle_end_switch
/* 0EC040 802C7690 0200202D */   daddu $a0, $s0, $zero
/* 0EC044 802C7694 080B1E95 */  j     si_handle_end
/* 0EC048 802C7698 0040282D */   daddu $a1, $v0, $zero

/* 0EC04C 802C769C 0C0B15D1 */  jal   si_handle_set_var
/* 0EC050 802C76A0 0200202D */   daddu $a0, $s0, $zero
/* 0EC054 802C76A4 080B1E95 */  j     si_handle_end
/* 0EC058 802C76A8 0040282D */   daddu $a1, $v0, $zero

/* 0EC05C 802C76AC 0C0B15E4 */  jal   si_handle_set_const
/* 0EC060 802C76B0 0200202D */   daddu $a0, $s0, $zero
/* 0EC064 802C76B4 080B1E95 */  j     si_handle_end
/* 0EC068 802C76B8 0040282D */   daddu $a1, $v0, $zero

/* 0EC06C 802C76BC 0C0B15EE */  jal   si_handle_set_float
/* 0EC070 802C76C0 0200202D */   daddu $a0, $s0, $zero
/* 0EC074 802C76C4 080B1E95 */  j     si_handle_end
/* 0EC078 802C76C8 0040282D */   daddu $a1, $v0, $zero

/* 0EC07C 802C76CC 0C0B1601 */  jal   si_handle_add
/* 0EC080 802C76D0 0200202D */   daddu $a0, $s0, $zero
/* 0EC084 802C76D4 080B1E95 */  j     si_handle_end
/* 0EC088 802C76D8 0040282D */   daddu $a1, $v0, $zero

/* 0EC08C 802C76DC 0C0B161A */  jal   si_handle_subtract
/* 0EC090 802C76E0 0200202D */   daddu $a0, $s0, $zero
/* 0EC094 802C76E4 080B1E95 */  j     si_handle_end
/* 0EC098 802C76E8 0040282D */   daddu $a1, $v0, $zero

/* 0EC09C 802C76EC 0C0B1633 */  jal   si_handle_multiply
/* 0EC0A0 802C76F0 0200202D */   daddu $a0, $s0, $zero
/* 0EC0A4 802C76F4 080B1E95 */  j     si_handle_end
/* 0EC0A8 802C76F8 0040282D */   daddu $a1, $v0, $zero

/* 0EC0AC 802C76FC 0C0B164D */  jal   si_handle_divide
/* 0EC0B0 802C7700 0200202D */   daddu $a0, $s0, $zero
/* 0EC0B4 802C7704 080B1E95 */  j     si_handle_end
/* 0EC0B8 802C7708 0040282D */   daddu $a1, $v0, $zero

/* 0EC0BC 802C770C 0C0B166F */  jal   si_handle_mod
/* 0EC0C0 802C7710 0200202D */   daddu $a0, $s0, $zero
/* 0EC0C4 802C7714 080B1E95 */  j     si_handle_end
/* 0EC0C8 802C7718 0040282D */   daddu $a1, $v0, $zero

/* 0EC0CC 802C771C 0C0B16A1 */  jal   si_handle_addF
/* 0EC0D0 802C7720 0200202D */   daddu $a0, $s0, $zero
/* 0EC0D4 802C7724 080B1E95 */  j     si_handle_end
/* 0EC0D8 802C7728 0040282D */   daddu $a1, $v0, $zero

/* 0EC0DC 802C772C 0C0B16BB */  jal   si_handle_subtractF
/* 0EC0E0 802C7730 0200202D */   daddu $a0, $s0, $zero
/* 0EC0E4 802C7734 080B1E95 */  j     si_handle_end
/* 0EC0E8 802C7738 0040282D */   daddu $a1, $v0, $zero

/* 0EC0EC 802C773C 0C0B16D5 */  jal   si_handle_multiplyF
/* 0EC0F0 802C7740 0200202D */   daddu $a0, $s0, $zero
/* 0EC0F4 802C7744 080B1E95 */  j     si_handle_end
/* 0EC0F8 802C7748 0040282D */   daddu $a1, $v0, $zero

/* 0EC0FC 802C774C 0C0B16F0 */  jal   si_handle_divideF
/* 0EC100 802C7750 0200202D */   daddu $a0, $s0, $zero
/* 0EC104 802C7754 080B1E95 */  j     si_handle_end
/* 0EC108 802C7758 0040282D */   daddu $a1, $v0, $zero

/* 0EC10C 802C775C 0C0B170A */  jal   si_handle_set_int_buffer_ptr
/* 0EC110 802C7760 0200202D */   daddu $a0, $s0, $zero
/* 0EC114 802C7764 080B1E95 */  j     si_handle_end
/* 0EC118 802C7768 0040282D */   daddu $a1, $v0, $zero

/* 0EC11C 802C776C 0C0B1724 */  jal   si_handle_get_1_word
/* 0EC120 802C7770 0200202D */   daddu $a0, $s0, $zero
/* 0EC124 802C7774 080B1E95 */  j     si_handle_end
/* 0EC128 802C7778 0040282D */   daddu $a1, $v0, $zero

/* 0EC12C 802C777C 0C0B1731 */  jal   si_handle_get_2_word
/* 0EC130 802C7780 0200202D */   daddu $a0, $s0, $zero
/* 0EC134 802C7784 080B1E95 */  j     si_handle_end
/* 0EC138 802C7788 0040282D */   daddu $a1, $v0, $zero

/* 0EC13C 802C778C 0C0B174B */  jal   si_handle_get_3_word
/* 0EC140 802C7790 0200202D */   daddu $a0, $s0, $zero
/* 0EC144 802C7794 080B1E95 */  j     si_handle_end
/* 0EC148 802C7798 0040282D */   daddu $a1, $v0, $zero

/* 0EC14C 802C779C 0C0B176D */  jal   si_handle_get_4_word
/* 0EC150 802C77A0 0200202D */   daddu $a0, $s0, $zero
/* 0EC154 802C77A4 080B1E95 */  j     si_handle_end
/* 0EC158 802C77A8 0040282D */   daddu $a1, $v0, $zero

/* 0EC15C 802C77AC 0C0B1797 */  jal   si_handle_get_Nth_word
/* 0EC160 802C77B0 0200202D */   daddu $a0, $s0, $zero
/* 0EC164 802C77B4 080B1E95 */  j     si_handle_end
/* 0EC168 802C77B8 0040282D */   daddu $a1, $v0, $zero

/* 0EC16C 802C77BC 0C0B1717 */  jal   si_handle_set_float_buffer_ptr
/* 0EC170 802C77C0 0200202D */   daddu $a0, $s0, $zero
/* 0EC174 802C77C4 080B1E95 */  j     si_handle_end
/* 0EC178 802C77C8 0040282D */   daddu $a1, $v0, $zero

/* 0EC17C 802C77CC 0C0B17AD */  jal   si_handle_get_1_float
/* 0EC180 802C77D0 0200202D */   daddu $a0, $s0, $zero
/* 0EC184 802C77D4 080B1E95 */  j     si_handle_end
/* 0EC188 802C77D8 0040282D */   daddu $a1, $v0, $zero

/* 0EC18C 802C77DC 0C0B17C3 */  jal   si_handle_get_2_float
/* 0EC190 802C77E0 0200202D */   daddu $a0, $s0, $zero
/* 0EC194 802C77E4 080B1E95 */  j     si_handle_end
/* 0EC198 802C77E8 0040282D */   daddu $a1, $v0, $zero

/* 0EC19C 802C77EC 0C0B17E7 */  jal   si_handle_get_3_float
/* 0EC1A0 802C77F0 0200202D */   daddu $a0, $s0, $zero
/* 0EC1A4 802C77F4 080B1E95 */  j     si_handle_end
/* 0EC1A8 802C77F8 0040282D */   daddu $a1, $v0, $zero

/* 0EC1AC 802C77FC 0C0B1817 */  jal   si_handle_get_4_float
/* 0EC1B0 802C7800 0200202D */   daddu $a0, $s0, $zero
/* 0EC1B4 802C7804 080B1E95 */  j     si_handle_end
/* 0EC1B8 802C7808 0040282D */   daddu $a1, $v0, $zero

/* 0EC1BC 802C780C 0C0B1853 */  jal   si_handle_get_Nth_float
/* 0EC1C0 802C7810 0200202D */   daddu $a0, $s0, $zero
/* 0EC1C4 802C7814 080B1E95 */  j     si_handle_end
/* 0EC1C8 802C7818 0040282D */   daddu $a1, $v0, $zero

/* 0EC1CC 802C781C 0C0B186B */  jal   si_handle_set_array
/* 0EC1D0 802C7820 0200202D */   daddu $a0, $s0, $zero
/* 0EC1D4 802C7824 080B1E95 */  j     si_handle_end
/* 0EC1D8 802C7828 0040282D */   daddu $a1, $v0, $zero

/* 0EC1DC 802C782C 0C0B1878 */  jal   si_handle_set_flag_array
/* 0EC1E0 802C7830 0200202D */   daddu $a0, $s0, $zero
/* 0EC1E4 802C7834 080B1E95 */  j     si_handle_end
/* 0EC1E8 802C7838 0040282D */   daddu $a1, $v0, $zero

/* 0EC1EC 802C783C 0C0B1885 */  jal   si_handle_allocate_array
/* 0EC1F0 802C7840 0200202D */   daddu $a0, $s0, $zero
/* 0EC1F4 802C7844 080B1E95 */  j     si_handle_end
/* 0EC1F8 802C7848 0040282D */   daddu $a1, $v0, $zero

/* 0EC1FC 802C784C 0C0B1A1C */  jal   si_handle_kill
/* 0EC200 802C7850 0200202D */   daddu $a0, $s0, $zero
/* 0EC204 802C7854 080B1E95 */  j     si_handle_end
/* 0EC208 802C7858 0040282D */   daddu $a1, $v0, $zero

/* 0EC20C 802C785C 0C0B189C */  jal   si_handle_AND
/* 0EC210 802C7860 0200202D */   daddu $a0, $s0, $zero
/* 0EC214 802C7864 080B1E95 */  j     si_handle_end
/* 0EC218 802C7868 0040282D */   daddu $a1, $v0, $zero

/* 0EC21C 802C786C 0C0B18B5 */  jal   si_handle_AND_const
/* 0EC220 802C7870 0200202D */   daddu $a0, $s0, $zero
/* 0EC224 802C7874 080B1E95 */  j     si_handle_end
/* 0EC228 802C7878 0040282D */   daddu $a1, $v0, $zero

/* 0EC22C 802C787C 0C0B18CB */  jal   si_handle_OR
/* 0EC230 802C7880 0200202D */   daddu $a0, $s0, $zero
/* 0EC234 802C7884 080B1E95 */  j     si_handle_end
/* 0EC238 802C7888 0040282D */   daddu $a1, $v0, $zero

/* 0EC23C 802C788C 0C0B18E4 */  jal   si_handle_OR_const
/* 0EC240 802C7890 0200202D */   daddu $a0, $s0, $zero
/* 0EC244 802C7894 080B1E95 */  j     si_handle_end
/* 0EC248 802C7898 0040282D */   daddu $a1, $v0, $zero

/* 0EC24C 802C789C 0C0B18FA */  jal   si_handle_call
/* 0EC250 802C78A0 0200202D */   daddu $a0, $s0, $zero
/* 0EC254 802C78A4 080B1E95 */  j     si_handle_end
/* 0EC258 802C78A8 0040282D */   daddu $a1, $v0, $zero

/* 0EC25C 802C78AC 0C0B191B */  jal   si_handle_exec1
/* 0EC260 802C78B0 0200202D */   daddu $a0, $s0, $zero
/* 0EC264 802C78B4 080B1E95 */  j     si_handle_end
/* 0EC268 802C78B8 0040282D */   daddu $a1, $v0, $zero

/* 0EC26C 802C78BC 0C0B1949 */  jal   si_handle_exec2
/* 0EC270 802C78C0 0200202D */   daddu $a0, $s0, $zero
/* 0EC274 802C78C4 080B1E95 */  j     si_handle_end
/* 0EC278 802C78C8 0040282D */   daddu $a1, $v0, $zero

/* 0EC27C 802C78CC 0C0B197F */  jal   si_handle_exec_wait
/* 0EC280 802C78D0 0200202D */   daddu $a0, $s0, $zero
/* 0EC284 802C78D4 080B1E95 */  j     si_handle_end
/* 0EC288 802C78D8 0040282D */   daddu $a1, $v0, $zero

/* 0EC28C 802C78DC 0C0B19C5 */  jal   si_handle_bind
/* 0EC290 802C78E0 0200202D */   daddu $a0, $s0, $zero
/* 0EC294 802C78E4 080B1E95 */  j     si_handle_end
/* 0EC298 802C78E8 0040282D */   daddu $a1, $v0, $zero

/* 0EC29C 802C78EC 0C0B1A14 */  jal   si_handle_unbind
/* 0EC2A0 802C78F0 0200202D */   daddu $a0, $s0, $zero
/* 0EC2A4 802C78F4 080B1E95 */  j     si_handle_end
/* 0EC2A8 802C78F8 0040282D */   daddu $a1, $v0, $zero

/* 0EC2AC 802C78FC 0C0B1A27 */  jal   si_handle_set_priority
/* 0EC2B0 802C7900 0200202D */   daddu $a0, $s0, $zero
/* 0EC2B4 802C7904 080B1E95 */  j     si_handle_end
/* 0EC2B8 802C7908 0040282D */   daddu $a1, $v0, $zero

/* 0EC2BC 802C790C 0C0B1A36 */  jal   si_handle_set_timescale
/* 0EC2C0 802C7910 0200202D */   daddu $a0, $s0, $zero
/* 0EC2C4 802C7914 080B1E95 */  j     si_handle_end
/* 0EC2C8 802C7918 0040282D */   daddu $a1, $v0, $zero

/* 0EC2CC 802C791C 0C0B1A45 */  jal   si_handle_set_group
/* 0EC2D0 802C7920 0200202D */   daddu $a0, $s0, $zero
/* 0EC2D4 802C7924 080B1E95 */  j     si_handle_end
/* 0EC2D8 802C7928 0040282D */   daddu $a1, $v0, $zero

/* 0EC2DC 802C792C 0C0B1990 */  jal   si_handle_jump
/* 0EC2E0 802C7930 0200202D */   daddu $a0, $s0, $zero
/* 0EC2E4 802C7934 080B1E95 */  j     si_handle_end
/* 0EC2E8 802C7938 0040282D */   daddu $a1, $v0, $zero

/* 0EC2EC 802C793C 0C0B1AD5 */  jal   si_handle_bind_lock
/* 0EC2F0 802C7940 0200202D */   daddu $a0, $s0, $zero
/* 0EC2F4 802C7944 080B1E95 */  j     si_handle_end
/* 0EC2F8 802C7948 0040282D */   daddu $a1, $v0, $zero

/* 0EC2FC 802C794C 0C0B1A54 */  jal   si_handle_suspend_all
/* 0EC300 802C7950 0200202D */   daddu $a0, $s0, $zero
/* 0EC304 802C7954 080B1E95 */  j     si_handle_end
/* 0EC308 802C7958 0040282D */   daddu $a1, $v0, $zero

/* 0EC30C 802C795C 0C0B1A5F */  jal   si_handle_resume_all
/* 0EC310 802C7960 0200202D */   daddu $a0, $s0, $zero
/* 0EC314 802C7964 080B1E95 */  j     si_handle_end
/* 0EC318 802C7968 0040282D */   daddu $a1, $v0, $zero

/* 0EC31C 802C796C 0C0B1A6A */  jal   si_handle_suspend_others
/* 0EC320 802C7970 0200202D */   daddu $a0, $s0, $zero
/* 0EC324 802C7974 080B1E95 */  j     si_handle_end
/* 0EC328 802C7978 0040282D */   daddu $a1, $v0, $zero

/* 0EC32C 802C797C 0C0B1A79 */  jal   si_handle_resume_others
/* 0EC330 802C7980 0200202D */   daddu $a0, $s0, $zero
/* 0EC334 802C7984 080B1E95 */  j     si_handle_end
/* 0EC338 802C7988 0040282D */   daddu $a1, $v0, $zero

/* 0EC33C 802C798C 0C0B1A88 */  jal   si_handle_suspend
/* 0EC340 802C7990 0200202D */   daddu $a0, $s0, $zero
/* 0EC344 802C7994 080B1E95 */  j     si_handle_end
/* 0EC348 802C7998 0040282D */   daddu $a1, $v0, $zero

/* 0EC34C 802C799C 0C0B1A93 */  jal   si_handle_resume
/* 0EC350 802C79A0 0200202D */   daddu $a0, $s0, $zero
/* 0EC354 802C79A4 080B1E95 */  j     si_handle_end
/* 0EC358 802C79A8 0040282D */   daddu $a1, $v0, $zero

/* 0EC35C 802C79AC 0C0B1A9E */  jal   si_handle_does_script_exist
/* 0EC360 802C79B0 0200202D */   daddu $a0, $s0, $zero
/* 0EC364 802C79B4 080B1E95 */  j     si_handle_end
/* 0EC368 802C79B8 0040282D */   daddu $a1, $v0, $zero

/* 0EC36C 802C79BC 0C0B1B1E */  jal   si_handle_thread
/* 0EC370 802C79C0 0200202D */   daddu $a0, $s0, $zero
/* 0EC374 802C79C4 080B1E95 */  j     si_handle_end
/* 0EC378 802C79C8 0040282D */   daddu $a1, $v0, $zero

/* 0EC37C 802C79CC 0C0B1B53 */  jal   si_handle_end_thread
/* 0EC380 802C79D0 0200202D */   daddu $a0, $s0, $zero
/* 0EC384 802C79D4 080B1E95 */  j     si_handle_end
/* 0EC388 802C79D8 0040282D */   daddu $a1, $v0, $zero

/* 0EC38C 802C79DC 0C0B1B5B */  jal   si_handle_child_thread
/* 0EC390 802C79E0 0200202D */   daddu $a0, $s0, $zero
/* 0EC394 802C79E4 080B1E95 */  j     si_handle_end
/* 0EC398 802C79E8 0040282D */   daddu $a1, $v0, $zero

/* 0EC39C 802C79EC 0C0B1B7D */  jal   si_handle_end_child_thread
/* 0EC3A0 802C79F0 0200202D */   daddu $a0, $s0, $zero
/* 0EC3A4 802C79F4 080B1E95 */  j     si_handle_end
/* 0EC3A8 802C79F8 0040282D */   daddu $a1, $v0, $zero

/* 0EC3AC 802C79FC 0C0B1B85 */  jal   func_802C6E14
/* 0EC3B0 802C7A00 0200202D */   daddu $a0, $s0, $zero
/* 0EC3B4 802C7A04 080B1E95 */  j     si_handle_end
/* 0EC3B8 802C7A08 0040282D */   daddu $a1, $v0, $zero

/* 0EC3BC 802C7A0C 0C0B1B87 */  jal   si_handle_print_debug_var
/* 0EC3C0 802C7A10 0200202D */   daddu $a0, $s0, $zero
/* 0EC3C4 802C7A14 080B1E95 */  j     si_handle_end
/* 0EC3C8 802C7A18 0040282D */   daddu $a1, $v0, $zero

/* 0EC3CC 802C7A1C 0C0B1CE7 */  jal   func_802C739C
/* 0EC3D0 802C7A20 0200202D */   daddu $a0, $s0, $zero
/* 0EC3D4 802C7A24 080B1E95 */  j     si_handle_end
/* 0EC3D8 802C7A28 0040282D */   daddu $a1, $v0, $zero

/* 0EC3DC 802C7A2C 0C0B1CEC */  jal   func_802C73B0
/* 0EC3E0 802C7A30 0200202D */   daddu $a0, $s0, $zero
/* 0EC3E4 802C7A34 080B1E95 */  j     si_handle_end
/* 0EC3E8 802C7A38 0040282D */   daddu $a1, $v0, $zero

/* 0EC3EC 802C7A3C 0C0B1CEE */  jal   func_802C73B8
/* 0EC3F0 802C7A40 0200202D */   daddu $a0, $s0, $zero
/* 0EC3F4 802C7A44 080B1E95 */  j     si_handle_end
/* 0EC3F8 802C7A48 0040282D */   daddu $a1, $v0, $zero

func_802C7A4C:
.L802C7A4C:
/* 0EC3FC 802C7A4C 080B1E93 */  j     func_802C7A4C
/* 0EC400 802C7A50 00000000 */   nop   

si_handle_end:
/* 0EC404 802C7A54 24020003 */  addiu $v0, $zero, 3
/* 0EC408 802C7A58 10A2FE6E */  beq   $a1, $v0, .L802C7414
/* 0EC40C 802C7A5C 240200FF */   addiu $v0, $zero, 0xff
/* 0EC410 802C7A60 10A20012 */  beq   $a1, $v0, .L802C7AAC
/* 0EC414 802C7A64 2402FFFF */   addiu $v0, $zero, -1
/* 0EC418 802C7A68 04A00010 */  bltz  $a1, .L802C7AAC
/* 0EC41C 802C7A6C 24020001 */   addiu $v0, $zero, 1
/* 0EC420 802C7A70 50A0000E */  beql  $a1, $zero, .L802C7AAC
/* 0EC424 802C7A74 0000102D */   daddu $v0, $zero, $zero
/* 0EC428 802C7A78 14A20003 */  bne   $a1, $v0, .L802C7A88
/* 0EC42C 802C7A7C 24020002 */   addiu $v0, $zero, 2
/* 0EC430 802C7A80 080B1EAA */  j     func_802C7AA8
/* 0EC434 802C7A84 A2000002 */   sb    $zero, 2($s0)

.L802C7A88:
/* 0EC438 802C7A88 14A2FE62 */  bne   $a1, $v0, .L802C7414
/* 0EC43C 802C7A8C 00000000 */   nop   
/* 0EC440 802C7A90 A2000002 */  sb    $zero, 2($s0)
/* 0EC444 802C7A94 3C028007 */  lui   $v0, 0x8007
/* 0EC448 802C7A98 8C42419C */  lw    $v0, 0x419c($v0)
/* 0EC44C 802C7A9C 80420078 */  lb    $v0, 0x78($v0)
/* 0EC450 802C7AA0 1445FE5C */  bne   $v0, $a1, .L802C7414
/* 0EC454 802C7AA4 00000000 */   nop   
func_802C7AA8:
/* 0EC458 802C7AA8 0000102D */  daddu $v0, $zero, $zero
.L802C7AAC:
/* 0EC45C 802C7AAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0EC460 802C7AB0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EC464 802C7AB4 03E00008 */  jr    $ra
/* 0EC468 802C7AB8 27BD0018 */   addiu $sp, $sp, 0x18

get_variable:
/* 0EC46C 802C7ABC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EC470 802C7AC0 3C07EFE8 */  lui   $a3, 0xefe8
/* 0EC474 802C7AC4 34E72080 */  ori   $a3, $a3, 0x2080
/* 0EC478 802C7AC8 00E5102A */  slt   $v0, $a3, $a1
/* 0EC47C 802C7ACC 104000B2 */  beqz  $v0, .L802C7D98
/* 0EC480 802C7AD0 AFBF0010 */   sw    $ra, 0x10($sp)
/* 0EC484 802C7AD4 3C02F119 */  lui   $v0, 0xf119
/* 0EC488 802C7AD8 34424D80 */  ori   $v0, $v0, 0x4d80
/* 0EC48C 802C7ADC 0045102A */  slt   $v0, $v0, $a1
/* 0EC490 802C7AE0 104000AD */  beqz  $v0, .L802C7D98
/* 0EC494 802C7AE4 3C06F2E3 */   lui   $a2, 0xf2e3
/* 0EC498 802C7AE8 34C61100 */  ori   $a2, $a2, 0x1100
/* 0EC49C 802C7AEC 00C5102A */  slt   $v0, $a2, $a1
/* 0EC4A0 802C7AF0 14400007 */  bnez  $v0, .L802C7B10
/* 0EC4A4 802C7AF4 3C02F414 */   lui   $v0, 0xf414
/* 0EC4A8 802C7AF8 0C0B1248 */  jal   fixed_var_to_float
/* 0EC4AC 802C7AFC 00A0202D */   daddu $a0, $a1, $zero
/* 0EC4B0 802C7B00 4600008D */  trunc.w.s $f2, $f0
/* 0EC4B4 802C7B04 44021000 */  mfc1  $v0, $f2
/* 0EC4B8 802C7B08 080B1F67 */  j     func_802C7D9C
/* 0EC4BC 802C7B0C 00000000 */   nop   

.L802C7B10:
/* 0EC4C0 802C7B10 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0EC4C4 802C7B14 0045102A */  slt   $v0, $v0, $a1
/* 0EC4C8 802C7B18 14400011 */  bnez  $v0, .L802C7B60
/* 0EC4CC 802C7B1C 3C02F545 */   lui   $v0, 0xf545
/* 0EC4D0 802C7B20 3C020C84 */  lui   $v0, 0xc84
/* 0EC4D4 802C7B24 34425880 */  ori   $v0, $v0, 0x5880
/* 0EC4D8 802C7B28 00A22821 */  addu  $a1, $a1, $v0
/* 0EC4DC 802C7B2C 04A10002 */  bgez  $a1, .L802C7B38
/* 0EC4E0 802C7B30 00A0182D */   daddu $v1, $a1, $zero
/* 0EC4E4 802C7B34 24A3001F */  addiu $v1, $a1, 0x1f
.L802C7B38:
/* 0EC4E8 802C7B38 00033143 */  sra   $a2, $v1, 5
/* 0EC4EC 802C7B3C 00C0182D */  daddu $v1, $a2, $zero
/* 0EC4F0 802C7B40 00031140 */  sll   $v0, $v1, 5
/* 0EC4F4 802C7B44 00A23023 */  subu  $a2, $a1, $v0
/* 0EC4F8 802C7B48 8C820140 */  lw    $v0, 0x140($a0)
/* 0EC4FC 802C7B4C 00031880 */  sll   $v1, $v1, 2
/* 0EC500 802C7B50 00621821 */  addu  $v1, $v1, $v0
/* 0EC504 802C7B54 8C630000 */  lw    $v1, ($v1)
/* 0EC508 802C7B58 080B1F37 */  j     func_802C7CDC
/* 0EC50C 802C7B5C 24020001 */   addiu $v0, $zero, 1

.L802C7B60:
/* 0EC510 802C7B60 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0EC514 802C7B64 0045102A */  slt   $v0, $v0, $a1
/* 0EC518 802C7B68 1440000D */  bnez  $v0, .L802C7BA0
/* 0EC51C 802C7B6C 3C02F676 */   lui   $v0, 0xf676
/* 0EC520 802C7B70 3C020B53 */  lui   $v0, 0xb53
/* 0EC524 802C7B74 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0EC528 802C7B78 00A22821 */  addu  $a1, $a1, $v0
/* 0EC52C 802C7B7C 8C83013C */  lw    $v1, 0x13c($a0)
/* 0EC530 802C7B80 00051080 */  sll   $v0, $a1, 2
/* 0EC534 802C7B84 00431021 */  addu  $v0, $v0, $v1
/* 0EC538 802C7B88 8C450000 */  lw    $a1, ($v0)
/* 0EC53C 802C7B8C 00E5102A */  slt   $v0, $a3, $a1
/* 0EC540 802C7B90 10400081 */  beqz  $v0, .L802C7D98
/* 0EC544 802C7B94 00C5102A */   slt   $v0, $a2, $a1
/* 0EC548 802C7B98 080B1F5F */  j     func_802C7D7C
/* 0EC54C 802C7B9C 00000000 */   nop   

.L802C7BA0:
/* 0EC550 802C7BA0 34429800 */  ori   $v0, $v0, 0x9800
/* 0EC554 802C7BA4 0045102A */  slt   $v0, $v0, $a1
/* 0EC558 802C7BA8 14400007 */  bnez  $v0, .L802C7BC8
/* 0EC55C 802C7BAC 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0EC560 802C7BB0 3C040A21 */  lui   $a0, 0xa21
/* 0EC564 802C7BB4 3484FE80 */  ori   $a0, $a0, 0xfe80
/* 0EC568 802C7BB8 0C05154E */  jal   get_global_byte
/* 0EC56C 802C7BBC 00A42021 */   addu  $a0, $a1, $a0
/* 0EC570 802C7BC0 080B1F67 */  j     func_802C7D9C
/* 0EC574 802C7BC4 00000000 */   nop   

.L802C7BC8:
/* 0EC578 802C7BC8 3442C500 */  ori   $v0, $v0, 0xc500
/* 0EC57C 802C7BCC 0045102A */  slt   $v0, $v0, $a1
/* 0EC580 802C7BD0 14400007 */  bnez  $v0, .L802C7BF0
/* 0EC584 802C7BD4 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0EC588 802C7BD8 3C0408F0 */  lui   $a0, 0x8f0
/* 0EC58C 802C7BDC 3484D180 */  ori   $a0, $a0, 0xd180
/* 0EC590 802C7BE0 0C051594 */  jal   get_area_byte
/* 0EC594 802C7BE4 00A42021 */   addu  $a0, $a1, $a0
/* 0EC598 802C7BE8 080B1F67 */  j     func_802C7D9C
/* 0EC59C 802C7BEC 00000000 */   nop   

.L802C7BF0:
/* 0EC5A0 802C7BF0 3442F200 */  ori   $v0, $v0, 0xf200
/* 0EC5A4 802C7BF4 0045102A */  slt   $v0, $v0, $a1
/* 0EC5A8 802C7BF8 14400007 */  bnez  $v0, .L802C7C18
/* 0EC5AC 802C7BFC 3C02FA0A */   lui   $v0, 0xfa0a
/* 0EC5B0 802C7C00 3C0407BF */  lui   $a0, 0x7bf
/* 0EC5B4 802C7C04 3484A480 */  ori   $a0, $a0, 0xa480
/* 0EC5B8 802C7C08 0C05152F */  jal   get_global_flag
/* 0EC5BC 802C7C0C 00A42021 */   addu  $a0, $a1, $a0
/* 0EC5C0 802C7C10 080B1F67 */  j     func_802C7D9C
/* 0EC5C4 802C7C14 00000000 */   nop   

.L802C7C18:
/* 0EC5C8 802C7C18 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0EC5CC 802C7C1C 0045102A */  slt   $v0, $v0, $a1
/* 0EC5D0 802C7C20 14400007 */  bnez  $v0, .L802C7C40
/* 0EC5D4 802C7C24 3C02FB3B */   lui   $v0, 0xfb3b
/* 0EC5D8 802C7C28 3C04068E */  lui   $a0, 0x68e
/* 0EC5DC 802C7C2C 34847780 */  ori   $a0, $a0, 0x7780
/* 0EC5E0 802C7C30 0C05157C */  jal   get_area_flag
/* 0EC5E4 802C7C34 00A42021 */   addu  $a0, $a1, $a0
/* 0EC5E8 802C7C38 080B1F67 */  j     func_802C7D9C
/* 0EC5EC 802C7C3C 00000000 */   nop   

.L802C7C40:
/* 0EC5F0 802C7C40 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0EC5F4 802C7C44 0045102A */  slt   $v0, $v0, $a1
/* 0EC5F8 802C7C48 14400012 */  bnez  $v0, .L802C7C94
/* 0EC5FC 802C7C4C 3C02FC6C */   lui   $v0, 0xfc6c
/* 0EC600 802C7C50 3C02055D */  lui   $v0, 0x55d
/* 0EC604 802C7C54 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0EC608 802C7C58 00A22821 */  addu  $a1, $a1, $v0
/* 0EC60C 802C7C5C 04A10002 */  bgez  $a1, .L802C7C68
/* 0EC610 802C7C60 00A0182D */   daddu $v1, $a1, $zero
/* 0EC614 802C7C64 24A3001F */  addiu $v1, $a1, 0x1f
.L802C7C68:
/* 0EC618 802C7C68 00033143 */  sra   $a2, $v1, 5
/* 0EC61C 802C7C6C 00C0182D */  daddu $v1, $a2, $zero
/* 0EC620 802C7C70 00031140 */  sll   $v0, $v1, 5
/* 0EC624 802C7C74 00A23023 */  subu  $a2, $a1, $v0
/* 0EC628 802C7C78 3C02802E */  lui   $v0, 0x802e
/* 0EC62C 802C7C7C 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0EC630 802C7C80 00031880 */  sll   $v1, $v1, 2
/* 0EC634 802C7C84 00621821 */  addu  $v1, $v1, $v0
/* 0EC638 802C7C88 8C630000 */  lw    $v1, ($v1)
/* 0EC63C 802C7C8C 080B1F37 */  j     func_802C7CDC
/* 0EC640 802C7C90 24020001 */   addiu $v0, $zero, 1

.L802C7C94:
/* 0EC644 802C7C94 34427900 */  ori   $v0, $v0, 0x7900
/* 0EC648 802C7C98 0045102A */  slt   $v0, $v0, $a1
/* 0EC64C 802C7C9C 14400013 */  bnez  $v0, .L802C7CEC
/* 0EC650 802C7CA0 3C02FD9D */   lui   $v0, 0xfd9d
/* 0EC654 802C7CA4 3C02042C */  lui   $v0, 0x42c
/* 0EC658 802C7CA8 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0EC65C 802C7CAC 00A22821 */  addu  $a1, $a1, $v0
/* 0EC660 802C7CB0 04A10002 */  bgez  $a1, .L802C7CBC
/* 0EC664 802C7CB4 00A0182D */   daddu $v1, $a1, $zero
/* 0EC668 802C7CB8 24A3001F */  addiu $v1, $a1, 0x1f
.L802C7CBC:
/* 0EC66C 802C7CBC 00033143 */  sra   $a2, $v1, 5
/* 0EC670 802C7CC0 00C0182D */  daddu $v1, $a2, $zero
/* 0EC674 802C7CC4 00031140 */  sll   $v0, $v1, 5
/* 0EC678 802C7CC8 00A23023 */  subu  $a2, $a1, $v0
/* 0EC67C 802C7CCC 00031880 */  sll   $v1, $v1, 2
/* 0EC680 802C7CD0 00831821 */  addu  $v1, $a0, $v1
/* 0EC684 802C7CD4 24020001 */  addiu $v0, $zero, 1
/* 0EC688 802C7CD8 8C6300C4 */  lw    $v1, 0xc4($v1)
func_802C7CDC:
/* 0EC68C 802C7CDC 00C21004 */  sllv  $v0, $v0, $a2
/* 0EC690 802C7CE0 00622824 */  and   $a1, $v1, $v0
/* 0EC694 802C7CE4 080B1F67 */  j     func_802C7D9C
/* 0EC698 802C7CE8 0005102B */   sltu  $v0, $zero, $a1

.L802C7CEC:
/* 0EC69C 802C7CEC 3442A600 */  ori   $v0, $v0, 0xa600
/* 0EC6A0 802C7CF0 0045102A */  slt   $v0, $v0, $a1
/* 0EC6A4 802C7CF4 14400010 */  bnez  $v0, .L802C7D38
/* 0EC6A8 802C7CF8 3C02FECE */   lui   $v0, 0xfece
/* 0EC6AC 802C7CFC 3C0202FA */  lui   $v0, 0x2fa
/* 0EC6B0 802C7D00 3442F080 */  ori   $v0, $v0, 0xf080
/* 0EC6B4 802C7D04 00A22821 */  addu  $a1, $a1, $v0
/* 0EC6B8 802C7D08 3C03EFE8 */  lui   $v1, 0xefe8
/* 0EC6BC 802C7D0C 3C04802E */  lui   $a0, 0x802e
/* 0EC6C0 802C7D10 8C84A484 */  lw    $a0, -0x5b7c($a0)
/* 0EC6C4 802C7D14 00051080 */  sll   $v0, $a1, 2
/* 0EC6C8 802C7D18 00441021 */  addu  $v0, $v0, $a0
/* 0EC6CC 802C7D1C 8C450000 */  lw    $a1, ($v0)
/* 0EC6D0 802C7D20 34632080 */  ori   $v1, $v1, 0x2080
/* 0EC6D4 802C7D24 0065182A */  slt   $v1, $v1, $a1
/* 0EC6D8 802C7D28 1060001B */  beqz  $v1, .L802C7D98
/* 0EC6DC 802C7D2C 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EC6E0 802C7D30 080B1F5E */  j     func_802C7D78
/* 0EC6E4 802C7D34 34421100 */   ori   $v0, $v0, 0x1100

.L802C7D38:
/* 0EC6E8 802C7D38 3442D300 */  ori   $v0, $v0, 0xd300
/* 0EC6EC 802C7D3C 0045102A */  slt   $v0, $v0, $a1
/* 0EC6F0 802C7D40 14400016 */  bnez  $v0, .L802C7D9C
/* 0EC6F4 802C7D44 00A0102D */   daddu $v0, $a1, $zero
/* 0EC6F8 802C7D48 3C0201C9 */  lui   $v0, 0x1c9
/* 0EC6FC 802C7D4C 3442C380 */  ori   $v0, $v0, 0xc380
/* 0EC700 802C7D50 00A22821 */  addu  $a1, $a1, $v0
/* 0EC704 802C7D54 00051080 */  sll   $v0, $a1, 2
/* 0EC708 802C7D58 00821021 */  addu  $v0, $a0, $v0
/* 0EC70C 802C7D5C 8C450084 */  lw    $a1, 0x84($v0)
/* 0EC710 802C7D60 3C02EFE8 */  lui   $v0, 0xefe8
/* 0EC714 802C7D64 34422080 */  ori   $v0, $v0, 0x2080
/* 0EC718 802C7D68 0045102A */  slt   $v0, $v0, $a1
/* 0EC71C 802C7D6C 1040000A */  beqz  $v0, .L802C7D98
/* 0EC720 802C7D70 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EC724 802C7D74 34421100 */  ori   $v0, $v0, 0x1100
func_802C7D78:
/* 0EC728 802C7D78 0045102A */  slt   $v0, $v0, $a1
func_802C7D7C:
/* 0EC72C 802C7D7C 14400007 */  bnez  $v0, .L802C7D9C
/* 0EC730 802C7D80 00A0102D */   daddu $v0, $a1, $zero
/* 0EC734 802C7D84 0C0B1248 */  jal   fixed_var_to_float
/* 0EC738 802C7D88 00A0202D */   daddu $a0, $a1, $zero
/* 0EC73C 802C7D8C 4600008D */  trunc.w.s $f2, $f0
/* 0EC740 802C7D90 44051000 */  mfc1  $a1, $f2
/* 0EC744 802C7D94 00000000 */  nop   
.L802C7D98:
/* 0EC748 802C7D98 00A0102D */  daddu $v0, $a1, $zero
func_802C7D9C:
.L802C7D9C:
/* 0EC74C 802C7D9C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EC750 802C7DA0 03E00008 */  jr    $ra
/* 0EC754 802C7DA4 27BD0018 */   addiu $sp, $sp, 0x18

get_variable_index:
/* 0EC758 802C7DA8 3C02EFE8 */  lui   $v0, 0xefe8
/* 0EC75C 802C7DAC 34422080 */  ori   $v0, $v0, 0x2080
/* 0EC760 802C7DB0 0045102A */  slt   $v0, $v0, $a1
/* 0EC764 802C7DB4 14400003 */  bnez  $v0, .L802C7DC4
/* 0EC768 802C7DB8 3C02F119 */   lui   $v0, 0xf119
.L802C7DBC:
/* 0EC76C 802C7DBC 03E00008 */  jr    $ra
/* 0EC770 802C7DC0 00A0102D */   daddu $v0, $a1, $zero

.L802C7DC4:
/* 0EC774 802C7DC4 34424D80 */  ori   $v0, $v0, 0x4d80
/* 0EC778 802C7DC8 0045102A */  slt   $v0, $v0, $a1
/* 0EC77C 802C7DCC 1040FFFB */  beqz  $v0, .L802C7DBC
/* 0EC780 802C7DD0 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EC784 802C7DD4 34421100 */  ori   $v0, $v0, 0x1100
/* 0EC788 802C7DD8 0045102A */  slt   $v0, $v0, $a1
/* 0EC78C 802C7DDC 1040FFF7 */  beqz  $v0, .L802C7DBC
/* 0EC790 802C7DE0 3C02F414 */   lui   $v0, 0xf414
/* 0EC794 802C7DE4 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0EC798 802C7DE8 0045102A */  slt   $v0, $v0, $a1
/* 0EC79C 802C7DEC 54400005 */  bnezl $v0, .L802C7E04
/* 0EC7A0 802C7DF0 3C02F545 */   lui   $v0, 0xf545
/* 0EC7A4 802C7DF4 3C020C84 */  lui   $v0, 0xc84
/* 0EC7A8 802C7DF8 34425880 */  ori   $v0, $v0, 0x5880
/* 0EC7AC 802C7DFC 03E00008 */  jr    $ra
/* 0EC7B0 802C7E00 00A21021 */   addu  $v0, $a1, $v0

.L802C7E04:
/* 0EC7B4 802C7E04 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0EC7B8 802C7E08 0045102A */  slt   $v0, $v0, $a1
/* 0EC7BC 802C7E0C 54400005 */  bnezl $v0, .L802C7E24
/* 0EC7C0 802C7E10 3C02F676 */   lui   $v0, 0xf676
/* 0EC7C4 802C7E14 3C020B53 */  lui   $v0, 0xb53
/* 0EC7C8 802C7E18 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0EC7CC 802C7E1C 03E00008 */  jr    $ra
/* 0EC7D0 802C7E20 00A21021 */   addu  $v0, $a1, $v0

.L802C7E24:
/* 0EC7D4 802C7E24 34429800 */  ori   $v0, $v0, 0x9800
/* 0EC7D8 802C7E28 0045102A */  slt   $v0, $v0, $a1
/* 0EC7DC 802C7E2C 54400005 */  bnezl $v0, .L802C7E44
/* 0EC7E0 802C7E30 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0EC7E4 802C7E34 3C020A21 */  lui   $v0, 0xa21
/* 0EC7E8 802C7E38 3442FE80 */  ori   $v0, $v0, 0xfe80
/* 0EC7EC 802C7E3C 03E00008 */  jr    $ra
/* 0EC7F0 802C7E40 00A21021 */   addu  $v0, $a1, $v0

.L802C7E44:
/* 0EC7F4 802C7E44 3442C500 */  ori   $v0, $v0, 0xc500
/* 0EC7F8 802C7E48 0045102A */  slt   $v0, $v0, $a1
/* 0EC7FC 802C7E4C 54400005 */  bnezl $v0, .L802C7E64
/* 0EC800 802C7E50 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0EC804 802C7E54 3C0208F0 */  lui   $v0, 0x8f0
/* 0EC808 802C7E58 3442D180 */  ori   $v0, $v0, 0xd180
/* 0EC80C 802C7E5C 03E00008 */  jr    $ra
/* 0EC810 802C7E60 00A21021 */   addu  $v0, $a1, $v0

.L802C7E64:
/* 0EC814 802C7E64 3442F200 */  ori   $v0, $v0, 0xf200
/* 0EC818 802C7E68 0045102A */  slt   $v0, $v0, $a1
/* 0EC81C 802C7E6C 54400005 */  bnezl $v0, .L802C7E84
/* 0EC820 802C7E70 3C02FA0A */   lui   $v0, 0xfa0a
/* 0EC824 802C7E74 3C0207BF */  lui   $v0, 0x7bf
/* 0EC828 802C7E78 3442A480 */  ori   $v0, $v0, 0xa480
/* 0EC82C 802C7E7C 03E00008 */  jr    $ra
/* 0EC830 802C7E80 00A21021 */   addu  $v0, $a1, $v0

.L802C7E84:
/* 0EC834 802C7E84 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0EC838 802C7E88 0045102A */  slt   $v0, $v0, $a1
/* 0EC83C 802C7E8C 54400005 */  bnezl $v0, .L802C7EA4
/* 0EC840 802C7E90 3C02FB3B */   lui   $v0, 0xfb3b
/* 0EC844 802C7E94 3C02068E */  lui   $v0, 0x68e
/* 0EC848 802C7E98 34427780 */  ori   $v0, $v0, 0x7780
/* 0EC84C 802C7E9C 03E00008 */  jr    $ra
/* 0EC850 802C7EA0 00A21021 */   addu  $v0, $a1, $v0

.L802C7EA4:
/* 0EC854 802C7EA4 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0EC858 802C7EA8 0045102A */  slt   $v0, $v0, $a1
/* 0EC85C 802C7EAC 54400005 */  bnezl $v0, .L802C7EC4
/* 0EC860 802C7EB0 3C02FC6C */   lui   $v0, 0xfc6c
/* 0EC864 802C7EB4 3C02055D */  lui   $v0, 0x55d
/* 0EC868 802C7EB8 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0EC86C 802C7EBC 03E00008 */  jr    $ra
/* 0EC870 802C7EC0 00A21021 */   addu  $v0, $a1, $v0

.L802C7EC4:
/* 0EC874 802C7EC4 34427900 */  ori   $v0, $v0, 0x7900
/* 0EC878 802C7EC8 0045102A */  slt   $v0, $v0, $a1
/* 0EC87C 802C7ECC 54400005 */  bnezl $v0, .L802C7EE4
/* 0EC880 802C7ED0 3C02FD9D */   lui   $v0, 0xfd9d
/* 0EC884 802C7ED4 3C02042C */  lui   $v0, 0x42c
/* 0EC888 802C7ED8 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0EC88C 802C7EDC 03E00008 */  jr    $ra
/* 0EC890 802C7EE0 00A21021 */   addu  $v0, $a1, $v0

.L802C7EE4:
/* 0EC894 802C7EE4 3442A600 */  ori   $v0, $v0, 0xa600
/* 0EC898 802C7EE8 0045102A */  slt   $v0, $v0, $a1
/* 0EC89C 802C7EEC 54400005 */  bnezl $v0, .L802C7F04
/* 0EC8A0 802C7EF0 3C02FECE */   lui   $v0, 0xfece
/* 0EC8A4 802C7EF4 3C0202FA */  lui   $v0, 0x2fa
/* 0EC8A8 802C7EF8 3442F080 */  ori   $v0, $v0, 0xf080
/* 0EC8AC 802C7EFC 03E00008 */  jr    $ra
/* 0EC8B0 802C7F00 00A21021 */   addu  $v0, $a1, $v0

.L802C7F04:
/* 0EC8B4 802C7F04 3442D300 */  ori   $v0, $v0, 0xd300
/* 0EC8B8 802C7F08 0045102A */  slt   $v0, $v0, $a1
/* 0EC8BC 802C7F0C 1440FFAB */  bnez  $v0, .L802C7DBC
/* 0EC8C0 802C7F10 3C0201C9 */   lui   $v0, 0x1c9
/* 0EC8C4 802C7F14 3442C380 */  ori   $v0, $v0, 0xc380
/* 0EC8C8 802C7F18 03E00008 */  jr    $ra
/* 0EC8CC 802C7F1C 00A21021 */   addu  $v0, $a1, $v0

get_variable_index_alt:
/* 0EC8D0 802C7F20 3C02EFE8 */  lui   $v0, 0xefe8
/* 0EC8D4 802C7F24 34422080 */  ori   $v0, $v0, 0x2080
/* 0EC8D8 802C7F28 0044102A */  slt   $v0, $v0, $a0
/* 0EC8DC 802C7F2C 14400003 */  bnez  $v0, .L802C7F3C
/* 0EC8E0 802C7F30 3C02F119 */   lui   $v0, 0xf119
.L802C7F34:
/* 0EC8E4 802C7F34 03E00008 */  jr    $ra
/* 0EC8E8 802C7F38 0080102D */   daddu $v0, $a0, $zero

.L802C7F3C:
/* 0EC8EC 802C7F3C 34424D80 */  ori   $v0, $v0, 0x4d80
/* 0EC8F0 802C7F40 0044102A */  slt   $v0, $v0, $a0
/* 0EC8F4 802C7F44 1040FFFB */  beqz  $v0, .L802C7F34
/* 0EC8F8 802C7F48 3C02F2E3 */   lui   $v0, 0xf2e3
/* 0EC8FC 802C7F4C 34421100 */  ori   $v0, $v0, 0x1100
/* 0EC900 802C7F50 0044102A */  slt   $v0, $v0, $a0
/* 0EC904 802C7F54 1040FFF7 */  beqz  $v0, .L802C7F34
/* 0EC908 802C7F58 3C02F414 */   lui   $v0, 0xf414
/* 0EC90C 802C7F5C 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0EC910 802C7F60 0044102A */  slt   $v0, $v0, $a0
/* 0EC914 802C7F64 54400005 */  bnezl $v0, .L802C7F7C
/* 0EC918 802C7F68 3C02F545 */   lui   $v0, 0xf545
/* 0EC91C 802C7F6C 3C020C84 */  lui   $v0, 0xc84
/* 0EC920 802C7F70 34425880 */  ori   $v0, $v0, 0x5880
/* 0EC924 802C7F74 03E00008 */  jr    $ra
/* 0EC928 802C7F78 00821021 */   addu  $v0, $a0, $v0

.L802C7F7C:
/* 0EC92C 802C7F7C 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0EC930 802C7F80 0044102A */  slt   $v0, $v0, $a0
/* 0EC934 802C7F84 54400005 */  bnezl $v0, .L802C7F9C
/* 0EC938 802C7F88 3C02F676 */   lui   $v0, 0xf676
/* 0EC93C 802C7F8C 3C020B53 */  lui   $v0, 0xb53
/* 0EC940 802C7F90 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0EC944 802C7F94 03E00008 */  jr    $ra
/* 0EC948 802C7F98 00821021 */   addu  $v0, $a0, $v0

.L802C7F9C:
/* 0EC94C 802C7F9C 34429800 */  ori   $v0, $v0, 0x9800
/* 0EC950 802C7FA0 0044102A */  slt   $v0, $v0, $a0
/* 0EC954 802C7FA4 54400005 */  bnezl $v0, .L802C7FBC
/* 0EC958 802C7FA8 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0EC95C 802C7FAC 3C020A21 */  lui   $v0, 0xa21
/* 0EC960 802C7FB0 3442FE80 */  ori   $v0, $v0, 0xfe80
/* 0EC964 802C7FB4 03E00008 */  jr    $ra
/* 0EC968 802C7FB8 00821021 */   addu  $v0, $a0, $v0

.L802C7FBC:
/* 0EC96C 802C7FBC 3442C500 */  ori   $v0, $v0, 0xc500
/* 0EC970 802C7FC0 0044102A */  slt   $v0, $v0, $a0
/* 0EC974 802C7FC4 54400005 */  bnezl $v0, .L802C7FDC
/* 0EC978 802C7FC8 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0EC97C 802C7FCC 3C0208F0 */  lui   $v0, 0x8f0
/* 0EC980 802C7FD0 3442D180 */  ori   $v0, $v0, 0xd180
/* 0EC984 802C7FD4 03E00008 */  jr    $ra
/* 0EC988 802C7FD8 00821021 */   addu  $v0, $a0, $v0

.L802C7FDC:
/* 0EC98C 802C7FDC 3442F200 */  ori   $v0, $v0, 0xf200
/* 0EC990 802C7FE0 0044102A */  slt   $v0, $v0, $a0
/* 0EC994 802C7FE4 54400005 */  bnezl $v0, .L802C7FFC
/* 0EC998 802C7FE8 3C02FA0A */   lui   $v0, 0xfa0a
/* 0EC99C 802C7FEC 3C0207BF */  lui   $v0, 0x7bf
/* 0EC9A0 802C7FF0 3442A480 */  ori   $v0, $v0, 0xa480
/* 0EC9A4 802C7FF4 03E00008 */  jr    $ra
/* 0EC9A8 802C7FF8 00821021 */   addu  $v0, $a0, $v0

.L802C7FFC:
/* 0EC9AC 802C7FFC 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0EC9B0 802C8000 0044102A */  slt   $v0, $v0, $a0
/* 0EC9B4 802C8004 54400005 */  bnezl $v0, .L802C801C
/* 0EC9B8 802C8008 3C02FB3B */   lui   $v0, 0xfb3b
/* 0EC9BC 802C800C 3C02068E */  lui   $v0, 0x68e
/* 0EC9C0 802C8010 34427780 */  ori   $v0, $v0, 0x7780
/* 0EC9C4 802C8014 03E00008 */  jr    $ra
/* 0EC9C8 802C8018 00821021 */   addu  $v0, $a0, $v0

.L802C801C:
/* 0EC9CC 802C801C 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0EC9D0 802C8020 0044102A */  slt   $v0, $v0, $a0
/* 0EC9D4 802C8024 54400005 */  bnezl $v0, .L802C803C
/* 0EC9D8 802C8028 3C02FC6C */   lui   $v0, 0xfc6c
/* 0EC9DC 802C802C 3C02055D */  lui   $v0, 0x55d
/* 0EC9E0 802C8030 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0EC9E4 802C8034 03E00008 */  jr    $ra
/* 0EC9E8 802C8038 00821021 */   addu  $v0, $a0, $v0

.L802C803C:
/* 0EC9EC 802C803C 34427900 */  ori   $v0, $v0, 0x7900
/* 0EC9F0 802C8040 0044102A */  slt   $v0, $v0, $a0
/* 0EC9F4 802C8044 54400005 */  bnezl $v0, .L802C805C
/* 0EC9F8 802C8048 3C02FD9D */   lui   $v0, 0xfd9d
/* 0EC9FC 802C804C 3C02042C */  lui   $v0, 0x42c
/* 0ECA00 802C8050 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0ECA04 802C8054 03E00008 */  jr    $ra
/* 0ECA08 802C8058 00821021 */   addu  $v0, $a0, $v0

.L802C805C:
/* 0ECA0C 802C805C 3442A600 */  ori   $v0, $v0, 0xa600
/* 0ECA10 802C8060 0044102A */  slt   $v0, $v0, $a0
/* 0ECA14 802C8064 54400005 */  bnezl $v0, .L802C807C
/* 0ECA18 802C8068 3C02FECE */   lui   $v0, 0xfece
/* 0ECA1C 802C806C 3C0202FA */  lui   $v0, 0x2fa
/* 0ECA20 802C8070 3442F080 */  ori   $v0, $v0, 0xf080
/* 0ECA24 802C8074 03E00008 */  jr    $ra
/* 0ECA28 802C8078 00821021 */   addu  $v0, $a0, $v0

.L802C807C:
/* 0ECA2C 802C807C 3442D300 */  ori   $v0, $v0, 0xd300
/* 0ECA30 802C8080 0044102A */  slt   $v0, $v0, $a0
/* 0ECA34 802C8084 1440FFAB */  bnez  $v0, .L802C7F34
/* 0ECA38 802C8088 3C0201C9 */   lui   $v0, 0x1c9
/* 0ECA3C 802C808C 3442C380 */  ori   $v0, $v0, 0xc380
/* 0ECA40 802C8090 03E00008 */  jr    $ra
/* 0ECA44 802C8094 00821021 */   addu  $v0, $a0, $v0

set_variable:
/* 0ECA48 802C8098 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0ECA4C 802C809C 0080382D */  daddu $a3, $a0, $zero
/* 0ECA50 802C80A0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0ECA54 802C80A4 00A0802D */  daddu $s0, $a1, $zero
/* 0ECA58 802C80A8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0ECA5C 802C80AC 00C0902D */  daddu $s2, $a2, $zero
/* 0ECA60 802C80B0 3C02EFE8 */  lui   $v0, 0xefe8
/* 0ECA64 802C80B4 34422080 */  ori   $v0, $v0, 0x2080
/* 0ECA68 802C80B8 0050102A */  slt   $v0, $v0, $s0
/* 0ECA6C 802C80BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0ECA70 802C80C0 10400099 */  beqz  $v0, .L802C8328
/* 0ECA74 802C80C4 AFB10014 */   sw    $s1, 0x14($sp)
/* 0ECA78 802C80C8 3C02F2E3 */  lui   $v0, 0xf2e3
/* 0ECA7C 802C80CC 34421100 */  ori   $v0, $v0, 0x1100
/* 0ECA80 802C80D0 0050102A */  slt   $v0, $v0, $s0
/* 0ECA84 802C80D4 14400007 */  bnez  $v0, .L802C80F4
/* 0ECA88 802C80D8 3C02F414 */   lui   $v0, 0xf414
/* 0ECA8C 802C80DC 0C0B1248 */  jal   fixed_var_to_float
/* 0ECA90 802C80E0 0240202D */   daddu $a0, $s2, $zero
/* 0ECA94 802C80E4 4600008D */  trunc.w.s $f2, $f0
/* 0ECA98 802C80E8 44021000 */  mfc1  $v0, $f2
/* 0ECA9C 802C80EC 080B2105 */  j     func_802C8414
/* 0ECAA0 802C80F0 00000000 */   nop   

.L802C80F4:
/* 0ECAA4 802C80F4 34423E00 */  ori   $v0, $v0, 0x3e00
/* 0ECAA8 802C80F8 0050102A */  slt   $v0, $v0, $s0
/* 0ECAAC 802C80FC 54400017 */  bnezl $v0, .L802C815C
/* 0ECAB0 802C8100 3C02F545 */   lui   $v0, 0xf545
/* 0ECAB4 802C8104 3C020C84 */  lui   $v0, 0xc84
/* 0ECAB8 802C8108 34425880 */  ori   $v0, $v0, 0x5880
/* 0ECABC 802C810C 02028021 */  addu  $s0, $s0, $v0
/* 0ECAC0 802C8110 06010002 */  bgez  $s0, .L802C811C
/* 0ECAC4 802C8114 0200102D */   daddu $v0, $s0, $zero
/* 0ECAC8 802C8118 2602001F */  addiu $v0, $s0, 0x1f
.L802C811C:
/* 0ECACC 802C811C 00022943 */  sra   $a1, $v0, 5
/* 0ECAD0 802C8120 00A0202D */  daddu $a0, $a1, $zero
/* 0ECAD4 802C8124 00041140 */  sll   $v0, $a0, 5
/* 0ECAD8 802C8128 12400009 */  beqz  $s2, .L802C8150
/* 0ECADC 802C812C 02022823 */   subu  $a1, $s0, $v0
/* 0ECAE0 802C8130 8CE20140 */  lw    $v0, 0x140($a3)
/* 0ECAE4 802C8134 00042080 */  sll   $a0, $a0, 2
/* 0ECAE8 802C8138 00822021 */  addu  $a0, $a0, $v0
/* 0ECAEC 802C813C 24020001 */  addiu $v0, $zero, 1
/* 0ECAF0 802C8140 8C830000 */  lw    $v1, ($a0)
/* 0ECAF4 802C8144 00A21004 */  sllv  $v0, $v0, $a1
/* 0ECAF8 802C8148 080B20C9 */  j     func_802C8324
/* 0ECAFC 802C814C 00621825 */   or    $v1, $v1, $v0

.L802C8150:
/* 0ECB00 802C8150 8CE20140 */  lw    $v0, 0x140($a3)
/* 0ECB04 802C8154 080B20C3 */  j     func_802C830C
/* 0ECB08 802C8158 00042080 */   sll   $a0, $a0, 2

.L802C815C:
/* 0ECB0C 802C815C 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0ECB10 802C8160 0050102A */  slt   $v0, $v0, $s0
/* 0ECB14 802C8164 1440000A */  bnez  $v0, .L802C8190
/* 0ECB18 802C8168 3C02F676 */   lui   $v0, 0xf676
/* 0ECB1C 802C816C 3C020B53 */  lui   $v0, 0xb53
/* 0ECB20 802C8170 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0ECB24 802C8174 02028021 */  addu  $s0, $s0, $v0
/* 0ECB28 802C8178 8CE3013C */  lw    $v1, 0x13c($a3)
/* 0ECB2C 802C817C 00101080 */  sll   $v0, $s0, 2
/* 0ECB30 802C8180 00431021 */  addu  $v0, $v0, $v1
/* 0ECB34 802C8184 8C510000 */  lw    $s1, ($v0)
/* 0ECB38 802C8188 080B2104 */  j     func_802C8410
/* 0ECB3C 802C818C AC520000 */   sw    $s2, ($v0)

.L802C8190:
/* 0ECB40 802C8190 34429800 */  ori   $v0, $v0, 0x9800
/* 0ECB44 802C8194 0050102A */  slt   $v0, $v0, $s0
/* 0ECB48 802C8198 1440000C */  bnez  $v0, .L802C81CC
/* 0ECB4C 802C819C 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0ECB50 802C81A0 3C020A21 */  lui   $v0, 0xa21
/* 0ECB54 802C81A4 3442FE80 */  ori   $v0, $v0, 0xfe80
/* 0ECB58 802C81A8 02028021 */  addu  $s0, $s0, $v0
/* 0ECB5C 802C81AC 0C05154E */  jal   get_global_byte
/* 0ECB60 802C81B0 0200202D */   daddu $a0, $s0, $zero
/* 0ECB64 802C81B4 0040882D */  daddu $s1, $v0, $zero
/* 0ECB68 802C81B8 0200202D */  daddu $a0, $s0, $zero
/* 0ECB6C 802C81BC 0C051548 */  jal   set_global_byte
/* 0ECB70 802C81C0 0240282D */   daddu $a1, $s2, $zero
/* 0ECB74 802C81C4 080B2105 */  j     func_802C8414
/* 0ECB78 802C81C8 0220102D */   daddu $v0, $s1, $zero

.L802C81CC:
/* 0ECB7C 802C81CC 3442C500 */  ori   $v0, $v0, 0xc500
/* 0ECB80 802C81D0 0050102A */  slt   $v0, $v0, $s0
/* 0ECB84 802C81D4 1440000C */  bnez  $v0, .L802C8208
/* 0ECB88 802C81D8 3C02F8D8 */   lui   $v0, 0xf8d8
/* 0ECB8C 802C81DC 3C0208F0 */  lui   $v0, 0x8f0
/* 0ECB90 802C81E0 3442D180 */  ori   $v0, $v0, 0xd180
/* 0ECB94 802C81E4 02028021 */  addu  $s0, $s0, $v0
/* 0ECB98 802C81E8 0C051594 */  jal   get_area_byte
/* 0ECB9C 802C81EC 0200202D */   daddu $a0, $s0, $zero
/* 0ECBA0 802C81F0 0040882D */  daddu $s1, $v0, $zero
/* 0ECBA4 802C81F4 0200202D */  daddu $a0, $s0, $zero
/* 0ECBA8 802C81F8 0C05158E */  jal   set_area_byte
/* 0ECBAC 802C81FC 0240282D */   daddu $a1, $s2, $zero
/* 0ECBB0 802C8200 080B2105 */  j     func_802C8414
/* 0ECBB4 802C8204 0220102D */   daddu $v0, $s1, $zero

.L802C8208:
/* 0ECBB8 802C8208 3442F200 */  ori   $v0, $v0, 0xf200
/* 0ECBBC 802C820C 0050102A */  slt   $v0, $v0, $s0
/* 0ECBC0 802C8210 14400010 */  bnez  $v0, .L802C8254
/* 0ECBC4 802C8214 3C02FA0A */   lui   $v0, 0xfa0a
/* 0ECBC8 802C8218 3C0207BF */  lui   $v0, 0x7bf
/* 0ECBCC 802C821C 3442A480 */  ori   $v0, $v0, 0xa480
/* 0ECBD0 802C8220 02028021 */  addu  $s0, $s0, $v0
/* 0ECBD4 802C8224 0C05152F */  jal   get_global_flag
/* 0ECBD8 802C8228 0200202D */   daddu $a0, $s0, $zero
/* 0ECBDC 802C822C 12400005 */  beqz  $s2, .L802C8244
/* 0ECBE0 802C8230 0040882D */   daddu $s1, $v0, $zero
/* 0ECBE4 802C8234 0C051514 */  jal   set_global_flag
/* 0ECBE8 802C8238 0200202D */   daddu $a0, $s0, $zero
/* 0ECBEC 802C823C 080B2105 */  j     func_802C8414
/* 0ECBF0 802C8240 0220102D */   daddu $v0, $s1, $zero

.L802C8244:
/* 0ECBF4 802C8244 0C0514F8 */  jal   clear_global_flag
/* 0ECBF8 802C8248 0200202D */   daddu $a0, $s0, $zero
/* 0ECBFC 802C824C 080B2105 */  j     func_802C8414
/* 0ECC00 802C8250 0220102D */   daddu $v0, $s1, $zero

.L802C8254:
/* 0ECC04 802C8254 34421F00 */  ori   $v0, $v0, 0x1f00
/* 0ECC08 802C8258 0050102A */  slt   $v0, $v0, $s0
/* 0ECC0C 802C825C 14400010 */  bnez  $v0, .L802C82A0
/* 0ECC10 802C8260 3C02FB3B */   lui   $v0, 0xfb3b
/* 0ECC14 802C8264 3C02068E */  lui   $v0, 0x68e
/* 0ECC18 802C8268 34427780 */  ori   $v0, $v0, 0x7780
/* 0ECC1C 802C826C 02028021 */  addu  $s0, $s0, $v0
/* 0ECC20 802C8270 0C05157C */  jal   get_area_flag
/* 0ECC24 802C8274 0200202D */   daddu $a0, $s0, $zero
/* 0ECC28 802C8278 12400005 */  beqz  $s2, .L802C8290
/* 0ECC2C 802C827C 0040882D */   daddu $s1, $v0, $zero
/* 0ECC30 802C8280 0C051568 */  jal   set_area_flag
/* 0ECC34 802C8284 0200202D */   daddu $a0, $s0, $zero
/* 0ECC38 802C8288 080B2105 */  j     func_802C8414
/* 0ECC3C 802C828C 0220102D */   daddu $v0, $s1, $zero

.L802C8290:
/* 0ECC40 802C8290 0C051553 */  jal   clear_area_flag
/* 0ECC44 802C8294 0200202D */   daddu $a0, $s0, $zero
/* 0ECC48 802C8298 080B2105 */  j     func_802C8414
/* 0ECC4C 802C829C 0220102D */   daddu $v0, $s1, $zero

.L802C82A0:
/* 0ECC50 802C82A0 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0ECC54 802C82A4 0050102A */  slt   $v0, $v0, $s0
/* 0ECC58 802C82A8 54400021 */  bnezl $v0, .L802C8330
/* 0ECC5C 802C82AC 3C02FC6C */   lui   $v0, 0xfc6c
/* 0ECC60 802C82B0 3C02055D */  lui   $v0, 0x55d
/* 0ECC64 802C82B4 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0ECC68 802C82B8 02028021 */  addu  $s0, $s0, $v0
/* 0ECC6C 802C82BC 06010002 */  bgez  $s0, .L802C82C8
/* 0ECC70 802C82C0 0200102D */   daddu $v0, $s0, $zero
/* 0ECC74 802C82C4 2602001F */  addiu $v0, $s0, 0x1f
.L802C82C8:
/* 0ECC78 802C82C8 00022943 */  sra   $a1, $v0, 5
/* 0ECC7C 802C82CC 00A0202D */  daddu $a0, $a1, $zero
/* 0ECC80 802C82D0 00041140 */  sll   $v0, $a0, 5
/* 0ECC84 802C82D4 1240000A */  beqz  $s2, .L802C8300
/* 0ECC88 802C82D8 02022823 */   subu  $a1, $s0, $v0
/* 0ECC8C 802C82DC 3C02802E */  lui   $v0, 0x802e
/* 0ECC90 802C82E0 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0ECC94 802C82E4 00042080 */  sll   $a0, $a0, 2
/* 0ECC98 802C82E8 00822021 */  addu  $a0, $a0, $v0
/* 0ECC9C 802C82EC 24020001 */  addiu $v0, $zero, 1
/* 0ECCA0 802C82F0 8C830000 */  lw    $v1, ($a0)
/* 0ECCA4 802C82F4 00A21004 */  sllv  $v0, $v0, $a1
/* 0ECCA8 802C82F8 080B20C9 */  j     func_802C8324
/* 0ECCAC 802C82FC 00621825 */   or    $v1, $v1, $v0

.L802C8300:
/* 0ECCB0 802C8300 3C02802E */  lui   $v0, 0x802e
/* 0ECCB4 802C8304 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0ECCB8 802C8308 00042080 */  sll   $a0, $a0, 2
func_802C830C:
/* 0ECCBC 802C830C 00822021 */  addu  $a0, $a0, $v0
/* 0ECCC0 802C8310 24020001 */  addiu $v0, $zero, 1
/* 0ECCC4 802C8314 00A21004 */  sllv  $v0, $v0, $a1
/* 0ECCC8 802C8318 8C830000 */  lw    $v1, ($a0)
/* 0ECCCC 802C831C 00021027 */  nor   $v0, $zero, $v0
/* 0ECCD0 802C8320 00621824 */  and   $v1, $v1, $v0
func_802C8324:
/* 0ECCD4 802C8324 AC830000 */  sw    $v1, ($a0)
func_802C8328:
.L802C8328:
/* 0ECCD8 802C8328 080B2105 */  j     func_802C8414
/* 0ECCDC 802C832C 0240102D */   daddu $v0, $s2, $zero

.L802C8330:
/* 0ECCE0 802C8330 34427900 */  ori   $v0, $v0, 0x7900
/* 0ECCE4 802C8334 0050102A */  slt   $v0, $v0, $s0
/* 0ECCE8 802C8338 5440001C */  bnezl $v0, .L802C83AC
/* 0ECCEC 802C833C 3C02FD9D */   lui   $v0, 0xfd9d
/* 0ECCF0 802C8340 3C02042C */  lui   $v0, 0x42c
/* 0ECCF4 802C8344 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0ECCF8 802C8348 02028021 */  addu  $s0, $s0, $v0
/* 0ECCFC 802C834C 06010002 */  bgez  $s0, .L802C8358
/* 0ECD00 802C8350 0200102D */   daddu $v0, $s0, $zero
/* 0ECD04 802C8354 2602001F */  addiu $v0, $s0, 0x1f
.L802C8358:
/* 0ECD08 802C8358 00022943 */  sra   $a1, $v0, 5
/* 0ECD0C 802C835C 00A0182D */  daddu $v1, $a1, $zero
/* 0ECD10 802C8360 00031140 */  sll   $v0, $v1, 5
/* 0ECD14 802C8364 12400008 */  beqz  $s2, .L802C8388
/* 0ECD18 802C8368 02022823 */   subu  $a1, $s0, $v0
/* 0ECD1C 802C836C 00031080 */  sll   $v0, $v1, 2
/* 0ECD20 802C8370 00E21021 */  addu  $v0, $a3, $v0
/* 0ECD24 802C8374 24030001 */  addiu $v1, $zero, 1
/* 0ECD28 802C8378 8C4400C4 */  lw    $a0, 0xc4($v0)
/* 0ECD2C 802C837C 00A31804 */  sllv  $v1, $v1, $a1
/* 0ECD30 802C8380 080B20E9 */  j     func_802C83A4
/* 0ECD34 802C8384 00832025 */   or    $a0, $a0, $v1

.L802C8388:
/* 0ECD38 802C8388 00031080 */  sll   $v0, $v1, 2
/* 0ECD3C 802C838C 00E21021 */  addu  $v0, $a3, $v0
/* 0ECD40 802C8390 24030001 */  addiu $v1, $zero, 1
/* 0ECD44 802C8394 00A31804 */  sllv  $v1, $v1, $a1
/* 0ECD48 802C8398 8C4400C4 */  lw    $a0, 0xc4($v0)
/* 0ECD4C 802C839C 00031827 */  nor   $v1, $zero, $v1
/* 0ECD50 802C83A0 00832024 */  and   $a0, $a0, $v1
func_802C83A4:
/* 0ECD54 802C83A4 080B20CA */  j     func_802C8328
/* 0ECD58 802C83A8 AC4400C4 */   sw    $a0, 0xc4($v0)

.L802C83AC:
/* 0ECD5C 802C83AC 3442A600 */  ori   $v0, $v0, 0xa600
/* 0ECD60 802C83B0 0050102A */  slt   $v0, $v0, $s0
/* 0ECD64 802C83B4 1440000B */  bnez  $v0, .L802C83E4
/* 0ECD68 802C83B8 3C02FECE */   lui   $v0, 0xfece
/* 0ECD6C 802C83BC 3C0202FA */  lui   $v0, 0x2fa
/* 0ECD70 802C83C0 3442F080 */  ori   $v0, $v0, 0xf080
/* 0ECD74 802C83C4 02028021 */  addu  $s0, $s0, $v0
/* 0ECD78 802C83C8 3C03802E */  lui   $v1, 0x802e
/* 0ECD7C 802C83CC 8C63A484 */  lw    $v1, -0x5b7c($v1)
/* 0ECD80 802C83D0 00101080 */  sll   $v0, $s0, 2
/* 0ECD84 802C83D4 00431021 */  addu  $v0, $v0, $v1
/* 0ECD88 802C83D8 8C510000 */  lw    $s1, ($v0)
/* 0ECD8C 802C83DC 080B2104 */  j     func_802C8410
/* 0ECD90 802C83E0 AC520000 */   sw    $s2, ($v0)

.L802C83E4:
/* 0ECD94 802C83E4 3442D300 */  ori   $v0, $v0, 0xd300
/* 0ECD98 802C83E8 0050102A */  slt   $v0, $v0, $s0
/* 0ECD9C 802C83EC 14400009 */  bnez  $v0, .L802C8414
/* 0ECDA0 802C83F0 0240102D */   daddu $v0, $s2, $zero
/* 0ECDA4 802C83F4 3C0201C9 */  lui   $v0, 0x1c9
/* 0ECDA8 802C83F8 3442C380 */  ori   $v0, $v0, 0xc380
/* 0ECDAC 802C83FC 02028021 */  addu  $s0, $s0, $v0
/* 0ECDB0 802C8400 00101080 */  sll   $v0, $s0, 2
/* 0ECDB4 802C8404 00E21021 */  addu  $v0, $a3, $v0
/* 0ECDB8 802C8408 8C510084 */  lw    $s1, 0x84($v0)
/* 0ECDBC 802C840C AC520084 */  sw    $s2, 0x84($v0)
func_802C8410:
/* 0ECDC0 802C8410 0220102D */  daddu $v0, $s1, $zero
func_802C8414:
.L802C8414:
/* 0ECDC4 802C8414 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0ECDC8 802C8418 8FB20018 */  lw    $s2, 0x18($sp)
/* 0ECDCC 802C841C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0ECDD0 802C8420 8FB00010 */  lw    $s0, 0x10($sp)
/* 0ECDD4 802C8424 03E00008 */  jr    $ra
/* 0ECDD8 802C8428 27BD0020 */   addiu $sp, $sp, 0x20

get_float_variable:
/* 0ECDDC 802C842C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ECDE0 802C8430 3C02EFE8 */  lui   $v0, 0xefe8
/* 0ECDE4 802C8434 34422080 */  ori   $v0, $v0, 0x2080
/* 0ECDE8 802C8438 0045102A */  slt   $v0, $v0, $a1
/* 0ECDEC 802C843C 10400006 */  beqz  $v0, .L802C8458
/* 0ECDF0 802C8440 AFBF0010 */   sw    $ra, 0x10($sp)
/* 0ECDF4 802C8444 3C02F119 */  lui   $v0, 0xf119
/* 0ECDF8 802C8448 34424D80 */  ori   $v0, $v0, 0x4d80
/* 0ECDFC 802C844C 0045102A */  slt   $v0, $v0, $a1
/* 0ECE00 802C8450 14400005 */  bnez  $v0, .L802C8468
/* 0ECE04 802C8454 3C02F2E3 */   lui   $v0, 0xf2e3
.L802C8458:
/* 0ECE08 802C8458 44850000 */  mtc1  $a1, $f0
/* 0ECE0C 802C845C 00000000 */  nop   
/* 0ECE10 802C8460 080B218D */  j     func_802C8634
/* 0ECE14 802C8464 46800020 */   cvt.s.w $f0, $f0

.L802C8468:
/* 0ECE18 802C8468 34421100 */  ori   $v0, $v0, 0x1100
/* 0ECE1C 802C846C 0045102A */  slt   $v0, $v0, $a1
/* 0ECE20 802C8470 14400003 */  bnez  $v0, .L802C8480
/* 0ECE24 802C8474 3C02F545 */   lui   $v0, 0xf545
/* 0ECE28 802C8478 080B218B */  j     func_802C862C
/* 0ECE2C 802C847C 00A0202D */   daddu $a0, $a1, $zero

.L802C8480:
/* 0ECE30 802C8480 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0ECE34 802C8484 0045102A */  slt   $v0, $v0, $a1
/* 0ECE38 802C8488 14400009 */  bnez  $v0, .L802C84B0
/* 0ECE3C 802C848C 3C02F676 */   lui   $v0, 0xf676
/* 0ECE40 802C8490 3C020B53 */  lui   $v0, 0xb53
/* 0ECE44 802C8494 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0ECE48 802C8498 00A22821 */  addu  $a1, $a1, $v0
/* 0ECE4C 802C849C 8C83013C */  lw    $v1, 0x13c($a0)
/* 0ECE50 802C84A0 00051080 */  sll   $v0, $a1, 2
/* 0ECE54 802C84A4 00431021 */  addu  $v0, $v0, $v1
/* 0ECE58 802C84A8 080B218B */  j     func_802C862C
/* 0ECE5C 802C84AC 8C440000 */   lw    $a0, ($v0)

.L802C84B0:
/* 0ECE60 802C84B0 34429800 */  ori   $v0, $v0, 0x9800
/* 0ECE64 802C84B4 0045102A */  slt   $v0, $v0, $a1
/* 0ECE68 802C84B8 14400007 */  bnez  $v0, .L802C84D8
/* 0ECE6C 802C84BC 3C02F7A7 */   lui   $v0, 0xf7a7
/* 0ECE70 802C84C0 3C040A21 */  lui   $a0, 0xa21
/* 0ECE74 802C84C4 3484FE80 */  ori   $a0, $a0, 0xfe80
/* 0ECE78 802C84C8 0C05154E */  jal   get_global_byte
/* 0ECE7C 802C84CC 00A42021 */   addu  $a0, $a1, $a0
/* 0ECE80 802C84D0 080B218B */  j     func_802C862C
/* 0ECE84 802C84D4 0040202D */   daddu $a0, $v0, $zero

.L802C84D8:
/* 0ECE88 802C84D8 3442C500 */  ori   $v0, $v0, 0xc500
/* 0ECE8C 802C84DC 0045102A */  slt   $v0, $v0, $a1
/* 0ECE90 802C84E0 14400007 */  bnez  $v0, .L802C8500
/* 0ECE94 802C84E4 3C02FB3B */   lui   $v0, 0xfb3b
/* 0ECE98 802C84E8 3C0408F0 */  lui   $a0, 0x8f0
/* 0ECE9C 802C84EC 3484D180 */  ori   $a0, $a0, 0xd180
/* 0ECEA0 802C84F0 0C051594 */  jal   get_area_byte
/* 0ECEA4 802C84F4 00A42021 */   addu  $a0, $a1, $a0
/* 0ECEA8 802C84F8 080B218B */  j     func_802C862C
/* 0ECEAC 802C84FC 0040202D */   daddu $a0, $v0, $zero

.L802C8500:
/* 0ECEB0 802C8500 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0ECEB4 802C8504 0045102A */  slt   $v0, $v0, $a1
/* 0ECEB8 802C8508 14400015 */  bnez  $v0, .L802C8560
/* 0ECEBC 802C850C 3C02FC6C */   lui   $v0, 0xfc6c
/* 0ECEC0 802C8510 3C02055D */  lui   $v0, 0x55d
/* 0ECEC4 802C8514 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0ECEC8 802C8518 00A22821 */  addu  $a1, $a1, $v0
/* 0ECECC 802C851C 04A10002 */  bgez  $a1, .L802C8528
/* 0ECED0 802C8520 00A0182D */   daddu $v1, $a1, $zero
/* 0ECED4 802C8524 24A3001F */  addiu $v1, $a1, 0x1f
.L802C8528:
/* 0ECED8 802C8528 00033143 */  sra   $a2, $v1, 5
/* 0ECEDC 802C852C 00C0182D */  daddu $v1, $a2, $zero
/* 0ECEE0 802C8530 00031140 */  sll   $v0, $v1, 5
/* 0ECEE4 802C8534 00A23023 */  subu  $a2, $a1, $v0
/* 0ECEE8 802C8538 00031880 */  sll   $v1, $v1, 2
/* 0ECEEC 802C853C 3C02802E */  lui   $v0, 0x802e
/* 0ECEF0 802C8540 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0ECEF4 802C8544 3C013F80 */  lui   $at, 0x3f80
/* 0ECEF8 802C8548 44810000 */  mtc1  $at, $f0
/* 0ECEFC 802C854C 00621821 */  addu  $v1, $v1, $v0
/* 0ECF00 802C8550 24020001 */  addiu $v0, $zero, 1
/* 0ECF04 802C8554 8C630000 */  lw    $v1, ($v1)
/* 0ECF08 802C8558 080B216D */  j     func_802C85B4
/* 0ECF0C 802C855C 00C21004 */   sllv  $v0, $v0, $a2

.L802C8560:
/* 0ECF10 802C8560 34427900 */  ori   $v0, $v0, 0x7900
/* 0ECF14 802C8564 0045102A */  slt   $v0, $v0, $a1
/* 0ECF18 802C8568 14400018 */  bnez  $v0, .L802C85CC
/* 0ECF1C 802C856C 3C02FD9D */   lui   $v0, 0xfd9d
/* 0ECF20 802C8570 3C02042C */  lui   $v0, 0x42c
/* 0ECF24 802C8574 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0ECF28 802C8578 00A22821 */  addu  $a1, $a1, $v0
/* 0ECF2C 802C857C 04A10002 */  bgez  $a1, .L802C8588
/* 0ECF30 802C8580 00A0182D */   daddu $v1, $a1, $zero
/* 0ECF34 802C8584 24A3001F */  addiu $v1, $a1, 0x1f
.L802C8588:
/* 0ECF38 802C8588 00033143 */  sra   $a2, $v1, 5
/* 0ECF3C 802C858C 00C0182D */  daddu $v1, $a2, $zero
/* 0ECF40 802C8590 00031140 */  sll   $v0, $v1, 5
/* 0ECF44 802C8594 00A23023 */  subu  $a2, $a1, $v0
/* 0ECF48 802C8598 00031880 */  sll   $v1, $v1, 2
/* 0ECF4C 802C859C 00831821 */  addu  $v1, $a0, $v1
/* 0ECF50 802C85A0 24020001 */  addiu $v0, $zero, 1
/* 0ECF54 802C85A4 00C21004 */  sllv  $v0, $v0, $a2
/* 0ECF58 802C85A8 8C6300C4 */  lw    $v1, 0xc4($v1)
/* 0ECF5C 802C85AC 3C013F80 */  lui   $at, 0x3f80
/* 0ECF60 802C85B0 44810000 */  mtc1  $at, $f0
func_802C85B4:
/* 0ECF64 802C85B4 00622824 */  and   $a1, $v1, $v0
/* 0ECF68 802C85B8 14A0001E */  bnez  $a1, .L802C8634
/* 0ECF6C 802C85BC 00000000 */   nop   
/* 0ECF70 802C85C0 44800000 */  mtc1  $zero, $f0
/* 0ECF74 802C85C4 080B218D */  j     func_802C8634
/* 0ECF78 802C85C8 00000000 */   nop   

.L802C85CC:
/* 0ECF7C 802C85CC 3442A600 */  ori   $v0, $v0, 0xa600
/* 0ECF80 802C85D0 0045102A */  slt   $v0, $v0, $a1
/* 0ECF84 802C85D4 1440000A */  bnez  $v0, .L802C8600
/* 0ECF88 802C85D8 3C02FECE */   lui   $v0, 0xfece
/* 0ECF8C 802C85DC 3C0202FA */  lui   $v0, 0x2fa
/* 0ECF90 802C85E0 3442F080 */  ori   $v0, $v0, 0xf080
/* 0ECF94 802C85E4 00A22821 */  addu  $a1, $a1, $v0
/* 0ECF98 802C85E8 3C03802E */  lui   $v1, 0x802e
/* 0ECF9C 802C85EC 8C63A484 */  lw    $v1, -0x5b7c($v1)
/* 0ECFA0 802C85F0 00051080 */  sll   $v0, $a1, 2
/* 0ECFA4 802C85F4 00431021 */  addu  $v0, $v0, $v1
/* 0ECFA8 802C85F8 080B218B */  j     func_802C862C
/* 0ECFAC 802C85FC 8C440000 */   lw    $a0, ($v0)

.L802C8600:
/* 0ECFB0 802C8600 3442D300 */  ori   $v0, $v0, 0xd300
/* 0ECFB4 802C8604 0045102A */  slt   $v0, $v0, $a1
/* 0ECFB8 802C8608 10400003 */  beqz  $v0, .L802C8618
/* 0ECFBC 802C860C 3C0201C9 */   lui   $v0, 0x1c9
/* 0ECFC0 802C8610 080B218B */  j     func_802C862C
/* 0ECFC4 802C8614 00A0202D */   daddu $a0, $a1, $zero

.L802C8618:
/* 0ECFC8 802C8618 3442C380 */  ori   $v0, $v0, 0xc380
/* 0ECFCC 802C861C 00A22821 */  addu  $a1, $a1, $v0
/* 0ECFD0 802C8620 00051080 */  sll   $v0, $a1, 2
/* 0ECFD4 802C8624 00821021 */  addu  $v0, $a0, $v0
/* 0ECFD8 802C8628 8C440084 */  lw    $a0, 0x84($v0)
func_802C862C:
/* 0ECFDC 802C862C 0C0B1248 */  jal   fixed_var_to_float
/* 0ECFE0 802C8630 00000000 */   nop   
func_802C8634:
.L802C8634:
/* 0ECFE4 802C8634 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0ECFE8 802C8638 03E00008 */  jr    $ra
/* 0ECFEC 802C863C 27BD0018 */   addiu $sp, $sp, 0x18

set_float_variable:
/* 0ECFF0 802C8640 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0ECFF4 802C8644 AFB10014 */  sw    $s1, 0x14($sp)
/* 0ECFF8 802C8648 0080882D */  daddu $s1, $a0, $zero
/* 0ECFFC 802C864C 3C02EFE8 */  lui   $v0, 0xefe8
/* 0ED000 802C8650 34422080 */  ori   $v0, $v0, 0x2080
/* 0ED004 802C8654 44866000 */  mtc1  $a2, $f12
/* 0ED008 802C8658 0045102A */  slt   $v0, $v0, $a1
/* 0ED00C 802C865C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0ED010 802C8660 AFB20018 */  sw    $s2, 0x18($sp)
/* 0ED014 802C8664 1040003D */  beqz  $v0, .L802C875C
/* 0ED018 802C8668 AFB00010 */   sw    $s0, 0x10($sp)
/* 0ED01C 802C866C 3C02F2E3 */  lui   $v0, 0xf2e3
/* 0ED020 802C8670 34421100 */  ori   $v0, $v0, 0x1100
/* 0ED024 802C8674 0045102A */  slt   $v0, $v0, $a1
/* 0ED028 802C8678 10400038 */  beqz  $v0, .L802C875C
/* 0ED02C 802C867C 3C02F545 */   lui   $v0, 0xf545
/* 0ED030 802C8680 34426B00 */  ori   $v0, $v0, 0x6b00
/* 0ED034 802C8684 0045102A */  slt   $v0, $v0, $a1
/* 0ED038 802C8688 1440000E */  bnez  $v0, .L802C86C4
/* 0ED03C 802C868C 3C02FB3B */   lui   $v0, 0xfb3b
/* 0ED040 802C8690 3C020B53 */  lui   $v0, 0xb53
/* 0ED044 802C8694 34422B80 */  ori   $v0, $v0, 0x2b80
/* 0ED048 802C8698 00A22821 */  addu  $a1, $a1, $v0
/* 0ED04C 802C869C 8E22013C */  lw    $v0, 0x13c($s1)
/* 0ED050 802C86A0 00058080 */  sll   $s0, $a1, 2
/* 0ED054 802C86A4 02021021 */  addu  $v0, $s0, $v0
/* 0ED058 802C86A8 0C0B125B */  jal   float_to_fixed_var
/* 0ED05C 802C86AC 8C520000 */   lw    $s2, ($v0)
/* 0ED060 802C86B0 8E23013C */  lw    $v1, 0x13c($s1)
/* 0ED064 802C86B4 0240202D */  daddu $a0, $s2, $zero
/* 0ED068 802C86B8 02038021 */  addu  $s0, $s0, $v1
/* 0ED06C 802C86BC 080B221C */  j     func_802C8870
/* 0ED070 802C86C0 AE020000 */   sw    $v0, ($s0)

.L802C86C4:
/* 0ED074 802C86C4 34424C00 */  ori   $v0, $v0, 0x4c00
/* 0ED078 802C86C8 0045102A */  slt   $v0, $v0, $a1
/* 0ED07C 802C86CC 54400025 */  bnezl $v0, .L802C8764
/* 0ED080 802C86D0 3C02FC6C */   lui   $v0, 0xfc6c
/* 0ED084 802C86D4 3C02055D */  lui   $v0, 0x55d
/* 0ED088 802C86D8 34424A80 */  ori   $v0, $v0, 0x4a80
/* 0ED08C 802C86DC 00A22821 */  addu  $a1, $a1, $v0
/* 0ED090 802C86E0 04A10002 */  bgez  $a1, .L802C86EC
/* 0ED094 802C86E4 00A0102D */   daddu $v0, $a1, $zero
/* 0ED098 802C86E8 24A2001F */  addiu $v0, $a1, 0x1f
.L802C86EC:
/* 0ED09C 802C86EC 00023143 */  sra   $a2, $v0, 5
/* 0ED0A0 802C86F0 00C0202D */  daddu $a0, $a2, $zero
/* 0ED0A4 802C86F4 00041140 */  sll   $v0, $a0, 5
/* 0ED0A8 802C86F8 44800000 */  mtc1  $zero, $f0
/* 0ED0AC 802C86FC 00000000 */  nop   
/* 0ED0B0 802C8700 46006032 */  c.eq.s $f12, $f0
/* 0ED0B4 802C8704 00000000 */  nop   
/* 0ED0B8 802C8708 4501000A */  bc1t  .L802C8734
/* 0ED0BC 802C870C 00A23023 */   subu  $a2, $a1, $v0
/* 0ED0C0 802C8710 3C02802E */  lui   $v0, 0x802e
/* 0ED0C4 802C8714 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0ED0C8 802C8718 00042080 */  sll   $a0, $a0, 2
/* 0ED0CC 802C871C 00822021 */  addu  $a0, $a0, $v0
/* 0ED0D0 802C8720 24020001 */  addiu $v0, $zero, 1
/* 0ED0D4 802C8724 8C830000 */  lw    $v1, ($a0)
/* 0ED0D8 802C8728 00C21004 */  sllv  $v0, $v0, $a2
/* 0ED0DC 802C872C 080B21D6 */  j     func_802C8758
/* 0ED0E0 802C8730 00621825 */   or    $v1, $v1, $v0

.L802C8734:
/* 0ED0E4 802C8734 3C02802E */  lui   $v0, 0x802e
/* 0ED0E8 802C8738 8C42A480 */  lw    $v0, -0x5b80($v0)
/* 0ED0EC 802C873C 00042080 */  sll   $a0, $a0, 2
/* 0ED0F0 802C8740 00822021 */  addu  $a0, $a0, $v0
/* 0ED0F4 802C8744 24020001 */  addiu $v0, $zero, 1
/* 0ED0F8 802C8748 00C21004 */  sllv  $v0, $v0, $a2
/* 0ED0FC 802C874C 8C830000 */  lw    $v1, ($a0)
/* 0ED100 802C8750 00021027 */  nor   $v0, $zero, $v0
/* 0ED104 802C8754 00621824 */  and   $v1, $v1, $v0
func_802C8758:
/* 0ED108 802C8758 AC830000 */  sw    $v1, ($a0)
func_802C875C:
.L802C875C:
/* 0ED10C 802C875C 080B221E */  j     func_802C8878
/* 0ED110 802C8760 46006006 */   mov.s $f0, $f12

.L802C8764:
/* 0ED114 802C8764 34427900 */  ori   $v0, $v0, 0x7900
/* 0ED118 802C8768 0045102A */  slt   $v0, $v0, $a1
/* 0ED11C 802C876C 54400020 */  bnezl $v0, .L802C87F0
/* 0ED120 802C8770 3C02FD9D */   lui   $v0, 0xfd9d
/* 0ED124 802C8774 3C02042C */  lui   $v0, 0x42c
/* 0ED128 802C8778 34421D80 */  ori   $v0, $v0, 0x1d80
/* 0ED12C 802C877C 00A22821 */  addu  $a1, $a1, $v0
/* 0ED130 802C8780 04A10002 */  bgez  $a1, .L802C878C
/* 0ED134 802C8784 00A0102D */   daddu $v0, $a1, $zero
/* 0ED138 802C8788 24A2001F */  addiu $v0, $a1, 0x1f
.L802C878C:
/* 0ED13C 802C878C 00023143 */  sra   $a2, $v0, 5
/* 0ED140 802C8790 00C0182D */  daddu $v1, $a2, $zero
/* 0ED144 802C8794 00031140 */  sll   $v0, $v1, 5
/* 0ED148 802C8798 44800000 */  mtc1  $zero, $f0
/* 0ED14C 802C879C 00000000 */  nop   
/* 0ED150 802C87A0 46006032 */  c.eq.s $f12, $f0
/* 0ED154 802C87A4 00000000 */  nop   
/* 0ED158 802C87A8 45010008 */  bc1t  .L802C87CC
/* 0ED15C 802C87AC 00A23023 */   subu  $a2, $a1, $v0
/* 0ED160 802C87B0 00031080 */  sll   $v0, $v1, 2
/* 0ED164 802C87B4 02221021 */  addu  $v0, $s1, $v0
/* 0ED168 802C87B8 24030001 */  addiu $v1, $zero, 1
/* 0ED16C 802C87BC 8C4400C4 */  lw    $a0, 0xc4($v0)
/* 0ED170 802C87C0 00C31804 */  sllv  $v1, $v1, $a2
/* 0ED174 802C87C4 080B21FA */  j     func_802C87E8
/* 0ED178 802C87C8 00832025 */   or    $a0, $a0, $v1

.L802C87CC:
/* 0ED17C 802C87CC 00031080 */  sll   $v0, $v1, 2
/* 0ED180 802C87D0 02221021 */  addu  $v0, $s1, $v0
/* 0ED184 802C87D4 24030001 */  addiu $v1, $zero, 1
/* 0ED188 802C87D8 00C31804 */  sllv  $v1, $v1, $a2
/* 0ED18C 802C87DC 8C4400C4 */  lw    $a0, 0xc4($v0)
/* 0ED190 802C87E0 00031827 */  nor   $v1, $zero, $v1
/* 0ED194 802C87E4 00832024 */  and   $a0, $a0, $v1
func_802C87E8:
/* 0ED198 802C87E8 080B21D7 */  j     func_802C875C
/* 0ED19C 802C87EC AC4400C4 */   sw    $a0, 0xc4($v0)

.L802C87F0:
/* 0ED1A0 802C87F0 3442A600 */  ori   $v0, $v0, 0xa600
/* 0ED1A4 802C87F4 0045102A */  slt   $v0, $v0, $a1
/* 0ED1A8 802C87F8 14400010 */  bnez  $v0, .L802C883C
/* 0ED1AC 802C87FC 3C02FECE */   lui   $v0, 0xfece
/* 0ED1B0 802C8800 3C0202FA */  lui   $v0, 0x2fa
/* 0ED1B4 802C8804 3442F080 */  ori   $v0, $v0, 0xf080
/* 0ED1B8 802C8808 00A22821 */  addu  $a1, $a1, $v0
/* 0ED1BC 802C880C 3C11802E */  lui   $s1, 0x802e
/* 0ED1C0 802C8810 2631A484 */  addiu $s1, $s1, -0x5b7c
/* 0ED1C4 802C8814 8E220000 */  lw    $v0, ($s1)
/* 0ED1C8 802C8818 00058080 */  sll   $s0, $a1, 2
/* 0ED1CC 802C881C 02021021 */  addu  $v0, $s0, $v0
/* 0ED1D0 802C8820 0C0B125B */  jal   float_to_fixed_var
/* 0ED1D4 802C8824 8C520000 */   lw    $s2, ($v0)
/* 0ED1D8 802C8828 8E230000 */  lw    $v1, ($s1)
/* 0ED1DC 802C882C 0240202D */  daddu $a0, $s2, $zero
/* 0ED1E0 802C8830 02038021 */  addu  $s0, $s0, $v1
/* 0ED1E4 802C8834 080B221C */  j     func_802C8870
/* 0ED1E8 802C8838 AE020000 */   sw    $v0, ($s0)

.L802C883C:
/* 0ED1EC 802C883C 3442D300 */  ori   $v0, $v0, 0xd300
/* 0ED1F0 802C8840 0045102A */  slt   $v0, $v0, $a1
/* 0ED1F4 802C8844 1440000C */  bnez  $v0, .L802C8878
/* 0ED1F8 802C8848 46006006 */   mov.s $f0, $f12
/* 0ED1FC 802C884C 3C0201C9 */  lui   $v0, 0x1c9
/* 0ED200 802C8850 3442C380 */  ori   $v0, $v0, 0xc380
/* 0ED204 802C8854 00A22821 */  addu  $a1, $a1, $v0
/* 0ED208 802C8858 00058080 */  sll   $s0, $a1, 2
/* 0ED20C 802C885C 02308021 */  addu  $s0, $s1, $s0
/* 0ED210 802C8860 0C0B125B */  jal   float_to_fixed_var
/* 0ED214 802C8864 8E120084 */   lw    $s2, 0x84($s0)
/* 0ED218 802C8868 AE020084 */  sw    $v0, 0x84($s0)
/* 0ED21C 802C886C 0240202D */  daddu $a0, $s2, $zero
func_802C8870:
/* 0ED220 802C8870 0C0B1248 */  jal   fixed_var_to_float
/* 0ED224 802C8874 00000000 */   nop   
func_802C8878:
.L802C8878:
/* 0ED228 802C8878 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0ED22C 802C887C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0ED230 802C8880 8FB10014 */  lw    $s1, 0x14($sp)
/* 0ED234 802C8884 8FB00010 */  lw    $s0, 0x10($sp)
/* 0ED238 802C8888 03E00008 */  jr    $ra
/* 0ED23C 802C888C 27BD0020 */   addiu $sp, $sp, 0x20

si_goto_label:
/* 0ED240 802C8890 8C86000C */  lw    $a2, 0xc($a0)
/* 0ED244 802C8894 3C02EFE8 */  lui   $v0, 0xefe8
/* 0ED248 802C8898 34422080 */  ori   $v0, $v0, 0x2080
/* 0ED24C 802C889C 00A2102A */  slt   $v0, $a1, $v0
/* 0ED250 802C88A0 10400007 */  beqz  $v0, .L802C88C0
/* 0ED254 802C88A4 0000182D */   daddu $v1, $zero, $zero
/* 0ED258 802C88A8 03E00008 */  jr    $ra
/* 0ED25C 802C88AC 00A0102D */   daddu $v0, $a1, $zero

.L802C88B0:
/* 0ED260 802C88B0 00821021 */  addu  $v0, $a0, $v0
/* 0ED264 802C88B4 8C460020 */  lw    $a2, 0x20($v0)
/* 0ED268 802C88B8 080B2239 */  j     func_802C88E4
/* 0ED26C 802C88BC 28620010 */   slti  $v0, $v1, 0x10

.L802C88C0:
/* 0ED270 802C88C0 00831021 */  addu  $v0, $a0, $v1
.L802C88C4:
/* 0ED274 802C88C4 80420010 */  lb    $v0, 0x10($v0)
/* 0ED278 802C88C8 1045FFF9 */  beq   $v0, $a1, .L802C88B0
/* 0ED27C 802C88CC 00031080 */   sll   $v0, $v1, 2
/* 0ED280 802C88D0 24630001 */  addiu $v1, $v1, 1
/* 0ED284 802C88D4 28620010 */  slti  $v0, $v1, 0x10
/* 0ED288 802C88D8 1440FFFA */  bnez  $v0, .L802C88C4
/* 0ED28C 802C88DC 00831021 */   addu  $v0, $a0, $v1
/* 0ED290 802C88E0 28620010 */  slti  $v0, $v1, 0x10
func_802C88E4:
/* 0ED294 802C88E4 14400003 */  bnez  $v0, .L802C88F4
/* 0ED298 802C88E8 00000000 */   nop   
func_802C88EC:
/* 0ED29C 802C88EC 080B223B */  j     func_802C88EC
/* 0ED2A0 802C88F0 00000000 */   nop   

.L802C88F4:
/* 0ED2A4 802C88F4 03E00008 */  jr    $ra
/* 0ED2A8 802C88F8 00C0102D */   daddu $v0, $a2, $zero

si_skip_if:
/* 0ED2AC 802C88FC 0000282D */  daddu $a1, $zero, $zero
/* 0ED2B0 802C8900 8C840008 */  lw    $a0, 8($a0)
/* 0ED2B4 802C8904 3C06802E */  lui   $a2, 0x802e
/* 0ED2B8 802C8908 24C6A0A0 */  addiu $a2, $a2, -0x5f60
func_802C890C:
.L802C890C:
/* 0ED2BC 802C890C 8C820000 */  lw    $v0, ($a0)
/* 0ED2C0 802C8910 24840004 */  addiu $a0, $a0, 4
/* 0ED2C4 802C8914 8C830000 */  lw    $v1, ($a0)
/* 0ED2C8 802C8918 24840004 */  addiu $a0, $a0, 4
/* 0ED2CC 802C891C 00031880 */  sll   $v1, $v1, 2
/* 0ED2D0 802C8920 00832021 */  addu  $a0, $a0, $v1
/* 0ED2D4 802C8924 2443FFFF */  addiu $v1, $v0, -1
/* 0ED2D8 802C8928 2C620013 */  sltiu $v0, $v1, 0x13
/* 0ED2DC 802C892C 1040FFF7 */  beqz  $v0, .L802C890C
/* 0ED2E0 802C8930 00031080 */   sll   $v0, $v1, 2
/* 0ED2E4 802C8934 00461021 */  addu  $v0, $v0, $a2
/* 0ED2E8 802C8938 8C420000 */  lw    $v0, ($v0)
/* 0ED2EC 802C893C 00400008 */  jr    $v0
/* 0ED2F0 802C8940 00000000 */   nop   
func_802C8944:
/* 0ED2F4 802C8944 080B2251 */  j     func_802C8944
/* 0ED2F8 802C8948 00000000 */   nop   

/* 0ED2FC 802C894C 24A5FFFF */  addiu $a1, $a1, -1
/* 0ED300 802C8950 04A1FFEE */  bgez  $a1, .L802C890C
/* 0ED304 802C8954 0080102D */   daddu $v0, $a0, $zero
/* 0ED308 802C8958 03E00008 */  jr    $ra
/* 0ED30C 802C895C 00000000 */   nop   

/* 0ED310 802C8960 080B2243 */  j     func_802C890C
/* 0ED314 802C8964 24A50001 */   addiu $a1, $a1, 1

/* 0ED318 802C8968 14A0FFE8 */  bnez  $a1, .L802C890C
/* 0ED31C 802C896C 0080102D */   daddu $v0, $a0, $zero
/* 0ED320 802C8970 03E00008 */  jr    $ra
/* 0ED324 802C8974 00000000 */   nop   

si_skip_else:
/* 0ED328 802C8978 0000282D */  daddu $a1, $zero, $zero
/* 0ED32C 802C897C 8C840008 */  lw    $a0, 8($a0)
/* 0ED330 802C8980 3C06802E */  lui   $a2, 0x802e
/* 0ED334 802C8984 24C6A0F0 */  addiu $a2, $a2, -0x5f10
func_802C8988:
.L802C8988:
/* 0ED338 802C8988 8C820000 */  lw    $v0, ($a0)
/* 0ED33C 802C898C 24840004 */  addiu $a0, $a0, 4
/* 0ED340 802C8990 8C830000 */  lw    $v1, ($a0)
/* 0ED344 802C8994 24840004 */  addiu $a0, $a0, 4
/* 0ED348 802C8998 00031880 */  sll   $v1, $v1, 2
/* 0ED34C 802C899C 00832021 */  addu  $a0, $a0, $v1
/* 0ED350 802C89A0 2443FFFF */  addiu $v1, $v0, -1
/* 0ED354 802C89A4 2C620013 */  sltiu $v0, $v1, 0x13
/* 0ED358 802C89A8 1040FFF7 */  beqz  $v0, .L802C8988
/* 0ED35C 802C89AC 00031080 */   sll   $v0, $v1, 2
/* 0ED360 802C89B0 00461021 */  addu  $v0, $v0, $a2
/* 0ED364 802C89B4 8C420000 */  lw    $v0, ($v0)
/* 0ED368 802C89B8 00400008 */  jr    $v0
/* 0ED36C 802C89BC 00000000 */   nop   
func_802C89C0:
/* 0ED370 802C89C0 080B2270 */  j     func_802C89C0
/* 0ED374 802C89C4 00000000 */   nop   

/* 0ED378 802C89C8 24A5FFFF */  addiu $a1, $a1, -1
/* 0ED37C 802C89CC 04A1FFEE */  bgez  $a1, .L802C8988
/* 0ED380 802C89D0 0080102D */   daddu $v0, $a0, $zero
/* 0ED384 802C89D4 03E00008 */  jr    $ra
/* 0ED388 802C89D8 00000000 */   nop   

/* 0ED38C 802C89DC 080B2262 */  j     func_802C8988
/* 0ED390 802C89E0 24A50001 */   addiu $a1, $a1, 1

si_goto_end_case:
/* 0ED394 802C89E4 24050001 */  addiu $a1, $zero, 1
/* 0ED398 802C89E8 8C860008 */  lw    $a2, 8($a0)
/* 0ED39C 802C89EC 24090014 */  addiu $t1, $zero, 0x14
/* 0ED3A0 802C89F0 00A0402D */  daddu $t0, $a1, $zero
/* 0ED3A4 802C89F4 24070023 */  addiu $a3, $zero, 0x23
func_802C89F8:
/* 0ED3A8 802C89F8 00C0202D */  daddu $a0, $a2, $zero
func_802C89FC:
.L802C89FC:
/* 0ED3AC 802C89FC 24860008 */  addiu $a2, $a0, 8
func_802C8A00:
/* 0ED3B0 802C8A00 8C820004 */  lw    $v0, 4($a0)
/* 0ED3B4 802C8A04 8C830000 */  lw    $v1, ($a0)
/* 0ED3B8 802C8A08 00021080 */  sll   $v0, $v0, 2
/* 0ED3BC 802C8A0C 1069000E */  beq   $v1, $t1, .L802C8A48
/* 0ED3C0 802C8A10 00C23021 */   addu  $a2, $a2, $v0
/* 0ED3C4 802C8A14 28620015 */  slti  $v0, $v1, 0x15
/* 0ED3C8 802C8A18 10400005 */  beqz  $v0, .L802C8A30
/* 0ED3CC 802C8A1C 00000000 */   nop   
/* 0ED3D0 802C8A20 10680007 */  beq   $v1, $t0, .L802C8A40
/* 0ED3D4 802C8A24 00C0202D */   daddu $a0, $a2, $zero
/* 0ED3D8 802C8A28 080B2280 */  j     func_802C8A00
/* 0ED3DC 802C8A2C 24860008 */   addiu $a2, $a0, 8

.L802C8A30:
/* 0ED3E0 802C8A30 50670007 */  beql  $v1, $a3, .L802C8A50
/* 0ED3E4 802C8A34 24A5FFFF */   addiu $a1, $a1, -1
/* 0ED3E8 802C8A38 080B227F */  j     func_802C89FC
/* 0ED3EC 802C8A3C 00C0202D */   daddu $a0, $a2, $zero

func_802C8A40:
.L802C8A40:
/* 0ED3F0 802C8A40 080B2290 */  j     func_802C8A40
/* 0ED3F4 802C8A44 00000000 */   nop   

.L802C8A48:
/* 0ED3F8 802C8A48 080B227E */  j     func_802C89F8
/* 0ED3FC 802C8A4C 24A50001 */   addiu $a1, $a1, 1

.L802C8A50:
/* 0ED400 802C8A50 54A0FFEA */  bnezl $a1, .L802C89FC
/* 0ED404 802C8A54 00C0202D */   daddu $a0, $a2, $zero
/* 0ED408 802C8A58 03E00008 */  jr    $ra
/* 0ED40C 802C8A5C 0080102D */   daddu $v0, $a0, $zero

si_goto_next_case:
/* 0ED410 802C8A60 24050001 */  addiu $a1, $zero, 1
/* 0ED414 802C8A64 8C860008 */  lw    $a2, 8($a0)
/* 0ED418 802C8A68 3C08802E */  lui   $t0, 0x802e
/* 0ED41C 802C8A6C 2508A140 */  addiu $t0, $t0, -0x5ec0
/* 0ED420 802C8A70 00A0382D */  daddu $a3, $a1, $zero
func_802C8A74:
/* 0ED424 802C8A74 00C0202D */  daddu $a0, $a2, $zero
.L802C8A78:
/* 0ED428 802C8A78 24860008 */  addiu $a2, $a0, 8
/* 0ED42C 802C8A7C 8C820004 */  lw    $v0, 4($a0)
/* 0ED430 802C8A80 8C830000 */  lw    $v1, ($a0)
/* 0ED434 802C8A84 00021080 */  sll   $v0, $v0, 2
/* 0ED438 802C8A88 00C23021 */  addu  $a2, $a2, $v0
/* 0ED43C 802C8A8C 2463FFFF */  addiu $v1, $v1, -1
/* 0ED440 802C8A90 2C620023 */  sltiu $v0, $v1, 0x23
/* 0ED444 802C8A94 5040FFF8 */  beql  $v0, $zero, .L802C8A78
/* 0ED448 802C8A98 00C0202D */   daddu $a0, $a2, $zero
/* 0ED44C 802C8A9C 00031080 */  sll   $v0, $v1, 2
/* 0ED450 802C8AA0 00481021 */  addu  $v0, $v0, $t0
/* 0ED454 802C8AA4 8C420000 */  lw    $v0, ($v0)
/* 0ED458 802C8AA8 00400008 */  jr    $v0
/* 0ED45C 802C8AAC 00000000 */   nop   
func_802C8AB0:
/* 0ED460 802C8AB0 080B22AC */  j     func_802C8AB0
/* 0ED464 802C8AB4 00000000 */   nop   

/* 0ED468 802C8AB8 080B229D */  j     func_802C8A74
/* 0ED46C 802C8ABC 24A50001 */   addiu $a1, $a1, 1

/* 0ED470 802C8AC0 24A5FFFF */  addiu $a1, $a1, -1
/* 0ED474 802C8AC4 54A0FFEC */  bnezl $a1, .L802C8A78
/* 0ED478 802C8AC8 00C0202D */   daddu $a0, $a2, $zero
/* 0ED47C 802C8ACC 03E00008 */  jr    $ra
/* 0ED480 802C8AD0 0080102D */   daddu $v0, $a0, $zero

/* 0ED484 802C8AD4 54A7FFE8 */  bnel  $a1, $a3, .L802C8A78
/* 0ED488 802C8AD8 00C0202D */   daddu $a0, $a2, $zero
/* 0ED48C 802C8ADC 03E00008 */  jr    $ra
/* 0ED490 802C8AE0 0080102D */   daddu $v0, $a0, $zero

si_goto_end_loop:
/* 0ED494 802C8AE4 0000282D */  daddu $a1, $zero, $zero
/* 0ED498 802C8AE8 8C830008 */  lw    $v1, 8($a0)
/* 0ED49C 802C8AEC 24080005 */  addiu $t0, $zero, 5
/* 0ED4A0 802C8AF0 24070001 */  addiu $a3, $zero, 1
/* 0ED4A4 802C8AF4 24060006 */  addiu $a2, $zero, 6
func_802C8AF8:
.L802C8AF8:
/* 0ED4A8 802C8AF8 8C640000 */  lw    $a0, ($v1)
/* 0ED4AC 802C8AFC 24630004 */  addiu $v1, $v1, 4
/* 0ED4B0 802C8B00 8C620000 */  lw    $v0, ($v1)
/* 0ED4B4 802C8B04 24630004 */  addiu $v1, $v1, 4
/* 0ED4B8 802C8B08 00021080 */  sll   $v0, $v0, 2
/* 0ED4BC 802C8B0C 10880012 */  beq   $a0, $t0, .L802C8B58
/* 0ED4C0 802C8B10 00621821 */   addu  $v1, $v1, $v0
/* 0ED4C4 802C8B14 28820006 */  slti  $v0, $a0, 6
/* 0ED4C8 802C8B18 10400005 */  beqz  $v0, .L802C8B30
/* 0ED4CC 802C8B1C 00000000 */   nop   
/* 0ED4D0 802C8B20 10870007 */  beq   $a0, $a3, .L802C8B40
/* 0ED4D4 802C8B24 00000000 */   nop   
/* 0ED4D8 802C8B28 080B22BE */  j     func_802C8AF8
/* 0ED4DC 802C8B2C 00000000 */   nop   

.L802C8B30:
/* 0ED4E0 802C8B30 50860005 */  beql  $a0, $a2, .L802C8B48
/* 0ED4E4 802C8B34 24A5FFFF */   addiu $a1, $a1, -1
/* 0ED4E8 802C8B38 080B22BE */  j     func_802C8AF8
/* 0ED4EC 802C8B3C 00000000 */   nop   

func_802C8B40:
.L802C8B40:
/* 0ED4F0 802C8B40 080B22D0 */  j     func_802C8B40
/* 0ED4F4 802C8B44 00000000 */   nop   

.L802C8B48:
/* 0ED4F8 802C8B48 04A1FFEB */  bgez  $a1, .L802C8AF8
/* 0ED4FC 802C8B4C 0060102D */   daddu $v0, $v1, $zero
/* 0ED500 802C8B50 03E00008 */  jr    $ra
/* 0ED504 802C8B54 00000000 */   nop   

.L802C8B58:
/* 0ED508 802C8B58 080B22BE */  j     func_802C8AF8
/* 0ED50C 802C8B5C 24A50001 */   addiu $a1, $a1, 1

TranslateModel:
/* 0ED510 802C8B60 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0ED514 802C8B64 AFB20058 */  sw    $s2, 0x58($sp)
/* 0ED518 802C8B68 0080902D */  daddu $s2, $a0, $zero
/* 0ED51C 802C8B6C AFBF005C */  sw    $ra, 0x5c($sp)
/* 0ED520 802C8B70 AFB10054 */  sw    $s1, 0x54($sp)
/* 0ED524 802C8B74 AFB00050 */  sw    $s0, 0x50($sp)
/* 0ED528 802C8B78 F7B80070 */  sdc1  $f24, 0x70($sp)
/* 0ED52C 802C8B7C F7B60068 */  sdc1  $f22, 0x68($sp)
/* 0ED530 802C8B80 F7B40060 */  sdc1  $f20, 0x60($sp)
/* 0ED534 802C8B84 8E50000C */  lw    $s0, 0xc($s2)
/* 0ED538 802C8B88 8E050000 */  lw    $a1, ($s0)
/* 0ED53C 802C8B8C 0C0B1EAF */  jal   get_variable
/* 0ED540 802C8B90 26100004 */   addiu $s0, $s0, 4
/* 0ED544 802C8B94 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0ED548 802C8B98 0040202D */   daddu $a0, $v0, $zero
/* 0ED54C 802C8B9C 8E050000 */  lw    $a1, ($s0)
/* 0ED550 802C8BA0 26100004 */  addiu $s0, $s0, 4
/* 0ED554 802C8BA4 0240202D */  daddu $a0, $s2, $zero
/* 0ED558 802C8BA8 0C0B210B */  jal   get_float_variable
/* 0ED55C 802C8BAC 0040882D */   daddu $s1, $v0, $zero
/* 0ED560 802C8BB0 8E050000 */  lw    $a1, ($s0)
/* 0ED564 802C8BB4 26100004 */  addiu $s0, $s0, 4
/* 0ED568 802C8BB8 0240202D */  daddu $a0, $s2, $zero
/* 0ED56C 802C8BBC 0C0B210B */  jal   get_float_variable
/* 0ED570 802C8BC0 46000606 */   mov.s $f24, $f0
/* 0ED574 802C8BC4 0240202D */  daddu $a0, $s2, $zero
/* 0ED578 802C8BC8 8E050000 */  lw    $a1, ($s0)
/* 0ED57C 802C8BCC 0C0B210B */  jal   get_float_variable
/* 0ED580 802C8BD0 46000586 */   mov.s $f22, $f0
/* 0ED584 802C8BD4 0220202D */  daddu $a0, $s1, $zero
/* 0ED588 802C8BD8 0C046B4C */  jal   get_model_from_list_index
/* 0ED58C 802C8BDC 46000506 */   mov.s $f20, $f0
/* 0ED590 802C8BE0 0040802D */  daddu $s0, $v0, $zero
/* 0ED594 802C8BE4 96020000 */  lhu   $v0, ($s0)
/* 0ED598 802C8BE8 30420400 */  andi  $v0, $v0, 0x400
/* 0ED59C 802C8BEC 1440000A */  bnez  $v0, .L802C8C18
/* 0ED5A0 802C8BF0 00000000 */   nop   
/* 0ED5A4 802C8BF4 4405C000 */  mfc1  $a1, $f24
/* 0ED5A8 802C8BF8 4406B000 */  mfc1  $a2, $f22
/* 0ED5AC 802C8BFC 4407A000 */  mfc1  $a3, $f20
/* 0ED5B0 802C8C00 0C019E40 */  jal   guTranslateF
/* 0ED5B4 802C8C04 26040058 */   addiu $a0, $s0, 0x58
/* 0ED5B8 802C8C08 96020000 */  lhu   $v0, ($s0)
/* 0ED5BC 802C8C0C 34421400 */  ori   $v0, $v0, 0x1400
/* 0ED5C0 802C8C10 080B230F */  j     func_802C8C3C
/* 0ED5C4 802C8C14 A6020000 */   sh    $v0, ($s0)

.L802C8C18:
/* 0ED5C8 802C8C18 4405C000 */  mfc1  $a1, $f24
/* 0ED5CC 802C8C1C 4406B000 */  mfc1  $a2, $f22
/* 0ED5D0 802C8C20 4407A000 */  mfc1  $a3, $f20
/* 0ED5D4 802C8C24 0C019E40 */  jal   guTranslateF
/* 0ED5D8 802C8C28 27A40010 */   addiu $a0, $sp, 0x10
/* 0ED5DC 802C8C2C 27A40010 */  addiu $a0, $sp, 0x10
/* 0ED5E0 802C8C30 26050058 */  addiu $a1, $s0, 0x58
/* 0ED5E4 802C8C34 0C019D80 */  jal   guMtxCatF
/* 0ED5E8 802C8C38 00A0302D */   daddu $a2, $a1, $zero
func_802C8C3C:
/* 0ED5EC 802C8C3C 8FBF005C */  lw    $ra, 0x5c($sp)
/* 0ED5F0 802C8C40 8FB20058 */  lw    $s2, 0x58($sp)
/* 0ED5F4 802C8C44 8FB10054 */  lw    $s1, 0x54($sp)
/* 0ED5F8 802C8C48 8FB00050 */  lw    $s0, 0x50($sp)
/* 0ED5FC 802C8C4C D7B80070 */  ldc1  $f24, 0x70($sp)
/* 0ED600 802C8C50 D7B60068 */  ldc1  $f22, 0x68($sp)
/* 0ED604 802C8C54 D7B40060 */  ldc1  $f20, 0x60($sp)
/* 0ED608 802C8C58 24020002 */  addiu $v0, $zero, 2
/* 0ED60C 802C8C5C 03E00008 */  jr    $ra
/* 0ED610 802C8C60 27BD0078 */   addiu $sp, $sp, 0x78

RotateModel:
/* 0ED614 802C8C64 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0ED618 802C8C68 AFB1005C */  sw    $s1, 0x5c($sp)
/* 0ED61C 802C8C6C 0080882D */  daddu $s1, $a0, $zero
/* 0ED620 802C8C70 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0ED624 802C8C74 AFB20060 */  sw    $s2, 0x60($sp)
/* 0ED628 802C8C78 AFB00058 */  sw    $s0, 0x58($sp)
/* 0ED62C 802C8C7C F7BA0080 */  sdc1  $f26, 0x80($sp)
/* 0ED630 802C8C80 F7B80078 */  sdc1  $f24, 0x78($sp)
/* 0ED634 802C8C84 F7B60070 */  sdc1  $f22, 0x70($sp)
/* 0ED638 802C8C88 F7B40068 */  sdc1  $f20, 0x68($sp)
/* 0ED63C 802C8C8C 8E30000C */  lw    $s0, 0xc($s1)
/* 0ED640 802C8C90 8E050000 */  lw    $a1, ($s0)
/* 0ED644 802C8C94 0C0B1EAF */  jal   get_variable
/* 0ED648 802C8C98 26100004 */   addiu $s0, $s0, 4
/* 0ED64C 802C8C9C 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0ED650 802C8CA0 0040202D */   daddu $a0, $v0, $zero
/* 0ED654 802C8CA4 8E050000 */  lw    $a1, ($s0)
/* 0ED658 802C8CA8 26100004 */  addiu $s0, $s0, 4
/* 0ED65C 802C8CAC 0220202D */  daddu $a0, $s1, $zero
/* 0ED660 802C8CB0 0C0B210B */  jal   get_float_variable
/* 0ED664 802C8CB4 0040902D */   daddu $s2, $v0, $zero
/* 0ED668 802C8CB8 8E050000 */  lw    $a1, ($s0)
/* 0ED66C 802C8CBC 26100004 */  addiu $s0, $s0, 4
/* 0ED670 802C8CC0 0220202D */  daddu $a0, $s1, $zero
/* 0ED674 802C8CC4 0C0B210B */  jal   get_float_variable
/* 0ED678 802C8CC8 46000686 */   mov.s $f26, $f0
/* 0ED67C 802C8CCC 8E050000 */  lw    $a1, ($s0)
/* 0ED680 802C8CD0 26100004 */  addiu $s0, $s0, 4
/* 0ED684 802C8CD4 0220202D */  daddu $a0, $s1, $zero
/* 0ED688 802C8CD8 0C0B210B */  jal   get_float_variable
/* 0ED68C 802C8CDC 46000606 */   mov.s $f24, $f0
/* 0ED690 802C8CE0 0220202D */  daddu $a0, $s1, $zero
/* 0ED694 802C8CE4 8E050000 */  lw    $a1, ($s0)
/* 0ED698 802C8CE8 0C0B210B */  jal   get_float_variable
/* 0ED69C 802C8CEC 46000506 */   mov.s $f20, $f0
/* 0ED6A0 802C8CF0 0240202D */  daddu $a0, $s2, $zero
/* 0ED6A4 802C8CF4 0C046B4C */  jal   get_model_from_list_index
/* 0ED6A8 802C8CF8 46000586 */   mov.s $f22, $f0
/* 0ED6AC 802C8CFC 0040802D */  daddu $s0, $v0, $zero
/* 0ED6B0 802C8D00 96020000 */  lhu   $v0, ($s0)
/* 0ED6B4 802C8D04 30420400 */  andi  $v0, $v0, 0x400
/* 0ED6B8 802C8D08 1440000B */  bnez  $v0, .L802C8D38
/* 0ED6BC 802C8D0C 27A40018 */   addiu $a0, $sp, 0x18
/* 0ED6C0 802C8D10 4405D000 */  mfc1  $a1, $f26
/* 0ED6C4 802C8D14 4406C000 */  mfc1  $a2, $f24
/* 0ED6C8 802C8D18 4407A000 */  mfc1  $a3, $f20
/* 0ED6CC 802C8D1C 26040058 */  addiu $a0, $s0, 0x58
/* 0ED6D0 802C8D20 0C019EC8 */  jal   guRotateF
/* 0ED6D4 802C8D24 E7B60010 */   swc1  $f22, 0x10($sp)
/* 0ED6D8 802C8D28 96020000 */  lhu   $v0, ($s0)
/* 0ED6DC 802C8D2C 34421400 */  ori   $v0, $v0, 0x1400
/* 0ED6E0 802C8D30 080B2357 */  j     func_802C8D5C
/* 0ED6E4 802C8D34 A6020000 */   sh    $v0, ($s0)

.L802C8D38:
/* 0ED6E8 802C8D38 4405D000 */  mfc1  $a1, $f26
/* 0ED6EC 802C8D3C 4406C000 */  mfc1  $a2, $f24
/* 0ED6F0 802C8D40 4407A000 */  mfc1  $a3, $f20
/* 0ED6F4 802C8D44 0C019EC8 */  jal   guRotateF
/* 0ED6F8 802C8D48 E7B60010 */   swc1  $f22, 0x10($sp)
/* 0ED6FC 802C8D4C 27A40018 */  addiu $a0, $sp, 0x18
/* 0ED700 802C8D50 26050058 */  addiu $a1, $s0, 0x58
/* 0ED704 802C8D54 0C019D80 */  jal   guMtxCatF
/* 0ED708 802C8D58 00A0302D */   daddu $a2, $a1, $zero
func_802C8D5C:
/* 0ED70C 802C8D5C 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0ED710 802C8D60 8FB20060 */  lw    $s2, 0x60($sp)
/* 0ED714 802C8D64 8FB1005C */  lw    $s1, 0x5c($sp)
/* 0ED718 802C8D68 8FB00058 */  lw    $s0, 0x58($sp)
/* 0ED71C 802C8D6C D7BA0080 */  ldc1  $f26, 0x80($sp)
/* 0ED720 802C8D70 D7B80078 */  ldc1  $f24, 0x78($sp)
/* 0ED724 802C8D74 D7B60070 */  ldc1  $f22, 0x70($sp)
/* 0ED728 802C8D78 D7B40068 */  ldc1  $f20, 0x68($sp)
/* 0ED72C 802C8D7C 24020002 */  addiu $v0, $zero, 2
/* 0ED730 802C8D80 03E00008 */  jr    $ra
/* 0ED734 802C8D84 27BD0088 */   addiu $sp, $sp, 0x88

ScaleModel:
/* 0ED738 802C8D88 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0ED73C 802C8D8C AFB20058 */  sw    $s2, 0x58($sp)
/* 0ED740 802C8D90 0080902D */  daddu $s2, $a0, $zero
/* 0ED744 802C8D94 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0ED748 802C8D98 AFB10054 */  sw    $s1, 0x54($sp)
/* 0ED74C 802C8D9C AFB00050 */  sw    $s0, 0x50($sp)
/* 0ED750 802C8DA0 F7B80070 */  sdc1  $f24, 0x70($sp)
/* 0ED754 802C8DA4 F7B60068 */  sdc1  $f22, 0x68($sp)
/* 0ED758 802C8DA8 F7B40060 */  sdc1  $f20, 0x60($sp)
/* 0ED75C 802C8DAC 8E50000C */  lw    $s0, 0xc($s2)
/* 0ED760 802C8DB0 8E050000 */  lw    $a1, ($s0)
/* 0ED764 802C8DB4 0C0B1EAF */  jal   get_variable
/* 0ED768 802C8DB8 26100004 */   addiu $s0, $s0, 4
/* 0ED76C 802C8DBC 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0ED770 802C8DC0 0040202D */   daddu $a0, $v0, $zero
/* 0ED774 802C8DC4 8E050000 */  lw    $a1, ($s0)
/* 0ED778 802C8DC8 26100004 */  addiu $s0, $s0, 4
/* 0ED77C 802C8DCC 0240202D */  daddu $a0, $s2, $zero
/* 0ED780 802C8DD0 0C0B210B */  jal   get_float_variable
/* 0ED784 802C8DD4 0040882D */   daddu $s1, $v0, $zero
/* 0ED788 802C8DD8 8E050000 */  lw    $a1, ($s0)
/* 0ED78C 802C8DDC 26100004 */  addiu $s0, $s0, 4
/* 0ED790 802C8DE0 0240202D */  daddu $a0, $s2, $zero
/* 0ED794 802C8DE4 0C0B210B */  jal   get_float_variable
/* 0ED798 802C8DE8 46000606 */   mov.s $f24, $f0
/* 0ED79C 802C8DEC 0240202D */  daddu $a0, $s2, $zero
/* 0ED7A0 802C8DF0 8E050000 */  lw    $a1, ($s0)
/* 0ED7A4 802C8DF4 0C0B210B */  jal   get_float_variable
/* 0ED7A8 802C8DF8 46000586 */   mov.s $f22, $f0
/* 0ED7AC 802C8DFC 0220202D */  daddu $a0, $s1, $zero
/* 0ED7B0 802C8E00 0C046B4C */  jal   get_model_from_list_index
/* 0ED7B4 802C8E04 46000506 */   mov.s $f20, $f0
/* 0ED7B8 802C8E08 0040802D */  daddu $s0, $v0, $zero
/* 0ED7BC 802C8E0C 96020000 */  lhu   $v0, ($s0)
/* 0ED7C0 802C8E10 30420400 */  andi  $v0, $v0, 0x400
/* 0ED7C4 802C8E14 1440000A */  bnez  $v0, .L802C8E40
/* 0ED7C8 802C8E18 00000000 */   nop   
/* 0ED7CC 802C8E1C 4405C000 */  mfc1  $a1, $f24
/* 0ED7D0 802C8E20 4406B000 */  mfc1  $a2, $f22
/* 0ED7D4 802C8E24 4407A000 */  mfc1  $a3, $f20
/* 0ED7D8 802C8E28 0C019DF0 */  jal   guScaleF
/* 0ED7DC 802C8E2C 26040058 */   addiu $a0, $s0, 0x58
/* 0ED7E0 802C8E30 96020000 */  lhu   $v0, ($s0)
/* 0ED7E4 802C8E34 34421400 */  ori   $v0, $v0, 0x1400
/* 0ED7E8 802C8E38 080B2399 */  j     func_802C8E64
/* 0ED7EC 802C8E3C A6020000 */   sh    $v0, ($s0)

.L802C8E40:
/* 0ED7F0 802C8E40 4405C000 */  mfc1  $a1, $f24
/* 0ED7F4 802C8E44 4406B000 */  mfc1  $a2, $f22
/* 0ED7F8 802C8E48 4407A000 */  mfc1  $a3, $f20
/* 0ED7FC 802C8E4C 0C019DF0 */  jal   guScaleF
/* 0ED800 802C8E50 27A40010 */   addiu $a0, $sp, 0x10
/* 0ED804 802C8E54 27A40010 */  addiu $a0, $sp, 0x10
/* 0ED808 802C8E58 26050058 */  addiu $a1, $s0, 0x58
/* 0ED80C 802C8E5C 0C019D80 */  jal   guMtxCatF
/* 0ED810 802C8E60 00A0302D */   daddu $a2, $a1, $zero
func_802C8E64:
/* 0ED814 802C8E64 8FBF005C */  lw    $ra, 0x5c($sp)
/* 0ED818 802C8E68 8FB20058 */  lw    $s2, 0x58($sp)
/* 0ED81C 802C8E6C 8FB10054 */  lw    $s1, 0x54($sp)
/* 0ED820 802C8E70 8FB00050 */  lw    $s0, 0x50($sp)
/* 0ED824 802C8E74 D7B80070 */  ldc1  $f24, 0x70($sp)
/* 0ED828 802C8E78 D7B60068 */  ldc1  $f22, 0x68($sp)
/* 0ED82C 802C8E7C D7B40060 */  ldc1  $f20, 0x60($sp)
/* 0ED830 802C8E80 24020002 */  addiu $v0, $zero, 2
/* 0ED834 802C8E84 03E00008 */  jr    $ra
/* 0ED838 802C8E88 27BD0078 */   addiu $sp, $sp, 0x78

GetModelIndex:
/* 0ED83C 802C8E8C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0ED840 802C8E90 AFB10014 */  sw    $s1, 0x14($sp)
/* 0ED844 802C8E94 0080882D */  daddu $s1, $a0, $zero
/* 0ED848 802C8E98 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0ED84C 802C8E9C AFB00010 */  sw    $s0, 0x10($sp)
/* 0ED850 802C8EA0 8E30000C */  lw    $s0, 0xc($s1)
/* 0ED854 802C8EA4 8E050000 */  lw    $a1, ($s0)
/* 0ED858 802C8EA8 0C0B1EAF */  jal   get_variable
/* 0ED85C 802C8EAC 26100004 */   addiu $s0, $s0, 4
/* 0ED860 802C8EB0 8E100000 */  lw    $s0, ($s0)
/* 0ED864 802C8EB4 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0ED868 802C8EB8 0040202D */   daddu $a0, $v0, $zero
/* 0ED86C 802C8EBC 0220202D */  daddu $a0, $s1, $zero
/* 0ED870 802C8EC0 0040302D */  daddu $a2, $v0, $zero
/* 0ED874 802C8EC4 0C0B2026 */  jal   set_variable
/* 0ED878 802C8EC8 0200282D */   daddu $a1, $s0, $zero
/* 0ED87C 802C8ECC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0ED880 802C8ED0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0ED884 802C8ED4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0ED888 802C8ED8 24020002 */  addiu $v0, $zero, 2
/* 0ED88C 802C8EDC 03E00008 */  jr    $ra
/* 0ED890 802C8EE0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0ED894 802C8EE4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ED898 802C8EE8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0ED89C 802C8EEC 8C82000C */  lw    $v0, 0xc($a0)
/* 0ED8A0 802C8EF0 0C0B1EAF */  jal   get_variable
/* 0ED8A4 802C8EF4 8C450000 */   lw    $a1, ($v0)
/* 0ED8A8 802C8EF8 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0ED8AC 802C8EFC 0040202D */   daddu $a0, $v0, $zero
/* 0ED8B0 802C8F00 0C046B4C */  jal   get_model_from_list_index
/* 0ED8B4 802C8F04 0040202D */   daddu $a0, $v0, $zero
/* 0ED8B8 802C8F08 0040202D */  daddu $a0, $v0, $zero
/* 0ED8BC 802C8F0C 94830000 */  lhu   $v1, ($a0)
/* 0ED8C0 802C8F10 3063FBFF */  andi  $v1, $v1, 0xfbff
/* 0ED8C4 802C8F14 A4830000 */  sh    $v1, ($a0)
/* 0ED8C8 802C8F18 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0ED8CC 802C8F1C 24020002 */  addiu $v0, $zero, 2
/* 0ED8D0 802C8F20 03E00008 */  jr    $ra
/* 0ED8D4 802C8F24 27BD0018 */   addiu $sp, $sp, 0x18

CloneModel:
/* 0ED8D8 802C8F28 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0ED8DC 802C8F2C AFB10014 */  sw    $s1, 0x14($sp)
/* 0ED8E0 802C8F30 0080882D */  daddu $s1, $a0, $zero
/* 0ED8E4 802C8F34 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0ED8E8 802C8F38 AFB00010 */  sw    $s0, 0x10($sp)
/* 0ED8EC 802C8F3C 8E30000C */  lw    $s0, 0xc($s1)
/* 0ED8F0 802C8F40 8E050000 */  lw    $a1, ($s0)
/* 0ED8F4 802C8F44 0C0B1EAF */  jal   get_variable
/* 0ED8F8 802C8F48 26100004 */   addiu $s0, $s0, 4
/* 0ED8FC 802C8F4C 0220202D */  daddu $a0, $s1, $zero
/* 0ED900 802C8F50 8E050000 */  lw    $a1, ($s0)
/* 0ED904 802C8F54 0C0B1EAF */  jal   get_variable
/* 0ED908 802C8F58 0040802D */   daddu $s0, $v0, $zero
/* 0ED90C 802C8F5C 3204FFFF */  andi  $a0, $s0, 0xffff
/* 0ED910 802C8F60 0C046DBC */  jal   clone_model
/* 0ED914 802C8F64 3045FFFF */   andi  $a1, $v0, 0xffff
/* 0ED918 802C8F68 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0ED91C 802C8F6C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0ED920 802C8F70 8FB00010 */  lw    $s0, 0x10($sp)
/* 0ED924 802C8F74 24020002 */  addiu $v0, $zero, 2
/* 0ED928 802C8F78 03E00008 */  jr    $ra
/* 0ED92C 802C8F7C 27BD0020 */   addiu $sp, $sp, 0x20

GetModelCenter:
/* 0ED930 802C8F80 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0ED934 802C8F84 AFB00038 */  sw    $s0, 0x38($sp)
/* 0ED938 802C8F88 0080802D */  daddu $s0, $a0, $zero
/* 0ED93C 802C8F8C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0ED940 802C8F90 8E02000C */  lw    $v0, 0xc($s0)
/* 0ED944 802C8F94 0C0B1EAF */  jal   get_variable
/* 0ED948 802C8F98 8C450000 */   lw    $a1, ($v0)
/* 0ED94C 802C8F9C 3044FFFF */  andi  $a0, $v0, 0xffff
/* 0ED950 802C8FA0 27A50020 */  addiu $a1, $sp, 0x20
/* 0ED954 802C8FA4 27A2002C */  addiu $v0, $sp, 0x2c
/* 0ED958 802C8FA8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0ED95C 802C8FAC 27A20030 */  addiu $v0, $sp, 0x30
/* 0ED960 802C8FB0 AFA20014 */  sw    $v0, 0x14($sp)
/* 0ED964 802C8FB4 27A20034 */  addiu $v0, $sp, 0x34
/* 0ED968 802C8FB8 27A60024 */  addiu $a2, $sp, 0x24
/* 0ED96C 802C8FBC 27A70028 */  addiu $a3, $sp, 0x28
/* 0ED970 802C8FC0 0C046C3B */  jal   get_model_center_and_size
/* 0ED974 802C8FC4 AFA20018 */   sw    $v0, 0x18($sp)
/* 0ED978 802C8FC8 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 0ED97C 802C8FCC 4600010D */  trunc.w.s $f4, $f0
/* 0ED980 802C8FD0 E6040084 */  swc1  $f4, 0x84($s0)
/* 0ED984 802C8FD4 C7A00024 */  lwc1  $f0, 0x24($sp)
/* 0ED988 802C8FD8 C7A20028 */  lwc1  $f2, 0x28($sp)
/* 0ED98C 802C8FDC 4600010D */  trunc.w.s $f4, $f0
/* 0ED990 802C8FE0 E6040088 */  swc1  $f4, 0x88($s0)
/* 0ED994 802C8FE4 4600110D */  trunc.w.s $f4, $f2
/* 0ED998 802C8FE8 E604008C */  swc1  $f4, 0x8c($s0)
/* 0ED99C 802C8FEC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0ED9A0 802C8FF0 8FB00038 */  lw    $s0, 0x38($sp)
/* 0ED9A4 802C8FF4 24020002 */  addiu $v0, $zero, 2
/* 0ED9A8 802C8FF8 03E00008 */  jr    $ra
/* 0ED9AC 802C8FFC 27BD0040 */   addiu $sp, $sp, 0x40

SetTexPanner:
/* 0ED9B0 802C9000 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0ED9B4 802C9004 AFB10014 */  sw    $s1, 0x14($sp)
/* 0ED9B8 802C9008 0080882D */  daddu $s1, $a0, $zero
/* 0ED9BC 802C900C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0ED9C0 802C9010 AFB00010 */  sw    $s0, 0x10($sp)
/* 0ED9C4 802C9014 8E30000C */  lw    $s0, 0xc($s1)
/* 0ED9C8 802C9018 8E050000 */  lw    $a1, ($s0)
/* 0ED9CC 802C901C 0C0B1EAF */  jal   get_variable
/* 0ED9D0 802C9020 26100004 */   addiu $s0, $s0, 4
/* 0ED9D4 802C9024 0220202D */  daddu $a0, $s1, $zero
/* 0ED9D8 802C9028 8E050000 */  lw    $a1, ($s0)
/* 0ED9DC 802C902C 0C0B1EAF */  jal   get_variable
/* 0ED9E0 802C9030 0040802D */   daddu $s0, $v0, $zero
/* 0ED9E4 802C9034 0200202D */  daddu $a0, $s0, $zero
/* 0ED9E8 802C9038 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0ED9EC 802C903C 0040882D */   daddu $s1, $v0, $zero
/* 0ED9F0 802C9040 0C046B4C */  jal   get_model_from_list_index
/* 0ED9F4 802C9044 0040202D */   daddu $a0, $v0, $zero
/* 0ED9F8 802C9048 0040802D */  daddu $s0, $v0, $zero
/* 0ED9FC 802C904C 0200202D */  daddu $a0, $s0, $zero
/* 0EDA00 802C9050 0C046F05 */  jal   set_tex_panner
/* 0EDA04 802C9054 0220282D */   daddu $a1, $s1, $zero
/* 0EDA08 802C9058 96030000 */  lhu   $v1, ($s0)
/* 0EDA0C 802C905C 34630800 */  ori   $v1, $v1, 0x800
/* 0EDA10 802C9060 A6030000 */  sh    $v1, ($s0)
/* 0EDA14 802C9064 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDA18 802C9068 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDA1C 802C906C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDA20 802C9070 24020002 */  addiu $v0, $zero, 2
/* 0EDA24 802C9074 03E00008 */  jr    $ra
/* 0EDA28 802C9078 27BD0020 */   addiu $sp, $sp, 0x20

SetModelFlag10:
/* 0EDA2C 802C907C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDA30 802C9080 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDA34 802C9084 0080882D */  daddu $s1, $a0, $zero
/* 0EDA38 802C9088 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EDA3C 802C908C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDA40 802C9090 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDA44 802C9094 8E050000 */  lw    $a1, ($s0)
/* 0EDA48 802C9098 0C0B1EAF */  jal   get_variable
/* 0EDA4C 802C909C 26100004 */   addiu $s0, $s0, 4
/* 0EDA50 802C90A0 0220202D */  daddu $a0, $s1, $zero
/* 0EDA54 802C90A4 8E050000 */  lw    $a1, ($s0)
/* 0EDA58 802C90A8 0C0B1EAF */  jal   get_variable
/* 0EDA5C 802C90AC 0040802D */   daddu $s0, $v0, $zero
/* 0EDA60 802C90B0 0200202D */  daddu $a0, $s0, $zero
/* 0EDA64 802C90B4 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EDA68 802C90B8 0040802D */   daddu $s0, $v0, $zero
/* 0EDA6C 802C90BC 0C046B4C */  jal   get_model_from_list_index
/* 0EDA70 802C90C0 0040202D */   daddu $a0, $v0, $zero
/* 0EDA74 802C90C4 12000004 */  beqz  $s0, .L802C90D8
/* 0EDA78 802C90C8 0040182D */   daddu $v1, $v0, $zero
/* 0EDA7C 802C90CC 94620000 */  lhu   $v0, ($v1)
/* 0EDA80 802C90D0 080B2438 */  j     func_802C90E0
/* 0EDA84 802C90D4 34420010 */   ori   $v0, $v0, 0x10

.L802C90D8:
/* 0EDA88 802C90D8 94620000 */  lhu   $v0, ($v1)
/* 0EDA8C 802C90DC 3042FFEF */  andi  $v0, $v0, 0xffef
func_802C90E0:
/* 0EDA90 802C90E0 A4620000 */  sh    $v0, ($v1)
/* 0EDA94 802C90E4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDA98 802C90E8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDA9C 802C90EC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDAA0 802C90F0 24020002 */  addiu $v0, $zero, 2
/* 0EDAA4 802C90F4 03E00008 */  jr    $ra
/* 0EDAA8 802C90F8 27BD0020 */   addiu $sp, $sp, 0x20

/* 0EDAAC 802C90FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDAB0 802C9100 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EDAB4 802C9104 0080902D */  daddu $s2, $a0, $zero
/* 0EDAB8 802C9108 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EDABC 802C910C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDAC0 802C9110 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDAC4 802C9114 8E50000C */  lw    $s0, 0xc($s2)
/* 0EDAC8 802C9118 8E050000 */  lw    $a1, ($s0)
/* 0EDACC 802C911C 0C0B1EAF */  jal   get_variable
/* 0EDAD0 802C9120 26100004 */   addiu $s0, $s0, 4
/* 0EDAD4 802C9124 8E050000 */  lw    $a1, ($s0)
/* 0EDAD8 802C9128 26100004 */  addiu $s0, $s0, 4
/* 0EDADC 802C912C 0240202D */  daddu $a0, $s2, $zero
/* 0EDAE0 802C9130 0C0B1EAF */  jal   get_variable
/* 0EDAE4 802C9134 0040882D */   daddu $s1, $v0, $zero
/* 0EDAE8 802C9138 0240202D */  daddu $a0, $s2, $zero
/* 0EDAEC 802C913C 8E050000 */  lw    $a1, ($s0)
/* 0EDAF0 802C9140 0C0B1EAF */  jal   get_variable
/* 0EDAF4 802C9144 0040902D */   daddu $s2, $v0, $zero
/* 0EDAF8 802C9148 0220202D */  daddu $a0, $s1, $zero
/* 0EDAFC 802C914C 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EDB00 802C9150 0040802D */   daddu $s0, $v0, $zero
/* 0EDB04 802C9154 0C046B4C */  jal   get_model_from_list_index
/* 0EDB08 802C9158 0040202D */   daddu $a0, $v0, $zero
/* 0EDB0C 802C915C 0040882D */  daddu $s1, $v0, $zero
/* 0EDB10 802C9160 0220202D */  daddu $a0, $s1, $zero
/* 0EDB14 802C9164 0240282D */  daddu $a1, $s2, $zero
/* 0EDB18 802C9168 0C046F1F */  jal   func_8011BC7C
/* 0EDB1C 802C916C 0200302D */   daddu $a2, $s0, $zero
/* 0EDB20 802C9170 2402FFFF */  addiu $v0, $zero, -1
/* 0EDB24 802C9174 12420004 */  beq   $s2, $v0, .L802C9188
/* 0EDB28 802C9178 00000000 */   nop   
/* 0EDB2C 802C917C 96220000 */  lhu   $v0, ($s1)
/* 0EDB30 802C9180 34420010 */  ori   $v0, $v0, 0x10
/* 0EDB34 802C9184 A6220000 */  sh    $v0, ($s1)
.L802C9188:
/* 0EDB38 802C9188 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EDB3C 802C918C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EDB40 802C9190 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDB44 802C9194 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDB48 802C9198 24020002 */  addiu $v0, $zero, 2
/* 0EDB4C 802C919C 03E00008 */  jr    $ra
/* 0EDB50 802C91A0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0EDB54 802C91A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDB58 802C91A8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDB5C 802C91AC 0080882D */  daddu $s1, $a0, $zero
/* 0EDB60 802C91B0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EDB64 802C91B4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDB68 802C91B8 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDB6C 802C91BC 8E050000 */  lw    $a1, ($s0)
/* 0EDB70 802C91C0 0C0B1EAF */  jal   get_variable
/* 0EDB74 802C91C4 26100004 */   addiu $s0, $s0, 4
/* 0EDB78 802C91C8 0220202D */  daddu $a0, $s1, $zero
/* 0EDB7C 802C91CC 8E050000 */  lw    $a1, ($s0)
/* 0EDB80 802C91D0 0C0B1EAF */  jal   get_variable
/* 0EDB84 802C91D4 0040802D */   daddu $s0, $v0, $zero
/* 0EDB88 802C91D8 0200202D */  daddu $a0, $s0, $zero
/* 0EDB8C 802C91DC 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EDB90 802C91E0 0040802D */   daddu $s0, $v0, $zero
/* 0EDB94 802C91E4 0C046B4C */  jal   get_model_from_list_index
/* 0EDB98 802C91E8 0040202D */   daddu $a0, $v0, $zero
/* 0EDB9C 802C91EC A05000A9 */  sb    $s0, 0xa9($v0)
/* 0EDBA0 802C91F0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDBA4 802C91F4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDBA8 802C91F8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDBAC 802C91FC 24020002 */  addiu $v0, $zero, 2
/* 0EDBB0 802C9200 03E00008 */  jr    $ra
/* 0EDBB4 802C9204 27BD0020 */   addiu $sp, $sp, 0x20

EnableTexPanning:
/* 0EDBB8 802C9208 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDBBC 802C920C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDBC0 802C9210 0080882D */  daddu $s1, $a0, $zero
/* 0EDBC4 802C9214 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EDBC8 802C9218 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDBCC 802C921C 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDBD0 802C9220 8E050000 */  lw    $a1, ($s0)
/* 0EDBD4 802C9224 0C0B1EAF */  jal   get_variable
/* 0EDBD8 802C9228 26100004 */   addiu $s0, $s0, 4
/* 0EDBDC 802C922C 0220202D */  daddu $a0, $s1, $zero
/* 0EDBE0 802C9230 8E050000 */  lw    $a1, ($s0)
/* 0EDBE4 802C9234 0C0B1EAF */  jal   get_variable
/* 0EDBE8 802C9238 0040802D */   daddu $s0, $v0, $zero
/* 0EDBEC 802C923C 0200202D */  daddu $a0, $s0, $zero
/* 0EDBF0 802C9240 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EDBF4 802C9244 0040802D */   daddu $s0, $v0, $zero
/* 0EDBF8 802C9248 0C046B4C */  jal   get_model_from_list_index
/* 0EDBFC 802C924C 0040202D */   daddu $a0, $v0, $zero
/* 0EDC00 802C9250 12000004 */  beqz  $s0, .L802C9264
/* 0EDC04 802C9254 0040182D */   daddu $v1, $v0, $zero
/* 0EDC08 802C9258 94620000 */  lhu   $v0, ($v1)
/* 0EDC0C 802C925C 080B249B */  j     func_802C926C
/* 0EDC10 802C9260 34420800 */   ori   $v0, $v0, 0x800

.L802C9264:
/* 0EDC14 802C9264 94620000 */  lhu   $v0, ($v1)
/* 0EDC18 802C9268 3042F7FF */  andi  $v0, $v0, 0xf7ff
func_802C926C:
/* 0EDC1C 802C926C A4620000 */  sh    $v0, ($v1)
/* 0EDC20 802C9270 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDC24 802C9274 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDC28 802C9278 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDC2C 802C927C 24020002 */  addiu $v0, $zero, 2
/* 0EDC30 802C9280 03E00008 */  jr    $ra
/* 0EDC34 802C9284 27BD0020 */   addiu $sp, $sp, 0x20

EnableModel:
/* 0EDC38 802C9288 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDC3C 802C928C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDC40 802C9290 0080882D */  daddu $s1, $a0, $zero
/* 0EDC44 802C9294 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EDC48 802C9298 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDC4C 802C929C 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDC50 802C92A0 8E050000 */  lw    $a1, ($s0)
/* 0EDC54 802C92A4 0C0B1EAF */  jal   get_variable
/* 0EDC58 802C92A8 26100004 */   addiu $s0, $s0, 4
/* 0EDC5C 802C92AC 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EDC60 802C92B0 0040202D */   daddu $a0, $v0, $zero
/* 0EDC64 802C92B4 0220202D */  daddu $a0, $s1, $zero
/* 0EDC68 802C92B8 8E050000 */  lw    $a1, ($s0)
/* 0EDC6C 802C92BC 0C0B1EAF */  jal   get_variable
/* 0EDC70 802C92C0 0040802D */   daddu $s0, $v0, $zero
/* 0EDC74 802C92C4 0200202D */  daddu $a0, $s0, $zero
/* 0EDC78 802C92C8 0C046B4C */  jal   get_model_from_list_index
/* 0EDC7C 802C92CC 0040802D */   daddu $s0, $v0, $zero
/* 0EDC80 802C92D0 12000004 */  beqz  $s0, .L802C92E4
/* 0EDC84 802C92D4 0040182D */   daddu $v1, $v0, $zero
/* 0EDC88 802C92D8 94620000 */  lhu   $v0, ($v1)
/* 0EDC8C 802C92DC 080B24BB */  j     func_802C92EC
/* 0EDC90 802C92E0 3042FFFD */   andi  $v0, $v0, 0xfffd

.L802C92E4:
/* 0EDC94 802C92E4 94620000 */  lhu   $v0, ($v1)
/* 0EDC98 802C92E8 34420002 */  ori   $v0, $v0, 2
func_802C92EC:
/* 0EDC9C 802C92EC A4620000 */  sh    $v0, ($v1)
/* 0EDCA0 802C92F0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDCA4 802C92F4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDCA8 802C92F8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDCAC 802C92FC 24020002 */  addiu $v0, $zero, 2
/* 0EDCB0 802C9300 03E00008 */  jr    $ra
/* 0EDCB4 802C9304 27BD0020 */   addiu $sp, $sp, 0x20

SetGroupEnabled:
/* 0EDCB8 802C9308 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDCBC 802C930C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDCC0 802C9310 0080882D */  daddu $s1, $a0, $zero
/* 0EDCC4 802C9314 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EDCC8 802C9318 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDCCC 802C931C 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDCD0 802C9320 8E050000 */  lw    $a1, ($s0)
/* 0EDCD4 802C9324 0C0B1EAF */  jal   get_variable
/* 0EDCD8 802C9328 26100004 */   addiu $s0, $s0, 4
/* 0EDCDC 802C932C 0220202D */  daddu $a0, $s1, $zero
/* 0EDCE0 802C9330 8E050000 */  lw    $a1, ($s0)
/* 0EDCE4 802C9334 0C0B1EAF */  jal   get_variable
/* 0EDCE8 802C9338 0040802D */   daddu $s0, $v0, $zero
/* 0EDCEC 802C933C 3204FFFF */  andi  $a0, $s0, 0xffff
/* 0EDCF0 802C9340 24050002 */  addiu $a1, $zero, 2
/* 0EDCF4 802C9344 0C046DF0 */  jal   func_8011B7C0
/* 0EDCF8 802C9348 0040302D */   daddu $a2, $v0, $zero
/* 0EDCFC 802C934C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDD00 802C9350 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDD04 802C9354 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDD08 802C9358 24020002 */  addiu $v0, $zero, 2
/* 0EDD0C 802C935C 03E00008 */  jr    $ra
/* 0EDD10 802C9360 27BD0020 */   addiu $sp, $sp, 0x20

SetTexPanOffset:
/* 0EDD14 802C9364 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EDD18 802C9368 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDD1C 802C936C 0080882D */  daddu $s1, $a0, $zero
/* 0EDD20 802C9370 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0EDD24 802C9374 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0EDD28 802C9378 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EDD2C 802C937C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDD30 802C9380 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDD34 802C9384 8E050000 */  lw    $a1, ($s0)
/* 0EDD38 802C9388 0C0B1EAF */  jal   get_variable
/* 0EDD3C 802C938C 26100004 */   addiu $s0, $s0, 4
/* 0EDD40 802C9390 8E050000 */  lw    $a1, ($s0)
/* 0EDD44 802C9394 26100004 */  addiu $s0, $s0, 4
/* 0EDD48 802C9398 0220202D */  daddu $a0, $s1, $zero
/* 0EDD4C 802C939C 0C0B1EAF */  jal   get_variable
/* 0EDD50 802C93A0 0040982D */   daddu $s3, $v0, $zero
/* 0EDD54 802C93A4 8E050000 */  lw    $a1, ($s0)
/* 0EDD58 802C93A8 26100004 */  addiu $s0, $s0, 4
/* 0EDD5C 802C93AC 0220202D */  daddu $a0, $s1, $zero
/* 0EDD60 802C93B0 0C0B1EAF */  jal   get_variable
/* 0EDD64 802C93B4 0040902D */   daddu $s2, $v0, $zero
/* 0EDD68 802C93B8 0220202D */  daddu $a0, $s1, $zero
/* 0EDD6C 802C93BC 8E050000 */  lw    $a1, ($s0)
/* 0EDD70 802C93C0 0C0B1EAF */  jal   get_variable
/* 0EDD74 802C93C4 0040802D */   daddu $s0, $v0, $zero
/* 0EDD78 802C93C8 16400009 */  bnez  $s2, .L802C93F0
/* 0EDD7C 802C93CC 0040882D */   daddu $s1, $v0, $zero
/* 0EDD80 802C93D0 0260202D */  daddu $a0, $s3, $zero
/* 0EDD84 802C93D4 0C046F07 */  jal   set_main_pan_u
/* 0EDD88 802C93D8 0200282D */   daddu $a1, $s0, $zero
/* 0EDD8C 802C93DC 0260202D */  daddu $a0, $s3, $zero
/* 0EDD90 802C93E0 0C046F0D */  jal   set_main_pan_v
/* 0EDD94 802C93E4 0220282D */   daddu $a1, $s1, $zero
/* 0EDD98 802C93E8 080B2502 */  j     func_802C9408
/* 0EDD9C 802C93EC 00000000 */   nop   

.L802C93F0:
/* 0EDDA0 802C93F0 0260202D */  daddu $a0, $s3, $zero
/* 0EDDA4 802C93F4 0C046F13 */  jal   set_aux_pan_u
/* 0EDDA8 802C93F8 0200282D */   daddu $a1, $s0, $zero
/* 0EDDAC 802C93FC 0260202D */  daddu $a0, $s3, $zero
/* 0EDDB0 802C9400 0C046F19 */  jal   set_aux_pan_v
/* 0EDDB4 802C9404 0220282D */   daddu $a1, $s1, $zero
func_802C9408:
/* 0EDDB8 802C9408 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0EDDBC 802C940C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0EDDC0 802C9410 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EDDC4 802C9414 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDDC8 802C9418 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDDCC 802C941C 24020002 */  addiu $v0, $zero, 2
/* 0EDDD0 802C9420 03E00008 */  jr    $ra
/* 0EDDD4 802C9424 27BD0028 */   addiu $sp, $sp, 0x28

/* 0EDDD8 802C9428 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDDDC 802C942C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDDE0 802C9430 0080882D */  daddu $s1, $a0, $zero
/* 0EDDE4 802C9434 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EDDE8 802C9438 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EDDEC 802C943C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDDF0 802C9440 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDDF4 802C9444 8E050000 */  lw    $a1, ($s0)
/* 0EDDF8 802C9448 0C0B1EAF */  jal   get_variable
/* 0EDDFC 802C944C 26100004 */   addiu $s0, $s0, 4
/* 0EDE00 802C9450 8E050000 */  lw    $a1, ($s0)
/* 0EDE04 802C9454 26100004 */  addiu $s0, $s0, 4
/* 0EDE08 802C9458 0220202D */  daddu $a0, $s1, $zero
/* 0EDE0C 802C945C 0C0B1EAF */  jal   get_variable
/* 0EDE10 802C9460 0040902D */   daddu $s2, $v0, $zero
/* 0EDE14 802C9464 0220202D */  daddu $a0, $s1, $zero
/* 0EDE18 802C9468 8E050000 */  lw    $a1, ($s0)
/* 0EDE1C 802C946C 0C0B1EAF */  jal   get_variable
/* 0EDE20 802C9470 0040802D */   daddu $s0, $v0, $zero
/* 0EDE24 802C9474 0240202D */  daddu $a0, $s2, $zero
/* 0EDE28 802C9478 0200282D */  daddu $a1, $s0, $zero
/* 0EDE2C 802C947C 0C046F2D */  jal   func_8011BCB4
/* 0EDE30 802C9480 0040302D */   daddu $a2, $v0, $zero
/* 0EDE34 802C9484 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EDE38 802C9488 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EDE3C 802C948C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDE40 802C9490 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDE44 802C9494 24020002 */  addiu $v0, $zero, 2
/* 0EDE48 802C9498 03E00008 */  jr    $ra
/* 0EDE4C 802C949C 27BD0020 */   addiu $sp, $sp, 0x20

/* 0EDE50 802C94A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDE54 802C94A4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDE58 802C94A8 0080882D */  daddu $s1, $a0, $zero
/* 0EDE5C 802C94AC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EDE60 802C94B0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EDE64 802C94B4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDE68 802C94B8 8E30000C */  lw    $s0, 0xc($s1)
/* 0EDE6C 802C94BC 8E050000 */  lw    $a1, ($s0)
/* 0EDE70 802C94C0 0C0B1EAF */  jal   get_variable
/* 0EDE74 802C94C4 26100004 */   addiu $s0, $s0, 4
/* 0EDE78 802C94C8 8E050000 */  lw    $a1, ($s0)
/* 0EDE7C 802C94CC 26100004 */  addiu $s0, $s0, 4
/* 0EDE80 802C94D0 0220202D */  daddu $a0, $s1, $zero
/* 0EDE84 802C94D4 0C0B1EAF */  jal   get_variable
/* 0EDE88 802C94D8 0040902D */   daddu $s2, $v0, $zero
/* 0EDE8C 802C94DC 0220202D */  daddu $a0, $s1, $zero
/* 0EDE90 802C94E0 8E050000 */  lw    $a1, ($s0)
/* 0EDE94 802C94E4 0C0B1EAF */  jal   get_variable
/* 0EDE98 802C94E8 0040802D */   daddu $s0, $v0, $zero
/* 0EDE9C 802C94EC 0240202D */  daddu $a0, $s2, $zero
/* 0EDEA0 802C94F0 0200282D */  daddu $a1, $s0, $zero
/* 0EDEA4 802C94F4 0C046F34 */  jal   func_8011BCD0
/* 0EDEA8 802C94F8 0040302D */   daddu $a2, $v0, $zero
/* 0EDEAC 802C94FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EDEB0 802C9500 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EDEB4 802C9504 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDEB8 802C9508 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDEBC 802C950C 24020002 */  addiu $v0, $zero, 2
/* 0EDEC0 802C9510 03E00008 */  jr    $ra
/* 0EDEC4 802C9514 27BD0020 */   addiu $sp, $sp, 0x20

SetModelFlags:
/* 0EDEC8 802C9518 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EDECC 802C951C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EDED0 802C9520 0080802D */  daddu $s0, $a0, $zero
/* 0EDED4 802C9524 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EDED8 802C9528 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EDEDC 802C952C 8E11000C */  lw    $s1, 0xc($s0)
/* 0EDEE0 802C9530 8E250000 */  lw    $a1, ($s1)
/* 0EDEE4 802C9534 0C0B1EAF */  jal   get_variable
/* 0EDEE8 802C9538 26310004 */   addiu $s1, $s1, 4
/* 0EDEEC 802C953C 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EDEF0 802C9540 0040202D */   daddu $a0, $v0, $zero
/* 0EDEF4 802C9544 0200202D */  daddu $a0, $s0, $zero
/* 0EDEF8 802C9548 8E250004 */  lw    $a1, 4($s1)
/* 0EDEFC 802C954C 8E310000 */  lw    $s1, ($s1)
/* 0EDF00 802C9550 0C0B1EAF */  jal   get_variable
/* 0EDF04 802C9554 0040802D */   daddu $s0, $v0, $zero
/* 0EDF08 802C9558 0200202D */  daddu $a0, $s0, $zero
/* 0EDF0C 802C955C 0C046B4C */  jal   get_model_from_list_index
/* 0EDF10 802C9560 0040802D */   daddu $s0, $v0, $zero
/* 0EDF14 802C9564 12000004 */  beqz  $s0, .L802C9578
/* 0EDF18 802C9568 0040202D */   daddu $a0, $v0, $zero
/* 0EDF1C 802C956C 94820000 */  lhu   $v0, ($a0)
/* 0EDF20 802C9570 080B2561 */  j     func_802C9584
/* 0EDF24 802C9574 00511025 */   or    $v0, $v0, $s1

.L802C9578:
/* 0EDF28 802C9578 94820000 */  lhu   $v0, ($a0)
/* 0EDF2C 802C957C 00111827 */  nor   $v1, $zero, $s1
/* 0EDF30 802C9580 00431024 */  and   $v0, $v0, $v1
func_802C9584:
/* 0EDF34 802C9584 A4820000 */  sh    $v0, ($a0)
/* 0EDF38 802C9588 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EDF3C 802C958C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EDF40 802C9590 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EDF44 802C9594 24020002 */  addiu $v0, $zero, 2
/* 0EDF48 802C9598 03E00008 */  jr    $ra
/* 0EDF4C 802C959C 27BD0020 */   addiu $sp, $sp, 0x20

func_802C95A0:
/* 0EDF50 802C95A0 27BDFE70 */  addiu $sp, $sp, -0x190
/* 0EDF54 802C95A4 AFB40188 */  sw    $s4, 0x188($sp)
/* 0EDF58 802C95A8 0080A02D */  daddu $s4, $a0, $zero
/* 0EDF5C 802C95AC AFB30184 */  sw    $s3, 0x184($sp)
/* 0EDF60 802C95B0 00A0982D */  daddu $s3, $a1, $zero
/* 0EDF64 802C95B4 AFBF018C */  sw    $ra, 0x18c($sp)
/* 0EDF68 802C95B8 AFB20180 */  sw    $s2, 0x180($sp)
/* 0EDF6C 802C95BC AFB1017C */  sw    $s1, 0x17c($sp)
/* 0EDF70 802C95C0 AFB00178 */  sw    $s0, 0x178($sp)
/* 0EDF74 802C95C4 8E62000C */  lw    $v0, 0xc($s3)
/* 0EDF78 802C95C8 2411FFFF */  addiu $s1, $zero, -1
/* 0EDF7C 802C95CC 8C450000 */  lw    $a1, ($v0)
/* 0EDF80 802C95D0 0C0B1EAF */  jal   get_variable
/* 0EDF84 802C95D4 0260202D */   daddu $a0, $s3, $zero
/* 0EDF88 802C95D8 0040282D */  daddu $a1, $v0, $zero
/* 0EDF8C 802C95DC 3C06800A */  lui   $a2, 0x800a
/* 0EDF90 802C95E0 8CC6A5F4 */  lw    $a2, -0x5a0c($a2)
/* 0EDF94 802C95E4 00051080 */  sll   $v0, $a1, 2
/* 0EDF98 802C95E8 00462021 */  addu  $a0, $v0, $a2
/* 0EDF9C 802C95EC 90830000 */  lbu   $v1, ($a0)
/* 0EDFA0 802C95F0 286200FF */  slti  $v0, $v1, 0xff
/* 0EDFA4 802C95F4 10400004 */  beqz  $v0, .L802C9608
/* 0EDFA8 802C95F8 0220902D */   daddu $s2, $s1, $zero
/* 0EDFAC 802C95FC 0060902D */  daddu $s2, $v1, $zero
/* 0EDFB0 802C9600 080B2597 */  j     func_802C965C
/* 0EDFB4 802C9604 0240882D */   daddu $s1, $s2, $zero

.L802C9608:
/* 0EDFB8 802C9608 24B0FFFF */  addiu $s0, $a1, -1
/* 0EDFBC 802C960C 90850001 */  lbu   $a1, 1($a0)
/* 0EDFC0 802C9610 06000013 */  bltz  $s0, .L802C9660
/* 0EDFC4 802C9614 27A20010 */   addiu $v0, $sp, 0x10
/* 0EDFC8 802C9618 2407FFFF */  addiu $a3, $zero, -1
/* 0EDFCC 802C961C 00101080 */  sll   $v0, $s0, 2
/* 0EDFD0 802C9620 00462021 */  addu  $a0, $v0, $a2
.L802C9624:
/* 0EDFD4 802C9624 90820001 */  lbu   $v0, 1($a0)
/* 0EDFD8 802C9628 00A2102A */  slt   $v0, $a1, $v0
/* 0EDFDC 802C962C 1040000C */  beqz  $v0, .L802C9660
/* 0EDFE0 802C9630 27A20010 */   addiu $v0, $sp, 0x10
/* 0EDFE4 802C9634 90830000 */  lbu   $v1, ($a0)
/* 0EDFE8 802C9638 286200FF */  slti  $v0, $v1, 0xff
/* 0EDFEC 802C963C 50400005 */  beql  $v0, $zero, .L802C9654
/* 0EDFF0 802C9640 2610FFFF */   addiu $s0, $s0, -1
/* 0EDFF4 802C9644 52470001 */  beql  $s2, $a3, .L802C964C
/* 0EDFF8 802C9648 0060902D */   daddu $s2, $v1, $zero
.L802C964C:
/* 0EDFFC 802C964C 0060882D */  daddu $s1, $v1, $zero
/* 0EE000 802C9650 2610FFFF */  addiu $s0, $s0, -1
.L802C9654:
/* 0EE004 802C9654 0601FFF3 */  bgez  $s0, .L802C9624
/* 0EE008 802C9658 2484FFFC */   addiu $a0, $a0, -4
func_802C965C:
/* 0EE00C 802C965C 27A20010 */  addiu $v0, $sp, 0x10
.L802C9660:
/* 0EE010 802C9660 0260202D */  daddu $a0, $s3, $zero
/* 0EE014 802C9664 24830160 */  addiu $v1, $a0, 0x160
.L802C9668:
/* 0EE018 802C9668 8C880000 */  lw    $t0, ($a0)
/* 0EE01C 802C966C 8C890004 */  lw    $t1, 4($a0)
/* 0EE020 802C9670 8C8A0008 */  lw    $t2, 8($a0)
/* 0EE024 802C9674 8C8B000C */  lw    $t3, 0xc($a0)
/* 0EE028 802C9678 AC480000 */  sw    $t0, ($v0)
/* 0EE02C 802C967C AC490004 */  sw    $t1, 4($v0)
/* 0EE030 802C9680 AC4A0008 */  sw    $t2, 8($v0)
/* 0EE034 802C9684 AC4B000C */  sw    $t3, 0xc($v0)
/* 0EE038 802C9688 24840010 */  addiu $a0, $a0, 0x10
/* 0EE03C 802C968C 1483FFF6 */  bne   $a0, $v1, .L802C9668
/* 0EE040 802C9690 24420010 */   addiu $v0, $v0, 0x10
/* 0EE044 802C9694 0220802D */  daddu $s0, $s1, $zero
/* 0EE048 802C9698 8C880000 */  lw    $t0, ($a0)
/* 0EE04C 802C969C 8C890004 */  lw    $t1, 4($a0)
/* 0EE050 802C96A0 AC480000 */  sw    $t0, ($v0)
/* 0EE054 802C96A4 AC490004 */  sw    $t1, 4($v0)
/* 0EE058 802C96A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0EE05C 802C96AC 0250102A */  slt   $v0, $s2, $s0
/* 0EE060 802C96B0 8E330000 */  lw    $s3, ($s1)
/* 0EE064 802C96B4 54400011 */  bnezl $v0, .L802C96FC
/* 0EE068 802C96B8 AE330000 */   sw    $s3, ($s1)
/* 0EE06C 802C96BC 27A40010 */  addiu $a0, $sp, 0x10
.L802C96C0:
/* 0EE070 802C96C0 3C038015 */  lui   $v1, 0x8015
/* 0EE074 802C96C4 8C6312CC */  lw    $v1, 0x12cc($v1)
/* 0EE078 802C96C8 00101080 */  sll   $v0, $s0, 2
/* 0EE07C 802C96CC 00431021 */  addu  $v0, $v0, $v1
/* 0EE080 802C96D0 8C420000 */  lw    $v0, ($v0)
/* 0EE084 802C96D4 24050001 */  addiu $a1, $zero, 1
/* 0EE088 802C96D8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0EE08C 802C96DC 94420002 */  lhu   $v0, 2($v0)
/* 0EE090 802C96E0 02058021 */  addu  $s0, $s0, $a1
/* 0EE094 802C96E4 0280F809 */  jalr  $s4
/* 0EE098 802C96E8 AE220000 */  sw    $v0, ($s1)
/* 0EE09C 802C96EC 0250102A */  slt   $v0, $s2, $s0
/* 0EE0A0 802C96F0 1040FFF3 */  beqz  $v0, .L802C96C0
/* 0EE0A4 802C96F4 27A40010 */   addiu $a0, $sp, 0x10
/* 0EE0A8 802C96F8 AE330000 */  sw    $s3, ($s1)
.L802C96FC:
/* 0EE0AC 802C96FC 8FBF018C */  lw    $ra, 0x18c($sp)
/* 0EE0B0 802C9700 8FB40188 */  lw    $s4, 0x188($sp)
/* 0EE0B4 802C9704 8FB30184 */  lw    $s3, 0x184($sp)
/* 0EE0B8 802C9708 8FB20180 */  lw    $s2, 0x180($sp)
/* 0EE0BC 802C970C 8FB1017C */  lw    $s1, 0x17c($sp)
/* 0EE0C0 802C9710 8FB00178 */  lw    $s0, 0x178($sp)
/* 0EE0C4 802C9714 03E00008 */  jr    $ra
/* 0EE0C8 802C9718 27BD0190 */   addiu $sp, $sp, 0x190

/* 0EE0CC 802C971C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EE0D0 802C9720 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EE0D4 802C9724 8C82000C */  lw    $v0, 0xc($a0)
/* 0EE0D8 802C9728 0C0B1EAF */  jal   get_variable
/* 0EE0DC 802C972C 8C450000 */   lw    $a1, ($v0)
/* 0EE0E0 802C9730 0C046CDF */  jal   func_8011B37C
/* 0EE0E4 802C9734 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0EE0E8 802C9738 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EE0EC 802C973C 24020002 */  addiu $v0, $zero, 2
/* 0EE0F0 802C9740 03E00008 */  jr    $ra
/* 0EE0F4 802C9744 27BD0018 */   addiu $sp, $sp, 0x18

/* 0EE0F8 802C9748 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE0FC 802C974C AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE100 802C9750 0080802D */  daddu $s0, $a0, $zero
/* 0EE104 802C9754 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EE108 802C9758 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE10C 802C975C 8E11000C */  lw    $s1, 0xc($s0)
/* 0EE110 802C9760 8E250000 */  lw    $a1, ($s1)
/* 0EE114 802C9764 0C0B1EAF */  jal   get_variable
/* 0EE118 802C9768 26310004 */   addiu $s1, $s1, 4
/* 0EE11C 802C976C 0200202D */  daddu $a0, $s0, $zero
/* 0EE120 802C9770 8E250000 */  lw    $a1, ($s1)
/* 0EE124 802C9774 0C0B1EAF */  jal   get_variable
/* 0EE128 802C9778 0040802D */   daddu $s0, $v0, $zero
/* 0EE12C 802C977C 10400005 */  beqz  $v0, .L802C9794
/* 0EE130 802C9780 00000000 */   nop   
/* 0EE134 802C9784 0C046D74 */  jal   func_8011B5D0
/* 0EE138 802C9788 3204FFFF */   andi  $a0, $s0, 0xffff
/* 0EE13C 802C978C 080B25E7 */  j     func_802C979C
/* 0EE140 802C9790 00000000 */   nop   

.L802C9794:
/* 0EE144 802C9794 0C046D98 */  jal   func_8011B660
/* 0EE148 802C9798 3204FFFF */   andi  $a0, $s0, 0xffff
func_802C979C:
/* 0EE14C 802C979C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EE150 802C97A0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE154 802C97A4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE158 802C97A8 24020002 */  addiu $v0, $zero, 2
/* 0EE15C 802C97AC 03E00008 */  jr    $ra
/* 0EE160 802C97B0 27BD0020 */   addiu $sp, $sp, 0x20

TranslateGroup:
/* 0EE164 802C97B4 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0EE168 802C97B8 AFB20058 */  sw    $s2, 0x58($sp)
/* 0EE16C 802C97BC 0080902D */  daddu $s2, $a0, $zero
/* 0EE170 802C97C0 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0EE174 802C97C4 AFB10054 */  sw    $s1, 0x54($sp)
/* 0EE178 802C97C8 AFB00050 */  sw    $s0, 0x50($sp)
/* 0EE17C 802C97CC F7B80070 */  sdc1  $f24, 0x70($sp)
/* 0EE180 802C97D0 F7B60068 */  sdc1  $f22, 0x68($sp)
/* 0EE184 802C97D4 F7B40060 */  sdc1  $f20, 0x60($sp)
/* 0EE188 802C97D8 8E50000C */  lw    $s0, 0xc($s2)
/* 0EE18C 802C97DC 0C0B1EAF */  jal   get_variable
/* 0EE190 802C97E0 8E050000 */   lw    $a1, ($s0)
/* 0EE194 802C97E4 0C046C24 */  jal   func_8011B090
/* 0EE198 802C97E8 0040202D */   daddu $a0, $v0, $zero
/* 0EE19C 802C97EC 0040882D */  daddu $s1, $v0, $zero
/* 0EE1A0 802C97F0 2402FFFF */  addiu $v0, $zero, -1
/* 0EE1A4 802C97F4 16220007 */  bne   $s1, $v0, .L802C9814
/* 0EE1A8 802C97F8 26100004 */   addiu $s0, $s0, 4
/* 0EE1AC 802C97FC 3C04802D */  lui   $a0, 0x802d
/* 0EE1B0 802C9800 24848B60 */  addiu $a0, $a0, -0x74a0
/* 0EE1B4 802C9804 0C0B2568 */  jal   func_802C95A0
/* 0EE1B8 802C9808 0240282D */   daddu $a1, $s2, $zero
/* 0EE1BC 802C980C 080B262D */  j     func_802C98B4
/* 0EE1C0 802C9810 24020002 */   addiu $v0, $zero, 2

.L802C9814:
/* 0EE1C4 802C9814 8E050000 */  lw    $a1, ($s0)
/* 0EE1C8 802C9818 26100004 */  addiu $s0, $s0, 4
/* 0EE1CC 802C981C 0C0B210B */  jal   get_float_variable
/* 0EE1D0 802C9820 0240202D */   daddu $a0, $s2, $zero
/* 0EE1D4 802C9824 8E050000 */  lw    $a1, ($s0)
/* 0EE1D8 802C9828 26100004 */  addiu $s0, $s0, 4
/* 0EE1DC 802C982C 0240202D */  daddu $a0, $s2, $zero
/* 0EE1E0 802C9830 0C0B210B */  jal   get_float_variable
/* 0EE1E4 802C9834 46000606 */   mov.s $f24, $f0
/* 0EE1E8 802C9838 0240202D */  daddu $a0, $s2, $zero
/* 0EE1EC 802C983C 8E050000 */  lw    $a1, ($s0)
/* 0EE1F0 802C9840 0C0B210B */  jal   get_float_variable
/* 0EE1F4 802C9844 46000586 */   mov.s $f22, $f0
/* 0EE1F8 802C9848 0220202D */  daddu $a0, $s1, $zero
/* 0EE1FC 802C984C 0C046C70 */  jal   func_8011B1C0
/* 0EE200 802C9850 46000506 */   mov.s $f20, $f0
/* 0EE204 802C9854 0040802D */  daddu $s0, $v0, $zero
/* 0EE208 802C9858 96020000 */  lhu   $v0, ($s0)
/* 0EE20C 802C985C 30420400 */  andi  $v0, $v0, 0x400
/* 0EE210 802C9860 1440000A */  bnez  $v0, .L802C988C
/* 0EE214 802C9864 00000000 */   nop   
/* 0EE218 802C9868 4405C000 */  mfc1  $a1, $f24
/* 0EE21C 802C986C 4406B000 */  mfc1  $a2, $f22
/* 0EE220 802C9870 4407A000 */  mfc1  $a3, $f20
/* 0EE224 802C9874 0C019E40 */  jal   guTranslateF
/* 0EE228 802C9878 26040050 */   addiu $a0, $s0, 0x50
/* 0EE22C 802C987C 96020000 */  lhu   $v0, ($s0)
/* 0EE230 802C9880 34421400 */  ori   $v0, $v0, 0x1400
/* 0EE234 802C9884 080B262C */  j     func_802C98B0
/* 0EE238 802C9888 A6020000 */   sh    $v0, ($s0)

.L802C988C:
/* 0EE23C 802C988C 4405C000 */  mfc1  $a1, $f24
/* 0EE240 802C9890 4406B000 */  mfc1  $a2, $f22
/* 0EE244 802C9894 4407A000 */  mfc1  $a3, $f20
/* 0EE248 802C9898 0C019E40 */  jal   guTranslateF
/* 0EE24C 802C989C 27A40010 */   addiu $a0, $sp, 0x10
/* 0EE250 802C98A0 27A40010 */  addiu $a0, $sp, 0x10
/* 0EE254 802C98A4 26050050 */  addiu $a1, $s0, 0x50
/* 0EE258 802C98A8 0C019D80 */  jal   guMtxCatF
/* 0EE25C 802C98AC 00A0302D */   daddu $a2, $a1, $zero
func_802C98B0:
/* 0EE260 802C98B0 24020002 */  addiu $v0, $zero, 2
func_802C98B4:
/* 0EE264 802C98B4 8FBF005C */  lw    $ra, 0x5c($sp)
/* 0EE268 802C98B8 8FB20058 */  lw    $s2, 0x58($sp)
/* 0EE26C 802C98BC 8FB10054 */  lw    $s1, 0x54($sp)
/* 0EE270 802C98C0 8FB00050 */  lw    $s0, 0x50($sp)
/* 0EE274 802C98C4 D7B80070 */  ldc1  $f24, 0x70($sp)
/* 0EE278 802C98C8 D7B60068 */  ldc1  $f22, 0x68($sp)
/* 0EE27C 802C98CC D7B40060 */  ldc1  $f20, 0x60($sp)
/* 0EE280 802C98D0 03E00008 */  jr    $ra
/* 0EE284 802C98D4 27BD0078 */   addiu $sp, $sp, 0x78

RotateGroup:
/* 0EE288 802C98D8 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0EE28C 802C98DC AFB1005C */  sw    $s1, 0x5c($sp)
/* 0EE290 802C98E0 0080882D */  daddu $s1, $a0, $zero
/* 0EE294 802C98E4 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0EE298 802C98E8 AFB20060 */  sw    $s2, 0x60($sp)
/* 0EE29C 802C98EC AFB00058 */  sw    $s0, 0x58($sp)
/* 0EE2A0 802C98F0 F7BA0080 */  sdc1  $f26, 0x80($sp)
/* 0EE2A4 802C98F4 F7B80078 */  sdc1  $f24, 0x78($sp)
/* 0EE2A8 802C98F8 F7B60070 */  sdc1  $f22, 0x70($sp)
/* 0EE2AC 802C98FC F7B40068 */  sdc1  $f20, 0x68($sp)
/* 0EE2B0 802C9900 8E30000C */  lw    $s0, 0xc($s1)
/* 0EE2B4 802C9904 0C0B1EAF */  jal   get_variable
/* 0EE2B8 802C9908 8E050000 */   lw    $a1, ($s0)
/* 0EE2BC 802C990C 0C046C24 */  jal   func_8011B090
/* 0EE2C0 802C9910 0040202D */   daddu $a0, $v0, $zero
/* 0EE2C4 802C9914 0040902D */  daddu $s2, $v0, $zero
/* 0EE2C8 802C9918 2402FFFF */  addiu $v0, $zero, -1
/* 0EE2CC 802C991C 16420007 */  bne   $s2, $v0, .L802C993C
/* 0EE2D0 802C9920 26100004 */   addiu $s0, $s0, 4
/* 0EE2D4 802C9924 3C04802D */  lui   $a0, 0x802d
/* 0EE2D8 802C9928 24848C64 */  addiu $a0, $a0, -0x739c
/* 0EE2DC 802C992C 0C0B2568 */  jal   func_802C95A0
/* 0EE2E0 802C9930 0220282D */   daddu $a1, $s1, $zero
/* 0EE2E4 802C9934 080B267D */  j     func_802C99F4
/* 0EE2E8 802C9938 24020002 */   addiu $v0, $zero, 2

.L802C993C:
/* 0EE2EC 802C993C 8E050000 */  lw    $a1, ($s0)
/* 0EE2F0 802C9940 26100004 */  addiu $s0, $s0, 4
/* 0EE2F4 802C9944 0C0B210B */  jal   get_float_variable
/* 0EE2F8 802C9948 0220202D */   daddu $a0, $s1, $zero
/* 0EE2FC 802C994C 8E050000 */  lw    $a1, ($s0)
/* 0EE300 802C9950 26100004 */  addiu $s0, $s0, 4
/* 0EE304 802C9954 0220202D */  daddu $a0, $s1, $zero
/* 0EE308 802C9958 0C0B210B */  jal   get_float_variable
/* 0EE30C 802C995C 46000686 */   mov.s $f26, $f0
/* 0EE310 802C9960 8E050000 */  lw    $a1, ($s0)
/* 0EE314 802C9964 26100004 */  addiu $s0, $s0, 4
/* 0EE318 802C9968 0220202D */  daddu $a0, $s1, $zero
/* 0EE31C 802C996C 0C0B210B */  jal   get_float_variable
/* 0EE320 802C9970 46000606 */   mov.s $f24, $f0
/* 0EE324 802C9974 0220202D */  daddu $a0, $s1, $zero
/* 0EE328 802C9978 8E050000 */  lw    $a1, ($s0)
/* 0EE32C 802C997C 0C0B210B */  jal   get_float_variable
/* 0EE330 802C9980 46000506 */   mov.s $f20, $f0
/* 0EE334 802C9984 0240202D */  daddu $a0, $s2, $zero
/* 0EE338 802C9988 0C046C70 */  jal   func_8011B1C0
/* 0EE33C 802C998C 46000586 */   mov.s $f22, $f0
/* 0EE340 802C9990 0040802D */  daddu $s0, $v0, $zero
/* 0EE344 802C9994 96020000 */  lhu   $v0, ($s0)
/* 0EE348 802C9998 30420400 */  andi  $v0, $v0, 0x400
/* 0EE34C 802C999C 1440000B */  bnez  $v0, .L802C99CC
/* 0EE350 802C99A0 27A40018 */   addiu $a0, $sp, 0x18
/* 0EE354 802C99A4 4405D000 */  mfc1  $a1, $f26
/* 0EE358 802C99A8 4406C000 */  mfc1  $a2, $f24
/* 0EE35C 802C99AC 4407A000 */  mfc1  $a3, $f20
/* 0EE360 802C99B0 26040050 */  addiu $a0, $s0, 0x50
/* 0EE364 802C99B4 0C019EC8 */  jal   guRotateF
/* 0EE368 802C99B8 E7B60010 */   swc1  $f22, 0x10($sp)
/* 0EE36C 802C99BC 96020000 */  lhu   $v0, ($s0)
/* 0EE370 802C99C0 34421400 */  ori   $v0, $v0, 0x1400
/* 0EE374 802C99C4 080B267C */  j     func_802C99F0
/* 0EE378 802C99C8 A6020000 */   sh    $v0, ($s0)

.L802C99CC:
/* 0EE37C 802C99CC 4405D000 */  mfc1  $a1, $f26
/* 0EE380 802C99D0 4406C000 */  mfc1  $a2, $f24
/* 0EE384 802C99D4 4407A000 */  mfc1  $a3, $f20
/* 0EE388 802C99D8 0C019EC8 */  jal   guRotateF
/* 0EE38C 802C99DC E7B60010 */   swc1  $f22, 0x10($sp)
/* 0EE390 802C99E0 27A40018 */  addiu $a0, $sp, 0x18
/* 0EE394 802C99E4 26050050 */  addiu $a1, $s0, 0x50
/* 0EE398 802C99E8 0C019D80 */  jal   guMtxCatF
/* 0EE39C 802C99EC 00A0302D */   daddu $a2, $a1, $zero
func_802C99F0:
/* 0EE3A0 802C99F0 24020002 */  addiu $v0, $zero, 2
func_802C99F4:
/* 0EE3A4 802C99F4 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0EE3A8 802C99F8 8FB20060 */  lw    $s2, 0x60($sp)
/* 0EE3AC 802C99FC 8FB1005C */  lw    $s1, 0x5c($sp)
/* 0EE3B0 802C9A00 8FB00058 */  lw    $s0, 0x58($sp)
/* 0EE3B4 802C9A04 D7BA0080 */  ldc1  $f26, 0x80($sp)
/* 0EE3B8 802C9A08 D7B80078 */  ldc1  $f24, 0x78($sp)
/* 0EE3BC 802C9A0C D7B60070 */  ldc1  $f22, 0x70($sp)
/* 0EE3C0 802C9A10 D7B40068 */  ldc1  $f20, 0x68($sp)
/* 0EE3C4 802C9A14 03E00008 */  jr    $ra
/* 0EE3C8 802C9A18 27BD0088 */   addiu $sp, $sp, 0x88

ScaleGroup:
/* 0EE3CC 802C9A1C 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0EE3D0 802C9A20 AFB20058 */  sw    $s2, 0x58($sp)
/* 0EE3D4 802C9A24 0080902D */  daddu $s2, $a0, $zero
/* 0EE3D8 802C9A28 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0EE3DC 802C9A2C AFB10054 */  sw    $s1, 0x54($sp)
/* 0EE3E0 802C9A30 AFB00050 */  sw    $s0, 0x50($sp)
/* 0EE3E4 802C9A34 F7B80070 */  sdc1  $f24, 0x70($sp)
/* 0EE3E8 802C9A38 F7B60068 */  sdc1  $f22, 0x68($sp)
/* 0EE3EC 802C9A3C F7B40060 */  sdc1  $f20, 0x60($sp)
/* 0EE3F0 802C9A40 8E50000C */  lw    $s0, 0xc($s2)
/* 0EE3F4 802C9A44 0C0B1EAF */  jal   get_variable
/* 0EE3F8 802C9A48 8E050000 */   lw    $a1, ($s0)
/* 0EE3FC 802C9A4C 0C046C24 */  jal   func_8011B090
/* 0EE400 802C9A50 0040202D */   daddu $a0, $v0, $zero
/* 0EE404 802C9A54 0040882D */  daddu $s1, $v0, $zero
/* 0EE408 802C9A58 2402FFFF */  addiu $v0, $zero, -1
/* 0EE40C 802C9A5C 16220007 */  bne   $s1, $v0, .L802C9A7C
/* 0EE410 802C9A60 26100004 */   addiu $s0, $s0, 4
/* 0EE414 802C9A64 3C04802D */  lui   $a0, 0x802d
/* 0EE418 802C9A68 24848D88 */  addiu $a0, $a0, -0x7278
/* 0EE41C 802C9A6C 0C0B2568 */  jal   func_802C95A0
/* 0EE420 802C9A70 0240282D */   daddu $a1, $s2, $zero
/* 0EE424 802C9A74 080B26C7 */  j     func_802C9B1C
/* 0EE428 802C9A78 24020002 */   addiu $v0, $zero, 2

.L802C9A7C:
/* 0EE42C 802C9A7C 8E050000 */  lw    $a1, ($s0)
/* 0EE430 802C9A80 26100004 */  addiu $s0, $s0, 4
/* 0EE434 802C9A84 0C0B210B */  jal   get_float_variable
/* 0EE438 802C9A88 0240202D */   daddu $a0, $s2, $zero
/* 0EE43C 802C9A8C 8E050000 */  lw    $a1, ($s0)
/* 0EE440 802C9A90 26100004 */  addiu $s0, $s0, 4
/* 0EE444 802C9A94 0240202D */  daddu $a0, $s2, $zero
/* 0EE448 802C9A98 0C0B210B */  jal   get_float_variable
/* 0EE44C 802C9A9C 46000606 */   mov.s $f24, $f0
/* 0EE450 802C9AA0 0240202D */  daddu $a0, $s2, $zero
/* 0EE454 802C9AA4 8E050000 */  lw    $a1, ($s0)
/* 0EE458 802C9AA8 0C0B210B */  jal   get_float_variable
/* 0EE45C 802C9AAC 46000586 */   mov.s $f22, $f0
/* 0EE460 802C9AB0 0220202D */  daddu $a0, $s1, $zero
/* 0EE464 802C9AB4 0C046C70 */  jal   func_8011B1C0
/* 0EE468 802C9AB8 46000506 */   mov.s $f20, $f0
/* 0EE46C 802C9ABC 0040802D */  daddu $s0, $v0, $zero
/* 0EE470 802C9AC0 96020000 */  lhu   $v0, ($s0)
/* 0EE474 802C9AC4 30420400 */  andi  $v0, $v0, 0x400
/* 0EE478 802C9AC8 1440000A */  bnez  $v0, .L802C9AF4
/* 0EE47C 802C9ACC 00000000 */   nop   
/* 0EE480 802C9AD0 4405C000 */  mfc1  $a1, $f24
/* 0EE484 802C9AD4 4406B000 */  mfc1  $a2, $f22
/* 0EE488 802C9AD8 4407A000 */  mfc1  $a3, $f20
/* 0EE48C 802C9ADC 0C019DF0 */  jal   guScaleF
/* 0EE490 802C9AE0 26040050 */   addiu $a0, $s0, 0x50
/* 0EE494 802C9AE4 96020000 */  lhu   $v0, ($s0)
/* 0EE498 802C9AE8 34421400 */  ori   $v0, $v0, 0x1400
/* 0EE49C 802C9AEC 080B26C6 */  j     func_802C9B18
/* 0EE4A0 802C9AF0 A6020000 */   sh    $v0, ($s0)

.L802C9AF4:
/* 0EE4A4 802C9AF4 4405C000 */  mfc1  $a1, $f24
/* 0EE4A8 802C9AF8 4406B000 */  mfc1  $a2, $f22
/* 0EE4AC 802C9AFC 4407A000 */  mfc1  $a3, $f20
/* 0EE4B0 802C9B00 0C019DF0 */  jal   guScaleF
/* 0EE4B4 802C9B04 27A40010 */   addiu $a0, $sp, 0x10
/* 0EE4B8 802C9B08 27A40010 */  addiu $a0, $sp, 0x10
/* 0EE4BC 802C9B0C 26050050 */  addiu $a1, $s0, 0x50
/* 0EE4C0 802C9B10 0C019D80 */  jal   guMtxCatF
/* 0EE4C4 802C9B14 00A0302D */   daddu $a2, $a1, $zero
func_802C9B18:
/* 0EE4C8 802C9B18 24020002 */  addiu $v0, $zero, 2
func_802C9B1C:
/* 0EE4CC 802C9B1C 8FBF005C */  lw    $ra, 0x5c($sp)
/* 0EE4D0 802C9B20 8FB20058 */  lw    $s2, 0x58($sp)
/* 0EE4D4 802C9B24 8FB10054 */  lw    $s1, 0x54($sp)
/* 0EE4D8 802C9B28 8FB00050 */  lw    $s0, 0x50($sp)
/* 0EE4DC 802C9B2C D7B80070 */  ldc1  $f24, 0x70($sp)
/* 0EE4E0 802C9B30 D7B60068 */  ldc1  $f22, 0x68($sp)
/* 0EE4E4 802C9B34 D7B40060 */  ldc1  $f20, 0x60($sp)
/* 0EE4E8 802C9B38 03E00008 */  jr    $ra
/* 0EE4EC 802C9B3C 27BD0078 */   addiu $sp, $sp, 0x78

/* 0EE4F0 802C9B40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE4F4 802C9B44 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE4F8 802C9B48 0080882D */  daddu $s1, $a0, $zero
/* 0EE4FC 802C9B4C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EE500 802C9B50 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE504 802C9B54 8E30000C */  lw    $s0, 0xc($s1)
/* 0EE508 802C9B58 8E050000 */  lw    $a1, ($s0)
/* 0EE50C 802C9B5C 0C0B1EAF */  jal   get_variable
/* 0EE510 802C9B60 26100004 */   addiu $s0, $s0, 4
/* 0EE514 802C9B64 8E100000 */  lw    $s0, ($s0)
/* 0EE518 802C9B68 0C046C24 */  jal   func_8011B090
/* 0EE51C 802C9B6C 0040202D */   daddu $a0, $v0, $zero
/* 0EE520 802C9B70 0220202D */  daddu $a0, $s1, $zero
/* 0EE524 802C9B74 0040302D */  daddu $a2, $v0, $zero
/* 0EE528 802C9B78 0C0B2026 */  jal   set_variable
/* 0EE52C 802C9B7C 0200282D */   daddu $a1, $s0, $zero
/* 0EE530 802C9B80 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EE534 802C9B84 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE538 802C9B88 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE53C 802C9B8C 24020002 */  addiu $v0, $zero, 2
/* 0EE540 802C9B90 03E00008 */  jr    $ra
/* 0EE544 802C9B94 27BD0020 */   addiu $sp, $sp, 0x20

EnableGroup:
/* 0EE548 802C9B98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE54C 802C9B9C AFB20018 */  sw    $s2, 0x18($sp)
/* 0EE550 802C9BA0 0080902D */  daddu $s2, $a0, $zero
/* 0EE554 802C9BA4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EE558 802C9BA8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE55C 802C9BAC AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE560 802C9BB0 8E51000C */  lw    $s1, 0xc($s2)
/* 0EE564 802C9BB4 0C0B1EAF */  jal   get_variable
/* 0EE568 802C9BB8 8E250000 */   lw    $a1, ($s1)
/* 0EE56C 802C9BBC 0C046C24 */  jal   func_8011B090
/* 0EE570 802C9BC0 0040202D */   daddu $a0, $v0, $zero
/* 0EE574 802C9BC4 0040802D */  daddu $s0, $v0, $zero
/* 0EE578 802C9BC8 2402FFFF */  addiu $v0, $zero, -1
/* 0EE57C 802C9BCC 16020007 */  bne   $s0, $v0, .L802C9BEC
/* 0EE580 802C9BD0 00000000 */   nop   
/* 0EE584 802C9BD4 3C04802D */  lui   $a0, 0x802d
/* 0EE588 802C9BD8 24849288 */  addiu $a0, $a0, -0x6d78
/* 0EE58C 802C9BDC 0C0B2568 */  jal   func_802C95A0
/* 0EE590 802C9BE0 0240282D */   daddu $a1, $s2, $zero
/* 0EE594 802C9BE4 080B2716 */  j     func_802C9C58
/* 0EE598 802C9BE8 24020002 */   addiu $v0, $zero, 2

.L802C9BEC:
/* 0EE59C 802C9BEC 8E250004 */  lw    $a1, 4($s1)
/* 0EE5A0 802C9BF0 0C0B1EAF */  jal   get_variable
/* 0EE5A4 802C9BF4 0240202D */   daddu $a0, $s2, $zero
/* 0EE5A8 802C9BF8 0200202D */  daddu $a0, $s0, $zero
/* 0EE5AC 802C9BFC 0C046C70 */  jal   func_8011B1C0
/* 0EE5B0 802C9C00 0040902D */   daddu $s2, $v0, $zero
/* 0EE5B4 802C9C04 0040882D */  daddu $s1, $v0, $zero
/* 0EE5B8 802C9C08 9230009C */  lbu   $s0, 0x9c($s1)
/* 0EE5BC 802C9C0C 9222009D */  lbu   $v0, 0x9d($s1)
/* 0EE5C0 802C9C10 0050102A */  slt   $v0, $v0, $s0
/* 0EE5C4 802C9C14 14400010 */  bnez  $v0, .L802C9C58
/* 0EE5C8 802C9C18 24020002 */   addiu $v0, $zero, 2
.L802C9C1C:
/* 0EE5CC 802C9C1C 0C046B4C */  jal   get_model_from_list_index
/* 0EE5D0 802C9C20 0200202D */   daddu $a0, $s0, $zero
/* 0EE5D4 802C9C24 12400004 */  beqz  $s2, .L802C9C38
/* 0EE5D8 802C9C28 0040182D */   daddu $v1, $v0, $zero
/* 0EE5DC 802C9C2C 94620000 */  lhu   $v0, ($v1)
/* 0EE5E0 802C9C30 080B2710 */  j     func_802C9C40
/* 0EE5E4 802C9C34 3042FFFD */   andi  $v0, $v0, 0xfffd

.L802C9C38:
/* 0EE5E8 802C9C38 94620000 */  lhu   $v0, ($v1)
/* 0EE5EC 802C9C3C 34420002 */  ori   $v0, $v0, 2
func_802C9C40:
/* 0EE5F0 802C9C40 A4620000 */  sh    $v0, ($v1)
/* 0EE5F4 802C9C44 9222009D */  lbu   $v0, 0x9d($s1)
/* 0EE5F8 802C9C48 26100001 */  addiu $s0, $s0, 1
/* 0EE5FC 802C9C4C 0050102A */  slt   $v0, $v0, $s0
/* 0EE600 802C9C50 1040FFF2 */  beqz  $v0, .L802C9C1C
/* 0EE604 802C9C54 24020002 */   addiu $v0, $zero, 2
func_802C9C58:
.L802C9C58:
/* 0EE608 802C9C58 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EE60C 802C9C5C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EE610 802C9C60 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE614 802C9C64 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE618 802C9C68 03E00008 */  jr    $ra
/* 0EE61C 802C9C6C 27BD0020 */   addiu $sp, $sp, 0x20

/* 0EE620 802C9C70 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE624 802C9C74 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE628 802C9C78 0080882D */  daddu $s1, $a0, $zero
/* 0EE62C 802C9C7C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EE630 802C9C80 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EE634 802C9C84 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE638 802C9C88 8E30000C */  lw    $s0, 0xc($s1)
/* 0EE63C 802C9C8C 8E050000 */  lw    $a1, ($s0)
/* 0EE640 802C9C90 0C0B1EAF */  jal   get_variable
/* 0EE644 802C9C94 26100004 */   addiu $s0, $s0, 4
/* 0EE648 802C9C98 8E050000 */  lw    $a1, ($s0)
/* 0EE64C 802C9C9C 26100004 */  addiu $s0, $s0, 4
/* 0EE650 802C9CA0 0220202D */  daddu $a0, $s1, $zero
/* 0EE654 802C9CA4 0C0B1EAF */  jal   get_variable
/* 0EE658 802C9CA8 0040902D */   daddu $s2, $v0, $zero
/* 0EE65C 802C9CAC 0220202D */  daddu $a0, $s1, $zero
/* 0EE660 802C9CB0 8E050000 */  lw    $a1, ($s0)
/* 0EE664 802C9CB4 0C0B1EAF */  jal   get_variable
/* 0EE668 802C9CB8 0040802D */   daddu $s0, $v0, $zero
/* 0EE66C 802C9CBC 0240202D */  daddu $a0, $s2, $zero
/* 0EE670 802C9CC0 3205FFFF */  andi  $a1, $s0, 0xffff
/* 0EE674 802C9CC4 0C047059 */  jal   func_8011C164
/* 0EE678 802C9CC8 0040302D */   daddu $a2, $v0, $zero
/* 0EE67C 802C9CCC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EE680 802C9CD0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EE684 802C9CD4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE688 802C9CD8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE68C 802C9CDC 24020002 */  addiu $v0, $zero, 2
/* 0EE690 802C9CE0 03E00008 */  jr    $ra
/* 0EE694 802C9CE4 27BD0020 */   addiu $sp, $sp, 0x20

modify_collider_family_flags:
/* 0EE698 802C9CE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE69C 802C9CEC AFB20018 */  sw    $s2, 0x18($sp)
/* 0EE6A0 802C9CF0 00A0902D */  daddu $s2, $a1, $zero
/* 0EE6A4 802C9CF4 000410C0 */  sll   $v0, $a0, 3
/* 0EE6A8 802C9CF8 00441023 */  subu  $v0, $v0, $a0
/* 0EE6AC 802C9CFC 3C03800B */  lui   $v1, 0x800b
/* 0EE6B0 802C9D00 8C6342E4 */  lw    $v1, 0x42e4($v1)
/* 0EE6B4 802C9D04 00021080 */  sll   $v0, $v0, 2
/* 0EE6B8 802C9D08 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EE6BC 802C9D0C AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE6C0 802C9D10 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE6C4 802C9D14 00628021 */  addu  $s0, $v1, $v0
/* 0EE6C8 802C9D18 86040004 */  lh    $a0, 4($s0)
/* 0EE6CC 802C9D1C 04800003 */  bltz  $a0, .L802C9D2C
/* 0EE6D0 802C9D20 00C0882D */   daddu $s1, $a2, $zero
/* 0EE6D4 802C9D24 0C0B273A */  jal   modify_collider_family_flags
/* 0EE6D8 802C9D28 00000000 */   nop   
.L802C9D2C:
/* 0EE6DC 802C9D2C 86040006 */  lh    $a0, 6($s0)
/* 0EE6E0 802C9D30 04800003 */  bltz  $a0, .L802C9D40
/* 0EE6E4 802C9D34 0240282D */   daddu $a1, $s2, $zero
/* 0EE6E8 802C9D38 0C0B273A */  jal   modify_collider_family_flags
/* 0EE6EC 802C9D3C 0220302D */   daddu $a2, $s1, $zero
.L802C9D40:
/* 0EE6F0 802C9D40 24020001 */  addiu $v0, $zero, 1
/* 0EE6F4 802C9D44 12220011 */  beq   $s1, $v0, .L802C9D8C
/* 0EE6F8 802C9D48 00121827 */   nor   $v1, $zero, $s2
/* 0EE6FC 802C9D4C 2A220002 */  slti  $v0, $s1, 2
/* 0EE700 802C9D50 50400005 */  beql  $v0, $zero, .L802C9D68
/* 0EE704 802C9D54 24020002 */   addiu $v0, $zero, 2
/* 0EE708 802C9D58 12200009 */  beqz  $s1, .L802C9D80
/* 0EE70C 802C9D5C 00000000 */   nop   
/* 0EE710 802C9D60 080B276D */  j     func_802C9DB4
/* 0EE714 802C9D64 00000000 */   nop   

.L802C9D68:
/* 0EE718 802C9D68 1222000B */  beq   $s1, $v0, .L802C9D98
/* 0EE71C 802C9D6C 24020003 */   addiu $v0, $zero, 3
/* 0EE720 802C9D70 1222000B */  beq   $s1, $v0, .L802C9DA0
/* 0EE724 802C9D74 2403FF00 */   addiu $v1, $zero, -0x100
/* 0EE728 802C9D78 080B276D */  j     func_802C9DB4
/* 0EE72C 802C9D7C 00000000 */   nop   

.L802C9D80:
/* 0EE730 802C9D80 8E020000 */  lw    $v0, ($s0)
/* 0EE734 802C9D84 080B276C */  j     func_802C9DB0
/* 0EE738 802C9D88 00521025 */   or    $v0, $v0, $s2

.L802C9D8C:
/* 0EE73C 802C9D8C 8E020000 */  lw    $v0, ($s0)
/* 0EE740 802C9D90 080B276C */  j     func_802C9DB0
/* 0EE744 802C9D94 00431024 */   and   $v0, $v0, $v1

.L802C9D98:
/* 0EE748 802C9D98 080B276D */  j     func_802C9DB4
/* 0EE74C 802C9D9C AE120000 */   sw    $s2, ($s0)

.L802C9DA0:
/* 0EE750 802C9DA0 8E020000 */  lw    $v0, ($s0)
/* 0EE754 802C9DA4 00431024 */  and   $v0, $v0, $v1
/* 0EE758 802C9DA8 324300FF */  andi  $v1, $s2, 0xff
/* 0EE75C 802C9DAC 00431025 */  or    $v0, $v0, $v1
func_802C9DB0:
/* 0EE760 802C9DB0 AE020000 */  sw    $v0, ($s0)
func_802C9DB4:
/* 0EE764 802C9DB4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EE768 802C9DB8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EE76C 802C9DBC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE770 802C9DC0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE774 802C9DC4 03E00008 */  jr    $ra
/* 0EE778 802C9DC8 27BD0020 */   addiu $sp, $sp, 0x20

ModifyColliderFlags:
/* 0EE77C 802C9DCC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE780 802C9DD0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE784 802C9DD4 0080882D */  daddu $s1, $a0, $zero
/* 0EE788 802C9DD8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EE78C 802C9DDC AFB20018 */  sw    $s2, 0x18($sp)
/* 0EE790 802C9DE0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE794 802C9DE4 8E30000C */  lw    $s0, 0xc($s1)
/* 0EE798 802C9DE8 8E050000 */  lw    $a1, ($s0)
/* 0EE79C 802C9DEC 0C0B1EAF */  jal   get_variable
/* 0EE7A0 802C9DF0 26100004 */   addiu $s0, $s0, 4
/* 0EE7A4 802C9DF4 8E050000 */  lw    $a1, ($s0)
/* 0EE7A8 802C9DF8 26100004 */  addiu $s0, $s0, 4
/* 0EE7AC 802C9DFC 0220202D */  daddu $a0, $s1, $zero
/* 0EE7B0 802C9E00 0C0B1EAF */  jal   get_variable
/* 0EE7B4 802C9E04 0040902D */   daddu $s2, $v0, $zero
/* 0EE7B8 802C9E08 0220202D */  daddu $a0, $s1, $zero
/* 0EE7BC 802C9E0C 8E050000 */  lw    $a1, ($s0)
/* 0EE7C0 802C9E10 0C0B1EAF */  jal   get_variable
/* 0EE7C4 802C9E14 0040802D */   daddu $s0, $v0, $zero
/* 0EE7C8 802C9E18 001018C0 */  sll   $v1, $s0, 3
/* 0EE7CC 802C9E1C 00701823 */  subu  $v1, $v1, $s0
/* 0EE7D0 802C9E20 3C04800B */  lui   $a0, 0x800b
/* 0EE7D4 802C9E24 8C8442E4 */  lw    $a0, 0x42e4($a0)
/* 0EE7D8 802C9E28 00031880 */  sll   $v1, $v1, 2
/* 0EE7DC 802C9E2C 00838021 */  addu  $s0, $a0, $v1
/* 0EE7E0 802C9E30 86040006 */  lh    $a0, 6($s0)
/* 0EE7E4 802C9E34 04800004 */  bltz  $a0, .L802C9E48
/* 0EE7E8 802C9E38 0040882D */   daddu $s1, $v0, $zero
/* 0EE7EC 802C9E3C 0220282D */  daddu $a1, $s1, $zero
/* 0EE7F0 802C9E40 0C0B273A */  jal   modify_collider_family_flags
/* 0EE7F4 802C9E44 0240302D */   daddu $a2, $s2, $zero
.L802C9E48:
/* 0EE7F8 802C9E48 24020001 */  addiu $v0, $zero, 1
/* 0EE7FC 802C9E4C 12420011 */  beq   $s2, $v0, .L802C9E94
/* 0EE800 802C9E50 00111827 */   nor   $v1, $zero, $s1
/* 0EE804 802C9E54 2A420002 */  slti  $v0, $s2, 2
/* 0EE808 802C9E58 50400005 */  beql  $v0, $zero, .L802C9E70
/* 0EE80C 802C9E5C 24020002 */   addiu $v0, $zero, 2
/* 0EE810 802C9E60 12400009 */  beqz  $s2, .L802C9E88
/* 0EE814 802C9E64 00000000 */   nop   
/* 0EE818 802C9E68 080B27AF */  j     func_802C9EBC
/* 0EE81C 802C9E6C 00000000 */   nop   

.L802C9E70:
/* 0EE820 802C9E70 1242000B */  beq   $s2, $v0, .L802C9EA0
/* 0EE824 802C9E74 24020003 */   addiu $v0, $zero, 3
/* 0EE828 802C9E78 1242000B */  beq   $s2, $v0, .L802C9EA8
/* 0EE82C 802C9E7C 2403FF00 */   addiu $v1, $zero, -0x100
/* 0EE830 802C9E80 080B27AF */  j     func_802C9EBC
/* 0EE834 802C9E84 00000000 */   nop   

.L802C9E88:
/* 0EE838 802C9E88 8E020000 */  lw    $v0, ($s0)
/* 0EE83C 802C9E8C 080B27AE */  j     func_802C9EB8
/* 0EE840 802C9E90 00511025 */   or    $v0, $v0, $s1

.L802C9E94:
/* 0EE844 802C9E94 8E020000 */  lw    $v0, ($s0)
/* 0EE848 802C9E98 080B27AE */  j     func_802C9EB8
/* 0EE84C 802C9E9C 00431024 */   and   $v0, $v0, $v1

.L802C9EA0:
/* 0EE850 802C9EA0 080B27AF */  j     func_802C9EBC
/* 0EE854 802C9EA4 AE110000 */   sw    $s1, ($s0)

.L802C9EA8:
/* 0EE858 802C9EA8 8E020000 */  lw    $v0, ($s0)
/* 0EE85C 802C9EAC 00431024 */  and   $v0, $v0, $v1
/* 0EE860 802C9EB0 322300FF */  andi  $v1, $s1, 0xff
/* 0EE864 802C9EB4 00431025 */  or    $v0, $v0, $v1
func_802C9EB8:
/* 0EE868 802C9EB8 AE020000 */  sw    $v0, ($s0)
func_802C9EBC:
/* 0EE86C 802C9EBC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EE870 802C9EC0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EE874 802C9EC4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE878 802C9EC8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE87C 802C9ECC 24020002 */  addiu $v0, $zero, 2
/* 0EE880 802C9ED0 03E00008 */  jr    $ra
/* 0EE884 802C9ED4 27BD0020 */   addiu $sp, $sp, 0x20

ResetFromLava:
/* 0EE888 802C9ED8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EE88C 802C9EDC AFBF0020 */  sw    $ra, 0x20($sp)
/* 0EE890 802C9EE0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0EE894 802C9EE4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EE898 802C9EE8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE89C 802C9EEC AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE8A0 802C9EF0 10A0001D */  beqz  $a1, .L802C9F68
/* 0EE8A4 802C9EF4 8C82000C */   lw    $v0, 0xc($a0)
/* 0EE8A8 802C9EF8 8C450000 */  lw    $a1, ($v0)
/* 0EE8AC 802C9EFC 3C12800B */  lui   $s2, 0x800b
/* 0EE8B0 802C9F00 265242E0 */  addiu $s2, $s2, 0x42e0
/* 0EE8B4 802C9F04 0C0B1EAF */  jal   get_variable
/* 0EE8B8 802C9F08 2413FFFF */   addiu $s3, $zero, -1
/* 0EE8BC 802C9F0C 0040882D */  daddu $s1, $v0, $zero
/* 0EE8C0 802C9F10 3C01802E */  lui   $at, 0x802e
/* 0EE8C4 802C9F14 AC31ADA0 */  sw    $s1, -0x5260($at)
func_802C9F18:
/* 0EE8C8 802C9F18 8E230000 */  lw    $v1, ($s1)
/* 0EE8CC 802C9F1C 1073000F */  beq   $v1, $s3, .L802C9F5C
/* 0EE8D0 802C9F20 000310C0 */   sll   $v0, $v1, 3
/* 0EE8D4 802C9F24 00431023 */  subu  $v0, $v0, $v1
/* 0EE8D8 802C9F28 8E430004 */  lw    $v1, 4($s2)
/* 0EE8DC 802C9F2C 00021080 */  sll   $v0, $v0, 2
/* 0EE8E0 802C9F30 00628021 */  addu  $s0, $v1, $v0
/* 0EE8E4 802C9F34 86040006 */  lh    $a0, 6($s0)
/* 0EE8E8 802C9F38 04800003 */  bltz  $a0, .L802C9F48
/* 0EE8EC 802C9F3C 24050100 */   addiu $a1, $zero, 0x100
/* 0EE8F0 802C9F40 0C0B273A */  jal   modify_collider_family_flags
/* 0EE8F4 802C9F44 0000302D */   daddu $a2, $zero, $zero
.L802C9F48:
/* 0EE8F8 802C9F48 8E020000 */  lw    $v0, ($s0)
/* 0EE8FC 802C9F4C 26310010 */  addiu $s1, $s1, 0x10
/* 0EE900 802C9F50 34420100 */  ori   $v0, $v0, 0x100
/* 0EE904 802C9F54 080B27C6 */  j     func_802C9F18
/* 0EE908 802C9F58 AE020000 */   sw    $v0, ($s0)

.L802C9F5C:
/* 0EE90C 802C9F5C 2402FFFF */  addiu $v0, $zero, -1
/* 0EE910 802C9F60 3C01802E */  lui   $at, 0x802e
/* 0EE914 802C9F64 AC22ADA4 */  sw    $v0, -0x525c($at)
.L802C9F68:
/* 0EE918 802C9F68 3C028016 */  lui   $v0, 0x8016
/* 0EE91C 802C9F6C 2442A550 */  addiu $v0, $v0, -0x5ab0
/* 0EE920 802C9F70 94430002 */  lhu   $v1, 2($v0)
/* 0EE924 802C9F74 30624000 */  andi  $v0, $v1, 0x4000
/* 0EE928 802C9F78 1440000F */  bnez  $v0, .L802C9FB8
/* 0EE92C 802C9F7C 0000102D */   daddu $v0, $zero, $zero
/* 0EE930 802C9F80 00031400 */  sll   $v0, $v1, 0x10
/* 0EE934 802C9F84 00022403 */  sra   $a0, $v0, 0x10
/* 0EE938 802C9F88 000410C0 */  sll   $v0, $a0, 3
/* 0EE93C 802C9F8C 00441023 */  subu  $v0, $v0, $a0
/* 0EE940 802C9F90 3C03800B */  lui   $v1, 0x800b
/* 0EE944 802C9F94 8C6342E4 */  lw    $v1, 0x42e4($v1)
/* 0EE948 802C9F98 00021080 */  sll   $v0, $v0, 2
/* 0EE94C 802C9F9C 00628021 */  addu  $s0, $v1, $v0
/* 0EE950 802C9FA0 8E020000 */  lw    $v0, ($s0)
/* 0EE954 802C9FA4 30420100 */  andi  $v0, $v0, 0x100
/* 0EE958 802C9FA8 10400003 */  beqz  $v0, .L802C9FB8
/* 0EE95C 802C9FAC 0000102D */   daddu $v0, $zero, $zero
/* 0EE960 802C9FB0 3C01802E */  lui   $at, 0x802e
/* 0EE964 802C9FB4 AC24ADA4 */  sw    $a0, -0x525c($at)
.L802C9FB8:
/* 0EE968 802C9FB8 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0EE96C 802C9FBC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0EE970 802C9FC0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EE974 802C9FC4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EE978 802C9FC8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EE97C 802C9FCC 03E00008 */  jr    $ra
/* 0EE980 802C9FD0 27BD0028 */   addiu $sp, $sp, 0x28

/* 0EE984 802C9FD4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EE988 802C9FD8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EE98C 802C9FDC 0080802D */  daddu $s0, $a0, $zero
/* 0EE990 802C9FE0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EE994 802C9FE4 00A0882D */  daddu $s1, $a1, $zero
/* 0EE998 802C9FE8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0EE99C 802C9FEC 3C04802E */  lui   $a0, 0x802e
/* 0EE9A0 802C9FF0 2484ADA4 */  addiu $a0, $a0, -0x525c
/* 0EE9A4 802C9FF4 2402FFFF */  addiu $v0, $zero, -1
/* 0EE9A8 802C9FF8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0EE9AC 802C9FFC 8C830000 */  lw    $v1, ($a0)
/* 0EE9B0 802CA000 3C05802E */  lui   $a1, 0x802e
/* 0EE9B4 802CA004 8CA5ADA0 */  lw    $a1, -0x5260($a1)
/* 0EE9B8 802CA008 14620018 */  bne   $v1, $v0, .L802CA06C
/* 0EE9BC 802CA00C 00C0902D */   daddu $s2, $a2, $zero
/* 0EE9C0 802CA010 0C016AFA */  jal   get_current_map_header
/* 0EE9C4 802CA014 00000000 */   nop   
/* 0EE9C8 802CA018 3C038007 */  lui   $v1, 0x8007
/* 0EE9CC 802CA01C 8C63419C */  lw    $v1, 0x419c($v1)
/* 0EE9D0 802CA020 8463008E */  lh    $v1, 0x8e($v1)
/* 0EE9D4 802CA024 8C420014 */  lw    $v0, 0x14($v0)
/* 0EE9D8 802CA028 00031900 */  sll   $v1, $v1, 4
/* 0EE9DC 802CA02C 00431021 */  addu  $v0, $v0, $v1
/* 0EE9E0 802CA030 C4400000 */  lwc1  $f0, ($v0)
/* 0EE9E4 802CA034 E6000000 */  swc1  $f0, ($s0)
/* 0EE9E8 802CA038 C4400004 */  lwc1  $f0, 4($v0)
/* 0EE9EC 802CA03C E6200000 */  swc1  $f0, ($s1)
/* 0EE9F0 802CA040 C4400008 */  lwc1  $f0, 8($v0)
/* 0EE9F4 802CA044 2402FFFF */  addiu $v0, $zero, -1
/* 0EE9F8 802CA048 080B2825 */  j     func_802CA094
/* 0EE9FC 802CA04C E6400000 */   swc1  $f0, ($s2)

.L802CA050:
/* 0EEA00 802CA050 C4A00004 */  lwc1  $f0, 4($a1)
/* 0EEA04 802CA054 E6000000 */  swc1  $f0, ($s0)
/* 0EEA08 802CA058 C4A00008 */  lwc1  $f0, 8($a1)
/* 0EEA0C 802CA05C E6200000 */  swc1  $f0, ($s1)
/* 0EEA10 802CA060 C4A0000C */  lwc1  $f0, 0xc($a1)
/* 0EEA14 802CA064 080B2825 */  j     func_802CA094
/* 0EEA18 802CA068 E6400000 */   swc1  $f0, ($s2)

.L802CA06C:
/* 0EEA1C 802CA06C 2406FFFF */  addiu $a2, $zero, -1
/* 0EEA20 802CA070 0080182D */  daddu $v1, $a0, $zero
func_802CA074:
/* 0EEA24 802CA074 8CA40000 */  lw    $a0, ($a1)
/* 0EEA28 802CA078 10860006 */  beq   $a0, $a2, .L802CA094
/* 0EEA2C 802CA07C 0000102D */   daddu $v0, $zero, $zero
/* 0EEA30 802CA080 8C620000 */  lw    $v0, ($v1)
/* 0EEA34 802CA084 1082FFF2 */  beq   $a0, $v0, .L802CA050
/* 0EEA38 802CA088 24020001 */   addiu $v0, $zero, 1
/* 0EEA3C 802CA08C 080B281D */  j     func_802CA074
/* 0EEA40 802CA090 24A50010 */   addiu $a1, $a1, 0x10

func_802CA094:
.L802CA094:
/* 0EEA44 802CA094 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0EEA48 802CA098 8FB20018 */  lw    $s2, 0x18($sp)
/* 0EEA4C 802CA09C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EEA50 802CA0A0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EEA54 802CA0A4 03E00008 */  jr    $ra
/* 0EEA58 802CA0A8 27BD0020 */   addiu $sp, $sp, 0x20

GetColliderCenter:
/* 0EEA5C 802CA0AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0EEA60 802CA0B0 AFB00020 */  sw    $s0, 0x20($sp)
/* 0EEA64 802CA0B4 0080802D */  daddu $s0, $a0, $zero
/* 0EEA68 802CA0B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0EEA6C 802CA0BC 8E02000C */  lw    $v0, 0xc($s0)
/* 0EEA70 802CA0C0 0C0B1EAF */  jal   get_variable
/* 0EEA74 802CA0C4 8C450000 */   lw    $a1, ($v0)
/* 0EEA78 802CA0C8 0040202D */  daddu $a0, $v0, $zero
/* 0EEA7C 802CA0CC 27A50010 */  addiu $a1, $sp, 0x10
/* 0EEA80 802CA0D0 27A60014 */  addiu $a2, $sp, 0x14
/* 0EEA84 802CA0D4 0C016F84 */  jal   get_collider_center
/* 0EEA88 802CA0D8 27A70018 */   addiu $a3, $sp, 0x18
/* 0EEA8C 802CA0DC C7A00010 */  lwc1  $f0, 0x10($sp)
/* 0EEA90 802CA0E0 4600010D */  trunc.w.s $f4, $f0
/* 0EEA94 802CA0E4 E6040084 */  swc1  $f4, 0x84($s0)
/* 0EEA98 802CA0E8 C7A00014 */  lwc1  $f0, 0x14($sp)
/* 0EEA9C 802CA0EC C7A20018 */  lwc1  $f2, 0x18($sp)
/* 0EEAA0 802CA0F0 4600010D */  trunc.w.s $f4, $f0
/* 0EEAA4 802CA0F4 E6040088 */  swc1  $f4, 0x88($s0)
/* 0EEAA8 802CA0F8 4600110D */  trunc.w.s $f4, $f2
/* 0EEAAC 802CA0FC E604008C */  swc1  $f4, 0x8c($s0)
/* 0EEAB0 802CA100 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0EEAB4 802CA104 8FB00020 */  lw    $s0, 0x20($sp)
/* 0EEAB8 802CA108 24020002 */  addiu $v0, $zero, 2
/* 0EEABC 802CA10C 03E00008 */  jr    $ra
/* 0EEAC0 802CA110 27BD0028 */   addiu $sp, $sp, 0x28

ParentColliderToModel:
/* 0EEAC4 802CA114 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EEAC8 802CA118 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EEACC 802CA11C 0080882D */  daddu $s1, $a0, $zero
/* 0EEAD0 802CA120 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EEAD4 802CA124 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EEAD8 802CA128 8E30000C */  lw    $s0, 0xc($s1)
/* 0EEADC 802CA12C 8E050000 */  lw    $a1, ($s0)
/* 0EEAE0 802CA130 0C0B1EAF */  jal   get_variable
/* 0EEAE4 802CA134 26100004 */   addiu $s0, $s0, 4
/* 0EEAE8 802CA138 0220202D */  daddu $a0, $s1, $zero
/* 0EEAEC 802CA13C 8E050000 */  lw    $a1, ($s0)
/* 0EEAF0 802CA140 0C0B1EAF */  jal   get_variable
/* 0EEAF4 802CA144 0040802D */   daddu $s0, $v0, $zero
/* 0EEAF8 802CA148 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EEAFC 802CA14C 0040202D */   daddu $a0, $v0, $zero
/* 0EEB00 802CA150 00108400 */  sll   $s0, $s0, 0x10
/* 0EEB04 802CA154 00108403 */  sra   $s0, $s0, 0x10
/* 0EEB08 802CA158 0200202D */  daddu $a0, $s0, $zero
/* 0EEB0C 802CA15C 00021400 */  sll   $v0, $v0, 0x10
/* 0EEB10 802CA160 0C016DE0 */  jal   parent_collider_to_model
/* 0EEB14 802CA164 00022C03 */   sra   $a1, $v0, 0x10
/* 0EEB18 802CA168 0C016E89 */  jal   update_collider_transform
/* 0EEB1C 802CA16C 0200202D */   daddu $a0, $s0, $zero
/* 0EEB20 802CA170 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EEB24 802CA174 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EEB28 802CA178 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EEB2C 802CA17C 24020002 */  addiu $v0, $zero, 2
/* 0EEB30 802CA180 03E00008 */  jr    $ra
/* 0EEB34 802CA184 27BD0020 */   addiu $sp, $sp, 0x20

UpdateColliderTransform:
/* 0EEB38 802CA188 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEB3C 802CA18C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEB40 802CA190 8C82000C */  lw    $v0, 0xc($a0)
/* 0EEB44 802CA194 0C0B1EAF */  jal   get_variable
/* 0EEB48 802CA198 8C450000 */   lw    $a1, ($v0)
/* 0EEB4C 802CA19C 00021400 */  sll   $v0, $v0, 0x10
/* 0EEB50 802CA1A0 0C016E89 */  jal   update_collider_transform
/* 0EEB54 802CA1A4 00022403 */   sra   $a0, $v0, 0x10
/* 0EEB58 802CA1A8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEB5C 802CA1AC 24020002 */  addiu $v0, $zero, 2
/* 0EEB60 802CA1B0 03E00008 */  jr    $ra
/* 0EEB64 802CA1B4 27BD0018 */   addiu $sp, $sp, 0x18

func_802CA1B8:
/* 0EEB68 802CA1B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EEB6C 802CA1BC 000410C0 */  sll   $v0, $a0, 3
/* 0EEB70 802CA1C0 00441023 */  subu  $v0, $v0, $a0
/* 0EEB74 802CA1C4 3C03800E */  lui   $v1, 0x800e
/* 0EEB78 802CA1C8 8C6391D4 */  lw    $v1, -0x6e2c($v1)
/* 0EEB7C 802CA1CC 00021080 */  sll   $v0, $v0, 2
/* 0EEB80 802CA1D0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EEB84 802CA1D4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EEB88 802CA1D8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EEB8C 802CA1DC 00628021 */  addu  $s0, $v1, $v0
/* 0EEB90 802CA1E0 86040004 */  lh    $a0, 4($s0)
/* 0EEB94 802CA1E4 04800003 */  bltz  $a0, .L802CA1F4
/* 0EEB98 802CA1E8 00A0882D */   daddu $s1, $a1, $zero
/* 0EEB9C 802CA1EC 0C0B286E */  jal   func_802CA1B8
/* 0EEBA0 802CA1F0 00000000 */   nop   
.L802CA1F4:
/* 0EEBA4 802CA1F4 86040006 */  lh    $a0, 6($s0)
/* 0EEBA8 802CA1F8 04800003 */  bltz  $a0, .L802CA208
/* 0EEBAC 802CA1FC 00000000 */   nop   
/* 0EEBB0 802CA200 0C0B286E */  jal   func_802CA1B8
/* 0EEBB4 802CA204 0220282D */   daddu $a1, $s1, $zero
.L802CA208:
/* 0EEBB8 802CA208 12200006 */  beqz  $s1, .L802CA224
/* 0EEBBC 802CA20C 3C030001 */   lui   $v1, 1
/* 0EEBC0 802CA210 24020001 */  addiu $v0, $zero, 1
/* 0EEBC4 802CA214 12220006 */  beq   $s1, $v0, .L802CA230
/* 0EEBC8 802CA218 3C03FFFE */   lui   $v1, 0xfffe
/* 0EEBCC 802CA21C 080B2890 */  j     func_802CA240
/* 0EEBD0 802CA220 00000000 */   nop   

.L802CA224:
/* 0EEBD4 802CA224 8E020000 */  lw    $v0, ($s0)
/* 0EEBD8 802CA228 080B288F */  j     func_802CA23C
/* 0EEBDC 802CA22C 00431025 */   or    $v0, $v0, $v1

.L802CA230:
/* 0EEBE0 802CA230 8E020000 */  lw    $v0, ($s0)
/* 0EEBE4 802CA234 3463FFFF */  ori   $v1, $v1, 0xffff
/* 0EEBE8 802CA238 00431024 */  and   $v0, $v0, $v1
func_802CA23C:
/* 0EEBEC 802CA23C AE020000 */  sw    $v0, ($s0)
func_802CA240:
/* 0EEBF0 802CA240 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EEBF4 802CA244 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EEBF8 802CA248 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EEBFC 802CA24C 03E00008 */  jr    $ra
/* 0EEC00 802CA250 27BD0020 */   addiu $sp, $sp, 0x20

/* 0EEC04 802CA254 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EEC08 802CA258 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EEC0C 802CA25C 0080882D */  daddu $s1, $a0, $zero
/* 0EEC10 802CA260 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EEC14 802CA264 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EEC18 802CA268 8E30000C */  lw    $s0, 0xc($s1)
/* 0EEC1C 802CA26C 8E050000 */  lw    $a1, ($s0)
/* 0EEC20 802CA270 0C0B1EAF */  jal   get_variable
/* 0EEC24 802CA274 26100004 */   addiu $s0, $s0, 4
/* 0EEC28 802CA278 0220202D */  daddu $a0, $s1, $zero
/* 0EEC2C 802CA27C 8E050000 */  lw    $a1, ($s0)
/* 0EEC30 802CA280 0C0B1EAF */  jal   get_variable
/* 0EEC34 802CA284 0040802D */   daddu $s0, $v0, $zero
/* 0EEC38 802CA288 001018C0 */  sll   $v1, $s0, 3
/* 0EEC3C 802CA28C 00701823 */  subu  $v1, $v1, $s0
/* 0EEC40 802CA290 3C04800E */  lui   $a0, 0x800e
/* 0EEC44 802CA294 8C8491D4 */  lw    $a0, -0x6e2c($a0)
/* 0EEC48 802CA298 00031880 */  sll   $v1, $v1, 2
/* 0EEC4C 802CA29C 00838821 */  addu  $s1, $a0, $v1
/* 0EEC50 802CA2A0 86240006 */  lh    $a0, 6($s1)
/* 0EEC54 802CA2A4 04800003 */  bltz  $a0, .L802CA2B4
/* 0EEC58 802CA2A8 0040802D */   daddu $s0, $v0, $zero
/* 0EEC5C 802CA2AC 0C0B286E */  jal   func_802CA1B8
/* 0EEC60 802CA2B0 0200282D */   daddu $a1, $s0, $zero
.L802CA2B4:
/* 0EEC64 802CA2B4 12000006 */  beqz  $s0, .L802CA2D0
/* 0EEC68 802CA2B8 3C030001 */   lui   $v1, 1
/* 0EEC6C 802CA2BC 24020001 */  addiu $v0, $zero, 1
/* 0EEC70 802CA2C0 12020006 */  beq   $s0, $v0, .L802CA2DC
/* 0EEC74 802CA2C4 3C03FFFE */   lui   $v1, 0xfffe
/* 0EEC78 802CA2C8 080B28BB */  j     func_802CA2EC
/* 0EEC7C 802CA2CC 00000000 */   nop   

.L802CA2D0:
/* 0EEC80 802CA2D0 8E220000 */  lw    $v0, ($s1)
/* 0EEC84 802CA2D4 080B28BA */  j     func_802CA2E8
/* 0EEC88 802CA2D8 00431025 */   or    $v0, $v0, $v1

.L802CA2DC:
/* 0EEC8C 802CA2DC 8E220000 */  lw    $v0, ($s1)
/* 0EEC90 802CA2E0 3463FFFF */  ori   $v1, $v1, 0xffff
/* 0EEC94 802CA2E4 00431024 */  and   $v0, $v0, $v1
func_802CA2E8:
/* 0EEC98 802CA2E8 AE220000 */  sw    $v0, ($s1)
func_802CA2EC:
/* 0EEC9C 802CA2EC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EECA0 802CA2F0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EECA4 802CA2F4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EECA8 802CA2F8 24020002 */  addiu $v0, $zero, 2
/* 0EECAC 802CA2FC 03E00008 */  jr    $ra
/* 0EECB0 802CA300 27BD0020 */   addiu $sp, $sp, 0x20

goto_map:
/* 0EECB4 802CA304 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0EECB8 802CA308 AFB20020 */  sw    $s2, 0x20($sp)
/* 0EECBC 802CA30C 0080902D */  daddu $s2, $a0, $zero
/* 0EECC0 802CA310 AFB40028 */  sw    $s4, 0x28($sp)
/* 0EECC4 802CA314 00A0A02D */  daddu $s4, $a1, $zero
/* 0EECC8 802CA318 AFB30024 */  sw    $s3, 0x24($sp)
/* 0EECCC 802CA31C 24020002 */  addiu $v0, $zero, 2
/* 0EECD0 802CA320 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0EECD4 802CA324 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0EECD8 802CA328 AFB00018 */  sw    $s0, 0x18($sp)
/* 0EECDC 802CA32C 8E51000C */  lw    $s1, 0xc($s2)
/* 0EECE0 802CA330 1682000B */  bne   $s4, $v0, .L802CA360
/* 0EECE4 802CA334 0000982D */   daddu $s3, $zero, $zero
/* 0EECE8 802CA338 8E250000 */  lw    $a1, ($s1)
/* 0EECEC 802CA33C 0C0B1EAF */  jal   get_variable
/* 0EECF0 802CA340 26310004 */   addiu $s1, $s1, 4
/* 0EECF4 802CA344 A7A20010 */  sh    $v0, 0x10($sp)
/* 0EECF8 802CA348 8E250000 */  lw    $a1, ($s1)
/* 0EECFC 802CA34C 26310004 */  addiu $s1, $s1, 4
/* 0EED00 802CA350 0C0B1EAF */  jal   get_variable
/* 0EED04 802CA354 0240202D */   daddu $a0, $s2, $zero
/* 0EED08 802CA358 080B28E0 */  j     func_802CA380
/* 0EED0C 802CA35C A7A20012 */   sh    $v0, 0x12($sp)

.L802CA360:
/* 0EED10 802CA360 8E250000 */  lw    $a1, ($s1)
/* 0EED14 802CA364 26310004 */  addiu $s1, $s1, 4
/* 0EED18 802CA368 0C0B1EAF */  jal   get_variable
/* 0EED1C 802CA36C 0240202D */   daddu $a0, $s2, $zero
/* 0EED20 802CA370 0040202D */  daddu $a0, $v0, $zero
/* 0EED24 802CA374 27A50010 */  addiu $a1, $sp, 0x10
/* 0EED28 802CA378 0C016AFE */  jal   get_map_IDs_by_name
/* 0EED2C 802CA37C 27A60012 */   addiu $a2, $sp, 0x12
func_802CA380:
/* 0EED30 802CA380 3C108007 */  lui   $s0, 0x8007
/* 0EED34 802CA384 2610419C */  addiu $s0, $s0, 0x419c
/* 0EED38 802CA388 8E040000 */  lw    $a0, ($s0)
/* 0EED3C 802CA38C 97A20010 */  lhu   $v0, 0x10($sp)
/* 0EED40 802CA390 97A30012 */  lhu   $v1, 0x12($sp)
/* 0EED44 802CA394 A4820086 */  sh    $v0, 0x86($a0)
/* 0EED48 802CA398 A483008C */  sh    $v1, 0x8c($a0)
/* 0EED4C 802CA39C 8E250000 */  lw    $a1, ($s1)
/* 0EED50 802CA3A0 0C0B1EAF */  jal   get_variable
/* 0EED54 802CA3A4 0240202D */   daddu $a0, $s2, $zero
/* 0EED58 802CA3A8 8E030000 */  lw    $v1, ($s0)
/* 0EED5C 802CA3AC A462008E */  sh    $v0, 0x8e($v1)
/* 0EED60 802CA3B0 24020001 */  addiu $v0, $zero, 1
/* 0EED64 802CA3B4 16820005 */  bne   $s4, $v0, .L802CA3CC
/* 0EED68 802CA3B8 26310004 */   addiu $s1, $s1, 4
/* 0EED6C 802CA3BC 8E250000 */  lw    $a1, ($s1)
/* 0EED70 802CA3C0 0C0B1EAF */  jal   get_variable
/* 0EED74 802CA3C4 0240202D */   daddu $a0, $s2, $zero
/* 0EED78 802CA3C8 0040982D */  daddu $s3, $v0, $zero
.L802CA3CC:
/* 0EED7C 802CA3CC 00132400 */  sll   $a0, $s3, 0x10
/* 0EED80 802CA3D0 0C04E0A8 */  jal   set_map_transition_effect
/* 0EED84 802CA3D4 00042403 */   sra   $a0, $a0, 0x10
/* 0EED88 802CA3D8 0C00CD3C */  jal   set_game_mode
/* 0EED8C 802CA3DC 24040005 */   addiu $a0, $zero, 5
/* 0EED90 802CA3E0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0EED94 802CA3E4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0EED98 802CA3E8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0EED9C 802CA3EC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0EEDA0 802CA3F0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0EEDA4 802CA3F4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0EEDA8 802CA3F8 03E00008 */  jr    $ra
/* 0EEDAC 802CA3FC 27BD0030 */   addiu $sp, $sp, 0x30

GotoMap:
/* 0EEDB0 802CA400 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEDB4 802CA404 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEDB8 802CA408 0C0B28C1 */  jal   goto_map
/* 0EEDBC 802CA40C 0000282D */   daddu $a1, $zero, $zero
/* 0EEDC0 802CA410 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEDC4 802CA414 24020001 */  addiu $v0, $zero, 1
/* 0EEDC8 802CA418 03E00008 */  jr    $ra
/* 0EEDCC 802CA41C 27BD0018 */   addiu $sp, $sp, 0x18

GotoMapSpecial:
/* 0EEDD0 802CA420 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEDD4 802CA424 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEDD8 802CA428 0C0B28C1 */  jal   goto_map
/* 0EEDDC 802CA42C 24050001 */   addiu $a1, $zero, 1
/* 0EEDE0 802CA430 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEDE4 802CA434 24020001 */  addiu $v0, $zero, 1
/* 0EEDE8 802CA438 03E00008 */  jr    $ra
/* 0EEDEC 802CA43C 27BD0018 */   addiu $sp, $sp, 0x18

GotoMapByID:
/* 0EEDF0 802CA440 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEDF4 802CA444 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEDF8 802CA448 0C0B28C1 */  jal   goto_map
/* 0EEDFC 802CA44C 24050002 */   addiu $a1, $zero, 2
/* 0EEE00 802CA450 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEE04 802CA454 24020001 */  addiu $v0, $zero, 1
/* 0EEE08 802CA458 03E00008 */  jr    $ra
/* 0EEE0C 802CA45C 27BD0018 */   addiu $sp, $sp, 0x18

GetEntryID:
/* 0EEE10 802CA460 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEE14 802CA464 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEE18 802CA468 8C82000C */  lw    $v0, 0xc($a0)
/* 0EEE1C 802CA46C 3C038007 */  lui   $v1, 0x8007
/* 0EEE20 802CA470 8C63419C */  lw    $v1, 0x419c($v1)
/* 0EEE24 802CA474 8C450000 */  lw    $a1, ($v0)
/* 0EEE28 802CA478 0C0B2026 */  jal   set_variable
/* 0EEE2C 802CA47C 8466008E */   lh    $a2, 0x8e($v1)
/* 0EEE30 802CA480 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEE34 802CA484 24020002 */  addiu $v0, $zero, 2
/* 0EEE38 802CA488 03E00008 */  jr    $ra
/* 0EEE3C 802CA48C 27BD0018 */   addiu $sp, $sp, 0x18

GetMapID:
/* 0EEE40 802CA490 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEE44 802CA494 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEE48 802CA498 8C82000C */  lw    $v0, 0xc($a0)
/* 0EEE4C 802CA49C 3C038007 */  lui   $v1, 0x8007
/* 0EEE50 802CA4A0 8C63419C */  lw    $v1, 0x419c($v1)
/* 0EEE54 802CA4A4 8C450000 */  lw    $a1, ($v0)
/* 0EEE58 802CA4A8 0C0B2026 */  jal   set_variable
/* 0EEE5C 802CA4AC 8466008C */   lh    $a2, 0x8c($v1)
/* 0EEE60 802CA4B0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEE64 802CA4B4 24020002 */  addiu $v0, $zero, 2
/* 0EEE68 802CA4B8 03E00008 */  jr    $ra
/* 0EEE6C 802CA4BC 27BD0018 */   addiu $sp, $sp, 0x18

GetLoadType:
/* 0EEE70 802CA4C0 3C028007 */  lui   $v0, 0x8007
/* 0EEE74 802CA4C4 8C42419C */  lw    $v0, 0x419c($v0)
/* 0EEE78 802CA4C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EEE7C 802CA4CC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0EEE80 802CA4D0 8C83000C */  lw    $v1, 0xc($a0)
/* 0EEE84 802CA4D4 90460167 */  lbu   $a2, 0x167($v0)
/* 0EEE88 802CA4D8 8C650000 */  lw    $a1, ($v1)
/* 0EEE8C 802CA4DC 0C0B2026 */  jal   set_variable
/* 0EEE90 802CA4E0 0006302B */   sltu  $a2, $zero, $a2
/* 0EEE94 802CA4E4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0EEE98 802CA4E8 24020002 */  addiu $v0, $zero, 2
/* 0EEE9C 802CA4EC 03E00008 */  jr    $ra
/* 0EEEA0 802CA4F0 27BD0018 */   addiu $sp, $sp, 0x18

SetRenderMode:
/* 0EEEA4 802CA4F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0EEEA8 802CA4F8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0EEEAC 802CA4FC 0080882D */  daddu $s1, $a0, $zero
/* 0EEEB0 802CA500 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0EEEB4 802CA504 AFB00010 */  sw    $s0, 0x10($sp)
/* 0EEEB8 802CA508 8E30000C */  lw    $s0, 0xc($s1)
/* 0EEEBC 802CA50C 8E050000 */  lw    $a1, ($s0)
/* 0EEEC0 802CA510 0C0B1EAF */  jal   get_variable
/* 0EEEC4 802CA514 26100004 */   addiu $s0, $s0, 4
/* 0EEEC8 802CA518 0220202D */  daddu $a0, $s1, $zero
/* 0EEECC 802CA51C 8E050000 */  lw    $a1, ($s0)
/* 0EEED0 802CA520 0C0B1EAF */  jal   get_variable
/* 0EEED4 802CA524 0040802D */   daddu $s0, $v0, $zero
/* 0EEED8 802CA528 0200202D */  daddu $a0, $s0, $zero
/* 0EEEDC 802CA52C 0C046C04 */  jal   get_model_list_index_from_tree_index
/* 0EEEE0 802CA530 0040802D */   daddu $s0, $v0, $zero
/* 0EEEE4 802CA534 0C046B4C */  jal   get_model_from_list_index
/* 0EEEE8 802CA538 0040202D */   daddu $a0, $v0, $zero
/* 0EEEEC 802CA53C A05000A6 */  sb    $s0, 0xa6($v0)
/* 0EEEF0 802CA540 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0EEEF4 802CA544 8FB10014 */  lw    $s1, 0x14($sp)
/* 0EEEF8 802CA548 8FB00010 */  lw    $s0, 0x10($sp)
/* 0EEEFC 802CA54C 24020002 */  addiu $v0, $zero, 2
/* 0EEF00 802CA550 03E00008 */  jr    $ra
/* 0EEF04 802CA554 27BD0020 */   addiu $sp, $sp, 0x20

PlaySoundAtModel:
/* 0EEF08 802CA558 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0EEF0C 802CA55C AFB1003C */  sw    $s1, 0x3c($sp)
/* 0EEF10 802CA560 0080882D */  daddu $s1, $a0, $zero
/* 0EEF14 802CA564 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0EEF18 802CA568 AFB20040 */  sw    $s2, 0x40($sp)
/* 0EEF1C 802CA56C AFB00038 */  sw    $s0, 0x38($sp)
/* 0EEF20 802CA570 8E30000C */  lw    $s0, 0xc($s1)
/* 0EEF24 802CA574 8E050000 */  lw    $a1, ($s0)
/* 0EEF28 802CA578 0C0B1EAF */  jal   get_variable
/* 0EEF2C 802CA57C 26100004 */   addiu $s0, $s0, 4
/* 0EEF30 802CA580 8E050000 */  lw    $a1, ($s0)
/* 0EEF34 802CA584 26100004 */  addiu $s0, $s0, 4
/* 0EEF38 802CA588 0220202D */  daddu $a0, $s1, $zero
/* 0EEF3C 802CA58C 0C0B1EAF */  jal   get_variable
/* 0EEF40 802CA590 0040902D */   daddu $s2, $v0, $zero
/* 0EEF44 802CA594 0220202D */  daddu $a0, $s1, $zero
/* 0EEF48 802CA598 8E050000 */  lw    $a1, ($s0)
/* 0EEF4C 802CA59C 0C0B1EAF */  jal   get_variable
/* 0EEF50 802CA5A0 0040882D */   daddu $s1, $v0, $zero
/* 0EEF54 802CA5A4 3244FFFF */  andi  $a0, $s2, 0xffff
/* 0EEF58 802CA5A8 27A50020 */  addiu $a1, $sp, 0x20
/* 0EEF5C 802CA5AC 27A60024 */  addiu $a2, $sp, 0x24
/* 0EEF60 802CA5B0 27A70028 */  addiu $a3, $sp, 0x28
/* 0EEF64 802CA5B4 27A3002C */  addiu $v1, $sp, 0x2c
/* 0EEF68 802CA5B8 AFA30010 */  sw    $v1, 0x10($sp)
/* 0EEF6C 802CA5BC 27A30030 */  addiu $v1, $sp, 0x30
/* 0EEF70 802CA5C0 AFA30014 */  sw    $v1, 0x14($sp)
/* 0EEF74 802CA5C4 27A30034 */  addiu $v1, $sp, 0x34
/* 0EEF78 802CA5C8 0040802D */  daddu $s0, $v0, $zero
/* 0EEF7C 802CA5CC 0C046C3B */  jal   get_model_center_and_size
/* 0EEF80 802CA5D0 AFA30018 */   sw    $v1, 0x18($sp)
/* 0EEF84 802CA5D4 0220202D */  daddu $a0, $s1, $zero
/* 0EEF88 802CA5D8 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 0EEF8C 802CA5DC C7A20024 */  lwc1  $f2, 0x24($sp)
/* 0EEF90 802CA5E0 44060000 */  mfc1  $a2, $f0
/* 0EEF94 802CA5E4 44071000 */  mfc1  $a3, $f2
/* 0EEF98 802CA5E8 C7A00028 */  lwc1  $f0, 0x28($sp)
/* 0EEF9C 802CA5EC 0200282D */  daddu $a1, $s0, $zero
/* 0EEFA0 802CA5F0 0C052757 */  jal   play_sound_at_position
/* 0EEFA4 802CA5F4 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0EEFA8 802CA5F8 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0EEFAC 802CA5FC 8FB20040 */  lw    $s2, 0x40($sp)
/* 0EEFB0 802CA600 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0EEFB4 802CA604 8FB00038 */  lw    $s0, 0x38($sp)
/* 0EEFB8 802CA608 24020002 */  addiu $v0, $zero, 2
/* 0EEFBC 802CA60C 03E00008 */  jr    $ra
/* 0EEFC0 802CA610 27BD0048 */   addiu $sp, $sp, 0x48

PlaySoundAtCollider:
/* 0EEFC4 802CA614 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0EEFC8 802CA618 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0EEFCC 802CA61C 0080882D */  daddu $s1, $a0, $zero
/* 0EEFD0 802CA620 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0EEFD4 802CA624 AFB20030 */  sw    $s2, 0x30($sp)
/* 0EEFD8 802CA628 AFB00028 */  sw    $s0, 0x28($sp)
/* 0EEFDC 802CA62C 8E30000C */  lw    $s0, 0xc($s1)
/* 0EEFE0 802CA630 8E050000 */  lw    $a1, ($s0)
/* 0EEFE4 802CA634 0C0B1EAF */  jal   get_variable
/* 0EEFE8 802CA638 26100004 */   addiu $s0, $s0, 4
/* 0EEFEC 802CA63C 8E050000 */  lw    $a1, ($s0)
/* 0EEFF0 802CA640 26100004 */  addiu $s0, $s0, 4
/* 0EEFF4 802CA644 0220202D */  daddu $a0, $s1, $zero
/* 0EEFF8 802CA648 0C0B1EAF */  jal   get_variable
/* 0EEFFC 802CA64C 0040902D */   daddu $s2, $v0, $zero
/* 0EF000 802CA650 0220202D */  daddu $a0, $s1, $zero
/* 0EF004 802CA654 8E050000 */  lw    $a1, ($s0)
/* 0EF008 802CA658 0C0B1EAF */  jal   get_variable
/* 0EF00C 802CA65C 0040802D */   daddu $s0, $v0, $zero
/* 0EF010 802CA660 0240202D */  daddu $a0, $s2, $zero
/* 0EF014 802CA664 27A50018 */  addiu $a1, $sp, 0x18
/* 0EF018 802CA668 27A6001C */  addiu $a2, $sp, 0x1c
/* 0EF01C 802CA66C 27A70020 */  addiu $a3, $sp, 0x20
/* 0EF020 802CA670 0C016F84 */  jal   get_collider_center
/* 0EF024 802CA674 0040882D */   daddu $s1, $v0, $zero
/* 0EF028 802CA678 0200202D */  daddu $a0, $s0, $zero
/* 0EF02C 802CA67C C7A00018 */  lwc1  $f0, 0x18($sp)
/* 0EF030 802CA680 C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 0EF034 802CA684 44060000 */  mfc1  $a2, $f0
/* 0EF038 802CA688 44071000 */  mfc1  $a3, $f2
/* 0EF03C 802CA68C C7A00020 */  lwc1  $f0, 0x20($sp)
/* 0EF040 802CA690 0220282D */  daddu $a1, $s1, $zero
/* 0EF044 802CA694 0C052757 */  jal   play_sound_at_position
/* 0EF048 802CA698 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0EF04C 802CA69C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0EF050 802CA6A0 8FB20030 */  lw    $s2, 0x30($sp)
/* 0EF054 802CA6A4 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0EF058 802CA6A8 8FB00028 */  lw    $s0, 0x28($sp)
/* 0EF05C 802CA6AC 24020002 */  addiu $v0, $zero, 2
/* 0EF060 802CA6B0 03E00008 */  jr    $ra
/* 0EF064 802CA6B4 27BD0038 */   addiu $sp, $sp, 0x38

/* 0EF068 802CA6B8 00000000 */  nop   
/* 0EF06C 802CA6BC 00000000 */  nop   
