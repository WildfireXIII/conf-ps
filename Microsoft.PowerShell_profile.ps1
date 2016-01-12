#*************************************************************
#  File: Micrsoft.PowerShell_profile.ps1
#  Date created: 1/5/2016
#  Date edited: 1/12/2016
#  Author: Nathan Martindale
#  Copyright © 2016 Digital Warrior Labs
#  Description: Startup script for powershell
#*************************************************************

# thanks to http://stackoverflow.com/questions/12144016/cd-in-powershell-to-cd-plus-ls
function Set-LocationWithGCI
{
	param (
		$path
	)

	Set-Location $path
	ls
}

# set aliases appropriately
Remove-Item alias:\cd
New-Alias cd Set-LocationWithGCI

clear

# greet with awesome logo!
$DATA_DIR = "$env:DATA_DIR"
$lines = Get-Content $DATA_DIR\extras\ascii\AsciiLogo.txt

echo "`n`n$lines`n`n"
