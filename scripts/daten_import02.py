import pandas as pd
import mysql.connector

csv_path = "C:/Users/juliane.bonenkamp/HandArbeitenAnleitungenDB/Data/ProbeDatenAnleitungDB04.CSV"

# Verbindung zur MySql-Datenbank CC

mydb =mysql.connector.connect(
    host='localhost',
    user="anleitung",
    password="anleitung",
    database="AnleitungDB04"
 )
mycursor= mydb.cursor()



# csv einlesen
df= pd.read_csv(csv_path, encoding='latin-1', sep=";")



for daten, row in df.iterrows():
    row = row.where(pd.notnull(row), None)  # <--- automatisch für alle Spalten!
    
    medienart = row ['MedienArt']
    titel = row ['Titel']
    # Medium anlegen
    mycursor.execute(
    "insert into Medium (Titel, MedienArt) values (%s, %s)",
    (titel, medienart)
    )
    medium_id = mycursor.lastrowid

    # Buch oder Zeitschrift anlegen

    if medienart == 'Buch':
        mycursor.execute(
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
    
    #Autor
    mycursor.execute(
    "insert into Autor (Nachname, Vorname, Alias, Zusatz, Firma) values(%s,%s,%s,%s,%s)",
        (
        row.get('Nachname', None),
        row.get('Vorname', None),
        row.get('Alias', None),
        row.get('Zusatz', None),
        row.get('Firma', None),
        )
    )

    #Anleitung
    mycursor.execute(
    "insert into Anleitung (MediumID,Titel,Seitenzahl,Grundschnitt,Modellnummer,Schnittbogen) values(%s,%s,%s,%s,%s,%s)",
        (
        medium_id,
        row.get('Titel', None),
        row.get('Seitenzahl', None),
        row.get('Grundschnitt', None),
        row.get('Modellnummer', None),
        row.get('Schnittbogen', None),
        )
    )
   
mydb.commit()
mycursor.close()
mydb.close()