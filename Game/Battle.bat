SET EnemHP=%1
SET EnemDMG=%2
SET EnemName=%3
SET PlayerName =%4
SET ARM =%5
SET wep =%6
SET PlayerHP =%7
SET NRGY =%8
SET lvl =%9

:start
SET /a NRGY=%NRGY% + 1
choice /an /n /m "Do you want to use an [A]bility, or a [N]ormal attack?"
  if  %errorlevel%==1 goto AbilityAttack
  if  %errorlevel%==2 goto NormAtack
:AbilityAttack
if %PlayerClass% = HunterBattle
if %PlayerClass% = ArcherBattle
if %PlayerClass% = MageBattle
if %PlayerClass% = PaladinBattle

:HunterBattle
call HunterSkills
goto AbilityAttack2

:ArcherBattle
call ArcherSkills
goto AbilityAttack2

:MageBattle
call MageSkills
goto AbilityAttack2

:PaladinBattle
call PaladinSkills
goto AbilityAttack2

:AbilityAttack2
echo You deal %Awep% to your target
set /a Ecombat= %EnemHP% - %Awep%
echo %EnemName% HP: %EnemHP% - %Awep% = %Ecombat%
set /a EnemHP=%Ecombat%
pause
if %Ecombat% LEQ 0 goto Win
echo %EnemName% deals %EnemDMG% DMG to you!
set /a pcombat= %PlayerHP% - %EnemDMG%
echo %PlayerName% HP: %PlayerHP% - %EnemDMG% = %pcombat%
set /a PlayerHP=%pcombat%
if %pcombat% LEQ 0 goto Lose
goto start

:NormAttack
echo You deal %wep% to your target
set /a Ecombat= %EnemHP% - %wep%
echo %EnemName% HP: %EnemHP% - %wep% = %Ecombat%
set /a TMouse=%Ecombat%
pause
if %Ecombat% LEQ 0 goto Win
echo Mouse deals %EnemDMG% DMG to you!
set /a pcombat= %PlayerHP% - %EnemDMG%
echo %PlayerName% HP: %PlayerHP% - %EnemDMG% = %pcombat%
set /a PlayerHP=%pcombat%
if %pcombat% LEQ 0 goto Lose
goto start






:Lose
echo You Lost
pause
goto :eof



:Win
echo Congratulations, you beat your foe!
pause
cls
set /a lvl=%lvl%+(1*.2)
pause
Call Loot %lvl%
goto :eof



