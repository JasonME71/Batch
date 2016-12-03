@echo off
setlocal enabledelayedexpansion

Echo Hey, welcome to Severence oblinium 2.0, this version has some important reworks
Echo making the game easier for me to add new stuff
Echo Thank you -Jason Ebat
Pause >nul
SET /a lvl=1
SET /a ARM=0
SET /a wep=%wep% + (%lvl%*2)
SET /a PlayerHP=(%lvl%*10)+%ARM%+150
SET /a NRGY=9
SET /a xp=1
:CharacterCreation
SET /p PlayerName=Please enter your desired name:








choice /c YN /n /m "Are you sure you want %PlayerName% to be your name? [Y] [N]"
    If %errorlevel%==1 goto CharacterCreationStep2
    If %errorlevel%==2 goto CharacterCreation
Echo be sure to enter your options exactly as offered
Pause >nul
Cls
Goto CharacterCreation








:CharacterCreationStep2
Echo Please select a class
choice /c HAMP /n /m "[H]unter, [A]rcher, [M]age, [P]aladin."
  If %errorlevel%==1 goto ClassHunter
  If %errorlevel%==2 goto ClassArcher
  If %errorlevel%==3 goto ClassMage
  If %errorlevel%==4 goto ClassPaladin
Echo be sure to enter the class exactly as shown!
Pause >nul
Cls
Goto CharacterCreationStep2


:ClassHunter
Echo You have chosen the Hunter class. You receive these bonuses if you choose to continue
Echo +35 Base Damage
Echo +2 Base Energy
Echo -5 Base Armor
Echo ABILITY: Slip_Gate, teleport behind your target and deal a critical hit
Echo ABILITY: Blood_Letting, Heal yourself for 50 percent weapon damage and gain 1 energy
choice /c YN /n /m "Are you sure you want this to be your class? [Y] [N]"
  If %errorlevel%==1 goto ClassHunterYes
  If %erorlevel%==2 goto CharacterCreationStep2
Echo be sure to enter your choices exactly as shown
Pause >nul
Cls
Goto ClassHunter
:ClassHunterYes
SET PlayerClass= Hunter
SET /a wep=%wep%+35
SET /a NRGY=%NRGY%+2
SET /a ARM=%ARM%-5
Goto GameStart



:ClassArcher
Echo You have chosen the Archer class. You receive these bonuses if you choose to continue
Echo +10 Base Damage
Echo +5 Base Energy
Echo +0 Base Armor
Echo ABILITY: Shadow_Shot, Fire a deadly arrow from the shadows, dealing 2x damage
Echo ABILITY: Leaching_Flame, Alight your enemy in flame, dealing damage and healing you
choice /c YN /n /m "Are you sure you want this to be you’r class? [Y] [N]"
  If %errorlevel%==1 goto ClassArcherYes
  If %errorlevel%==2 goto CharacterCreationStep2
Echo be sure to enter your choices exactly as shown
Pause >nul
Cls
Goto ClassArcher



:ClassArcherYes
SET PlayerClass= Archer
SET /a wep=%wep%+10
SET /a NRGY=%NRGY%+5
Goto GameStart


:ClassMage
Echo You have chosen the Mage class. You receive these bonuses if you choose to continue
Echo +0 Base Damage
Echo +10 Base Energy
Echo +10 Base Armor
Echo ABILITY: Vampyric_Touch, steals 15 percent of an enemies hp, and heals you for the same amount
Echo ABILITY: Gorgons_Ray, Instantly deals 3x weapon damage, and restores 3 energy
choice /c YN / /m  "Are you sure you want his to be your class? [Y] [N]"
  If %errorlevel%==1 goto ClassMageYes
  If %errorlevel%==2 goto CharacterCreationStep2
Echo be sure to enter your choices exactly as shown
Pause >nul
Cls
Goto ClassMage


:ClassMageYes
SET PlayerClass= Mage
SET /a wep=%wep%+10
SET /a NRGY=%NRGY%+5
SET /a ARM=%ARM%+10
Goto GameStart


:ClassPaladin
Echo You have chosen the Paladin class. You receive these bonuses if you choose to continue
Echo +0 Base Damage
Echo +3 Base Energy
Echo +75 Base Armor
Echo ABILITY: Blazing_Light, Heals for a decent amount and restores 2 energy
Echo ABILITY: Piercing_Spear, Deals 2x weapon damage + 50 percent of your armor
Choice /c YN /n /m "Are you sure you want this to be your class? [Y] [N]" 
  If %errorlevel%==1 goto ClassPaladinYes
  If %errorlevel%==2 goto CharacterCreationStep2
