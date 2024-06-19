@echo off

git init -b main
echo Initializing Git Repo
echo Creating .gitignore file for Unity....
(
echo # Visual Studio 2015 user specific files
echo .vs/
echo:
echo # Compiled Object files
echo *.slo
echo *.lo
echo *.o
echo *.obj
echo:
echo # Precompiled Headers
echo *.gch
echo *.pch
echo:
echo # Compiled Dynamic libraries
echo *.so
echo *.dylib
echo *.dll
echo:
echo # Fortran module files
echo *.mod
echo:
echo # Compiled Static libraries
echo *.lai
echo *.la
echo *.a
echo *.lib
echo:
echo # Executables
echo *.exe
echo *.out
echo *.app
echo *.ipa
echo:
echo # These project files can be generated by the engine
echo *.xcodeproj
echo *.xcworkspace
echo *.sln
echo *.suo
echo *.opensdf
echo *.sdf
echo *.VC.db
echo *.VC.opendb
echo:
echo # Precompiled Assets
echo SourceArt/**/*.png
echo SourceArt/**/*.tga
echo:
echo # Binary Files
echo Binaries/*
echo Plugins/*/Binaries/*
echo:
echo # Builds
echo Build/*
echo:
echo # Whitelist PakBlacklist-<BuildConfiguration>.txt files
echo !Build/*/
echo Build/*/**
echo !Build/*/PakBlacklist*.txt
echo:
echo # Don't ignore icon files in Build
echo !Build/**/*.ico
echo:
echo # Built data for maps
echo *_BuiltData.uasset
echo:
echo # Configuration files generated by the Editor
echo Saved/*
echo:
echo # Compiled source files for the engine to use
echo Intermediate/*
echo Plugins/*/Intermediate/*
echo:
echo # Cache files for the editor to use
echo DerivedDataCache/*
)> .gitignore

echo Adding Files

git add .
git add .gitignore

set /p "message=Enter commit message: "

git commit -m "%message%"
echo Commited

set /p "userName=Enter UserName: "
set /p "repoName=Enter remote repo Name: "


git remote add origin https://github.com/%userName%/%repoName%
git remote -v

git push origin main

cmd /k