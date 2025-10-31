import pandas as pd
import mysql.connector
# Mit Abfrage ob DS schon existiert

csv_path = "C:/Users/juliane.bonenkamp/HandArbeitenAnleitungenDB/Data/ProbeDatenAnleitungDB05.CSV"

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
    "insert into medium (TitelMedium, MedienArt) values (%s, %s)",
    (thistitel, thismedienart)
    )
    mydb.commit()
    medium_id = mycursor.lastrowid
    return medium_id

def CheckMedienArt(thistitel,thismedienart,thisrow,thismedium_id):
        match thismedienart:
            case "Buch":
                buchmedium_id = BuchExist(thisrow)
                if buchmedium_id < 1:
                    MediumInsert(thistitel,thismedienart)
                    BuchInsert(thismedium_id)
            # case "Zeitschrift":
            #     zeitschriftmedium_id = ZeitschriftExist(diesmedium_id)
            #     if zeitschriftmedium_id < 1  :
            #         ZeitschriftInsert(diesmedium_id,diesrow)
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
            "INSERT INTO Zeitschrift (MediumID, HeftThema, Jahrgang, Monat, HeftNR, Sonderheft) VALUES (%s, %s, %s, %s, %s, %s)",
            (
                diesmedium_id,
                diesrow.get('HeftThema', None),
                diesrow.get('Jahrgang', None),
                diesrow.get('Monat', None),
                diesrow.get('HeftNR', None),
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
        "INSERT INTO anleitung (MediumID,NameAnleitung,Seitenzahl,Grundschnitt,ModelNR,Schnittbogen) values(%s,%s,%s,%s,%s,%s)",
        (
        thismedium_id,
        thisrow.get('NameAnleitung', None),
        thisrow.get('Seitenzahl', None),
        thisrow.get('Grundschnitt', None),
        thisrow.get('ModelNR', None),
        thisrow.get('Schnittbogen', None),
        )
    )
    mydb.commit()
    anleitung_id = mycursor.lastrowid
    return anleitung_id


def MediumAutorInsert(diesmedium_id,diesautor_id):
    mycursor.execute(
        "Insert into mediumautor (MediumID,AutorID)  values (%s,%s)",
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
        "Select * from autor where (Nachname = %s and Vorname =  %s) or Firma = %s ",
        (
        thisrow.get('Nachname'),
        thisrow.get('Vorname'),
        thisrow.get('Firma'),
        )
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
        return 0
    return result[0]['AutorID']

# def MediumExist(thistitel, thismedienart):
#     mycursor.execute(
#         "SELECT * from medium WHERE TitelMedium = %s and MedienArt = %s",
#         (thistitel,thismedienart)
#     )
#     result=mycursor.fetchall()
#     AnzahlResult=len(result)
#     if AnzahlResult < 1:
#       return 0
#     return result [0]['MediumID']

def BuchExist(diesrow):
    mycursor.execute(
        "SELECT * FROM buch WHERE buch (Untertietel= %s AND Jahr = %s) OR ISBN = %s",
        (
            diesrow.get('Untertietel'),
            diesrow.get('Jahr'),
            diesrow.get('ISBN'),
        )
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
      return 0
    return result [0]['MediumID']

def ZeitschriftExist(diesmedium_id):
    mycursor.execute(
        "SELECT zeitschrift.MediumID FROM zeitschrift WHERE zeitschrift.MediumID = %s;",
        [diesmedium_id]
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
      return 0
    return result [0]['MediumID']

def MediumAutorExist(diesmedium_id,diesmautor_id):
    mycursor.execute(
        "SELECT MediumID, AutorID FROM mediumautor WHERE MediumID = %s AND AutorID = %s;",
        (diesmedium_id, diesmautor_id)
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
      return 0
    return result [0]['MediumID']

def AnleitungExist(thismedium_id,thisrow):
    mycursor.execute(
        "SELECT * FROM  anleitung WHERE MediumID = %s AND NameAnleitung =%s AND Seitenzahl = %s;",
        (
            thismedium_id,
            thisrow.get('NameAnleitung'),
            thisrow.get('Seitenzahl'),
        )
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
      return 0
    return result [0]['AnleitungID']

def AnleitungAutorExist(diesanleitung_id, diesautor_id):
    mycursor.execute(
        "SELECT AnleitungID, AutorID FROM  anleitungautor WHERE AnleitungID = %s AND AutorID = %s;",
        (diesanleitung_id,diesautor_id)
    )
    result=mycursor.fetchall()
    AnzahlResult=len(result)
    if AnzahlResult < 1:
      return 0
    return result [0]['AnleitungID']


# Hauptprogramm

for daten, row in df.iterrows():
    medienart = row ['MedienArt']
    titelmedium = row ['TitelMedium']

    medium_id = MediumInsert(titelmedium,medienart)

    CheckMedienArt(titelmedium,medienart,row,medium_id)

    # medium_id = MediumExist(titelmedium, medienart)
    # if medium_id < 1:           
    
             
    autor_id = AutorExist(row)
    if autor_id < 1:
        autor_id = AutorInsert(row)   
        
    anleitung_id = AnleitungExist(medium_id,row)
    if anleitung_id < 1:
        anleitung_id = AnleitungInsert(medium_id,row)
    
        
    medium_autor_id = MediumAutorExist(medium_id,autor_id)
    if medium_autor_id < 1:
        medium_autor_id = MediumAutorInsert(medium_id,autor_id)

    anleitung_autor_id = AnleitungAutorExist(anleitung_id,autor_id)
    if anleitung_autor_id < 1:
        anleitung_autor_id = AnleitungAutorInsert(anleitung_id, autor_id)
    

   
mydb.commit()
mycursor.close()
mydb.close()