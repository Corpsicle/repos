set PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.29.30133\bin\HostX86\x86;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;%PATH%
set DMD_LIB=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.29.30133\lib\x64;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.22621.0\um\x64
set VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\
set VCTOOLSINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.29.30133\
set VSINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\
set WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
set WindowsSdkVersion=10.0.22621.0
set UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\
set UCRTVersion=10.0.22621.0
"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps x64\Debug\Hello.dep dmd -debug -m64 -g -gf -X -Xf"x64\Debug\Hello.json" -c -of"x64\Debug\Hello.obj" Hello.d
if %errorlevel% neq 0 goto reportError

set LIB=C:\D\dmd2\windows\bin\..\lib64
echo. > C:\Users\alanb\source\repos\repos\DLang\Hello\x64\Debug\Hello.link.rsp
echo "x64\Debug\Hello.obj" /OUT:"x64\Debug\Hello.exe" user32.lib  >> C:\Users\alanb\source\repos\repos\DLang\Hello\x64\Debug\Hello.link.rsp
echo kernel32.lib  >> C:\Users\alanb\source\repos\repos\DLang\Hello\x64\Debug\Hello.link.rsp
echo legacy_stdio_definitions.lib /LIBPATH:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.29.30133\lib\x64" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\lib\10.0.22621.0\um\x64" /DEBUG /PDB:"x64\Debug\Hello.pdb" /INCREMENTAL:NO /NOLOGO /NODEFAULTLIB:libcmt libcmtd.lib /SUBSYSTEM:CONSOLE >> C:\Users\alanb\source\repos\repos\DLang\Hello\x64\Debug\Hello.link.rsp
"C:\Program Files (x86)\VisualD\mb2utf16.exe" C:\Users\alanb\source\repos\repos\DLang\Hello\x64\Debug\Hello.link.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -msmode -deps x64\Debug\Hello.lnkdep "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.29.30133\bin\HostX86\x86\link.exe" @C:\Users\alanb\source\repos\repos\DLang\Hello\x64\Debug\Hello.link.rsp
if %errorlevel% neq 0 goto reportError
if not exist "x64\Debug\Hello.exe" (echo "x64\Debug\Hello.exe" not created! && goto reportError)

goto noError

:reportError
set ERR=%ERRORLEVEL%
set DISPERR=%ERR%
if %ERR% LSS -65535 then DISPERR=0x%=EXITCODE%
echo Building x64\Debug\Hello.exe failed (error code %DISPERR%)!
exit /B %ERR%

:noError
