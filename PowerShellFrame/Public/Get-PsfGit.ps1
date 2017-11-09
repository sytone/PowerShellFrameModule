function Get-PsfGit($m = "Lazy hack and commit") {
    Push-Location (Join-Path (Get-PsfConfig -Key DevelopmentFolder) "PowerShellFrame")
    git pull
    Pop-Location
}