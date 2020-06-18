$title    = 'Installing WSL'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'Installing.......'
    .\ubuntu.ps1
} else {
    Write-Host 'cancelled'
}

$title    = 'Installing VSCode Extensions'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'Installing.......'
    cmd.exe /c '.\vscode.bat'
} else {
    Write-Host 'cancelled'
}

$title    = 'Installing WSL Packages'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'Installing.......'
    wsl bash -c "./wsl.sh"
    .\font.ps1
} else {
    Write-Host 'cancelled'
}

$title    = 'Installing Docker'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'Installing.......'
    winget install Docker.DockerDesktopEdge
    wsl bash -c "./docker.sh"
} else {
    Write-Host 'cancelled'
}

$title    = 'Installing Postman'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'Installing.......'
    winget install Postman.Postman
} else {
    Write-Host 'cancelled'
}









