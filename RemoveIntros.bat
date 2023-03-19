title Intro Remover 9000

@echo off
del "p3_english\media\NVIDIA*.bik" /s /f /q
del "p3_english\media\SOURCE_LOGO*.bik" /s /f /q

del "p3\media\logo_1_akella*.bik" /s /f /q
del "p3\media\logo_2_RWS*.bik" /s /f /q
del "p3\media\logo_3_TMS*.bik" /s /f /q

color 0a
echo.
echo All Intros Removed! My job here is done! Bye bye!

@echo off
timeout 2 > nul /nobreak
(goto) 2>nul & del "%~f0"

