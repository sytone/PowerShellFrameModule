---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# Add-ItemToTaskBar

## SYNOPSIS
Creates an item in the task bar linking to the provided path.

## SYNTAX

```PowerShell
Add-ItemToTaskBar [-TargetFilePath] <String> [<CommonParameters>]
```

## DESCRIPTION

## EXAMPLES

```PowerShell
Add-ItemToTaskBar -TargetFilePath "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
```

## PARAMETERS

### -TargetFilePath
The path to the application that should be launched when clicking on the task bar icon.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
