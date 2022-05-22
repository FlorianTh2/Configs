Import-Module PSReadLine

Set-PSReadLineKeyHandler -Key Tab -Function Complete

Import-Module Get-ChildItemColor

# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineOption -EditMode Windows

function prompt
{
    Write-Host $($executionContext.SessionState.Path.CurrentLocation) -ForegroundColor Cyan -NoNewline
    "$('>' * ($nestedPromptLevel + 1)) "
}