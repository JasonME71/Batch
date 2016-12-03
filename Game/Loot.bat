@echo off
set lvl=%1

SET /a DropChance=(%RANDOM%*100/32768)+1
      if %DropChance% LEQ 30 goto NoDrop
      if %DropChance% EQU 31 goto Common
      if %DropChance% EQU 32 goto Common
      if %DropChance% EQU 33 goto Common
      if %DropChance% EQU 34 goto Common
      if %DropChance% EQU 35 goto Common
      if %DropChance% EQU 36 goto Common
      if %DropChance% EQU 37 goto Common
      if %DropChance% EQU 38 goto Common
      if %DropChance% EQU 39 goto Common
      if %DropChance% EQU 40 goto Common
      if %DropChance% EQU 41 goto Common
      if %DropChance% EQU 42 goto Common
      if %DropChance% EQU 43 goto Common
      if %DropChance% EQU 44 goto Common
      if %DropChance% EQU 45 goto Common
      if %DropChance% EQU 46 goto Common
      if %DropChance% EQU 47 goto Common
      if %DropChance% EQU 48 goto Common 
      if %DropChance% EQU 49 goto Common
      if %DropChance% EQU 50 goto Common
      if %DropChance% EQU 51 goto Common
      if %DropChance% EQU 52 goto Common
      if %DropChance% EQU 53 goto Common 
      if %DropChance% EQU 54 goto Common 
      if %DropChance% EQU 55 goto Common 
      if %DropChance% EQU 56 goto Common 
      if %DropChance% EQU 57 goto Common 
      if %DropChance% EQU 58 goto Common 
      if %DropChance% EQU 59 goto Common 
      if %DropChance% EQU 60 goto Common 
      if %DropChance% EQU 61 goto Uncommon
      if %DropChance% EQU 62 goto Uncommon
      if %DropChance% EQU 63 goto Uncommon
      if %DropChance% EQU 64 goto Uncommon
      if %DropChance% EQU 65 goto Uncommon
      if %DropChance% EQU 66 goto Uncommon
      if %DropChance% EQU 67 goto Uncommon
      if %DropChance% EQU 68 goto Uncommon
      if %DropChance% EQU 69 goto Uncommon
      if %DropChance% EQU 70 goto Uncommon
      if %DropChance% EQU 71 goto Uncommon
      if %DropChance% EQU 72 goto Uncommon
      if %DropChance% EQU 73 goto Uncommon
      if %DropChance% EQU 74 goto Uncommon
      if %DropChance% EQU 75 goto Uncommon
      if %DropChance% EQU 76 goto Uncommon
      if %DropChance% EQU 77 goto Uncommon
      if %DropChance% EQU 78 goto Uncommon
      if %DropChance% EQU 79 goto Uncommon
      if %DropChance% EQU 80 goto Uncommon
      if %DropChance% EQU 81 goto Rare
      if %DropChance% EQU 82 goto Rare
      if %DropChance% EQU 83 goto Rare
      if %DropChance% EQU 84 goto Rare
      if %DropChance% EQU 85 goto Rare
      if %DropChance% EQU 86 goto Unique
      if %DropChance% EQU 87 goto Unique
      if %DropChance% EQU 88 goto Unique
      if %DropChance% EQU 89 goto Unique
      if %DropChance% EQU 90 goto Unique
      if %DropChance% EQU 91 goto Unique
      if %DropChance% EQU 92 goto Unique
      if %DropChance% EQU 93 goto Unique
      if %DropChance% EQU 94 goto Unique
      if %DropChance% EQU 95 goto Legandary
      if %DropChance% EQU 96 goto Legandary
      if %DropChance% EQU 97 goto Legandary
      if %DropChance% EQU 98 goto Legandary
      if %DropChance% EQU 99 goto Legandary
      if %DropChance% EQU 100 goto Un-Unobtainium
pause
echo Its broken

:NoDrop
echo NoDrop
pause
cls
goto AfterNoDrop
:Common
SET /a LootRoll=(%RANDOM%*100/32768)+1
       if %LootRoll% LEQ 50 goto CommonWep
       if %LootRoll% GTR 50 goto CommonARM
pause
:CommonWep
echo You receive a common weapon drop!
pause
cls
SET /a Nwep=(%RANDOM%*100/32768)+1 + (%lvl%)
SET /p NwepCHOOSE=This weapon deals %Nwep% DMG, you currant weapon deals %wep% DMG.Type E if you want to Equip, and T if you want to trash.
      if %NwepChoose%==E goto EquipWep
      if %NwepChoose%==T goto Trash
:CommonARM
echo You receive a common armor drop
pause
cls
SET /a NARM=(%RANDOM%*100/32768)+1 + (%lvl%)
SET /p NARMCHOOSE=This item has +%NARM% Armor. Type E if you want to equip, and T if you want to trash.
      if %NARMCHOOSE%==E goto EquipARM
      if %NARMCHOOSE%==T goto Trash



pause
cls
goto end
:Uncommon
SET /a LootRoll=(%RANDOM%*100/32768)+1
       if %LootRoll% LEQ 50 goto UncommonWep
       if %LootRoll% GTR 50 goto UncommonARM
pause
:UncommonWep
echo You receive an uncommon weapon drop!
pause
cls
SET /a Nwep=(%RANDOM%*100/32768)+1 + 75 + (%lvl%*2)
SET /p NwepCHOOSE=This weapon deals %Nwep% DMG, you currant weapon deals %wep% DMG.Type E if you want to Equip, and T if you want to trash.
      if %NwepChoose%==E goto EquipWep
      if %NwepChoose%==T goto Trash
