create database testdb;
use testdb;

/*Kundentabelle anlegen:*/

drop table if exists kunden;

CREATE TABLE kunden (
    kundennummer INT AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(100),
    nachname VARCHAR(100),
    plz VARCHAR(10),
    ort VARCHAR(100)
);

/* VEraltete Syntax
GRANT ALL PRIVILEGES ON *.* TO 'pythontest'@'localhost' IDENTIFIED BY 'abcde_12345' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'pythontest'@'%' IDENTIFIED BY 'abcde_12345' WITH GRANT OPTION;
*/

/*Nutzeranlegen*/

CREATE USER IF NOT EXISTS 'pythontest'@'localhost' IDENTIFIED BY 'abcde_12345';
CREATE USER IF NOT EXISTS 'pythontest'@'%' IDENTIFIED BY 'abcde_12345';

/*Rechte zuweisen*/

GRANT ALL PRIVILEGES ON *.* TO 'pythontest'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'pythontest'@'%' WITH GRANT OPTION;

/*Rechte neu laden*/

FLUSH PRIVILEGES;