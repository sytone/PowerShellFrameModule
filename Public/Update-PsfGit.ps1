function Update-PsfGit($m = "Lazy hack and commit") {
    Push-Location (Join-Path (Get-PsfConfig -Key DevelopmentFolder) "PowerShellFrame")
    git add .
    git commit -m $m
    git push
    Pop-Location
}