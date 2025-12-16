$ErrorActionPreference = 'Stop'

function Assert-CommandExists {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Name
    )

    if ($null -eq (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw ("Required command not found on PATH: {0}" -f $Name)
    }
}

function Test-WingetPackageInstalled {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Id
    )

    $output = & winget list -e --id $Id 2>&1
    $text = ($output | Out-String)
    if ($text -match 'No installed package found matching input criteria') {
        return $false
    }

    $exitCode = $LASTEXITCODE
    if ($exitCode -ne 0) {
        throw ("winget list failed for id '{0}' (exit {1}). Output: {2}" -f $Id, $exitCode, $text)
    }

    # If winget didn't print the \"no package\" message, it generally found a match.
    return $true
}

function Install-WingetPackage {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Id
    )

    if (Test-WingetPackageInstalled -Id $Id) {
        Write-Host ("Already installed: {0}" -f $Id)
        return
    }

    Write-Host ("Installing: {0}" -f $Id)
    & winget install -e --id $Id --scope user --accept-package-agreements --accept-source-agreements

    $exitCode = $LASTEXITCODE
    if ($exitCode -ne 0) {
        throw ("winget install failed for id '{0}' (exit {1})." -f $Id, $exitCode)
    }
}

Assert-CommandExists -Name 'winget'

$packageIds = @(
    'Microsoft.WindowsTerminal',
    'Microsoft.PowerShell',
    'junegunn.fzf',
    'ajeetdsouza.zoxide',
    'BurntSushi.ripgrep.MSVC',
    'JanDeDobbeleer.OhMyPosh'
)

foreach ($id in $packageIds) {
    Install-WingetPackage -Id $id
}


