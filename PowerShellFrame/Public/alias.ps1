function alias {
    [CmdletBinding()]
    # pull together all the args and then split on =
    $alias, $cmd = [string]::join(" ", $args).split("=", 2) | ForEach-Object { $_.trim()}
    $cmd = Resolve-Aliases $cmd
    if ((Get-Item "function:\Alias$Alias" -ErrorAction SilentlyContinue)) {
        Write-Host "Alias ($alias) exists, please remove first. ( unalias $alias ) ."
        return
    }
    $f = New-Item -Path function: -Name "Global:Alias$Alias" -Options "AllScope" -Value @"
Invoke-Expression '$cmd `@args '
    ###ALIAS###
"@
    Write-Verbose $f
    # Invoke-Expression '$cmd `$args'
    $a = Set-Alias -Name $Alias -Value "Alias$Alias" -Description "A UNIX-style alias using functions" -Option "AllScope" -scope Global -passThru
    Write-Verbose $a
}
