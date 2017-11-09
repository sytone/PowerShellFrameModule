---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version: 
schema: 2.0.0
---

# Read-MultiLineInputBoxDialog

## SYNOPSIS
Prompts the user with a multi-line input box and returns the text they enter, or null if they cancelled the prompt.

## SYNTAX

```
Read-MultiLineInputBoxDialog [[-Message] <String>] [[-WindowTitle] <String>] [[-DefaultText] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Prompts the user with a multi-line input box and returns the text they enter, or null if they cancelled the prompt.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$userText = Read-MultiLineInputDialog "Input some text please:" "Get User's Input"
```

Shows how to create a simple prompt to get mutli-line input from a user.

### -------------------------- EXAMPLE 2 --------------------------
```
# Setup the default multi-line address to fill the input box with.
```

$defaultAddress = @'
John Doe
123 St.
Some Town, SK, Canada
A1B 2C3
'@

$address = Read-MultiLineInputDialog "Please enter your full address, including name, street, city, and postal code:" "Get User's Address" $defaultAddress
if ($address -eq $null)
{
    Write-Error "You pressed the Cancel button on the multi-line input box."
}

Prompts the user for their address and stores it in a variable, pre-filling the input box with a default multi-line address.
If the user pressed the Cancel button an error is written to the console.

### -------------------------- EXAMPLE 3 --------------------------
```
$inputText = Read-MultiLineInputDialog -Message "If you have a really long message you can break it apart`nover two lines with the powershell newline character:" -WindowTitle "Window Title" -DefaultText "Default text for the input box."
```

Shows how to break the second parameter (Message) up onto two lines using the powershell newline character (\`n).
If you break the message up into more than two lines the extra lines will be hidden behind or show ontop of the TextBox.

### -------------------------- EXAMPLE 4 --------------------------
```
$multiLineText = Read-MultiLineInputBoxDialog -Message "Please enter some text. It can be multiple lines" -WindowTitle "Multi Line Example" -DefaultText "Enter some text here..."
```

if ($multiLineText -eq $null) { Write-Host "You clicked Cancel" } else { Write-Host "You entered the following text: $multiLineText" }

## PARAMETERS

### -Message
The message to display to the user explaining what text we are asking them to enter.

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
The text to display on the prompt window's title.

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
The default text to show in the input box.

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

## OUTPUTS

## NOTES
Name: Show-MultiLineInputDialog
Author: Daniel Schroeder (originally based on the code shown at http://technet.microsoft.com/en-us/library/ff730941.aspx)
Version: 1.0

## RELATED LINKS

