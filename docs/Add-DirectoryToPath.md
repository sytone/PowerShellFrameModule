---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# Add-DirectoryToPath

## SYNOPSIS
Updates the path environment variable with a new directory and can be used in this session.

## SYNTAX

```
Add-DirectoryToPath [-Directory] <String> [<CommonParameters>]
```

## DESCRIPTION
Updates the path environment variable with a new directory and can be used in this session.

## EXAMPLES

### Example 1
```
PS C:\> Add-DirectoryToPath -Directory c:\mypath
```

$env:PATH will now have 'c:\mypath' added to it.

## PARAMETERS

### -Directory
The Directory you want added to the path environment variable.

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

