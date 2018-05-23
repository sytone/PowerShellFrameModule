<#
.SYNOPSIS
Creates an item in the task bar linking to the provided path.

.PARAMETER TargetFilePath
The path to the application that should be launched when clicking on the
task bar icon.

.PARAMETER IgnoredArguments
Allows splatting with arguments that do not apply. Do not use directly.

.EXAMPLE
Add-ItemToTaskBar -TargetFilePath "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"

#>
function Add-ItemToTaskBar {
param(
  [parameter(Mandatory=$true, Position=0)][string] $targetFilePath,
  [parameter(ValueFromRemainingArguments = $true)][Object[]]$ignoredArguments
)
  try {
    if (test-path($targetFilePath)) {
      $verb = "Pin To Taskbar"
		  $path = split-path $targetFilePath
		  $shell = new-object -com "Shell.Application"
		  $folder = $shell.Namespace($path)
		  $item = $folder.Parsename((split-path $targetFilePath -leaf))
		  $itemVerb = $item.Verbs() | ? {$_.Name.Replace("&","") -eq $verb}
		  if($itemVerb -eq $null){
  			Write-Host "TaskBar verb not found for $item. It may have already been pinned"
  		} else {
  			$itemVerb.DoIt()
  		}
  		Write-Host "`'$targetFilePath`' has been pinned to the task bar on your desktop"
  	} else {
  		$errorMessage = "`'$targetFilePath`' does not exist, not able to pin to task bar"
  	}
  
  	if ($errorMessage) {
  		Write-Warning $errorMessage
  	}
  } catch {
    Write-Warning "Unable to create pin. Error captured was $($_.Exception.Message)."
  }
}
