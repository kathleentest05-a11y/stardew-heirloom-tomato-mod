[CmdletBinding()]
param(
    [ValidateNotNullOrEmpty()]
    [string]$ModsPath = 'C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Mods'
)

$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$packName = '[CP] Heirloom Tomatoes PRERELEASE'
$targetPath = Join-Path $ModsPath $packName
$suffix = [guid]::NewGuid().ToString('N')
$stagingPath = Join-Path $ModsPath ".HeirloomTomatoes-PRERELEASE-staging-$suffix"
$backupPath = Join-Path $ModsPath ".HeirloomTomatoes-PRERELEASE-backup-$suffix"

if (-not (Test-Path -LiteralPath $ModsPath -PathType Container)) {
    throw "Mods folder not found: $ModsPath. Pass -ModsPath with your game's Mods folder."
}

foreach ($required in @('manifest.json', 'content.json', 'assets', 'i18n')) {
    if (-not (Test-Path -LiteralPath (Join-Path $repoRoot $required))) {
        throw "Required runtime path missing: $required"
    }
}

$manifest = Get-Content -LiteralPath (Join-Path $repoRoot 'manifest.json') -Raw | ConvertFrom-Json
if ([string]::IsNullOrWhiteSpace($manifest.Version)) {
    throw 'Could not read Version from manifest.json'
}

if ((Test-Path -LiteralPath $targetPath) -and
    -not (Test-Path -LiteralPath $targetPath -PathType Container)) {
    throw "Prerelease destination exists but is not a folder: $targetPath"
}

New-Item -ItemType Directory -Path $stagingPath | Out-Null
$backupCreated = $false

try {
    Copy-Item -LiteralPath (Join-Path $repoRoot 'manifest.json') -Destination $stagingPath -Force
    Copy-Item -LiteralPath (Join-Path $repoRoot 'content.json') -Destination $stagingPath -Force
    Copy-Item -LiteralPath (Join-Path $repoRoot 'assets') -Destination $stagingPath -Recurse -Force
    Copy-Item -LiteralPath (Join-Path $repoRoot 'i18n') -Destination $stagingPath -Recurse -Force

    Get-ChildItem -LiteralPath $stagingPath -Force -Recurse -File |
        Where-Object { $_.Name -in @('.gitkeep', '.DS_Store', 'Thumbs.db') } |
        Remove-Item -Force

    if (Test-Path -LiteralPath $targetPath) {
        Move-Item -LiteralPath $targetPath -Destination $backupPath
        $backupCreated = $true
    }

    try {
        Move-Item -LiteralPath $stagingPath -Destination $targetPath
    }
    catch {
        if ($backupCreated -and -not (Test-Path -LiteralPath $targetPath)) {
            Move-Item -LiteralPath $backupPath -Destination $targetPath
            $backupCreated = $false
        }
        throw
    }

    if ($backupCreated) {
        Remove-Item -LiteralPath $backupPath -Recurse -Force
        $backupCreated = $false
    }
}
finally {
    if (Test-Path -LiteralPath $stagingPath) {
        Remove-Item -LiteralPath $stagingPath -Recurse -Force
    }
}

Write-Output "Installed or refreshed prerelease pack at $targetPath"
