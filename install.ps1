$username = Read-Host -Prompt "Please enter user account name: "
copy ./Microsoft.PowerShell_profile.ps1 "C:\Users\$username\Documents\WindowsPowerShell"
