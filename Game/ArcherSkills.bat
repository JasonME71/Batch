@echo off
@echo off
choice /c SL /n /m "Do you want to use [S]hadow Shot, or [L]eaching Flame?"
%errorlevel%==1 goto Shadow_Shot
%errorlevel%==2 goto Leaching_Flame

:Shadow_Shot
set /a Awep=%wep%*2
echo YOu fire an arrow from the shadows dealing %Awep%DMG
echo.
pause
goto :eof

:Leaching_Flame
set /a Awep=%wep%
set /a PlayerHP=%PlayerHP%+%wep%
echo You stick your enemy with a vampyric flaming arrow, dealing %Awep%DMG
echo.
echo +%wep%HP
pause
goto :eof
