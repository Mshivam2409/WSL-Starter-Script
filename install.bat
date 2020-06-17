echo Installing vscode Extensions
CALL vscode.bat
echo Installing Linux Packages
CALL wsl bash -c "./wsl.sh"
echo Installing Docker
CALL winget install Docker.DockerDesktopEdge
CALL wsl bash -c "./docker.sh"
echo Installing Postman
CALL winget install Postman.Postman
