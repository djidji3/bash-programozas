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
echo sort paranccsal egy text file sorait rendezhetjuk
echo sort fontosabb kapcsoloi:
# -t "mezohatarolokarakter"
# +1 hanyadik-mezore-rendezzen. 0. mezovel kezdodik
# -n numerikus karakterek szerint rendez
# -r forditott rendezes
# -u torli az azonos sorokat

cat adatok.dat | sort -nr

echo
#-------------------------------------------------------------
echo join segitsegev ket fajl sorainak egyesitese 
# kapcsoloi:
# -t mezohatarolo

join -t " " nev-cim.txt nev-tel.txt


