###
# UI Helpers
# From: http://blog.danskingdom.com/powershell-multi-line-input-box-dialog-open-file-dialog-folder-browser-dialog-input-box-and-message-box/
###

<#
.SYNOPSIS
    Show message box popup and return the button clicked by the user.
.DESCRIPTION
    Long description
.EXAMPLE
    $buttonClicked = Read-MessageBoxDialog -Message "Please press the OK button." -WindowTitle "Message Box Example" -Buttons OKCancel -Icon Exclamation
    if ($buttonClicked -eq "OK") { Write-Host "Thanks for pressing OK" }
    else { Write-Host "You clicked $buttonClicked" }
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
function Read-MessageBoxDialog() {
    param(
        [string]$Message,
        [string]$WindowTitle,
        [System.Windows.Forms.MessageBoxButtons]$Buttons = [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]$Icon = [System.Windows.Forms.MessageBoxIcon]::None
    )
    Add-Type -AssemblyName System.Windows.Forms
    return [System.Windows.Forms.MessageBox]::Show($Message, $WindowTitle, $Buttons, $Icon)
}

