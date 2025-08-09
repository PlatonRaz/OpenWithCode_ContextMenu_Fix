@echo off

reg delete "HKCR\Directory\shell\OpenWithVSCode" /f

reg delete "HKCR\Directory\Background\shell\OpenWithVSCode" /f

echo.
echo "Open with Code" has been removed from the folder context menu.
pause
