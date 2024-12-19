"Running container in path:"
$setdir = (Split-Path $PSScriptRoot) + "\"
$setdir
$runscript = $setdir + "CloudFlareBuild.sh"
$error.clear()
try { 
#podman run -v ${setdir}:/antora:Z --rm -t local/antora:auroleap antora.yml
#podman run -v ${setdir}:/antora:Z --rm -t local/antora:auroleap
podman run -v ${setdir}:/antora:Z --rm -t local/websitedocker:main
#podman run -v ${setdir}:/antora:Z --entrypoint="./antora/CloudFlareBuild.sh" --rm -t cloudflare/cloudflared:latest
#podman run -v ${setdir}:/antora:Z --entrypoint="/antora/CloudFlareBuild.sh" --rm -t cloudflare/cloudflared:latest
}
catch { "Error occured" }
Write-Host 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
