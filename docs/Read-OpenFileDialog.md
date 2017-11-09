---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version: 
schema: 2.0.0
---

# Read-OpenFileDialog

## SYNOPSIS
Show an Open File Dialog and return the file selected by the user.

## SYNTAX

```
Read-OpenFileDialog [[-WindowTitle] <String>] [[-InitialDirectory] <String>] [[-Filter] <String>]
 [-AllowMultiSelect] [<CommonParameters>]
```

## DESCRIPTION
Long description

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$filePath = Read-OpenFileDialog -WindowTitle "Select Text File Example" -InitialDirectory 'C:\' -Filter "Text files (*.txt)|*.txt"
```

if (!\[string\]::IsNullOrEmpty($filePath)) { Write-Host "You selected the file: $filePath" }
else { "You did not select a file." }

## PARAMETERS

### -WindowTitle
{{Fill WindowTitle Description}}

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

### -Filter
{{Fill Filter Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: All files (*.*)|*.*
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowMultiSelect
{{Fill AllowMultiSelect Description}}

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

