# Set the default location for command prompt
Set-Location C:\dev

$myDocumentsFolder = [Environment]::GetFolderPath("mydocuments")

# Load posh-git example profile
$poshgit = "$myDocumentsFolder\WindowsPowerShell\Modules\posh-git\posh-git.psd1"
if (Test-Path($poshgit)) {
#  Import-Module $poshgit
}

# Load cmder profile
$cmder = 'C:\tools\cmder_mini\vendor\profile.ps1'
if (Test-Path($cmder)) {
  . $cmder
}

# Load the git helpers functions
. "$PSScriptRoot\git-helpers.ps1"

# Load the generic functions
. "$PSScriptRoot\generic-functions.ps1"

function ReloadProfile
{
  . $PROFILE
}
