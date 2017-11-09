---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# alias

## SYNOPSIS
Creates a alias that can take params like UNIX

## SYNTAX

```
alias
```

## DESCRIPTION
Creates a alias that can take params like UNIX alias command, it will also place the $arg at the end so you can add commands.
The use or arguments only works on simple commands and it is passed in as a argument array (Splat)

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
alias fred=start-process winword
```

C:\PS\> fred helloworld.docx

This will start work with whatever you add at the end.

## PARAMETERS

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

