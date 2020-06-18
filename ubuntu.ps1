dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
curl.exe -L -o ubuntu-2004.appx https://aka.ms/wsl-ubuntu-2004
Rename-Item ubuntu-2004.appx ubuntu-2004.zip
Expand-Archive ubuntu-2004.zip ubuntu
$userenv = [System.Environment]::GetEnvironmentVariable("Path", "User")
[System.Environment]::SetEnvironmentVariable("PATH", $userenv + (get-location) + "\ubuntu", "User")
.\ubuntu\ubuntu2004.exe