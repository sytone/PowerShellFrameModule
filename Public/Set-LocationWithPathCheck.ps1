
function Set-LocationWithPathCheck($Path) {
    if(-not (Test-Path $Path)) {
      New-Item -Path $Path -ItemType Directory
    }
    Set-Location $Path
  }
