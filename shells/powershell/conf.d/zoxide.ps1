$zoxide = Get-Command zoxide -ErrorAction SilentlyContinue
if ($null -ne $zoxide) {
    Invoke-Expression (& zoxide init powershell | Out-String)
}


