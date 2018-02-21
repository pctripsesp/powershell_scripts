#powershell v2.0
$url = "<URL_FILE.txt>"
$output = "$env:USERPROFILE\Desktop\file.txt"
$start_time = Get-Date
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
