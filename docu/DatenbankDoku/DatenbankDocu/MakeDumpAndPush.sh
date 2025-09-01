#!/bin/bash

# --- Einstellungen ---
DB_NAME="AnleitungDB03"
DUMP_DIR="./dumps"
DATE=$(date +"%Y%m%d_%H%M%S")
DUMP_FILE="$DUMP_DIR/Dump_${DB_NAME}_${DATE}.sql"

# --- Dump erstellen ---
"/C/xampp/mysql/bin/mysqldump.exe" -u root "$DB_NAME" > "$DUMP_FILE"

if [ $? -ne 0 ]; then
  echo "Fehler beim Datenbank-Dump!"
  exit 1
fi

echo "Dump gespeichert: $DUMP_FILE"

# --- Git Workflow ---
git add "$DUMP_FILE"
git commit -m "DB Dump: ${DB_NAME} am ${DATE}"
git push

echo "Dump wurde zu Git hinzugefügt und gepusht."