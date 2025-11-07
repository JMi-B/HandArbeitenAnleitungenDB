from pdf2image import convert_from_path
import os
from PIL import Image
import pytesseract
# import mysql.connector
# from datetime import datetime

# Aus der Vorlage den Eintarag in die DB gekürzt
# Text erstellen und zwischen speichern als json
# import für mysql nur auskommentiert

# Relativerpfad zu den PDFs

path = "Data\ProbePDF"

files = os.listdir(path)


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
    text_speicher = open(neuerpfad, "x")

for file in files:
    if (file[-3:] == "pdf") :
  
        (neuerpfad,images) = inBildUmwandel(file)
        jpgSeiten(neuerpfad, file)
        text_ganz = ganzerText(neuerpfad)

        

