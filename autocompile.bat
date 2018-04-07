echo off
cls
cd ..
set Folder=../WW1-and-Future
set archive=ww1-and-future.zip
set SevenZip=C:/Program Files\7-Zip\7zG.exe

if not exist "%SevenZip%" (
echo 7zip installation not found!
echo.
echo there should be a file at %SevenZip%
echo errorlevel: %errorlevel%
goto exit
) else (
echo 7zip found
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
