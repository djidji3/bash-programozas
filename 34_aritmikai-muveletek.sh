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

# A négy alapművelet (+, -, / ,*)
# hatványozás (**)
# maradékos osztás (%)
# összehasonlítás (<<, >>, <=, >=)
# egyenlőség, egyenlőtelnség vizsgálat (==, !=)
# bitwise és logikai műveletek
# feltétel operátor (KIFejezes?KIFejezesHaIgaz:KIFejezesHaHamis)
# assignment műveletek (-=, +=, *=, stb)
  
x=13
y=4

osszeadas=$((10+5))
echo $osszeadas

maradekososztas=$((y%x))
echo $maradekososztas

# Vizsgálat (ha igaz 1, ha nem 0 a kimenet):
echo $((3>4)) #hamis azaz 0
echo $((3!=4)) #hamis azaz 1

echo -13-4 mennyi: $((y-=x))

