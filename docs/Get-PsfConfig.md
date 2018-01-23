---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# Get-PsfConfig

## SYNOPSIS
Pulls a configuration value from the local configuration file.

## SYNTAX

```
Get-PsfConfig [-Key] <String> [<CommonParameters>]
```

## DESCRIPTION
Pulls a configuration value from the local configuration file.

## EXAMPLES

### Example 1
```
PS C:\> Test-Path (Get-PsfConfig -Key DevelopmentFolder)
```

Get the value for the DevelopmentFolder key.

## PARAMETERS

### -Key
{{Fill Key Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
