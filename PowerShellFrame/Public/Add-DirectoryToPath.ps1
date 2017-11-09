function Add-DirectoryToPath {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True)] [string] $Directory
    )

    $env_Path = [System.Environment]::GetEnvironmentVariable("Path", "User")
    if (($env_Path -split ';') -notcontains "$Directory") {
        if ($env_Path) {
            $env_Path = $env_Path + ';'
        }
        $env_Path += "$Directory"
        [System.Environment]::SetEnvironmentVariable("Path", $env_Path, "User")
        $env:Path = $env_Path
    }
}
