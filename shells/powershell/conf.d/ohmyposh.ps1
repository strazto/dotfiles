$omp = Get-Command oh-my-posh -ErrorAction SilentlyContinue
if ($null -eq $omp) {
    return
}

$theme = $null
if ($null -ne $env:POSH_THEMES_PATH -and (Test-Path -LiteralPath $env:POSH_THEMES_PATH)) {
    $candidate = Join-Path $env:POSH_THEMES_PATH 'jandedobbeleer.omp.json'
    if (Test-Path -LiteralPath $candidate) {
        $theme = $candidate
    }
}

try {
    if ($null -ne $theme) {
        (& oh-my-posh init pwsh --config $theme | Out-String) | Invoke-Expression
    }
    else {
        (& oh-my-posh init pwsh | Out-String) | Invoke-Expression
    }
}
catch {
    Write-Warning ("Failed to initialize oh-my-posh. Error: {0}" -f $_.Exception.Message)
}