Echo be sure to enter your choices exactly as shown
Pause >nul
Cls
Goto ClassPaladin


:ClassPaladinYes
SET PlayerClass= Paladin
SET /a NRGY=%NRGY%+3
SET /a ARM=%ARM%+75
Goto GameStart


:GameStart
cls
choice /c SIP /n /m ("Choose a starting point to learn about. [S]outhern Hills, [I]ron Temple, Shattered [P]lains")
  If %errorlevel%==3 set StartEnvirement=Shattered_Planes
  If %errorlevel%==2 set StartEnvirement=Iron_Temple
  If %errorlevel%==1 set StartEnvirement=Southern_Hills

  If %StartEnvirement%==Southern_Hills goto Southern_Hills_Lore
  If %StartEnvirement%==Iron_Temple goto Iron_Temple_Lore
  If %StartEnvirement%==Shattered_Planes goto Shattered_Planes_Lore
Echo be sure to enter your response exactly as shown
Pause >nul
Cls
Goto GameStart

:Southern_Hills_Lore
Echo People once lived in advanced times, where one could create in meal in seconds
Echo they could fly great distances, even though it was the peak of our existence there was
Timeout 5 >NUL
Echo still a terrible secret. Weapons of war were able to level cities, anywhere on our planet.
Timeout 4 >NUL
Echo And these hills are where these terrible weapons were made, as well as many other
Timeout 3 >NUL
Echo much smaller weapons.
Timeout 2 >NUL
Echo This is most likely the reason nobody tries to pick a fight with us.
Timeout 3 >NUL
Echo If you choose this envirement you receive +5 attack damage
choice /c YR /n /m "Would you like to choose this zone, or Return to selection? [Y] [R]"
 If %errorlevel%==1 goto Southern_Hills_Start
 If %errorlevel%==2 goto GameStart


:Southern_Hills_Start
echo Honey.. Its time to wake up
timeout 3 >nul
echo Ok, ok, Im getting up. is that bacon I smell?
timeout 3 >nul
echo Yes, Its about to go cold though
timeout 3 >nul
echo I know, Im coming.
timeout 3 >nul
echo *You eat your breakfast*
echo Hey, the blacksmith finished making your sword, im not sure if you still need it though. Better go talk to him
timeout 3 >nul
echo Ok, thanks for keeping me on my toes.
echo *Walking...*
timeout 5 >nul
echo Aye there %PlayerName%, I got you your sword. It deals about 52 DMG, looks like you can hit about %wep%.
choice /c YN /n /m  "You sure you still want this sword? [Y] [N]"
  if %errorlevel%==1 goto WepYes
  if %errorlevel%==2 goto WepNo

:WepYes
echo Good on ya lad, see ya around.
set 90890=52-%wep%
echo +%90890%DMG
set wep=52
pause
goto SHHome
:WepNo
echo Well, thats just fine me, ill see ya later then %PlayerName%
pause

:SHHome
echo When you leave the blacksmiths hut, chaos surrounds your town. Fires lay waste to many homes and parents and children are fleeing.
timeout 5 >nul
echo Immeadiatly you start to run toward your home.
timeout 5 >nul
echo When you get there you see you wife get teleported out of the area. some purple mist surrounding her.
echo.
echo You reach forward to grab her hand and are yanked back by a powerful force
timeout 5 >nul
echo When you turn about, you see a daunting dragonet baring its angry claws at you!
pause >nul

SET EnemHP=500
SET EnemDMG=7
SET EnemName=Screeching_Dragonet
Call EnemData %EnemHP% %EnemDMG% %EnemName%
Call PlayerData %PlayerName% %ARM% %wep% %PlayerHP% %NRGY% %lvl%
echo Battle
pause
Call Battle %EnemHP% %EnemDMG% %EnemName% %PlayerName% %ARM% %wep% %PlayerHP% %NRGY% %lvl%
pause
echo wep=%wep%
goto ArendaleFirst

