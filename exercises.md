# Motivation
 
 Ziel: Workshop Powershell
 
 Rahmen: Security Meetup öffentliche Veranstaltung
 Publikum: Pentester, Admins, Entwickler
 
 (Optionales Ziel: Botnetz entwickeln)
 
# Ablauf
 
 Wie findet man sich zurecht in Powershell wenn man von Linux kommt
 
 Theorie-Praxis-Theorie-Praxis...
 
# Powershell zum Laufen bekommen
 
 Linux: snap
 Windows: vorinstalliert
 
# Hello World
 
## Übungsbeschreibung
 
 Gib "Ich bin der L77t H4x0r" auf dem Bildschirm aus
 
## Hilfe
 Get-Help, alias
 
## Lösung 
 echo "Ich bin der L77t H4x0r"
 
# Datei zwischenspeichern
 
## Übungsbeschreibung
 
 Schreibe "I was here, I pwnd your system, muahaha" in eine Datei info.txt
 
## Hilfe
 Nutze Google "Write string to file powershell"
 
# Datei auslesen
 
 "I was here, I pwnd your system, muahaha" | Out-File .\info.txt
 
## Übungsbeschreibung
 
 Lies die Datei info.txt aus und gib sie auf dem Bildschirm aus
