import pandas as pd
import mysql.connector

csv_path = "../Data/medien_Version2.csv"

# Verbindung zur MySql-Datenbank CC

conn =mysql.connector.connect(
    host='localhost',
    user="anleitung",
    password="anleitung",
    database="AnleitungDB03"
 )
cursor= conn.cursor()

'''
# Verbindung zur MySql-Datenbank Zuhause

conn =mysql.connector.connect(
    host="127.0.0.1",
    user="Jmi",
    password="MdE,'LvuL,349",
    database="AnleitungDB03"
)
cursor= conn.cursor()
'''

# csv einlesen
df= pd.read_csv(csv_path)

for _, row in df.iterrows():
    row = row.where(pd.notnull(row), None)  # <--- automatisch für alle Spalten!
    medienart = row ['MedienArt']
    titel = row ['Titel']
    sprache = row.get('Sprache', None)
    # Medium anlegen
    cursor.execute(
    "insert into Medium (Titel, MedienArt, Sprache) values (%s, %s, %s)",
    (titel, medienart, sprache)
    )
    medium_id = cursor.lastrowid

    # Buch oder Zeitschrift anlegen

    if medienart == 'Buch':
        cursor.execute(
            "insert into Buch (MediumID, Untertitel, Jahr, Verlag, Ort, ISBN, Reihe, Band) values (%s, %s, %s, %s, %s, %s, %s, %s)",
            (
            medium_id,
            row.get('Untertitel', None),
            row.get('Jahr', None),
            row.get('Verlag', None),
            row.get('Ort', None),
            row.get('ISBN', None),
            row.get('Reihe', None),
            row.get('Band', None)
            )
        )

    elif medienart == 'Zeitschrift':
        cursor.execute(
            "INSERT INTO Zeitschrift (MediumID, Untertitel, Jahrgang, Monat, Heftnummer, Sonderheft) VALUES (%s, %s, %s, %s, %s, %s)",
            (
                medium_id,
                row.get('Untertitel', None),
                row.get('Jahrgang', None),
                row.get('Monat', None),
                row.get('Heftnummer', None),
                bool(row.get('Sonderheft', False))
            )
        )
    # Analog für weitere Medienarten (Website, Flyer, Schnittmuster...)
conn.commit()
cursor.close()
conn.close()