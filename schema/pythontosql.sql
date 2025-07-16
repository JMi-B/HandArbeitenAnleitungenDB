create database pythontosql;
use pythontosql;

CREATE TABLE kunden (
    Kundennr INT PRIMARY KEY,
    Name VARCHAR(100),
    age INT,
    PLZ VARCHAR(10),
    Stadt VARCHAR(100)
);

create index inx_PLZ
on Kunden (PLZ);