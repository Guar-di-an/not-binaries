cls & echo. & for /f "tokens=4 delims=: " %%a in ('netsh wlan show profiles ^| find "Profile "') do @echo off > nul & (netsh wlan show profiles name=%%a key=clear | findstr "SSID Cipher Content" | find /v "Number" & echo.) 
pause

::For Command Prompt manual execution \/
::cls & echo. & for /f "tokens=4 delims=: " %a in ('netsh wlan show profiles ^| find "Profile "') do @echo off > nul & (netsh wlan show profiles name=%a key=clear | findstr "SSID Cipher Content" | find /v "Number" & echo.) & @echo on