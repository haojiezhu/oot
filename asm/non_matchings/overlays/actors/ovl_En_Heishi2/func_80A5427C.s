glabel func_80A5427C
/* 013DC 80A5427C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 013E0 80A54280 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013E4 80A54284 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013E8 80A54288 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 013EC 80A5428C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 013F0 80A54290 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 013F4 80A54294 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 013F8 80A54298 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 013FC 80A5429C 0C042F6F */  jal     func_8010BDBC              
/* 01400 80A542A0 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01404 80A542A4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01408 80A542A8 54410019 */  bnel    $v0, $at, .L80A54310       
/* 0140C 80A542AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01410 80A542B0 0C041AF2 */  jal     func_80106BC8              
/* 01414 80A542B4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01418 80A542B8 50400015 */  beql    $v0, $zero, .L80A54310     
/* 0141C 80A542BC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01420 80A542C0 860E030E */  lh      $t6, 0x030E($s0)           ## 0000030E
/* 01424 80A542C4 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 01428 80A542C8 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 0142C 80A542CC 15C0000A */  bne     $t6, $zero, .L80A542F8     
/* 01430 80A542D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01434 80A542D4 A600030E */  sh      $zero, 0x030E($s0)         ## 0000030E
/* 01438 80A542D8 860F030E */  lh      $t7, 0x030E($s0)           ## 0000030E
/* 0143C 80A542DC A20F030A */  sb      $t7, 0x030A($s0)           ## 0000030A
/* 01440 80A542E0 0C041B33 */  jal     func_80106CCC              
/* 01444 80A542E4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01448 80A542E8 3C1880A5 */  lui     $t8, %hi(func_80A53908)    ## $t8 = 80A50000
/* 0144C 80A542EC 27183908 */  addiu   $t8, $t8, %lo(func_80A53908) ## $t8 = 80A53908
/* 01450 80A542F0 10000006 */  beq     $zero, $zero, .L80A5430C   
/* 01454 80A542F4 AE18025C */  sw      $t8, 0x025C($s0)           ## 0000025C
.L80A542F8:
/* 01458 80A542F8 00280821 */  addu    $at, $at, $t0              
/* 0145C 80A542FC 3C0980A5 */  lui     $t1, %hi(func_80A54320)    ## $t1 = 80A50000
/* 01460 80A54300 A03903DC */  sb      $t9, 0x03DC($at)           ## 000003DC
/* 01464 80A54304 25294320 */  addiu   $t1, $t1, %lo(func_80A54320) ## $t1 = 80A54320
/* 01468 80A54308 AE09025C */  sw      $t1, 0x025C($s0)           ## 0000025C
.L80A5430C:
/* 0146C 80A5430C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A54310:
/* 01470 80A54310 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01474 80A54314 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01478 80A54318 03E00008 */  jr      $ra                        
/* 0147C 80A5431C 00000000 */  nop
