@ECHO off
setlocal EnableExtensions EnableDelayedExpansion

for %%i in ("%~dp0.") do set "parent=%%~fi"
cd ve
SET /P "newname=New Workspace: "
IF NOT "!newname!"  == "" (
    SET newvenv=%parent%\%newname%
    ECHO Workspace    : !newvenv!
    cd..
    robocopy ve !newname! /s >nul
    cd %newname%
    SET newws=!newname!.code-workspace
    ren ws !newws!
    ::dir
    set /P "UserChoice=Proceed with python Venv? [y/n]: "
    IF "!UserChoice!" == "y" (
        echo Creating new python Venv in %newname%...
        python -m venv .env
        code !newws! main.py
    )
    IF "!UserChoice!" == "n" (
        set /P "removeIt=Remove '%newname%' folder? [y/n]: "
        IF "!removeIt!" == "y" (
            cd..
            rmdir %newname% /s /q
        )
        IF "!removeIt!" == "n" (
            cmd /k
        )
    )
)
IF "!newname!" == "" (
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 80
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 70
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 60
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 50
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 40
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 30
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 25
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 20
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 15
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 10
    ECHO.
    ECHO ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! ^^!^^!ABORT^^!^^! 
    sleep 5
    ECHO.

)
