
function Backup-Customizations() {
    [CmdletBinding()]
    # This will backup all the customizations for the PSF world to make it easy to restore.
    # Depends on OneDrive and OneDrive Syncronization.
    $x = (get-item OneDrive:\PSFSync)
    $syncRoot = "$($x.FullName)"
    Push-Location $env:USERPROFILE

    if (-not (Test-Path OneDrive:\)) {
        Write-Host "Unable to backup in OneDrive. Not mapped or setup." -ForegroundColor Red
        return
    }

    if (-not (Test-Path $syncRoot)) {
        New-Item -Path $syncRoot -ItemType Directory | Out-Null
    }

    # Backup CMDER XML.
    Write-Host "Backing up ConEmu.xml..."
    $cmderProfile = Join-Path (Get-PsfConfig -Key ToolsPath) "cmder\vendor\conemu-maximus5\ConEmu.xml"
    Copy-Item -Path $cmderProfile -Destination $syncRoot -Force

    Write-Host "Backing up local profile... (Not localprofile.$($env:COMPUTERNAME).ps1)"
    Copy-Item -Path .\localprofile.ps1 -Destination $syncRoot -Force

    Write-Host "Backing up Code Modules Auto"
    $x = (get-item Scripts:\CoreModulesAuto)
    ROBOCOPY /E "$($x.FullName)" "$(Join-Path $syncRoot 'CoreModulesAuto')" | Out-Null

    Write-Host "Backing up Core Functions"
    $x = (get-item Scripts:\CoreFunctions)
    ROBOCOPY /E "$($x.FullName)" "$(Join-Path $syncRoot 'CoreFunctions')" | Out-Null
    #Copy-Item -Path Scripts:\CoreFunctions\*.* -Destination (Join-Path $syncRoot "CoreFunctions") -Recurse -Force
    #Copy-Item -Path Scripts:\CoreModulesAuto\*.* -Destination (Join-Path $syncRoot "CoreModulesAuto") -Recurse -Force
    Remove-Item -Path (Join-Path $syncRoot "CoreModulesAuto\AutoHotkey") -Recurse -Force | Out-Null
    Remove-Item -Path (Join-Path $syncRoot "CoreModulesAuto\PowerShellFrame") -Recurse -Force | Out-Null
    Pop-Location
}
