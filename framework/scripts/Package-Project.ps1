[CmdletBinding()]
param(
  [Parameter(Mandatory)] [string] $ProjectPath,
  [string] $Version = '1.0.0'
)

$ErrorActionPreference = 'Stop'
$resolved = (Resolve-Path -LiteralPath $ProjectPath).Path
& (Join-Path $PSScriptRoot 'Validate-Project.ps1') -ProjectPath $resolved
$project = Split-Path -Leaf $resolved
$workspace = Split-Path -Parent (Split-Path -Parent $resolved)
$releaseRoot = Join-Path $workspace 'releases'
New-Item -ItemType Directory -Path $releaseRoot -Force | Out-Null
$zipName = "${project}_v${Version}.zip"
$zipPath = Join-Path $releaseRoot $zipName
$staging = Join-Path ([IO.Path]::GetTempPath()) ("thesis-release-" + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $staging -Force | Out-Null
try {
  $copyTarget = Join-Path $staging $project
  Copy-Item -LiteralPath $resolved -Destination $copyTarget -Recurse
  $runtimeData = Join-Path $copyTarget 'database\runtime-data'
  if (Test-Path -LiteralPath $runtimeData) { Remove-Item -LiteralPath $runtimeData -Recurse -Force }
  Get-ChildItem -LiteralPath $copyTarget -Filter 'release-manifest.yaml' -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Force
  Get-ChildItem -LiteralPath $copyTarget -Filter 'release-verification.md' -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Force
  if (Test-Path -LiteralPath $zipPath) { Remove-Item -LiteralPath $zipPath -Force }
  Compress-Archive -LiteralPath $copyTarget -DestinationPath $zipPath
  Write-Output "Created release: $zipPath"
} finally {
  if (Test-Path -LiteralPath $staging) { Remove-Item -LiteralPath $staging -Recurse -Force }
}
