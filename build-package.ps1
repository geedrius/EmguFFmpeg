#/usr/bin/pwsh

$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
Push-Location
Set-Location $(Resolve-Path $scriptDir/src)
dotnet pack -c Release --include-symbols --include-source --output $scriptDir
Pop-Location

