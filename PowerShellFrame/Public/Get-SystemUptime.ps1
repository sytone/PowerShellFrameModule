function Get-SystemUptime ($computer = "$env:computername") {
    $lastboot = [System.Management.ManagementDateTimeconverter]::ToDateTime("$((gwmi  Win32_OperatingSystem -computername $computer).LastBootUpTime)")
    $uptime = (Get-Date) - $lastboot
    return $uptime
  }
