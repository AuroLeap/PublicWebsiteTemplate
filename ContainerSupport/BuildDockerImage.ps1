$error.clear()
try { 
podman build -t local/antora:auroleap -f $PSScriptRoot/Dockerfile .
}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

