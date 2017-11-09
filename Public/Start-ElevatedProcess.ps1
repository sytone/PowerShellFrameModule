<#
.SYNOPSIS
Runs a process elevated.

.DESCRIPTION
Uses the diagnostics process start to start a new process as elevated for the user. Returns the process
to the calling function for tracking.

.PARAMETER file
The first param is the file to execute.

.PARAMETER args
args are added as arguments after conversion to a string.

.EXAMPLE
Start a new powershell instance that is elevated.
Start-ElevatedProcess powershell

.NOTES
You need to have admin access to actually run the process as elevated. You may get a UAC prompt.
#>
function Start-ElevatedProcess {
    $file, [string]$arguments = $args;
    $psi = new-object System.Diagnostics.ProcessStartInfo $file;
    $psi.Arguments = $arguments;
    $psi.Verb = "runas";
    $psi.WorkingDirectory = get-location;
    [System.Diagnostics.Process]::Start($psi);
  }

  function Get-SystemUptime ($computer = "$env:computername") {
    $lastboot = [System.Management.ManagementDateTimeconverter]::ToDateTime("$((gwmi  Win32_OperatingSystem -computername $computer).LastBootUpTime)")
    $uptime = (Get-Date) - $lastboot
    return $uptime
  }
