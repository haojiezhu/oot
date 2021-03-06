glabel func_80861DC8
/* 02778 80861DC8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0277C 80861DCC AFB00028 */  sw      $s0, 0x0028($sp)
/* 02780 80861DD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02784 80861DD4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02788 80861DD8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0278C 80861DDC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 02790 80861DE0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02794 80861DE4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 02798 80861DE8 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 0279C 80861DEC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 027A0 80861DF0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 027A4 80861DF4 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 027A8 80861DF8 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 027AC 80861DFC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 027B0 80861E00 AFA40034 */  sw      $a0, 0x0034($sp)
/* 027B4 80861E04 C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 027B8 80861E08 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 027BC 80861E0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027C0 80861E10 4604303E */  c.le.s  $f6, $f4
/* 027C4 80861E14 00000000 */  nop
/* 027C8 80861E18 45020025 */  bc1fl   .L80861EB0
/* 027CC 80861E1C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 027D0 80861E20 0C00BE0A */  jal     Audio_PlayActorSound2

/* 027D4 80861E24 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 027D8 80861E28 C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 027DC 80861E2C 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 027E0 80861E30 C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 027E4 80861E34 4600540D */  trunc.w.s $f16, $f10
/* 027E8 80861E38 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 027EC 80861E3C 2408000C */  addiu   $t0, $zero, 0x000C         ## $t0 = 0000000C
/* 027F0 80861E40 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 027F4 80861E44 44028000 */  mfc1    $v0, $f16
/* 027F8 80861E48 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 027FC 80861E4C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 02800 80861E50 00021023 */  subu    $v0, $zero, $v0
/* 02804 80861E54 14400003 */  bne     $v0, $zero, .L80861E64
/* 02808 80861E58 AE0207E4 */  sw      $v0, 0x07E4($s0)           ## 000007E4
/* 0280C 80861E5C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02810 80861E60 AE1907E4 */  sw      $t9, 0x07E4($s0)           ## 000007E4
.L80861E64:
/* 02814 80861E64 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 02818 80861E68 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0281C 80861E6C A20807C8 */  sb      $t0, 0x07C8($s0)           ## 000007C8
/* 02820 80861E70 AE0907E8 */  sw      $t1, 0x07E8($s0)           ## 000007E8
/* 02824 80861E74 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02828 80861E78 44060000 */  mfc1    $a2, $f0
/* 0282C 80861E7C 44070000 */  mfc1    $a3, $f0
/* 02830 80861E80 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 02834 80861E84 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 02838 80861E88 24A5C438 */  addiu   $a1, $a1, 0xC438           ## $a1 = 0600C438
/* 0283C 80861E8C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 02840 80861E90 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 02844 80861E94 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02848 80861E98 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0284C 80861E9C 3C058086 */  lui     $a1, %hi(func_808603CC)    ## $a1 = 80860000
/* 02850 80861EA0 24A503CC */  addiu   $a1, $a1, %lo(func_808603CC) ## $a1 = 808603CC
/* 02854 80861EA4 0C217D94 */  jal     EnTest_SetupAction
/* 02858 80861EA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0285C 80861EAC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80861EB0:
/* 02860 80861EB0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02864 80861EB4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02868 80861EB8 03E00008 */  jr      $ra
/* 0286C 80861EBC 00000000 */  nop
