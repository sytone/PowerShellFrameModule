Function New-Gist {

    [cmdletbinding(SupportsShouldProcess, DefaultParameterSetName = "Content")]
    Param(
        [Parameter(Position = 0, Mandatory, HelpMessage = "The name of the new gist to create.", ValueFromPipelineByPropertyName)]
        [ValidateNotNullorEmpty()]
        [string]$Name,

        [Parameter(ParameterSetName = "path", Mandatory, HelpMessage = "Path to the file to upload as the new gist.", ValueFromPipelineByPropertyName)]
        [ValidateNotNullorEmpty()]
        [Alias("pspath")]
        [string]$Path,

        [Parameter(ParameterSetName = "Content", Mandatory, HelpMessage = "The string content to insert into the new gist.")]
        [ValidateNotNullorEmpty()]
        [string[]]$Content,

        [Parameter(HelpMessage = "The description to show against the new gist.")]
        [string]$Description,

        [Alias("token")]
        [ValidateNotNullorEmpty()]
        [Parameter(HelpMessage = "Token to use for the upload, get this from your github account. You can set `$gitToken in your Powershell session and that is used by default.")]
        [string]$UserToken = $gitToken,

        [Parameter(HelpMessage = "If set will make the new gist private for your account. By defult all gists are public.")]
        [switch]$Private,

        [Parameter(HelpMessage = "Return the results of the command.")]
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

        switch ($pscmdlet.ParameterSetName) {
            "path" {
                $gistContent = Get-Content -Path $Path | Out-String
            }
            "content" {
                $gistContent = $Content | Out-String
            }
        }

        $data = @{
            files       = @{$Name = @{content = $gistContent}}
            description = $Description
            public      = (-Not ($Private -as [boolean]))
        } | ConvertTo-Json

        Write-Verbose "Posting to $base/gists"
        Write-Verbose ($data | Out-String)

        If ($pscmdlet.ShouldProcess("$name [$description]")) {

            $invokeParams = @{
                Method      = 'Post'
                Uri         = "$base/gists"
                Headers     = $header
                Body        = $data
                ContentType = 'application/json'
            }

            $restResponse = Invoke-RestMethod @invokeParams

            if ($Passthru) {
                Write-Verbose "Writing a result to the pipeline"
                $restResponse | Select-Object @{Name = "Url"; Expression = {$_.html_url}},
                Description,
                Public,
                @{Name = "Created"; Expression = {$_.created_at -as [datetime]}}
            }
        }
    }

    End {
        Write-Verbose "Completed: $($MyInvocation.Mycommand)"
    }

}