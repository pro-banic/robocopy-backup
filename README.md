# robocopy-backup
sync files or folders via robocopy

### Ideen und Vorschläge an
berge@prohotel-edv.de

# installation
## 1. Script anpassen
- *.ps1 Datei herunterladen
- Pfad zu source und Destination anpassen
- Pfad zum Log anpassen

### Hetzner Storage Box
- Hetzner Backup Storage sollte als relativer Pfad hinterlegt werden und Laufwerk via Windows eingebunden werden wegen Anmeldedaten
- grund ist Fehler FEHLER 3 (0x00000003) https://www.mcseboard.de/topic/163357-robocopy-das-system-kann-den-angegebenen-pfad-nicht-finden/
- $destinationPath = "\\uxxxxxx.your-storagebox.de\backup\xxx-folder"

## 2. Windows Aufgabenplanung einrichten
- Aufgabenplanung in Windows starten
- Aufgabe erstellen

> unabhängige Anmeldung

-Trigger auf Zeitplan
> täglich, wiederholen alle 1 Stunden, Dauer unbegrenzt

- Aktionen
> Programm starten
```Programm\Script: %windir%\system32\windowspowershell\v1.0\powershell.exe```

```Argumente: -File D:\Pfad-zur-Datei\FTWatchdog\backup-sqlite.ps1```

