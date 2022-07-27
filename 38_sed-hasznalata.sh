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
# az osszes kifejezes1 karaktersort, a kifejezes2 karaktersorra cseréli.
# sed s/kif1/kif2/g
echo "alma alma, kerek alma" | sed s/alma/korte/g

# Csak a sor elején szereplo kifejezéseket cseréli ki.
# sed s/^kif1/kif2/g
echo "alma alma, kerek alma" | sed s/^alma/korte/g

# Csak a sorvégi kifejezéseket cseréli ki.
# sed s/kif1$/kif2/g
echo "alma alma, kerek alma" | sed s/alma$/korte/g

# Ez pedig minden sor elejére az adott kifejezést szúrja be.
# sed s/"^"/"kif"/g
echo " alma alma, kerek alma" | sed s/"^"/korte/g


