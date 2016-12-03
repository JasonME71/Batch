@echo off
choice /c BP /n /m "Do you want to use [B]lazing Light, or [P]iercing Light"
   if %errorlevel%==1 goto Blazing_Light
   if %errorlevel%==2 goto Piercing_Light

:Blazing_Light
set /a Awep=%ARM%
set /a PlayerHP=%PlayerHP%+%ARM%
echo Light energy bursts from your armor, dealing %Awep%DMG
echo +%ARM%HP
pause
goto :eof

:Piercing_Light
set /a Awep=%wep%*2+(%ARM%*.5)
echo You deal %Awep%DMG
echo.
pause
goto :eof
   