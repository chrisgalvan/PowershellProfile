$profileFiles = $PSScriptRoot
$profilePath = "$profileFiles\profile.ps1"

$result = Get-Content $PROFILE | Select-String $profilePath.replace("\", "\\")

if ($result -eq $null) {
  Add-Content $PROFILE ". `"$profilePath`""
}


#. $PROFILE
