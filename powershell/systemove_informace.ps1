Write-Host "Systémové informace:"
Write-Host "Uživatel: $env:UserName"
Write-Host "Počítač: $env:ComputerName"
Write-Host "Operační systém: " (Get-CimInstance Win32_OperatingSystem).Caption
Write-Host "RAM: " (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB "GB"
Write-Host "Volné místo na disku C: " (Get-PSDrive C).Free / 1GB "GB"
