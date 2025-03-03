# Spuštění aktualizací Windows
Install-PackageProvider -Name NuGet -Force
Install-Module PSWindowsUpdate -Force
Get-WindowsUpdate -Install -AcceptAll -AutoReboot
