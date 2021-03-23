.include "macro.inc"

.section .data

glabel D_80240630_A83AC0
.word 0x00000000, 0x001E0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00170013, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00230018, 0x00000000, 0x00000000, 0x00000000, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x00060000, 0x00000000, 0x00200018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xFE363C86, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AB680, 0xF24A5280, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2524A80, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xF24BDA80, 0xF24E7CE7, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xF24D8680, 0xF24CB280, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0xF24A7A80, 0xF24A7A80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xFE363C86, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AD480, 0xF24A4680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24F2A80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xFE363C86, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AD480, 0xF24A4C80, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24F2A80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xFE363C86, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AD480, 0xF24A5280, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24FF280, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xFE363C86, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AD480, 0xF24A4680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24D3680, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7E80, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000006, NpcJump0, 0x00000002, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x0000000A, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000001, 0xF24A7E80, 0x00000043, 0x00000005, GetNpcPos, 0x00000001, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000006, NpcJump0, 0x00000001, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x0000000A, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000003, 0xF24A7E80, 0x00000043, 0x00000005, GetNpcPos, 0x00000003, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000006, NpcJump0, 0x00000003, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x0000000A, 0x00000016, 0x00000001, 0x00000004, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000004, 0xF24A7E80, 0x00000043, 0x00000005, GetNpcPos, 0x00000004, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000006, NpcJump0, 0x00000004, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x0000000A, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000007BC, 0x00000032, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, SetNpcRotation, 0xFE363C8A, 0x00000000, 0xFE363C80, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFE363C80, 0x000000E9, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7CE7, 0x00000057, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x0066011E, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7D4D, 0x00000043, 0x00000006, NpcJump0, 0x00000002, 0xFFFFFFCE, 0x000000C8, 0x000000AA, 0x00000028, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000002, 0x00000200, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x0066001E, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000001, 0xF24A7D4D, 0x00000043, 0x00000006, NpcJump0, 0x00000001, 0x00000000, 0x000000C8, 0x0000007F, 0x00000028, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000002, 0x00000200, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x0066021E, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000003, 0xF24A7D4D, 0x00000043, 0x00000006, NpcJump0, 0x00000003, 0x00000064, 0x000000C8, 0x000000C8, 0x00000028, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000003, 0x00000200, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000003, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000016, 0x00000001, 0x00000004, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000004, 0x0066031E, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000004, 0xF24A7D4D, 0x00000043, 0x00000006, NpcJump0, 0x00000004, 0x00000096, 0x000000C8, 0x00000096, 0x00000028, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000004, 0x00000200, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000004, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8680, 0x00000043, 0x00000004, PlayerMoveTo, 0xFFFFFF6A, 0xFE363C82, 0x00000000, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000006, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x802406E0, 0x00000024, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000005, 0x00000001, 0x00000008, 0x00000008, 0x00000001, 0x00000096, 0x0000000B, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000004, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000000FA, 0x00000008, 0x00000001, 0x0000000F, 0x0000000B, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000004, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000064, 0x00000000, 0x00000008, 0x00000008, 0x00000001, 0x0000001E, 0x0000000B, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000004, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_802D5FA4, 0x00000007, 0x00000003, 0x00000001, 0x00000005, 0x00000057, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830001, 0x00830001, 0x00000000, 0x00130053, 0x00000024, 0x00000002, 0xFAA2B580, 0x00000001, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000052, 0x00000002, 0x00000008, 0x00000024, 0x00000002, 0xFE363C83, 0x00000041, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24BE280, 0x00000046, 0x00000001, 0x80240858, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000010, 0x7FFFFE00, 0x00000056, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x000000DC, 0x000000B4, 0x000000A0, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00660111, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000002, 0x00000001, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7E80, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000002, 0x00000200, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000002, 0x00000008, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000002, 0x00000014, 0x000000A0, 0x00000014, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x000003E9, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0x00000014, 0x00000000, 0x000000A0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000002, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00660105, 0x00000043, 0x00000003, SetNpcYaw, 0x00000002, 0x0000010E, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0x000000F8, 0x000000B4, 0x000000B9, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00660011, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000001, 0x00000001, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000001, 0xF24A7E80, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000001, 0x00000200, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000001, 0x00000008, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0x00000030, 0x000000B9, 0x00000014, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000001, 0x000003E9, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0x00000030, 0x00000000, 0x000000B9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00660005, 0x00000043, 0x00000003, SetNpcYaw, 0x00000001, 0x0000010E, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, SetNpcPos, 0x00000003, 0x00000104, 0x000000B4, 0x0000006E, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x00660211, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000003, 0x00000001, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000003, 0xF24A7E80, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000003, 0x00000200, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000003, 0x00000008, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000003, 0x0000003C, 0x0000006E, 0x00000014, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000003, 0x000003E9, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0x0000003C, 0x00000000, 0x0000006E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000003, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x00660205, 0x00000043, 0x00000003, SetNpcYaw, 0x00000003, 0x0000010E, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000005, SetNpcPos, 0x00000004, 0x00000120, 0x000000B4, 0x0000009B, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000004, 0x00660311, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000004, 0x00000001, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000004, 0xF24A7E80, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000004, 0x00000200, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000004, 0x00000008, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000004, 0x00000058, 0x0000009B, 0x00000014, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000004, 0x000003E9, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0x00000058, 0x00000000, 0x0000009B, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, EnableNpcBlur, 0x00000004, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000004, 0x00660305, 0x00000043, 0x00000003, SetNpcYaw, 0x00000004, 0x0000010E, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000041, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000010, 0x7FFFFE00, 0x00000056, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000005, 0x00000027, 0x00000002, 0xFE363C81, 0x0000001E, 0x00000043, 0x0000000F, PlayEffect, 0x0000001A, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x000020F3, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x0066011A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000005, GetNpcPos, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000005, 0x00000027, 0x00000002, 0xFE363C81, 0x0000001E, 0x00000043, 0x0000000F, PlayEffect, 0x0000001A, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000001, 0x000020F3, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x0066001A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, GetNpcPos, 0x00000003, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000005, 0x00000027, 0x00000002, 0xFE363C81, 0x0000001E, 0x00000043, 0x0000000F, PlayEffect, 0x0000001A, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000003, 0x000020F3, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x0066021A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000005, GetNpcPos, 0x00000004, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000005, 0x00000027, 0x00000002, 0xFE363C81, 0x0000001E, 0x00000043, 0x0000000F, PlayEffect, 0x0000001A, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000004, 0x000020F3, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000004, 0x0066031A, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x0066011A, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x0066001A, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x0066021A, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000004, 0x0066031A, 0x00000056, 0x00000000, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8680, 0x00000043, 0x00000004, PlayerMoveTo, 0xFFFFFFCE, 0x00000096, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x0066011A, 0x0066011A, 0x00000000, 0x00130054, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x802408F4, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00660104, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00660004, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000003, 0x00660204, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000004, 0x00660304, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00660114, 0x00660104, 0x00000000, 0x00130055, 0x00000043, 0x00000002, ShowChoice, 0x001E0013, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, ContinueSpeech, 0x00000002, 0x00660114, 0x00660104, 0x00000000, 0x00130056, 0x00000012, 0x00000000, 0x00000043, 0x00000006, ContinueSpeech, 0x00000002, 0x00660114, 0x00660104, 0x00000000, 0x00130057, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x802406E0, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830001, 0x00830001, 0x00000000, 0x00130058, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24BE280, 0x00000046, 0x00000001, 0x802408F4, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00660114, 0x00660104, 0x00000000, 0x00130059, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000047, 0x00000001, 0x00000008, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x0013005A, 0x00000000, 0x00000096, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000010E, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, SetNpcPos, 0x00000005, 0xFFFFFF6A, 0x00000000, 0x0000008C, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000005, 0x0021000B, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000005, 0xF24A9A80, 0x00000056, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002B, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, GetNpcPos, 0x00000005, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x0000000E, 0x00000002, 0xFE363C80, 0xFE363C83, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, SetPlayerFlagBits, 0x10101000, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000007BC, 0x00000032, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C80, 0x00000000, 0x00000043, 0x00000001, func_80240050_A834E0, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000003, SetPlayerFlagBits, 0x10101000, 0x00000000, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000045, 0x00000002, 0x80240A2C, 0xFD050F80, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000045, 0x00000002, 0x80240A2C, 0xFD050F81, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000045, 0x00000002, 0x80240A2C, 0xFD050F82, 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000045, 0x00000002, 0x80240A2C, 0xFD050F83, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000016, 0x0000008C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000044, 0x00000001, 0x80240BC0, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000032, 0x0000008C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000044, 0x00000001, 0x80240BC0, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x0000003E, 0x0000008C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000044, 0x00000001, 0x80240BC0, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x0000005A, 0x0000008C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000044, 0x00000001, 0x80240BC0, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000064, 0x0000008C, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000062, 0x0000008C, 0x00000000, 0x00000049, 0x00000001, 0xFD050F83, 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000044, 0x00000001, 0x80240C64, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000019, 0x0000008C, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000046, 0x0000008C, 0x00000000, 0x00000049, 0x00000001, 0xFD050F82, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000044, 0x00000001, 0x80240C64, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x0000004B, 0x0000008C, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x0000001E, 0x0000008C, 0x00000000, 0x00000049, 0x00000001, 0xFD050F80, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000044, 0x00000001, 0x80240C64, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000019, 0x0000008C, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x0000003A, 0x0000008C, 0x00000000, 0x00000049, 0x00000001, 0xFD050F81, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000044, 0x00000001, 0x80240C64, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x0000004B, 0x0000008C, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000005, 0x0000010E, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000005, GetNpcPos, 0x00000005, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0x00000064, 0x0000008C, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000005, 0x00210003, 0x00000043, 0x00000003, SetNpcYaw, 0x00000005, 0x0000010E, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x0013005B, 0x000000A0, 0x00000028, 0x00000008, 0x00000001, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C83, 0x00000064, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x80240990, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000005, 0x00210016, 0x00210003, 0x00000000, 0x0013005C, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x802407BC, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000005, 0x0021000B, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000005, 0xF24A8E80, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0xFFFFFFE2, 0x0000008C, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x0000003C, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000002, StartBossBattle, 0x00000004, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000005, 0x0021001D, 0x0021001D, 0x00000000, 0x00130061, 0x00000024, 0x00000002, 0xFD050F84, 0x00000000, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x802407BC, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x00130062, 0x000000A0, 0x00000028, 0x00000024, 0x00000002, 0xFD050F84, 0x00000001, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000005, 0x0021000B, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000005, 0xF24A9A80, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0xFFFFFFCE, 0x0000008C, 0x00000000, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000010E, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000005, 0xFFFFFF38, 0x0000008C, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000005, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000044, 0x00000001, 0x802400D0, 0x00000005, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFD050F84, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0xF24A8680, 0x00000046, 0x00000001, 0x802406E0, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830001, 0x00830001, 0x00000000, 0x00130063, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xF5DE02AC, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000064, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000096, 0x00000024, 0x00000002, 0xFE363C86, 0xF24BE280, 0x00000046, 0x00000001, 0x80240990, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000005, 0x0021001D, 0x00000043, 0x00000005, SetNpcPos, 0x00000005, 0x00000064, 0x00000000, 0x0000008C, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x000000B8, 0x00000014, 0x00000096, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF5DE02AC, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80240EEC, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, 0x8024257C, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x10000102, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x000000B8, 0x00000014, 0x00000096, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0066001E, 0x00660004, 0x00660005, 0x00660011, 0x0066001A, 0x00660014, 0x00660010, 0x00660015, 0xFFFFFFFF, 0x00000001, 0x80240688, 0x00000000, 0xC47A0000, 0x00000000, 0x03700F08, 0x802426EC, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00660004, 0x00660002, 0x00660003, 0x00660003, 0x00660004, 0x00660004, 0x0066000A, 0x0066000A, 0x00660003, 0x00660003, 0x00660003, 0x00660003, 0x00660003, 0x00660003, 0x00660003, 0x00660003, 0x00000000, 0x00000000, 0x8024270C, 0x00000000, 0x00000002, 0x80240688, 0x00000000, 0xC47A0000, 0x00000000, 0x03700F08, 0x802426EC, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00660104, 0x00660102, 0x00660103, 0x00660103, 0x00660104, 0x00660104, 0x0066010A, 0x0066010A, 0x00660103, 0x00660103, 0x00660103, 0x00660103, 0x00660103, 0x00660103, 0x00660103, 0x00660103, 0x00000000, 0x00000000, 0x8024270C, 0x00000000, 0x00000003, 0x80240688, 0x00000000, 0xC47A0000, 0x00000000, 0x03700D08, 0x802426EC, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00660204, 0x00660202, 0x00660203, 0x00660203, 0x00660204, 0x00660204, 0x0066020A, 0x0066020A, 0x00660203, 0x00660203, 0x00660203, 0x00660203, 0x00660203, 0x00660203, 0x00660203, 0x00660203, 0x00000000, 0x00000000, 0x8024270C, 0x00000000, 0x00000004, 0x80240688, 0x00000000, 0xC47A0000, 0x00000000, 0x03700F08, 0x802426EC, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00660304, 0x00660302, 0x00660303, 0x00660303, 0x00660304, 0x00660304, 0x0066030A, 0x0066030A, 0x00660303, 0x00660303, 0x00660303, 0x00660303, 0x00660303, 0x00660303, 0x00660303, 0x00660303, 0x00000000, 0x00000000, 0x8024270C, 0x00000000, 0x00000005, 0x802406B4, 0x00000000, 0xC47A0000, 0x00000000, 0x03700F08, 0x802426FC, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00210003, 0x00210007, 0x00210007, 0x00210007, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00210003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80240630_A83AC0, 0x00000000, 0xC47A0000, 0x00000000, 0x03704F0C, 0x80242654, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00830001, 0x00830002, 0x00830003, 0x00830003, 0x00830001, 0x00830001, 0x00830006, 0x00830006, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000006, 0x80242730, 0x02070000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000