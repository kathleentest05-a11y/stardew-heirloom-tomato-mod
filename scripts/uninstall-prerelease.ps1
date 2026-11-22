[CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
param(
    [ValidateNotNullOrEmpty()]
    [string]$ModsPath = 'C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Mods'
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $ModsPath -PathType Container)) {
    throw "Mods folder not found: $ModsPath. Pass -ModsPath with your game's Mods folder."
}

$targetPath = Join-Path $ModsPath '[CP] Heirloom Tomatoes PRERELEASE'
if (-not (Test-Path -LiteralPath $targetPath -PathType Container)) {
    Write-Output "No prerelease pack found at $targetPath"
    return
}

if ($PSCmdlet.ShouldProcess($targetPath, 'Remove prerelease mod folder')) {
    Remove-Item -LiteralPath $targetPath -Recurse -Force
    Write-Output "Removed prerelease pack from $targetPath"
}
