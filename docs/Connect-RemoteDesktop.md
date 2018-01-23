---
external help file: PowerShellFrame-help.xml
Module Name: PowerShellFrame
online version:
schema: 2.0.0
---

# Connect-RemoteDesktop

## SYNOPSIS
Starts the remote desktop process with options set.

## SYNTAX

```
Connect-RemoteDesktop [-FullAddress] <String> [-FullScreen] [[-Resolution] <String>] [-UseMultimon]
 [[-GatewayHostName] <String>] [[-UserName] <String>] [<CommonParameters>]
```

## DESCRIPTION
Allows you to start a remote desktop process and set options not made avliable
by mstsc like the gateway host name.

## EXAMPLES

### EXAMPLE 1
```
Connect-RemoteDesktop -FullAddress mrserver -FullScreen -UseMultimon
```

Connect-RemoteDesktop -FullAddress mrserver -FullScreen -UseMultimon -GatewayHostName my.gateway.com

## PARAMETERS

### -FullAddress
A valid computer name, IPv4 address, or IPv6 address - Specifies the remote computer to which you want to connect

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

### -FullScreen
If specified remote desktop will be full screen.

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

### -Resolution
Screen resolution if not full screen.
1024x768 by default.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 1024x768
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseMultimon
Use all monitors.

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

### -GatewayHostName
Use a gateway for the connection.

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

### -UserName
Username to use to log into the remote computer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### None

## NOTES
Version:        1.0
Author:         Sytone
Creation Date:  1/18/2016
Purpose/Change: Initial script development

## RELATED LINKS
