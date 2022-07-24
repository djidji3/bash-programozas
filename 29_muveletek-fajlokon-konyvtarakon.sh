#!/bin/bash
echo A script neve: $0 
echo paramét1: $1 
echo argumentumok száma: $# 
echo az összes argumentum: $@ 
echo az utolsó folyamat kilépési kódja: $? 
echo a script aktuális sora:  $LINENO 
echo hostname ahol fut a script: $HOSTNAME
echo a scriptet futtató felhasználó: $USER 	
echo a futtatás kezdete óta eltelt idő: $SECONDS
echo minden hivatkozáskor más véletlen számot ad: $RANDOM


FAJLOK='*.txt'
# amig a csoben van vmi, addig tovabbugrik a kovetkezore:
ls $FAJLOK | while read NEXT_FILE
do
    echo A fajl neve: $NEXT_FILE
done

echo
#----------------------------------------
# kilistazza a konyvtar tartalmat
DIR="/home/nemcsics/bash-programozas"
cd $DIR
for FILE in *
do
    echo Konyvtarnev/filenev: $FILE
done
echo
#----------------------------------

# megkeresei a megadott fajlokat es amig van a csoben vmi, addig tovabbugrik a kovetkezore:
DIR="/home/nemcsics/bash-programozas"
cd $DIR
find $DIR -name '*.txt' | while read filename
do
    echo $filename
done
echo

#----------------------------------
# hogyan tudjuk olvasni egy fájl tartalmát
# az utolso sorban megadott fajl tartalmat beleiranyitjuk a while-ba, amig tudja olvasni ezt csinalja
while read sor
do
    echo $sor
done < 1.txt
echo

#----------------------------------
# hogyan tudjuk olvasni egy fájl tartalmát
# cat-oljuk a file tartalmat, amig van a csoben addig ezt csinalja:

cat 1.txt | while read sor
do
    echo $sor
done
echo
#---------------------------------------
# arhivalas
DATUM=$(date +%Y.%m.%d)
MENTENDO_KONVYTAR="etc"
MENTES_FILE=/home/nemcsics/${MENTENDO_KONVYTAR}_${DATUM}.backup
tar -czf ${MENTES_FILE} /${MENTENDO_KONVYTAR}
echo
#---------------------------------------
# 


















