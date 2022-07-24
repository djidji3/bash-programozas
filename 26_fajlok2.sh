#!/bin/bash
# A fájl létezésének ellenőrzése
file="/home/nemcsics/bash-programozas/index.txt"
if [ -e $file ]; then
	echo "A ${file} fájl létezik"
else 
	echo "A ${file} fájl nem létezik"
fi 
#------------------------------------
# Első paraméter létezésének vizsgálata
if [ -z "$1" ]; then 
    echo usage: $0 programnak szukseges egy parametert megadni
    exit
fi
#------------------------------------
# Konyvtar letezesenek vizsgalata
DIRECTORY=$1
if [ -d "$DIRECTORY" ]; then
    echo  a ${DIRECTORY} könyvtár létezik
else
    echo a ${DIRECTORY} könyvtár NEM létezik

fi

#------------------------------------
# Konyvtar NEM letezesenek vizsgalata
if [ ! -d "$DIRECTORY" ]; then
    echo Mit tegyünk, ha a ${DIRECTORY} nem létezik
fi

#------------------------------------
# Parancs kimenetenek vizsgalata
# ha az elso parancs sikeres ,akkor vegrehajtja a masodik parancsot is
cd /home/nemcsics/bash-programozas/ures
[ -z "`ls`" ] && echo "Nincs fájl a konyvtarban" || echo "A konyvtar nem ures"
touch 1.txt
echo aaa > 1.txt
[ -z "`ls`" ] && echo "Nincs fájl a konyvtarban" || echo "A konyvtar nem ures"



















