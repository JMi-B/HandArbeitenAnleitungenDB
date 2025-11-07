import urllib.request, json, time

# Die Daten auslesen und nach Json schreiben
# Vorlage test1.py
# Ziel ist ein übersichtlicher Code 

#funktion um Daten abzurufen

def aktuelle_daten_api_abholen():
    url = "https://open-data.dortmund.de/api/explore/v2.1/catalog/datasets/parkhauser/records?limit=40"
    response = urllib.request.urlopen(url)
    json_data = json.load(response)
    return json_data

# json mit Historischen daten aufrufen

def historische_daten_json_einlesen():
    with open('historische_daten.json', 'r') as file:
        eingelesene_daten = json.load(file)
        print(eingelesene_daten)
        return eingelesene_daten

# neuen Datensatz zu Historischen Daten in Json schreiben hinzufügen

def datensatz_historischen_daten_hinzufuegen(neuer_eintrag, historische_daten):
    historische_daten["Resultate"].append(neuer_eintrag)
    with open('historische_daten.json', 'w') as file:
        json.dump(historische_daten, file)

# Datenverarbeiten 

def daten_verarbeiten(aktuelle_information):
    count = 0
    countParkAndRide = 0
    
    for entry in aktuelle_information["results"]:
        count += 1
        if (entry["type"] == "Park and Ride"):
            countParkAndRide += 1

    print("\n")
    print("Anzahl: " + str(count))
    print("Anzahl Park and Ride: " + str(countParkAndRide))

    neuer_eintrag = {
    "Zeitstempel" : time.time(),
    "Anzahl" : count,
    "Anzahl Park and Ride" : countParkAndRide
    }
    
    return neuer_eintrag

# funktionen aufrufen und durch führen

aktuelle_information = aktuelle_daten_api_abholen()
historische_daten = historische_daten_json_einlesen()
neuer_eintrag = daten_verarbeiten(aktuelle_information)
datensatz_historischen_daten_hinzufuegen(neuer_eintrag,historische_daten)

# Variablen für Summe der capacety und der belegten Prakplätze

summecapa = 0
summebelegt = 0
anteil = 0


# capacity auslesen und zeilen weise print und auf addieren


for entry in aktuelle_information["results"]:
 #   print("\n")
 #   print(entry["capacity"])
 #   print(entry["dtotalo"])
    summecapa = summecapa + entry["capacity"]
    summebelegt = summebelegt + entry["dtotalo"]
    anteil = (summebelegt/summecapa) * 100
print("Summe aller Parkplätze: " + str(summecapa))
print("Summe aller belegten Parkplätze: " + str(summebelegt))
print(anteil)


