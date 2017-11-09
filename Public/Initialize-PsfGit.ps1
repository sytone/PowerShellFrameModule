
function Initialize-PsfGit() {
    $cloneRoot = (Join-Path (Get-PsfConfig -Key DevelopmentFolder) "PowerShellFrame")
    if(!(Test-Path $cloneRoot)) {New-Item -Path $cloneRoot -ItemType Directory | Out-Null }
    git clone "https://github.com/sytone/PowerShellFrame.git" $cloneRoot
  }