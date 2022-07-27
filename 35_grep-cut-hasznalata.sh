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
echo aktuális teljes útvonallal : $PWD
echo aktuális könyvtárnévet kapjuk meg, útvonal nélkül: `basename $PWD`
echo
echo grep fontosabb kapcsoloi:

echo szures karakterrekre :
# cat adatok.dat | grep "edi"

echo szures karakterekre forditva \(azt adja vissza ami nem egyezi\)
# cat adatok.dat | grep -v "edi"

echo szures karakterekre kis/nagybetu mindegy
# cat adatok.dat | grep -i "edi"

echo szures teljes szora
# cat adatok.dat | grep -w "egész"

echo szures teljes sorra
# cat adatok.dat | grep -x "ez egy teljes sor"

#--------------------------------------------------------------

echo
echo cut fontosabb kapcsoloi -d -f:
# bizonyos mezok megjelenitesere hasznalhato
# meg adjuk mi lesz a mezoket elvalaszto szeparator
# -d kapcsolo
# -d " "
# -d "\;"

# meg kell adnunk hanyadik adatmezore van szuksegunk:
# -f kapcsolo
# -f 2-4

# pelda, amiben : az elvalszto karakter ":" es az 1-3 oszlopokat kerjuk: 
# cat adatok.txt | cut -d "\:" -f 1-3

cat adatok.dat | grep ";nő" | cut -d ";" -f 1-2
echo -n "Add meg hanyas sorszamu adatra van szukseged: " ; read TALALAT
echo Ezt a sor azonositot valasztottad: $TALALAT
cat adatok.dat | grep ^${TALALAT}



