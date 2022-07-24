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

# az aktuális könyvtárnévet kapjuk meg, útvonal nélkül: 
echo aktuális könyvtárnévet kapjuk meg, útvonal nélkül: `basename $PWD`


read Y m d H M <<<$(date "+%Y %m %d %H %M")
 
echo Az év: $Y
echo A hónap: $m
echo A nap: $d
echo Az óra: $H
echo A perc: $M