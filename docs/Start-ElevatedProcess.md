---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# Start-ElevatedProcess

## SYNOPSIS
Runs a process elevated.

## SYNTAX

```
Start-ElevatedProcess [<CommonParameters>]
```

## DESCRIPTION
Uses the diagnostics process start to start a new process as elevated for the user.
Returns the process
to the calling function for tracking.

## EXAMPLES

### EXAMPLE 1
```
Start a new powershell instance that is elevated.
```

Start-ElevatedProcess powershell

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
You need to have admin access to actually run the process as elevated.
You may get a UAC prompt.

## RELATED LINKS
