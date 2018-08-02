# PowershellProfile
This repository contains the definition of my powershell profile functions/helpers/alias etc.

## Installation

To install this, download this repo, then execute

```
.\install.ps1
```

## Gotchas

- I use a folder c:\dev as my main directory, if you want to change this, change the first line in `profile.ps1`

```
# Set the default location for command prompt
Set-Location C:\dev
```

- I use `cmder` and `posh-git` and you can get those from:

cmder: https://github.com/cmderdev/cmder/releases/latest
posh-git: https://github.com/dahlbyk/posh-git

Note: Once you have those two tools installed, make sure to update `profile.ps1` with the right path

You will have to change the following lines:

```

# Load posh-git example profile
. "$myDocumentsFolder\WindowsPowerShell\Modules\posh-git\profile.example.ps1"

# Load cmder profile
. 'C:\tools\cmder_mini\vendor\profile.ps1'

```
