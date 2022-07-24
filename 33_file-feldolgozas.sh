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

# Egy fájlban tároljuk melyik járműnek mikor jár le a műszakija. 
FILE=vehicles.txt
 
# DEBUG-hoz:
FIXDATE=2016-03-03
 
DATE=`date "+%Y-%m-%d"`
 
echo Aktualis datum: $DATE
 
HANYHONAPPAL_ELORE=2
  
# időnként, például időzítve ellenőrizzük, és hangosan kimondatjuk, ha körülbelül 2 hónap van a műszaki lejártáig. 
function checkVehicle() {
    sor=$1
    LEJAR=`echo $sor | awk -F: '{print $2}'`
 
    LEJAR_EV=`echo $LEJAR | awk -F- '{print $1}'`
    AKTUA_EV=`echo $DATE | awk -F- '{print $1}'`
    if [[ "$LEJAR_EV" == "$AKTUA_EV" ]]
    then
	LEJAR_HO=`echo $LEJAR | awk -F- '{print $2}'`
	AKTUA_HO=`echo $DATE | awk -F- '{print $2}'`
	TEMP_HO=`expr $LEJAR_HO - $AKTUA_HO`
	if [[ $TEMP_HO -le $HANYHONAPPAL_ELORE ]]
	then
	    LEJAR_RENDSZAM=`echo $sor | awk -F: '{print $1}'`
	    espeak -vhu "Figyelem! Lejáró műszaki."
	    echo  "Figyelem! Lejáró műszaki."
            espeak -vhu "A $LEJAR_RENDSZAM rendszámú gépjármű műszakija ekkor lejár: $LEJAR"
            echo "A $LEJAR_RENDSZAM rendszámú gépjármű műszakija ekkor lejár: $LEJAR"
	fi
    fi
 
}
 
cat $FILE | while read sor
do
    ERTESITES=`echo $sor | awk -F: '{print $3}'`
    if [[ "$ERTESITES" == "igen" ]]
    then
	checkVehicle $sor
    fi
done
