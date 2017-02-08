# Set the default location for command prompt
Set-Location C:\dev

$myDocumentsFolder = [Environment]::GetFolderPath("mydocuments")

# Load posh-git example profile
. "$myDocumentsFolder\WindowsPowerShell\Modules\posh-git\profile.example.ps1"

# Load cmder profile
. 'C:\tools\cmder_mini\vendor\profile.ps1'

# Load the git helpers functions
. "$PSScriptRoot\git-helpers.ps1"

# Load the generic functions
. "$PSScriptRoot\generic-functions.ps1"