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
df = pd.read_csv(csv_path, encoding='latin-1', sep=";")


def MediumInsert(medienart,titel):    
    mycursor.execute(
    "insert into Medium (Titel, MedienArt) values (%s, %s)",
    (titel, medienart)
    )
    mydb.commit()
    medium_id = mycursor.lastrowid
    return medium_id

def BuchInsert(medium_id):
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
     mydb.commit()

def ZeitschriftInsert(medium_id):
    mycursor.execute(
            "INSERT INTO Zeitschrift (MediumID, Heftthema, Jahrgang, Monat, Heftnummer, Sonderheft) VALUES (%s, %s, %s, %s, %s, %s)",
            (
                medium_id,
                row.get('Heftthema', None),
                row.get('Jahrgang', None),
                row.get('Monat', None),
                row.get('Heftnummer', None),
                bool(row.get('Sonderheft', False))
            )
        )
    mydb.commit()

def AutorInsert(row):
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
    mydb.commit()
    autor_id = mycursor.lastrowid
    return autor_id

def AnleitungInsert(medium_id):
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
    anleitung_id = mycursor.lastrowid
    return anleitung_id


def MediumAutorInsert(medium_id,autor_id):
    mycursor.execute(
        "Insert into mediumautor (MediumID,AutorID) values (%s,%s)",
        (
        medium_id,
        autor_id
        )
    )
    medium_autor_id = (medium_id,autor_id)
    return medium_autor_id

def AnleitungAutorInsert(anleitung_id,autor_id):
    mycursor.execute(
        "Insert into anleitungautor (AnleitungID,AutorID) values (%s,%s)",
        (
            anleitung_id,
            autor_id
        )
    )
    anleitung_autor_id = (anleitung_id,autor_id)
    return anleitung_autor_id


for daten, row in df.iterrows():
    medienart = row ['MedienArt']
    titel = row ['Titel']
       
    medium_id = MediumInsert(medienart,titel)
        
    if medienart == 'Buch':
        BuchInsert(medium_id)
    
    elif medienart == 'Zeitschrift':
        ZeitschriftInsert(medium_id)
        
        
    autor_id = AutorInsert(row)   
        
    anleitung_id = AnleitungInsert(medium_id) 
        
    medium_autor_id = MediumAutorInsert(medium_id,autor_id)

    anleitung_autor_id = AnleitungAutorInsert(anleitung_id, autor_id)
    

   
mydb.commit()
mycursor.close()
mydb.close()