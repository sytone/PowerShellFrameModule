function Get-PsfConfig($Key=$null) {
    if($key -eq $null) {
        $Global:PsfConfiguration
    } else {
        $Global:PsfConfiguration.$key
    }
}
