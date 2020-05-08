Write-Output "Repo with default rules"
$StartTime=GET-DATE
.\AppInspector.CLI\bin\Release\netcoreapp3.1\ApplicationInspector.CLI.exe analyze -s .\repo-path -h first
$EndTime=GET-DATE
$diff=New-TimeSpan -Start $StartTime -End $EndTime
Write-Output "Time Diff: " $diff.Minutes $diff.Seconds

Write-Output "Repo with custom rules"
$StartTime=GET-DATE
.\AppInspector.CLI\bin\Release\netcoreapp3.1\ApplicationInspector.CLI.exe analyze -s .\repo-path -h first -r custom_rules -i
$EndTime=GET-DATE
$diff=New-TimeSpan -Start $StartTime -End $EndTime
Write-Output "Time Diff: " $diff.Minutes $diff.Seconds