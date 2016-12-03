@echo off
choice /c VG /n /m "Do you want to use [V]ampyric Gaze, or [G]orgons Ray?"
%errorlevel%==1 goto Vampyric_Gaze
%errorlevel%==2 goto Gogons_Ray

:Vampyric_Gaze
set /a Awep=(%EnemHP%*.15)
set /a PlayerHP=%PlayerHP%+(%EnemHP%*.15)
echo You grasp your enemies soul, and deal %Awep%DMG
echo.
echo +%Awep%HP
pause
goto :eof

:Gorgons_Ray
set /a Awep=(%wep%*3)
set /a NRGY=%NRGy%+3
echo You attack your enemy with great force, dealing %Awep%DMG
echo.
echo +3NRGY
pause
goto :eof
