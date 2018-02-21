#powershell v2.0
#GET MD5 hash from file
$someFilePath = "C:\Users\f.jpg"
$md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$hash = [System.BitConverter]::ToString($md5.ComputeHash([System.IO.File]::ReadAllBytes($someFilePath)))

$hash
