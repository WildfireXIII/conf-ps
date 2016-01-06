#*************************************************************
#  File: Micrsoft.PowerShell_profile.ps1
#  Date created: 1/5/2016
#  Date edited: 1/6/2016
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
	# Get-ChildItem $path
	ls
}

# set aliases appropriately
Remove-Item alias:\cd
New-Alias cd Set-LocationWithGCI

