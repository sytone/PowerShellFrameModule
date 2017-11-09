function Restore-Customizations() {
    $x = (get-item OneDrive:\PSFSync)
    $syncRoot = "$($x.FullName)"

    if(-not (Test-Path $syncRoot)) {
      Write-Host "Unable to find backup in OneDrive." -ForegroundColor Red
      return
    }
    pushd $env:USERPROFILE


    $cmderProfile = Join-Path (Get-PsfConfig -Key ToolsPath) "cmder\vendor\conemu-maximus5\ConEmu.xml"
    Write-Host "Restoring ConEmu.xml..."
    Copy-Item -Path (Join-Path $syncRoot "ConEmu.xml") -Destination $cmderProfile -Force

    Write-Host "Restoring local profile..."
    Copy-Item -Path (Join-Path $syncRoot 'localprofile.ps1') -Destination .\localprofile.ps1 -Force

    $x = (get-item Scripts:\CoreModulesAuto)
    Write-Host "Restoring Core Modules Auto..."
    ROBOCOPY /E "$(Join-Path $syncRoot 'CoreModulesAuto')" "$($x.FullName)" | Out-Null

    $x = (get-item Scripts:\CoreFunctions)
    Write-Host "Restoring Core Functions..."
    ROBOCOPY /E "$(Join-Path $syncRoot 'CoreFunctions')" "$($x.FullName)" | Out-Null
    popd
  }
