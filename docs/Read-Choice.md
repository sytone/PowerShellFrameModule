---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# Read-Choice

## SYNOPSIS
Prompt the user for a choice, and return the (0-based) index of the selected item

## SYNTAX

### HashtableWithHelp (Default)
```
Read-Choice [-ChoicesWithHelp] <Hashtable> [-Caption <String>] [[-Message] <String>] [-Default <Int32[]>]
 [-MultipleChoice] [-Passthru] [<CommonParameters>]
```

### StringArray
```
Read-Choice [-Choices] <String[]> [-Caption <String>] [[-Message] <String>] [-Default <Int32[]>]
 [-MultipleChoice] [-Passthru] [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## EXAMPLES

### EXAMPLE 1
```
Read-Choice "WEBPAGE BUILDER MENU"  "&Create Webpage","&View HTML code","&Publish Webpage","&Remove Webpage","E&xit"
```

### EXAMPLE 2
```
[bool](Read-Choice "Do you really want to do this?" "&No","&Yes" -Default 1)
```

This example takes advantage of the 0-based index to convert No (0) to False, and Yes (1) to True.
It also specifies YES as the default, since that's the norm in PowerShell.

### EXAMPLE 3
```
Read-Choice "Do you really want to delete them all?" @{"&No"="Do not delete all files. You will be prompted to delete each file individually."; "&Yes"="Confirm that you want to delete all of the files"}
```

Note that with hashtables, order is not guaranteed, so "Yes" will probably be the first item in the prompt, and thus will output as index 0. 
Because of thise, when a hashtable is passed in, we default to Passthru output.

## PARAMETERS

### -ChoicesWithHelp
A Hashtable where the keys represent the choices (or menu items), with optional ampersands (&) in them to mark (unique) characters which can be used to select each item, and the values represent help text to be displayed to the user when they ask for help making their decision.

```yaml
Type: Hashtable
Parameter Sets: HashtableWithHelp
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Choices
An array of strings representing the choices (or menu items), with optional ampersands (&) in them to mark (unique) characters which can be used to select each item.

```yaml
Type: String[]
Parameter Sets: StringArray
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Caption
An additional caption that can be displayed (usually above the Message) as part of the prompt

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Please choose!
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
This is the prompt that will be presented to the user.
Basically, the question you're asking.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: Choose one of the following options:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Default
The (0-based) index of the menu item to select by default (defaults to zero).

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MultipleChoice
Prompt the user to select more than one option.
This changes the prompt display for the default PowerShell.exe host to show the options in a column and allows them to choose multiple times.
Note: when you specify MultipleChoice you may also specify multiple options as the default!

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

### -Passthru
Causes the Choices objects to be output instead of just the indexes

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

## OUTPUTS

## NOTES

## RELATED LINKS
