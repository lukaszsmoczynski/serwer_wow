echo off
cls
echo Na ktory serwer chcesz sie zalogowac?
echo [1]: Sunwell
echo [2]: Warmane
set /p serwer=

IF EXIST %cd%\Data\enUS (
  set folder=%cd%\Data\enUS\
) ELSE IF EXIST %cd%\Data\enGB (
  set folder=%cd%\Data\enGB\
)

echo %folder%
pause

IF "%serwer%"=="1" (
  echo set realmlist logon.sunwell.pl> %folder%\realmlist.wtf
) ELSE IF "%serwer%"=="2" (
  echo set realmlist logon.warmane.com> %folder%\Data\enUS\realmlist.wtf
)

start %cd%\Wow.exe