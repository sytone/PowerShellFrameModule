[![Build status](https://ci.appveyor.com/api/projects/status/jyk4dlk7vpibwswp?svg=true)](https://ci.appveyor.com/project/sytone/powershellframemodule)

# PowerShellFrame Module
This is the PowerShell Framework module, used to help make the environment you work in easier.

This is a split of the module from the profile loading code to allow it to be installed independanlty.

It is created using my Plaster Template.

# Installation

Run the following to install the module.

``` PowerShell
Install-Module -Name PowerShellFrame -Scope CurrentUser -Force
```

If you want to do it manually, download this repo and put the PowerShellFrame folder in the Modules directory.

``` PowerShell
cd "$env:USERPROFILE\Documents\WindowsPowerShell\Modules"
git clone https://github.com/sytone/PowerShellFrameModule.git
```

