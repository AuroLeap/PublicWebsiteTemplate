"Running container in path:"
$setdir = (Split-Path $PSScriptRoot) + "\"
$setdir
$runscript = $setdir + "Build.sh"
$error.clear()
podman machine start
try { 

podman run -v ${setdir}:/antora:Z --rm -t local/websitedocker:main

}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
