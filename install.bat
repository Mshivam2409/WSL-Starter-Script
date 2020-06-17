echo Installing vscode Extensions
CALL vscode.bat
echo Installing Linux Packages
CALL wsl bash -c "./wsl.sh"
echo Installing Docker
CALL winget install Docker.DockerDesktopEdge
CALL wsl bash -c "./bash docker.sh"