:Iron_Temple_Lore
Echo The Iron Temple is practically a brick wall, made specifically to block one thing…
timeout 5 >nul
Echo Magic. The Iron Temple was created by the Iron Masons to defend against the War of Mages
timeout 5 >nul
Echo Even though the Temple was made many years ago, the magic resistant metal still stands
timeout 3 >nul
Echo Resiliantly deflecting anything that attempted to attack
timeout 3 >nul
Echo But something weird has been happening lately, we keep getting reports of people going
timeout 3 >nu
Echo mad. I suspect it may be magic, but the King feels it is just a sickness.
Pause >NUL
Choice  /c YR /n /m "Do you want this to be your starting envirement or Return to selection? [Y] [R]"
  If %errorlevel%==1 goto Iron_Temple_Start
  If %errorlevel%==2 goto GameStart
:Iron_Temple_Start
echo HEY, wake up you bloody scoundrals
@timeout 1 >null
echo Its time for training, now grab you weapon at get to the training grounds!
@timeout 3 >null
echo %PlayerName%: Yup, im getting up, you don’t have to be so rude Eric, ya know that right?
@timeout 4 >null
echo Yeah, but I dont really care. I heard the temple was under attack though
@timeout 3 >null
echo Oh, well, im sure its nothing if..
@timeout 3 >null
echo The walls of the barracks started to shake and weapons clattered to the floor.
@timeout 3 >null
echo Eric: Ok! %PlayerName%, get that sword at lets get out of here!
pause
cls
echo +%wep% damage
@timeout 3 >null
echo As %PlayerName% and Eric ran out of the barracks they noticed the entire Iron Temple was under attack
@timeout 4 >null
echo A small creature, something like a Hoblin but more gruesome jumped toward us!
@timeout 3 >null
echo Eric gripped his dagger and threw it towards the perverted Hoblin, but the Hoblin just caught the blade and tackled Eric.
@timeout 5 >null
echo I instantly tightened my grip on the sword I had, and kicked the Hoblin off my friend.
@timeout 4 >null
echo Then I ran toward the beast and pierced it with my sword, the point quickly slipped into the Hoblins chest and through it heart.
pause
echo What was that? 
@timeout 5 >null
echo Eric: I honestly have no idea. We need to get out of here though.
@timeout 4 >null
cls
echo As you and Eric run to the Temple Gates you notice something weird about the tower guards. They had a purple aura around their head.
@timeout 5 >null
echo Eric: Guards! Help, there’s something weird going on!
@timeout 3 >null
echo the guards hefted their bows, took aim, and shot.
@timeout 3 >null
echo before I had time to react the arrow flew straight into Erics chest!
@timeout 3 >null
echo I had no idea what the hell was going on, but I ran. I took the fastest route to Arendale, but before I made it there
echo something had landed in front of me. 
@timeout 6
echo it was the perverted Hoblin, I had no choice but no attack
pause
cls
SET /a EnemyHP=350
SET /a EnemyDMG=9
SET /a EnemyName=Perverted_Hoblin
SET BattleReturn=ArendaleFirst
Call Battle


:Shattered_Plains_Lore
Echo Many years ago there was a battle of technology. Great bombs fell from the sky
timeout 3 >nul
Echo some of these bombs, without proper tracking, landed among the Sea of Sand.
timeout 3 >nul
Echo After these bombs exploded, it formed the Glass Plains of Gamoria
timeout 3 >nul
Echo After this war was over the ruling King requested that his weapon was returned to his only child.
timeout 5 >nul
Echo The transport plane responsible for this was shot down, and the weapon was lost forever.
timeout 5 >nul
Echo Nobody knows where the weapon is, but when the plane landed it shattered the glass for many miles
timeout 5 >nul
Echo The radiant energy hidden beneath the glass was released, and seeped into the blood of many 
timeout 4 >nul
Echo people, granting them unnatural power. We named these people Mages.
timeout 5 >nul
Echo Unfortunately, some Mages thought there was only enough room for one Master Mage
timeout 5 >nul
Echo and caused another great war, The War of Mages.
timeout 5 >nul
Echo This war wiped out all technology and swang us back into medeviel ages.
Echo and also made the magnificent Iron Temple
timeout 5 >nul
Echo You get +5 energy if you start in the Shattered Plains
Pause >NUL
Choice /c YR /n /m "Do you want to select this zone, or Return to selection? [Y] [R]"
  If %errorlevel%==1 goto Shattered_Plains_Start
  If %errorlevel%==1 goto GameStart
 




:ArendaleFirst
Echo Tadaaa
Pause






