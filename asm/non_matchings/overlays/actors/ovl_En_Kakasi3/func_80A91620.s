glabel func_80A91620
/* 00900 80A91620 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00904 80A91624 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00908 80A91628 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0090C 80A9162C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00910 80A91630 00A11821 */  addu    $v1, $a1, $at              
/* 00914 80A91634 946204C6 */  lhu     $v0, 0x04C6($v1)           ## 000004C6
/* 00918 80A91638 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0091C 80A9163C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00920 80A91640 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00924 80A91644 10410006 */  beq     $v0, $at, .L80A91660       
/* 00928 80A91648 8CA81C44 */  lw      $t0, 0x1C44($a1)           ## 00001C44
/* 0092C 80A9164C 28410005 */  slti    $at, $v0, 0x0005           
/* 00930 80A91650 1420001E */  bne     $at, $zero, .L80A916CC     
/* 00934 80A91654 2841000B */  slti    $at, $v0, 0x000B           
/* 00938 80A91658 5020001D */  beql    $at, $zero, .L80A916D0     
/* 0093C 80A9165C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A91660:
/* 00940 80A91660 906E03DC */  lbu     $t6, 0x03DC($v1)           ## 000003DC
/* 00944 80A91664 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00948 80A91668 55C00019 */  bnel    $t6, $zero, .L80A916D0     
/* 0094C 80A9166C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00950 80A91670 86050208 */  lh      $a1, 0x0208($s0)           ## 00000208
/* 00954 80A91674 0C0200FC */  jal     func_800803F0              
/* 00958 80A91678 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 0095C 80A9167C 86020208 */  lh      $v0, 0x0208($s0)           ## 00000208
/* 00960 80A91680 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00964 80A91684 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 00968 80A91688 00027880 */  sll     $t7, $v0,  2               
/* 0096C 80A9168C 00EFC021 */  addu    $t8, $a3, $t7              
/* 00970 80A91690 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 00974 80A91694 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00978 80A91698 17200003 */  bne     $t9, $zero, .L80A916A8     
/* 0097C 80A9169C 00000000 */  nop
/* 00980 80A916A0 A6090208 */  sh      $t1, 0x0208($s0)           ## 00000208
/* 00984 80A916A4 86020208 */  lh      $v0, 0x0208($s0)           ## 00000208
.L80A916A8:
/* 00988 80A916A8 10410004 */  beq     $v0, $at, .L80A916BC       
/* 0098C 80A916AC 00025080 */  sll     $t2, $v0,  2               
/* 00990 80A916B0 00EA5821 */  addu    $t3, $a3, $t2              
/* 00994 80A916B4 0C016C69 */  jal     func_8005B1A4              
/* 00998 80A916B8 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
.L80A916BC:
/* 0099C 80A916BC 3C0C80A9 */  lui     $t4, %hi(func_80A911F0)    ## $t4 = 80A90000
/* 009A0 80A916C0 258C11F0 */  addiu   $t4, $t4, %lo(func_80A911F0) ## $t4 = 80A911F0
/* 009A4 80A916C4 10000021 */  beq     $zero, $zero, .L80A9174C   
/* 009A8 80A916C8 AE0C014C */  sw      $t4, 0x014C($s0)           ## 0000014C
.L80A916CC:
/* 009AC 80A916CC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A916D0:
/* 009B0 80A916D0 54410013 */  bnel    $v0, $at, .L80A91720       
/* 009B4 80A916D4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 009B8 80A916D8 906D03DC */  lbu     $t5, 0x03DC($v1)           ## 000003DC
/* 009BC 80A916DC 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 009C0 80A916E0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 009C4 80A916E4 15A0000D */  bne     $t5, $zero, .L80A9171C     
/* 009C8 80A916E8 240540A5 */  addiu   $a1, $zero, 0x40A5         ## $a1 = 000040A5
/* 009CC 80A916EC A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 009D0 80A916F0 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 009D4 80A916F4 0C042DA0 */  jal     func_8010B680              
/* 009D8 80A916F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 009DC 80A916FC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 009E0 80A91700 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009E4 80A91704 0C00B7D5 */  jal     func_8002DF54              
/* 009E8 80A91708 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 009EC 80A9170C 3C0F80A9 */  lui     $t7, %hi(func_80A91A90)    ## $t7 = 80A90000
/* 009F0 80A91710 25EF1A90 */  addiu   $t7, $t7, %lo(func_80A91A90) ## $t7 = 80A91A90
/* 009F4 80A91714 1000000D */  beq     $zero, $zero, .L80A9174C   
/* 009F8 80A91718 AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
.L80A9171C:
/* 009FC 80A9171C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A91720:
/* 00A00 80A91720 1441000A */  bne     $v0, $at, .L80A9174C       
/* 00A04 80A91724 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A08 80A91728 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00A0C 80A9172C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A10 80A91730 0C2A43AF */  jal     func_80A90EBC              
/* 00A14 80A91734 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00A18 80A91738 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00A1C 80A9173C 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00A20 80A91740 8D180680 */  lw      $t8, 0x0680($t0)           ## 00000680
/* 00A24 80A91744 0301C825 */  or      $t9, $t8, $at              ## $t9 = 00800000
/* 00A28 80A91748 AD190680 */  sw      $t9, 0x0680($t0)           ## 00000680
.L80A9174C:
/* 00A2C 80A9174C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A30 80A91750 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A34 80A91754 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A38 80A91758 03E00008 */  jr      $ra                        
/* 00A3C 80A9175C 00000000 */  nop
