# AI Planning Skills installer — Windows PowerShell
$ErrorActionPreference = "Stop"

$Src = Split-Path -Parent $MyInvocation.MyCommand.Path
$Dest = Join-Path $env:USERPROFILE ".claude\skills"

New-Item -ItemType Directory -Force -Path $Dest | Out-Null

foreach ($skill in @("groundwork","clarify","shape","blueprint","stress-test","backlog","impact","debrief")) {
  $target = Join-Path $Dest $skill
  if (Test-Path $target) { Write-Host "replaced: $skill" }
  New-Item -ItemType Directory -Force -Path $target | Out-Null
  Copy-Item -Path (Join-Path $Src "skills\$skill\*") -Destination $target -Recurse -Force
}
$sharedTarget = Join-Path $Dest "shared"
New-Item -ItemType Directory -Force -Path $sharedTarget | Out-Null
Copy-Item -Path (Join-Path $Src "shared\*") -Destination $sharedTarget -Recurse -Force

Write-Host "Installed 8 skills to $Dest"
Write-Host "Start Claude Code and try: /plan or /shape"
