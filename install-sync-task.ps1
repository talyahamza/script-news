# Kaydir tâche Windows katlanci sync.ps1 kol 5 d9aye9 (w mlli tdkhol l-Windows)
$script = Join-Path $PSScriptRoot "sync.ps1"
$taskName = "ScriptNews-Sync"

$action = New-ScheduledTaskAction -Execute "conhost.exe" -Argument "--headless powershell.exe -NoProfile -ExecutionPolicy Bypass -File `"$script`""
$every5 = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 5)
$atLogon = New-ScheduledTaskTrigger -AtLogOn -User $env:USERNAME
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable -MultipleInstances IgnoreNew -ExecutionTimeLimit (New-TimeSpan -Minutes 4)

Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $every5, $atLogon -Settings $settings -Description "Sync script news m3a GitHub kol 5 d9aye9" -Force | Out-Null
Start-ScheduledTask -TaskName $taskName
Write-Host "Tâche '$taskName' tdarat. Sync kol 5 d9aye9."
