$psReadLineAvailable = Get-Module -ListAvailable -Name PSReadLine -ErrorAction SilentlyContinue
if ($null -ne $psReadLineAvailable) {
    Import-Module PSReadLine -ErrorAction Stop

    Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key Shift+Tab -Function TabCompletePrevious
    Set-PSReadLineKeyHandler -Key RightArrow -Function AcceptSuggestion
}


