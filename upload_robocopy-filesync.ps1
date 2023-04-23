$sourceFile = "D:\Uploadscript\uhu\test.txt"
$destinationPath = "Z:"
$logFile = "D:\Uploadscript\robocopy.log"

# robocopy-Befehl zum Kopieren der Datei
robocopy $(Split-Path $sourceFile -Parent) $destinationPath $(Split-Path $sourceFile -Leaf) /np /log:$logFile
