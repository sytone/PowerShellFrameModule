function Remove-PsfConfig($Key) {
    $Global:PsfConfiguration.PSObject.Properties.Remove($key)
    $Global:PsfConfiguration | Export-Clixml Psf:\config.xml
}
