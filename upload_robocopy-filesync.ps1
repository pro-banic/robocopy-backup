# https://github.com/pro-banic/robocopy-backup

$sourceFile = "C:\ProgramData\fiskaltrust\service\xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx.sqlite"
$destinationPath = "\\uxxxxxx.your-storagebox.de\backup\"
$logFile = "C:\protelDaten\fiskaltrust-backup\robocopy.log"

# robocopy-Befehl zum Kopieren der Datei
robocopy $(Split-Path $sourceFile -Parent) $destinationPath $(Split-Path $sourceFile -Leaf) /np /log:$logFile
