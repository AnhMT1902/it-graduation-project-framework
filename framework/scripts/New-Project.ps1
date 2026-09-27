[CmdletBinding()]
param(
  [Parameter(Mandatory)] [string] $StudentId,
  [Parameter(Mandatory)] [string] $StudentName,
  [Parameter(Mandatory)] [string] $Title,
  [string] $ProjectId
)

$ErrorActionPreference = 'Stop'
$workspace = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$safeName = ($StudentName -replace '[^A-Za-z0-9]+', '').Trim()
if ([string]::IsNullOrWhiteSpace($safeName)) { throw 'StudentName must contain letters or numbers.' }
$folderName = "${StudentId}_${safeName}"
$projectPath = Join-Path $workspace "projects\$folderName"
if (Test-Path -LiteralPath $projectPath) { throw "Project folder already exists: $projectPath" }
if (-not $ProjectId) { $ProjectId = 'PRJ-{0:yyyy}-{1:D3}' -f (Get-Date), ((Get-ChildItem (Join-Path $workspace 'projects') -Directory -ErrorAction SilentlyContinue).Count + 1) }
$template = Join-Path $workspace 'framework\templates\web-app'
New-Item -ItemType Directory -Path (Join-Path $workspace 'projects') -Force | Out-Null
Copy-Item -LiteralPath $template -Destination $projectPath -Recurse
$projectYaml = Join-Path $projectPath 'project.yaml'
$content = Get-Content -LiteralPath $projectYaml -Raw -Encoding utf8
$content = $content.Replace('PRJ-YYYY-NNN', $ProjectId).Replace('STUDENT_ID', $StudentId).Replace('STUDENT_NAME', $StudentName).Replace('STUDENT_FOLDER', $folderName).Replace('PROJECT_TITLE', $Title)
Set-Content -LiteralPath $projectYaml -Value $content -Encoding utf8
Write-Output "Created project: $projectPath"
