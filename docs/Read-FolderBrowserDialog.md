---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version: 
schema: 2.0.0
---

# Read-FolderBrowserDialog

## SYNOPSIS
Show an Open Folder Dialog and return the directory selected by the user.

## SYNTAX

```
Read-FolderBrowserDialog [[-Message] <String>] [[-InitialDirectory] <String>] [-NoNewFolderButton]
 [<CommonParameters>]
```

## DESCRIPTION
Long description

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$directoryPath = Read-FolderBrowserDialog -Message "Please select a directory" -InitialDirectory 'C:\' -NoNewFolderButton
```

if (!\[string\]::IsNullOrEmpty($directoryPath)) { Write-Host "You selected the directory: $directoryPath" }
else { "You did not select a directory." }

## PARAMETERS

### -Message
{{Fill Message Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InitialDirectory
{{Fill InitialDirectory Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoNewFolderButton
{{Fill NoNewFolderButton Description}}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Inputs (if any)

## OUTPUTS

### Output (if any)

## NOTES
General notes

## RELATED LINKS

