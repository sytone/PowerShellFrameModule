# This assumes you are running PowerShell 5

# Parameters for publishing the module
$Path = '.\PowerShellFrame'
$PublishParams = @{
    NuGetApiKey = '$ENV:NUGET_API_KEY' # Swap this out with your API key or set the NUGET_API_KEY environment variable.
    Path = '.\PowerShellFrame'
    ProjectUri = 'https://github.com/Sytone/PowerShellFrame'
    Tags = @('PowerShellFrame' )
}

# We install and run PSScriptAnalyzer against the module to make sure it's not failing any tests
Install-Module -Name PSScriptAnalyzer -force
Invoke-ScriptAnalyzer -Path $Path

# ScriptAnalyzer passed! Let's publish
Publish-Module @PublishParams

# The module is now listed on the PowerShell Gallery
Find-Module PowerShellFrame
