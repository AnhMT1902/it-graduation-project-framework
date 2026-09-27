[CmdletBinding()]
param([Parameter(Mandatory)] [string] $ProjectPath)

$ErrorActionPreference = 'Stop'
$resolved = (Resolve-Path -LiteralPath $ProjectPath).Path
$required = @('project.yaml', 'docker-compose.yml', 'Dockerfile', '.env.example', 'README.md', 'database\design\schema.dbml', 'database\migrations', 'database\seed', 'database\runtime-data', 'docs', 'tests')
$missing = @($required | Where-Object { -not (Test-Path -LiteralPath (Join-Path $resolved $_)) })
if ($missing.Count -gt 0) { throw "Missing required project paths: $($missing -join ', ')" }
$compose = Get-Content -LiteralPath (Join-Path $resolved 'docker-compose.yml') -Raw
if ($compose -notmatch 'healthcheck') { throw 'docker-compose.yml must define a healthcheck.' }
Write-Output "Project structure is valid: $resolved"

