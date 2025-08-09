@echo off

set "VSCodePath=C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe"

reg add "HKCR\Directory\shell\OpenWithVSCode" /ve /d "Open with Code" /f
reg add "HKCR\Directory\shell\OpenWithVSCode" /v "Icon" /d "\"%VSCodePath%\"" /f
reg add "HKCR\Directory\shell\OpenWithVSCode\command" /ve /d "\"%VSCodePath%\" \"%%1\"" /f

reg add "HKCR\Directory\Background\shell\OpenWithVSCode" /ve /d "Open with Code" /f
reg add "HKCR\Directory\Background\shell\OpenWithVSCode" /v "Icon" /d "\"%VSCodePath%\"" /f
reg add "HKCR\Directory\Background\shell\OpenWithVSCode\command" /ve /d "\"%VSCodePath%\" \"%%V\"" /f

echo.
echo "Open with Code" has been added to folder context menu.
pause
