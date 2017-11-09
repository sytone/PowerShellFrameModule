---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version: 
schema: 2.0.0
---

# Read-InputBoxDialog

## SYNOPSIS
Show input box popup and return the value entered by the user.

## SYNTAX

```
Read-InputBoxDialog [[-Message] <String>] [[-WindowTitle] <String>] [[-DefaultText] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Long description

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$textEntered = Read-InputBoxDialog -Message "Please enter the word 'Banana'" -WindowTitle "Input Box Example" -DefaultText "Apple"
```

if ($textEntered -eq $null) { Write-Host "You clicked Cancel" }
elseif ($textEntered -eq "Banana") { Write-Host "Thanks for typing Banana" }
else { Write-Host "You entered $textEntered" }

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

### -WindowTitle
{{Fill WindowTitle Description}}

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

### -DefaultText
{{Fill DefaultText Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
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

