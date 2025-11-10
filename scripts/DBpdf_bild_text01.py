from pdf2image import convert_from_path
import os
from PIL import Image
import pytesseract
import mysql.connector
# from datetime import datetime

# Aus der Vorlage den Eintarag in die DB gekürzt
# Text erstellen und zwischen speichern als txt

# Relativerpfad zu den PDFs

path = "Data\ProbePDF"

files = os.listdir(path)

mydb =mysql.connector.connect(
    host='localhost',
    user="anleitung",
    password="anleitung",
    database="AnleitungDB04"
 )
mycursor= mydb.cursor(dictionary=True)

def textAusBild(pathtoimage):
    img = Image.open(pathtoimage)
    text = pytesseract.image_to_string(img, lang="deu")
    return text
            
def inBildUmwandel(filename):
    neuerpfad =  path + "/"+ filename[:-4]+"pdf/"
    os.mkdir(neuerpfad)
    images = convert_from_path(path + "/" + filename, fmt="jpeg")
    return (neuerpfad, images)

def jpgSeiten(neuerpfad, file):
    nummer = 1 
    for image in images:
        image.save(neuerpfad + file[:-4] + "_nr_" + str(nummer) + ".jpg")
        nummer += 1

def ganzerText(neuerpfad):
    bilder = os.listdir(neuerpfad)
    text_ganz = ""
    for bild in bilder:
        text_ganz = text_ganz + str(textAusBild(neuerpfad + "/" + bild))
    # print(text_ganz)
    return(text_ganz)

def TextSpeichern(text_ganz, neuerpfad):
    with open(neuerpfad + file[:-4] + ".txt", "w", encoding='utf-8') as text_speicher:
        text_speicher.write(text_ganz)
    return(text_speicher)


# ## VErbindung zur DB und Aufräumen

def eintragDB(neuerpfad, file):
    with open(neuerpfad + file[:-4] + ".txt", "r", encoding='utf-8') as f:
        text_inhalt = f.read()
        sql = "UPDATE textdatei SET GanzerText = %s WHERE Dateiname = %s"
        wert = (text_inhalt, file)
    mycursor.execute(sql, wert)
    mydb.commit()
 
    
def aufraeumen(neuerpfad, file):
     bilder = os.listdir(neuerpfad)
     for bild in bilder:
         os.remove(neuerpfad + "/" + bild)                    
     os.rmdir(neuerpfad)
     os.remove(path +"/"+ file)
    
    
for file in files:
    if (file[-3:] == "pdf") :
  
        (neuerpfad,images) = inBildUmwandel(file)
        jpgSeiten(neuerpfad, file)
        text_ganz = ganzerText(neuerpfad)
        text_speicher = TextSpeichern(text_ganz, neuerpfad)
        eintragDB(neuerpfad,file)
        aufraeumen(neuerpfad, file)


mydb.close()
        
