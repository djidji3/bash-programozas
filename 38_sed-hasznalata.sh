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

# lecsereljuk a szamokat semmire azaz toroljuk a szamokat
echo 234tgu45hh | sed s/[0-9]//g

# karakterek beszurasa a sor elejere
# a & karakter a legutobbi illeszkedest,jelenti
# esetunkben a .* mindent jelent, igy a & is mindent jelent
# igy a minden  ele beszurunk XXX karaktereket
echo 1234567 | sed 's/.*/XXX&/'

# karakterek beszurasa a sor vegere
# igy a minden  moge beszurunk YYY karaktereket
echo 1234567 | sed 's/.*/&YYY/'

# karakterek beszurasa a sor elejere es a vegere
# igy a minden  ele es moge is beszurunk karaktereket
echo 1234567 | sed 's/.*/XXX&YYY/'

# egyeb illeszkedest megadva is beszurhatunk karaktereket
# AA karakter elo es mogo szurunk be egy-egy _ karaktert
echo 1234AA567 | sed 's/AA/_&_/'

# egyeb illeszkedest megadva is beszurhatunk karaktereket
# 30 karakter elo szurunk 06 karaktert
echo 30 4512464 | sed 's/30 /06 &/'

# ket, zarojelparokkal elvalasztott csoportot is megcserelhetunk
# az elso csoport a szamok, a masodik csoport a nagybetuk
# ilyenkor a formatum s/(elsocsoport)(masodikcsoport)/\masodikcsoportresz\elsocsoportresz
# vagyis: csere , 1.csoport zarojelek kozt, 2.csoport zarojelek kozt, 1. es 2.csoport csereje 
# figyelve a {} levedesere is
echo "123ABC" | sed 's/\([0-9]\{1,\}\)\([A-Z]\{1,\}\)/\2\1/'

# forditsuk meg az elol levo telefonszamokat es a mogottuk levo neveket:
cat telefonszam.txt | sed 's/\([0-9]\{6,\}\)\([a-zA-Z \.]\{2,\}\)/\2 \1/'

# karakaterek csereje mas karakterekre (A karakterek szamanak meg kell egyeznie!!!)
# minta y/eredeti/uj/
echo 06 30 4512464 | sed 'y/ 30 / 70 /'

# eredmeny fajlba irasa . w kapcsolo
# az 1.sort kiiraja az a.txt fajlba
echo 06 30 4512464ABC | sed '1 w a.txt'

# sed segitsegevel eloszurest is vegezhetunk, igy a parancsokat csak azon sorokon hajtjuk vegre,melyek az eloszuresen atmentek
# eloszor szurjuk a szamokat tartalmazo sorokra es ezekben cserelunk minden  ,-t .-ra
cat vegyes.txt | sed '/[0-9]\{1,\}/ s/\./,/g'

# egy fajlban csereljuk le az osszes tizedespontot, tizedesvesszore
# ott cserelunk tizedesvesszore, ahol ket szam kozott egy tizedespont karater szerepel 
# ket csoportositast csinalunk: szam a tizedespont elott es szam a tizedespont utan
# majd a ket csoport koze egy tizedesvesszot teszunk
cat vegyes.txt | sed 's/\([0-9]\{1,\}\)\.\([0-9]\{1,\}\)/\1\,\2/g'




















