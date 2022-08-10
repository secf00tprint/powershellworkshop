function global:http_request{
	$Response = Invoke-WebRequest -URI http://127.0.0.1:8000
}

$timer = New-Object Timers.Timer
$timer.Interval=3000
$timer.Enabled=$true
Register-ObjectEvent -InputObject $timer -EventName Elapsed -SourceIdentifier HttpRequest  -Action {http_request}
