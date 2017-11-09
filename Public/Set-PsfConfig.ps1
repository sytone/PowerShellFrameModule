function Set-PsfConfig($Key,$Value) {
    if($Global:PsfConfiguration.$key -eq $null) {
        $Global:PsfConfiguration | Add-Member $key $value
    } else {
        $Global:PsfConfiguration.$key = $value
    }
    $Global:PsfConfiguration | Export-Clixml Psf:\config.xml
}
