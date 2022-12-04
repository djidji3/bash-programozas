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
echo sed hasznalata
# a sed egy programozhato szovegszerkeszto, ami egy betus parancsokkal es szabalyos kifejezesekkel vezerelheto
# bemenetere erkezo szoveget kepes feldolgozni,modositani
# a parancsokat soronkent hajtja vegre
# ha nincs mit modositani,akkor az eredeti szoveget adja ki magabol

# az osszes kif1 karaktersort, a kif2 karaktersorra cseréli.
# sed s/kif1/kif2/g
echo "alma alma, kerek alma" | sed s/alma/korte/g

# Csak a sor elején szereplo kifejezéseket cseréli ki globalisan minden sorban
# sed s/^kif1/kif2/g
echo "alma alma, kerek alma" | sed s/^alma/korte/g

# Csak a sorvégi kifejezéseket cseréli ki globalisan minden sorban
# sed s/kif1$/kif2/g
echo "alma alma, kerek alma" | sed s/alma$/korte/g

# Ez pedig minden sor elejére az adott kifejezést szúrja be globalisan minden sorban
# sed s/"^"/"kif"/g
echo " alma alma, kerek alma" | sed s/"^"/korte/g

# a sed altal elvegzendo muveleteket nem kell feltetlen a parancssorba leirni, vehetjuk fajlbol is
# ... | sed -f sedParancsokatTartalmazoFile

# a parancs vegrehajtasa elott meg meg is szurhetem azon sorokat , melyeken vegre akarom hajtani a parancsot
# olyan sorokon fog lefutni, melyekben van a-z karakter
echo "alma alma, kerek alma" | sed /[a-z]/s/alma$/korte/
# csak az 1. soron fog lefutni
echo "alma alma, kerek alma" | sed 1s/alma$/korte/

# defaultban a kepernyore irja az eredmeny ,de ezt letilthatjuk a -n kapcsoloval

#------------------- sed alapveto parancsok ----------------
# p (print)
# a default viselkedest,ami mindent kiir letultjuk majd az 5 sor megjelenitese
cat a.txt | sed -n -5p

# d (delete)
# torli a 3-5.sort
cat a.txt | sed '3,5 d'

# s (substitute)
# s/mitCserelunk/mireCsereljuk/hanydikElofordulastAkarjukCserelni
# lecsereljuk a () jeleket globalisan
cat telefonszam.txt | sed 's/(/ /' | sed 's/)/ /g'
# lecsereljuk a szokozt csereljul - jelre de csak a 2. elofordulast
cat telefonszam.txt | sed 's/ /-/2' | sed 's/ /-/2'
# lecsereljuk a - jelet semmire,azaz toroljuk az osszes - karaktert
cat telefonszam.txt | sed 's/-//g'














