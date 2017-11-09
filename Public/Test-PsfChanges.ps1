function Test-PsfChanges () {
    $cloneRoot = (Join-Path (Get-PsfConfig -Key DevelopmentFolder) "PowerShellFrame")

    $ScriptsRoot = (Join-Path $env:USERPROFILE "Scripts")
    $PowerShellScriptsRoot = (Join-Path $ScriptsRoot "PowerShell")
    Remove-Item (Join-Path $PowerShellScriptsRoot "CoreModulesAuto\PowerShellFrame\PowerShellFrame.psm1") -force | Out-Null
    Copy-Item (Join-Path $cloneRoot "Scripts\PowerShell\CoreModulesAuto\PowerShellFrame\PowerShellFrame.psm1")  (Join-Path $PowerShellScriptsRoot "CoreModulesAuto\PowerShellFrame\PowerShellFrame.psm1") -Force

    $psfLocalRoot =  Join-Path $env:USERPROFILE "psf"
    Remove-Item "$psfLocalRoot\localenv.ps1" -Force | Out-Null
    Copy-Item (Join-Path $cloneRoot "localenv.ps1")  "$psfLocalRoot\localenv.ps1" -Force

}