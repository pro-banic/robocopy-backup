# https://github.com/pro-banic/robocopy-backup

$sourcePath = "D:\Uploadscript\uhu"
$destinationPath = "Z:"
$logFile = "D:\Uploadscript\robocopy.log"

# robocopy-Befehl zum Kopieren der neuen und geänderten Dateien
robocopy $sourcePath $destinationPath /e /xo /np /log:$logFile
