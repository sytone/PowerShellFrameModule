
<#
.SYNOPSIS
    Creates a alias that can take params lik UNIX
.DESCRIPTION
    Creates a alias that can take params like UNIX alias command, it will
    also place the $arg at the end so you can add commands. The use or arguments
    only works on simple commands and it is passed in as a argument array (Splat)
.EXAMPLE
    C:\PS> alias fred=start-process winword
    C:\PS> fred helloworld.docx

    This will start work with whatever you add at the end.
#>
function alias {

    # pull together all the args and then split on =
    $alias,$cmd = [string]::join(" ",$args).split("=",2) | ForEach-Object { $_.trim()}
    $cmd = Resolve-Aliases $cmd
    if((Get-Item "function:\Alias$Alias" -ErrorAction SilentlyContinue)) {
        Write-Host "Alias ($alias) exists, please remove first. ( unalias $alias ) ."
        return
    }
    $f = New-Item -Path function: -Name "Global:Alias$Alias" -Options "AllScope" -Value @"
Invoke-Expression '$cmd `@args '
    ###ALIAS###
"@
    # Invoke-Expression '$cmd `$args'

    $a = Set-Alias -Name $Alias -Value "Alias$Alias" -Description "A UNIX-style alias using functions" -Option "AllScope" -scope Global -passThru
}
