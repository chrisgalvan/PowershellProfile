$profileFiles = $PSScriptRoot

Add-Content $PROFILE ". `"$profileFiles\profile.ps1`""

. $PROFILE
