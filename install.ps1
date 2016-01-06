$username = Read-Host -Prompt "Please enter user account name: "
copy "$env:PKG_DIR\conf-ps\Microsoft.PowerShell_profile.ps1" "C:\Users\$username\Documents\WindowsPowerShell"
