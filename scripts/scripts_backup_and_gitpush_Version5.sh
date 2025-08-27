#!/bin/bash
DATUM=$(date +%Y-%m-%d)

# Dump erstellen
"/c/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe" --column-statistics=0 -u root AnleitungDB03 > dumps/db_dump_$DATUM.sql

# Gesamten Arbeitsstand sichern (alle Änderungen + neuen Dump)
git add .                           # alle Änderungen im Repo
git commit -m "Arbeitsstand & DB-Dump vom $DATUM"
git push