# Linux-like aliases for PowerShell
Write-Output "Loading Linux-Like aliases for PowerShell..."
function ll_function {Get-ChildItem -Force | Format-Table Mode, @{n='Owner';e={(Get-Acl $_.FullName).Owner}}, @{n='Length';a='Right';e={if ($_.Length -ge 1GB) {"{0:N2} GB" -f ($_.Length/1GB)} elseif ($_.Length -ge 1MB) {"{0:N2} MB" -f ($_.Length/1MB)} elseif ($_.Length -ge 1KB) {"{0:N2} KB" -f ($_.Length/1KB)} else {"{0}" -f $_.Length}}}, LastWriteTime, Name}
function df_function {Get-WmiObject -Class Win32_LogicalDisk | Format-Table DeviceID, @{n='Size (GB)';e={$_.Size/1GB}}, @{n='Used (GB)';e={($_.Size-$_.FreeSpace)/1GB}}, @{n='Avail (GB)';e={$_.FreeSpace/1GB}}, @{n='Used (%)';a='Right';e={"{0:N0}%" -f ((($_.Size-$_.FreeSpace)/$_.Size)*100)}}, VolumeName}

New-Alias -Name ll -Value ll_function
New-Alias -Name grep -Value Select-String
New-Alias -Name df -Value df_function