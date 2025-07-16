create database testdb;
use testdb;

/*Kundentabelle anlegen:*/

CREATE or replace TABLE kunden (
    kundennummer INT AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(100),
    nachname VARCHAR(100),
    plz VARCHAR(10),
    ort VARCHAR(100)
);

GRANT ALL PRIVILEGES ON *.* TO 'pythontest'@'localhost' IDENTIFIED BY 'abcde_12345' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'pythontest'@'%' IDENTIFIED BY 'abcde_12345' WITH GRANT OPTION;
