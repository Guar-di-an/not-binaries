@echo off 
mode con: cols=70 lines=23
@title Animation Test
color 9

:intro
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l                  l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l /                l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l //               l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ///              l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ////             l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l /////            l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l //////           l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ///////          l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ////////         l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l /////////        l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l //////////       l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ///////////      l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ////////////     l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l /////////////    l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l //////////////   l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l ///////////////  l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                              NullCode
echo                        --------------------
echo                        l //////////////// l
echo                        --------------------
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
ping > nul
cls

mode con: cols=70 lines=23

:time
rem Figuring out exact time
for /f %%i in ('time /t') do set CurTime=%%i

rem Figuring out AM/PM
echo %time% > FiguringOutAMorPM.txt

setlocal enabledelayedexpansion
for /f "tokens=*" %%a in (FiguringOutAMorPM.txt) do (
  set line=%%a
  set hours=!line:~0,2!
)
del FiguringOutAMorPM.txt
setlocal disabledelayedexpansion
if %hours% GEQ 12 (
set rand=PM
) else set rand=AM

:menu
echo                --------------------------------------
echo                l Today is %date% - %CurTime% %rand% l 
echo                --------------------------------------
echo.
pause >nul
exit /b 0