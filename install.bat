ECHO Starting Installation.....

@ECHO OFF
:start
SET choice=
SET /p choice=Install VSCode Extensions ? [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
PAUSE

:yes
ECHO Installing VSCode Extensions
CALL .\vscode.bat
PAUSE

:start
SET choice=
SET /p choice=Install WSL Packages ? [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
PAUSE

:yes
ECHO Installing WSL Packages
CALL wsl bash -c "./wsl.sh"
PAUSE

:start
SET choice=
SET /p choice=Install Docker ? [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
PAUSE

:yes
ECHO Installing Docker
CALL winget install Docker.DockerDesktopEdge
CALL wsl bash -c "./docker.sh"
PAUSE

:start
SET choice=
SET /p choice=Install Postman ? [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
PAUSE

:yes
ECHO Installing Postman
CALL winget install Postman.Postman
PAUSE





