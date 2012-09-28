if (Get-Module posh-spackle) { return }

Push-Location $psScriptRoot

. ./DbBackupUtils.ps1
Pop-Location

if (!$Env:HOME) { $Env:HOME = "$Env:HOMEDRIVE$Env:HOMEPATH" }
if (!$Env:HOME) { $Env:HOME = "$Env:USERPROFILE" }

Export-ModuleMember -Function @(
        'Db-Backup',
        'Db-Restore')