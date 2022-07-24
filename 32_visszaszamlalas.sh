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

# ezt virtualis vagy fizikai gepbol lehet kiprobalni:

# kimondva:
apt install espeak -y
for i in {"öt", "négy", "három", "kettő", "egy", "zéró"}; 
    do 
        espeak -vhu "$i" && sleep 0.5; 
    done

# kiírva:
visszaSzamolKiirva.sh
for i in {5..1};do echo -n "$i. " && sleep 1; done


