# Groundwork installer — Google Antigravity (Windows PowerShell)
# Skills are the same open SKILL.md format; Antigravity reads them from %USERPROFILE%\.gemini\config\skills

$Src = Split-Path -Parent $MyInvocation.MyCommand.Path
$Dest = Join-Path $env:USERPROFILE ".gemini\config\skills"

New-Item -ItemType Directory -Force -Path $Dest | Out-Null
Copy-Item -Path (Join-Path $Src "skills\*") -Destination $Dest -Recurse -Force

Write-Host "Installed Groundwork skills to $Dest"
Write-Host "Open Antigravity, run /skills to confirm, then try: /groundwork or /shape"
