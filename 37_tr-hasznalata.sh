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
echo tr hasznalata
# katakterek cserjehez/eltavolitasahoz
# kapcsoloi :
# -d torles
# nagybetu,kisbetu csere: [:upper:] # [:lower:]

echo "a szoveg ahol az kis a, nagy a-ra lesz cserelve " | tr "a" "A"
echo "a szoveg ahol az a es o karakterek torolve lesznek" | tr -d "ao"
echo "a szoveg ahol a kisbetuk nagybetukre lesznek cserelve" | tr '[:lower:]' '[:upper:]'
echo "a szoveg   ahol    a 'tab' ':' lesznek cserelve" | tr '\t' ':'
echo "a szoveg    ahol   felesleges space-ek lesznek      eltavolitani, de egy megmarad" | tr -s ' '


