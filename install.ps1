# Groundwork installer — Claude Code (Windows PowerShell)
$ErrorActionPreference = "Stop"

$Src = Split-Path -Parent $MyInvocation.MyCommand.Path
$Dest = Join-Path $env:USERPROFILE ".claude\skills"

New-Item -ItemType Directory -Force -Path $Dest | Out-Null
Copy-Item -Path (Join-Path $Src "skills\*") -Destination $Dest -Recurse -Force

Write-Host "Installed Groundwork skills to $Dest"
Write-Host "Start Claude Code and try: /groundwork or /shape"
