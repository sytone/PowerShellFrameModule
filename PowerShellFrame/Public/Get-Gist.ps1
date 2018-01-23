Function Get-Gist {

    [cmdletbinding(SupportsShouldProcess)]
    Param(
        [Parameter(Position = 0, Mandatory, HelpMessage = "The name of the gist to get.", ValueFromPipelineByPropertyName)]
        [ValidateNotNullorEmpty()]
        [string]$Name,

        [Parameter(Position = 1, Mandatory, HelpMessage = "The user name of the gist owner.", ValueFromPipelineByPropertyName)]
        [ValidateNotNullorEmpty()]
        [string]$UserName,

        [Alias("token")]
        [ValidateNotNullorEmpty()]
        [Parameter(HelpMessage = "Token to use for the download, get this from your github account. You can set `$gitToken in your Powershell session and that is used by default.")]
        [string]$UserToken = $gitToken,

        [switch]$Passthru

    )

    Begin {
        Write-Verbose "Starting: $($MyInvocation.Mycommand)"

        # Request Header
        $header = @{
            Authorization = 'Basic ' + $UserToken
        }

        # Github base API URI.
        $base = "https://api.github.com"

    }

    Process {
        #display PSBoundparameters formatted nicely for Verbose output
        [string]$pb = ($PSBoundParameters | Format-Table -AutoSize | Out-String).TrimEnd()
        Write-Verbose "PSBoundparameters: `n$($pb.split("`n").Foreach({"$("`t"*2)$_"}) | Out-String) `n"

        Write-Verbose "GET to $base/users/$UserName/gists"

        If ($pscmdlet.ShouldProcess("$name [$description]")) {

            $invokeParams = @{
                Method      = 'Get'
                Uri         = "$base/users/$UserName/gists"
                Headers     = $header
                ContentType = 'application/json'
            }

            $restResponse = Invoke-RestMethod @invokeParams

            $invokeParams = @{
                Method      = 'Get'
                Uri         = "$base/gists/$($restResponse[0].id)"
                Headers     = $header
                ContentType = 'application/json'
            }

            $restResponse = Invoke-RestMethod @invokeParams

            if ($Passthru) {
                Write-Verbose "Writing a result to the pipeline"
                $restResponse | Select-Object @{Name = "Url"; Expression = {$_.html_url}},
                Description,
                Public,
                @{Name = "FileName"; Expression = {$_.files.PSObject.Properties.Name}},
                @{Name = "Created"; Expression = {$_.created_at -as [datetime]}},
                @{Name = "Id"; Expression = {$_.id}},
                @{Name = "Contents"; Expression = {$_.files."$($_.files.PSObject.Properties.Name)".content}}
            }
        }
    }

    End {
        Write-Verbose "Completed: $($MyInvocation.Mycommand)"
    }

}