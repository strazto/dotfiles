$psFzfAvailable = Get-Module -ListAvailable -Name PSFzf -ErrorAction SilentlyContinue
if ($null -ne $psFzfAvailable) {
    Import-Module PSFzf -ErrorAction Stop

    if (Get-Command Set-PsFzfOption -ErrorAction SilentlyContinue) {
        Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r' -PSReadlineChordProvider 'Ctrl+t'
    }
}


