Function vimhome {Set-Location -Path C:\Users\patri\AppData\Local\nvim }
Function viminit {nvim C:\Users\patri\AppData\Local\nvim\init.vim }
Function dev {Set-Location -Path C:\dev }

Set-Alias -Name vim -Value nvim

Set-PSReadLineKeyHandler -Chord Tab -Function Complete
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Set-PSReadLineKeyHandler -Chord Ctrl+o -ScriptBlock {
    lfcd;
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('cls;')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('ls;')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

Import-Module posh-git
