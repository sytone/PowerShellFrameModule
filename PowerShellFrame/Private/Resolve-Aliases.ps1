
<#
.SYNOPSIS
    Uses the PS tokenize process to parse out all the commands to be executed
.DESCRIPTION
    Creates a alias that can take params like UNIX alias command, it will
    also place the $arg at the end so you can add commands.
.EXAMPLE
    C:\PS> alias fred=start-process winword
    C:\PS> fred helloworld.docx

    This will start work with whatever you add at the end.

[System.Management.Automation.PSParser]::Tokenize("cd -Path ..; dir -Path c:; get-ChildItem -Path d:",[ref]$null)
Resolve-Aliases "cd -Path ..; dir -Path c:; get-ChildItem -Path d:"
Set-Location Get-ChildItemth ..; dir -Path c:; get-ChildItem -Path d:

#>
function script:Resolve-Aliases {
    param($line)
    $newCommandLine = ""
    # Replaice the Aliases with the full internal command.
    [System.Management.Automation.PSParser]::Tokenize($line,[ref]$null) | ForEach-Object {
        $type = $_.Type
        $content = $_.Content
        switch ($type) {
            "Command" {
                $cmd = @(Get-Command $content)[0]
                if($cmd.CommandType -eq "Alias") {
                    $newCommandLine += $cmd.Definition
                    #$line = $line.Remove( $_.StartColumn -1, $_.Length ).Insert( $_.StartColumn -1, $cmd.Definition )
                } else {
                    $newCommandLine += $content
                }
            }
            "CommandParameter" {$newCommandLine += $content}
            "CommandArgument" {$newCommandLine += $content}
            "StatementSeparator" {$newCommandLine += $content}
            "String" {$newCommandLine += "`"" + $content + "`""}
            default {$newCommandLine += $content}
        }
        $newCommandLine += " "
    }
    $newCommandLine
}
