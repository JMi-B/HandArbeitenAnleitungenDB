from pdf2image import convert_from_path
import os
from PIL import Image
import pytesseract
import mysql.connector
from datetime import datetime

mydb = mysql.connector.connect(
     host='localhost',
     user='bildtext',
     password='bildtext',
     database='bildzutext'
 )


mycursor = mydb.cursor()


# Relativerpfad zu den PDFs

path = "ProbePDF"

files = os.listdir(path)

### vier ganzer text ganzertext
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
    return(text_ganz)

def eintragDB(neuerpfad,file, text_ganz):
    datum = datetime.now()
    sql = "insert into `texte` (Pfad, Dateiname, Ganz_Text, Datum) values(%s, %s, %s, %s)"
    data = (neuerpfad, file, text_ganz, datum)
    mycursor.execute(sql,data)
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
        eintragDB(neuerpfad,file,text_ganz)
        aufraeumen(neuerpfad, file)

        

mydb.close()