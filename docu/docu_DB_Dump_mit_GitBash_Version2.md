# Workflow: Versionsgenaue Sicherung der MySQL-Datenbank mit Git Bash

## Ziel
Mit diesem Workflow kannst du deine MySQL-Datenbank direkt aus Git Bash als Dump sichern und versionsgenau im Git-Repository verwalten. So kannst du jederzeit auf einen früheren Stand zurückkehren oder Änderungen nachvollziehen.

---

## Voraussetzungen
- MySQL ist installiert (Pfad zu `mysqldump.exe` bekannt)
- Git Bash ist installiert
- Dump-Verzeichnis im Projekt (`dumps/` – ggf. anlegen mit `mkdir dumps`)
- Das Projekt ist ein Git-Repository

---

## Schritt 1: Dump der Datenbank aus Git Bash erstellen

Da Git Bash unter Windows arbeitet, musst du den **vollen Windows-Pfad** zur `mysqldump.exe` angeben:

```bash
"/c/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe" --column-statistics=0 -u <Benutzername> -p <Datenbankname> > dumps/db_dump_$(date +%Y-%m-%d).sql
```
Beispiel für deine Datenbank:
```bash
"/c/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe" --column-statistics=0 -u root -p AnleitungDB03 > dumps/db_dump_$(date +%Y-%m-%d).sql
```
- Die Option `--column-statistics=0` blendet die Warnung aus, falls dein MySQL-Server die Funktion nicht unterstützt.
- Das Datum im Dateinamen hilft, verschiedene Stände zu unterscheiden.

---

## Schritt 2: Dump ins Git-Repository aufnehmen

Füge den Dump zur Versionskontrolle hinzu und erstelle einen Commit:

```bash
git add dumps/db_dump_2025-08-25.sql
git commit -m "DB-Dump vom 25.08.2025"
```
Du kannst beliebig viele Dumps im Ordner behalten, um verschiedene Stände abzusichern.

---

## Schritt 3: Auf einen früheren Stand zurückgehen (Restore)

Wenn du auf einen früheren Stand zurückkehren möchtest:

1. Wähle den gewünschten Dump aus dem `dumps/`-Ordner (z.B. aus einem älteren Commit).
2. Spiele den Dump in die Datenbank zurück. Nutze dazu den Pfad zur `mysql.exe`:

    ```bash
    "/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe" -u root -p AnleitungDB03 < dumps/db_dump_2025-08-25.sql
    ```
   **Achtung:** Bestehende Daten werden überschrieben!

3. Optional: Hole einen älteren Dump aus einem früheren Commit:
    ```bash
    git checkout <commit-id> -- dumps/db_dump_YYYY-MM-DD.sql
    ```

---

## Schritt 4: Automatisierung (Optional)

Mit folgendem Skript kannst du Dump und Commit automatisieren (Pfad ggf. anpassen):

```bash
#!/bin/bash
DATUM=$(date +%Y-%m-%d)
"/c/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe" --column-statistics=0 -u root -p AnleitungDB03 > dumps/db_dump_$DATUM.sql
git add dumps/db_dump_$DATUM.sql
git commit -m "DB-Dump vom $DATUM"
```

---

## Best Practices

- Dumps immer im Ordner `dumps/` ablegen und versionieren.
- Vor größeren Änderungen oder Imports einen Dump anlegen.
- Bei Bedarf Dumps aus älteren Commits wiederherstellen.
- Dumps können groß werden – prüfe, ob sie dauerhaft im Repo bleiben sollen oder ggf. extern archivieren.

---

## Ordnerstruktur (Beispiel)

```
meinprojekt/
├─ schema/
├─ data/
├─ scripts/
├─ docu/
├─ dumps/
│    ├─ db_dump_2025-08-25.sql
│    └─ db_dump_2025-08-24.sql
└─ ...
```

---

## Kurzübersicht

1. Dump erstellen:  
   `mysqldump ... > dumps/db_dump_YYYY-MM-DD.sql`
2. Dump committen:  
   `git add ... && git commit ...`
3. Restore:  
   `mysql ... < dumps/db_dump_YYYY-MM-DD.sql`

---

**Damit kannst du deine Datenbank jederzeit versionsgenau sichern und auf einen früheren Stand zurückspringen.**