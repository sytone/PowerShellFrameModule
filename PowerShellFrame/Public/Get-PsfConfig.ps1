function Get-PsfConfig() {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True)] [string] $Key = $null
    )
    if ($key -eq $null) {
        $Global:PsfConfiguration
    }
    else {
        $Global:PsfConfiguration.$key
    }
}
