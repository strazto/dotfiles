$rg = Get-Command rg -ErrorAction SilentlyContinue
if ($null -ne $rg) {
    $env:FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
}

$env:FZF_DEFAULT_OPTS = '--height 40% --layout=reverse --border'


