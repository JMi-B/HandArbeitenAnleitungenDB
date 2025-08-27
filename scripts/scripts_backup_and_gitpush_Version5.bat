@echo off
REM Datum erstellen (YYYY-MM-DD)
for /f %%i in ('powershell -command "Get-Date -Format yyyy-MM-dd"') do set DATUM=%%i

REM Dump erstellen (Pfad ggf. anpassen!)
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe" --column-statistics=0 -u root AnleitungDB03 > dumps\db_dump_%DATUM%.sql

REM Gesamten Arbeitsstand sichern und pushen
git add .
git commit -m "Arbeitsstand & DB-Dump vom %DATUM%"
git push