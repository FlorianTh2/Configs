Import-Module PSReadLine

Set-PSReadLineKeyHandler -Key Tab -Function Complete

Import-Module Get-ChildItemColor

# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineOption -EditMode Windows

function prompt
{
    $ESC = "`e"
    "$ESC[36m$($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) $ESC[0m"
}