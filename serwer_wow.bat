echo off
cls

IF EXIST %cd%\Data\enUS (
  set folder=%cd%\Data\enUS\
) ELSE IF EXIST %cd%\Data\enGB (
  set folder=%cd%\Data\enGB\
) ELSE (
  echo Nie udalo sie ustalic lokalizacji pliku realmlist
  GOTO END
)

:SELECT_SERVER
echo Na ktory serwer chcesz sie zalogowac?
echo [1]: Sunwell
echo [2]: Warmane
set /p serwer=

IF "%serwer%"=="1" (
  echo set realmlist logon.sunwell.pl> %folder%\realmlist.wtf
) ELSE IF "%serwer%"=="2" (
  echo set realmlist logon.warmane.com> %folder%\Data\enUS\realmlist.wtf
) ELSE (
  cls
  echo Niepoprawna odpowiedz
  GOTO SELECT_SERVER
)

start %cd%\Wow.exe

:END
