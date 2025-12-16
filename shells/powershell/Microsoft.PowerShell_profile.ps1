$ErrorActionPreference = 'Stop'

$profileDir = Split-Path -Parent $PROFILE
$confDir = Join-Path $profileDir 'conf.d'

if (Test-Path -LiteralPath $confDir) {
    Get-ChildItem -LiteralPath $confDir -Filter '*.ps1' -File |
        Sort-Object -Property Name |
        ForEach-Object {
            try {
                . $_.FullName
            }
            catch {
                Write-Warning ("Failed to load PowerShell conf.d script: {0}. Error: {1}" -f $_.FullName, $_.Exception.Message)
            }
        }
}


