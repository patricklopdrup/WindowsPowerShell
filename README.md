# PowerShell Profile
## Use this config for both PowerShell 5 and 7 with symbolic link
### Replace current `Profile` config with this
- Open PowerShell 5
- Type `$PROFILE` and see a path like: `~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`
- `cd ~\Documents`
- `Remove-Item -Recurse WindowsPowerShell` to remove current config
- `git clone https://github.com/patricklopdrup/WindowsPowerShell`

### Download PowerShell 7
[Microsoft doc](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#install-powershell-using-winget-recommended) for installation.
- Open PowerShell 5 as Administrator
- `winget search Microsoft.PowerShell`
- `winget install --id Microsoft.Powershell --source winget`

### Make symbolic link to PowerShell 7
- Open PowerShell 7
- Type `$PROFILE` and see a path like: `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` (here only `PowerShell`)
- `New-Item -Type SymbolicLink -Value '~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1' -Path $PROFILE` to create a symbolic link from PowerShell 5 config to PowerShell 7 config

## Things to download
### posh-git
[posh-git download](https://github.com/dahlbyk/posh-git)

### lfcd
- Make a `.bin` folder in your user folder. So you have: `~/.bin/`
- Make a file called `lfcd.ps1` and paste [this code](https://github.com/gokcehan/lf/blob/master/etc/lfcd.ps1) in the file
- Make an environment variable in `User variables for <your user>` for the `.bin` folder
