@echo on

REM Compile and run upstream's full encode/decode test
cl /nologo /std:c++17 /EHsc /MD                 ^
    /I "%LIBRARY_INC%"                          ^
    "%SRC_DIR%\src\LercTest\main.cpp"           ^
    /link /LIBPATH:"%LIBRARY_LIB%" Lerc.lib /OUT:LercTest.exe
if errorlevel 1 exit 1

set "LERCTEST_NONINTERACTIVE=1"
set "PATH=%LIBRARY_BIN%;%PATH%"
LercTest.exe
if errorlevel 1 exit 1
