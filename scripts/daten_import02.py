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


def MediumInsert(row,medienart,titel):    
    mycursor.execute(
    "insert into Medium (Titel, MedienArt) values (%s, %s)",
    (titel, medienart)
    )
    mydb.commit()
    thisrow = row
    medium_id = mycursor.lastrowid
    return medium_id, thisrow

def BuchInsert(thisrow,medium_id):
     mycursor.execute(
            "insert into Buch (MediumID, Untertitel, Jahr, Verlag, Ort, ISBN, Reihe, Band) values (%s, %s, %s, %s, %s, %s, %s, %s)",
            (
            medium_id,
            thisrow.get('Untertitel', None),
            thisrow.get('Jahr', None),
            thisrow.get('Verlag', None),
            thisrow.get('Ort', None),
            thisrow.get('ISBN', None),
            thisrow.get('Reihe', None),
            thisrow.get('Band', None)
            )
        )
     mydb.commit()

def ZeitschriftInsert(thisrow,medium_id):
    mycursor.execute(
            "INSERT INTO Zeitschrift (MediumID, Heftthema, Jahrgang, Monat, Heftnummer, Sonderheft) VALUES (%s, %s, %s, %s, %s, %s)",
            (
                medium_id,
                thisrow.get('Heftthema', None),
                thisrow.get('Jahrgang', None),
                thisrow.get('Monat', None),
                thisrow.get('Heftnummer', None),
                bool(row.get('Sonderheft', False))
            )
        )
    mydb.commit()

def AutorInsert(thisrow):
    mycursor.execute(
    "insert into Autor (Nachname, Vorname, Alias, Zusatz, Firma) values(%s,%s,%s,%s,%s)",
        (
        thisrow.get('Nachname', None),
        thisrow.get('Vorname', None),
        thisrow.get('Alias', None),
        thisrow.get('Zusatz', None),
        thisrow.get('Firma', None),
        )
    )
    mydb.commit()
    autor_id = mycursor.lastrowid
    return autor_id

def AnleitungInsert(thisrow,medium_id):
    mycursor.execute(
    "insert into Anleitung (MediumID,Titel,Seitenzahl,Grundschnitt,Modellnummer,Schnittbogen) values(%s,%s,%s,%s,%s,%s)",
        (
        medium_id,
        thisrow.get('Titel', None),
        thisrow.get('Seitenzahl', None),
        thisrow.get('Grundschnitt', None),
        thisrow.get('Modellnummer', None),
        thisrow.get('Schnittbogen', None),
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
       
    medium_id = MediumInsert(row,medienart,titel)
    thisrow = row
    
    if medienart == 'Buch':
        BuchInsert(thisrow,medium_id)
    
    elif medienart == 'Zeitschrift':
        ZeitschriftInsert(thisrow,medium_id)
        
        
    autor_id = AutorInsert(thisrow)   
        
    anleitung_id = AnleitungInsert(thisrow,medium_id) 
        
    medium_autor_id = MediumAutorInsert(medium_id,autor_id)

    anleitung_autor_id = AnleitungAutorInsert(anleitung_id, autor_id)
    

   
mydb.commit()
mycursor.close()
mydb.close()