:UncommonARM
echo You receive an uncommon armor drop
pause
cls
SET /a NARM=(%RANDOM%*100/32768)+1 + 75 + (%lvl%*2)
SET /p NARMCHOOSE=This item has +%NARM% Armor. Type E if you want to equip, and T if you want to trash.
      if %NARMCHOOSE%==E goto EquipARM
      if %NARMCHOOSE%==T goto Trash
:Rare
SET /a LootRoll=(%RANDOM%*100/32768)+1
       if %LootRoll% LEQ 50 goto RareWep
       if %LootRoll% GTR 50 goto RareARM
pause
:RareWep
echo You receive a rare weapon drop!
pause
cls
SET /a Nwep=(%RANDOM%*100/32768)+1 + 100 + (%lvl%*3)
SET /p NwepCHOOSE=This weapon deals %Nwep% DMG, you currant weapon deals %wep% DMG.Type E if you want to Equip, and T if you want to trash.
      if %NwepChoose%==E goto EquipWep
      if %NwepChoose%==T goto Trash
:RareARM
echo You receive a rare armor drop
pause
cls
SET /a NARM=(%RANDOM%*100/32768)+1 + 100 + (%lvl%*3)
SET /p NARMCHOOSE=This item has +%NARM% Armor. Type E if you want to equip, and T if you want to trash.
      if %NARMCHOOSE%==E goto EquipARM
      if %NARMCHOOSE%==T goto Trash

:Unique
SET /a LootRoll=(%RANDOM%*100/32768)+1
       if %LootRoll% LEQ 50 goto UniqueWep
       if %LootRoll% GTR 50 goto UniqueARM
pause
:UniqueWep
echo You receive a Unique weapon drop
pause
cls
SET /a Nwep=(%RANDOM%*100/32768)+1 + 150 + (%lvl%*4)
SET /p NwepCHOOSE=This weapon deals %Nwep% DMG, you currant weapon deals %wep% DMG.Type E if you want to Equip, and T if you want to trash.
      if %NwepChoose%==E goto EquipWep
      if %NwepChoose%==T goto Trash
:UniqueARM
echo You receive a Unique armor drop
pause
cls
SET /a NARM=(%RANDOM%*100/32768)+1 + 150 + (%lvl%*4)
SET /p NARMCHOOSE=This item has +%NARM% Armor. Type E if you want to equip, and T if you want to trash.
      if %NARMCHOOSE%==E goto EquipARM
      if %NARMCHOOSE%==T goto Trash

:Legandary
SET /a LootRoll=(%RANDOM%*100/32768)+1
       if %LootRoll% LEQ 50 goto LegandaryWep
       if %LootRoll% GTR 50 goto LegandaryARM
pause
:LegandaryWep
echo You receive a LEGANDARY weapon drop
pause
cls
SET /a Nwep=(%RANDOM%*100/32768)+1 + 250 + (%lvl%*4)
SET /p NwepCHOOSE=This weapon deals %Nwep% DMG, you currant weapon deals %wep% DMG.Type E if you want to Equip, and T if you want to trash.
      if %NwepChoose%==E goto EquipWep
      if %NwepChoose%==T goto Trash
:LegandaryARM
echo You receive a LEGANDARY armor drop
pause
cls
SET /a NARM=(%RANDOM%*100/32768)+1 + 250 + (%lvl%*4)
SET /p NARMCHOOSE=This item has +%NARM% Armor. Type E if you want to equip, and T if you want to trash.
      if %NARMCHOOSE%==E goto EquipARM
      if %NARMCHOOSE%==T goto Trash

:Un-Unobtainium
SET /a LootRoll=(%RANDOM%*100/32768)+1
       if %LootRoll% LEQ 50 goto Un-UnobtainiumWep
       if %LootRoll% GTR 50 goto Un-UnobtainiumARM
pause
:Un-UnobtainiumWep
echo You receive a UN-UNOBTAINIUM weapon drop
pause
cls
SET /a Nwep=(%RANDOM%*100/32768)+1 + 350 + (%lvl%*4)
SET /p NwepCHOOSE=This weapon deals %Nwep% DMG, you currant weapon deals %wep% DMG.Type E if you want to Equip, and T if you want to trash.
      if %NwepChoose%==E goto EquipWep
      if %NwepChoose%==T goto Trash
:Un-UnobtainiumARM
echo You receive an UN-UNOBTAINIUM armor drop
pause
cls
SET /a NARM=(%RANDOM%*100/32768)+1 + 350 + (%lvl%*4)
SET /p NARMCHOOSE=This item has +%NARM% Armor. Type E if you want to equip, and T if you want to trash.
      if %NARMCHOOSE%==E goto EquipARM
      if %NARMCHOOSE%==T goto Trash


:EquipARM
SET /a ARM=%NARM%
echo Your new Armor Set has %ARM% armor!
pause >nul
goto :eof
:EquipWep
SET /a wep=%Nwep%
echo Your new weapon DMG is %wep%, Congratz.
pause
goto :eof

:Trash
echo Your new item has been trashed
pause
cls
:eof
:AfterNoDrop
echo It seems like you have gotton no drop, im sorry, but it happens.
pause
goto :eof