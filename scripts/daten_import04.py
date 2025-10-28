import pandas as pd
import mysql.connector
# Mit Abfrage ob DS schon existiert

csv_path = "C:/Users/juliane.bonenkamp/HandArbeitenAnleitungenDB/Data/ProbeDatenAnleitungDB04.CSV"

# Verbindung zur MySql-Datenbank CC

mydb =mysql.connector.connect(
    host='localhost',
    user="anleitung",
    password="anleitung",
    database="AnleitungDB04"
 )
mycursor= mydb.cursor(dictionary=True)




# csv einlesen
df = pd.read_csv(csv_path, encoding='latin-1', sep=";")


def MediumInsert(thistitel,thismedienart):    
    mycursor.execute(
    "insert into Medium (TitelMedium, MedienArt) values (%s, %s)",
    (thistitel, thismedienart)
    )
    mydb.commit()
    medium_id = mycursor.lastrowid
    return medium_id

def CheckMedienArt(diesmedienart,diesrow,diesmedium_id):
        match diesmedienart:
            case "Buch":
                BuchInsert(diesmedium_id,diesrow)
            case "Zeitschrift":
                ZeitschriftInsert(diesmedium_id,diesrow)
            case _:
                print(" diese Medienart ist nicht bekannt")


def BuchInsert(diesmedium_id,diesrow):
     mycursor.execute(
            "insert into Buch (MediumID, Untertitel, Jahr, Verlag, Ort, ISBN, Reihe, Band) values (%s, %s, %s, %s, %s, %s, %s, %s)",
            (
            diesmedium_id,
            diesrow.get('Untertitel', None),
            diesrow.get('Jahr', None),
            diesrow.get('Verlag', None),
            diesrow.get('Ort', None),
            diesrow.get('ISBN', None),
            diesrow.get('Reihe', None),
            diesrow.get('Band', None)
            )
        )
     mydb.commit()

def ZeitschriftInsert(diesmedium_id,diesrow):
    mycursor.execute(
            "INSERT INTO Zeitschrift (MediumID, Untertitel, Jahrgang, Monat, Heftnummer, Sonderheft) VALUES (%s, %s, %s, %s, %s, %s)",
            (
                diesmedium_id,
                diesrow.get('Untertitel', None),
                diesrow.get('Jahrgang', None),
                diesrow.get('Monat', None),
                diesrow.get('Heftnummer', None),
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

def AnleitungInsert(thismedium_id,thisrow):
    mycursor.execute(
    "insert into Anleitung (MediumID,NameAnleitung,Seitenzahl,Grundschnitt,Modellnummer,Schnittbogen) values(%s,%s,%s,%s,%s,%s)",
        (
        thismedium_id,
        thisrow.get('NameAnleitung', None),
        thisrow.get('Seitenzahl', None),
        thisrow.get('Grundschnitt', None),
        thisrow.get('Modellnummer', None),
        thisrow.get('Schnittbogen', None),
        )
    )
    mydb.commit()
    anleitung_id = mycursor.lastrowid
    return anleitung_id


def MediumAutorInsert(diesmedium_id,diesautor_id):
    mycursor.execute(
        "Insert into mediumautor (MediumID,AutorID) values (%s,%s)",
        (
        diesmedium_id,
        diesautor_id
        )
    )
    medium_autor_id = (diesmedium_id,diesautor_id)
    return medium_autor_id

def AnleitungAutorInsert(diesanleitung_id,diesautor_id):
    mycursor.execute(
        "Insert into anleitungautor (AnleitungID,AutorID) values (%s,%s)",
        (
            diesanleitung_id,
            diesautor_id
        )
    )
    anleitung_autor_id = (diesanleitung_id,diesautor_id)
    return anleitung_autor_id


def AutorExist(thisrow):
    mycursor.execute(
        "Select * from autor where (Nachname = %s and Vorname =  %s) ",
        (
        thisrow.get('Nachname'),
        thisrow.get('Vorname'),
        )
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
        return 0
   # print(AnzahlResult)
   # print(result)
    return result[0]['AutorID']


for daten, row in df.iterrows():
    medienart = row ['MedienArt']
    titelmedium = row ['TitelMedium']

        
    medium_id = MediumInsert(titelmedium,medienart)
        
    CheckMedienArt(medienart,row,medium_id)

    
    autor_id = AutorExist(row)
    if autor_id < 1:
        autor_id = AutorInsert(row)   
        
    anleitung_id = AnleitungInsert(medium_id,row) 
        
    medium_autor_id = MediumAutorInsert(medium_id,autor_id)

    anleitung_autor_id = AnleitungAutorInsert(anleitung_id, autor_id)
    

   
mydb.commit()
mycursor.close()
mydb.close()