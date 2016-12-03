@echo off
choice /c SB /n /m "Do you want to use [S]lip Gate, or [B]lood Letting?"
%errorlevel%==1 goto Slip_Gate
%errorlevel%==2 goto Blood_Letting

:Slip_Gate
set /a Awep=%wep%*1.5
echo You Slip behind your enemy and deal %Awep%DMG
echo.
pause
goto :eof

:Blood_Letting
set /a Awep=(%wep%*3)
set /a PlayerHP=%PlayerHP%+(%wep%*.5)
set /a NRGY=%NRGY%+1
echo You attack your enemy with great force, dealing %Awep%DMG
echo.
echo +1NRGY
echo.
echo +(%wep%*.5)
pause
goto :eof
