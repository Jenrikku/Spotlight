::===================================================================
:: This script may be used to clone and build Jenrikku/Spotlight-NET
::===================================================================

@echo off

echo Welcome to Spotlight-NET cloning and building script.
echo Before continuing, please make sure you have GIT and .NET SDK installed in your system.
echo\
echo The script will now proceed to create a new directory and clone the repository there.
pause

git clone --recurse-submodules https://github.com/Jenrikku/Spotlight-NET.git Spotlight-NET

cd Spotlight-NET

dotnet build -c "Release Spotlight" -o ..\build

echo\
echo Spotlight-NET will now open if you press any key.
pause>null

cd ..\build
Spotlight.exe