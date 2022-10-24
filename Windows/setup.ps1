### Apps Installation
Start-Process -FilePath "path/to/vscode/VSCodeUserSetup-x64.exe" -Argument "/VERYSILENT /MERGETASKS=!runcode" -Verb runas -Wait
start-Process -FilePath "$Path\npp.7.5.6.Installer.x64.exe" -ArgumentList "/S" -Verb runas -Wait
Start-Process -FilePath "GIT" -ArgumentList '/SILENT /LOADINF="my-config.cnf"' -Verb runas -Wait