echo off
cls
cd ..
::File locations to configure
set Folder=../WW1-and-Future
::the folder to be transfered
set archive=ww1-and-future.zip
::found under %SteamDirectory%\steamapps\workshop\content\394360\741148992\WW1-and-Future
set SevenZip=C:/Program Files\7-Zip\7zG.exe
::Location of the 7zip installation

::do not edit past this!

if not exist "%SevenZip%" (
echo 7zip installation not found!
echo.
echo there should be a file at %SevenZip%
echo errorlevel: %errorlevel%
goto exit
) else (
echo 7zip found
echo.
timeout 3
cls
)

%SevenZip% a %archive% %Folder% -x!*.md -x!*.mod -x!.gitattributes -x!*.bat -x!LICENSE


cls
echo SUCCESS!
echo.
echo FINISHED COPYING

:exit
pause
exit
