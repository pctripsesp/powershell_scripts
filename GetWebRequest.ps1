#powershell v2.0 compatible
$request = [System.Net.WebRequest]::Create("http://URL/index.php")
$request.Method="GET"
$request.ContentType= "application/x-www-form-urlencoded"
$request.UserAgent= "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"
$response = $request.GetResponse()
$requestStream = $response.GetResponseStream()
$readStream = New-Object System.IO.StreamReader $requestStream
$data = $readStream.readToEnd()
$data
