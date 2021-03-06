@echo off

rem set working folder
cd %~dp0buildtools\methodrenamer

call dotnet publish --configuration Release --framework netcoreapp2.0 -r win-x64 --output ..\..\artifacts\buildtools
if not "%errorlevel%"=="0" goto failure

:success
exit /b 0

:failure
exit /b -1
