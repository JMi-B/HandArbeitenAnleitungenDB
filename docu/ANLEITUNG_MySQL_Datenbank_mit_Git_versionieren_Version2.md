# Anleitung: MySQL-Datenbank per Dump sichern und mit Git versionieren

## Voraussetzungen
- MySQL ist installiert und läuft
- Du hast Zugriff auf die Datenbank (z.B. Benutzername, Passwort, Datenbankname)
- Git ist installiert und ein Git-Repository existiert oder wird neu angelegt

---

## 1. **Datenbank-Dump erstellen**

Mit `mysqldump` kannst du die komplette Datenbank (inklusive Struktur und Daten) sichern.

**Beispiel-Befehl:**
```bash
mysqldump -u <Benutzername> -p <Datenbankname> > db_dump.sql
```
- `<Benutzername>` = dein MySQL-User (z.B. root)
- `<Datenbankname>` = Name deiner Datenbank (z.B. AnleitungDB03)
- Du wirst nach dem Passwort gefragt.

**Beispiel für deine DB:**
```bash
mysqldump -u root -p AnleitungDB03 > db_dump.sql
```

---

## 2. **Dump ins Git-Repository legen**

1. Lege den Dump in dein Projektverzeichnis (z.B. als `db_dump.sql`).
2. Füge die Datei zum Git-Repository hinzu:

```bash
git add db_dump.sql
git commit -m "DB-Dump vom 25.08.2025"
```
3. Wenn du mehrere Dumps behalten willst, kannst du sie z.B. mit Datumsangabe speichern:
    - `db_dump_2025-08-25.sql`
    - `db_dump_2025-08-18.sql`

---

## 3. **Alten Stand wiederherstellen**

1. Hole den gewünschten Dump aus dem Git-Repository:
    - Mit `git log` siehst du die früheren Commits.
    - Mit `git checkout <commit-id> -- db_dump.sql` kannst du einen alten Dump wiederherstellen.

2. **Importiere den Dump in MySQL:**
    - **Achtung:** Bestehende Daten werden überschrieben!
    - Zuerst (optional) die Datenbank leeren oder neu anlegen:
      ```bash
      mysql -u root -p -e "DROP DATABASE IF EXISTS AnleitungDB03; CREATE DATABASE AnleitungDB03;"
      ```
    - Dann den Dump einspielen:
      ```bash
      mysql -u root -p AnleitungDB03 < db_dump.sql
      ```

---

## 4. **Automatisierung (optional)**

Du kannst ein kleines Skript schreiben, um Dump und Commit zu automatisieren:

```bash
#!/bin/bash
mysqldump -u root -pAnleitungsPasswort AnleitungDB03 > db_dump_$(date +%Y-%m-%d).sql
git add db_dump_$(date +%Y-%m-%d).sql
git commit -m "DB-Dump vom $(date +%Y-%m-%d)"
```

---

## 5. **Best Practices**

- Lege Dumps am besten in einen eigenen Ordner (z.B. `/db_dumps/`).
- Dump-Dateien können groß werden – prüfe, ob sie für dein Repo geeignet sind.
- Nutze `.gitignore`, falls du nicht alle Dumps versionieren willst.

---

## **Kurzfassung**

1. Mit `mysqldump` Sicherung erstellen.
2. Dump ins Git-Repo legen und committen.
3. Bei Bedarf alten Dump aus Git holen und mit `mysql < dump.sql` wiederherstellen.

---

**Fragen oder weitere Automatisierung? Melde dich gern!**