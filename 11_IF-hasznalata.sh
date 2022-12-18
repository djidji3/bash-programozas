#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
echo "az utolso parancs visszateresi erteke,amely ha 0,akkor nem volt hiba: $?"

echo "a DATE valtozot megadhatod az elso paramerkent, ha nem adod meg akkor itt beallitom"

DATE=$1
echo "a parameterkent kapott DATE valtozo tartalma: ${DATE}"
: "${DATE:=$(date +%Y%m%d)}"
echo "a beallitott DATE valtozo tartalma: ${DATE}"

# if , test, && , || magyarazata
# felteteles elagazas formatuma

if [ $1 -gt $2 ]; then
    echo "$1 nagyobb mint $2"
elif [ $2 -gt $1 ]; then
    echo "$2 nagyobb mint $1"
else
    echo "$2 es $1 egyenlo"

fi

######################################################
# [[]] kapcsos zarajel hasznalata megegyezik a [] hasznalataval, de annyival tobb hogy tesztelheto vele regularis kifejezes
# pelda
INT=-5
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
....
fi
# az == operatornal is hasznalhato a regexp kifejezes
# pelda
FILE=foo.bar
if [[ $FILE == foo.* ]]; then
...
fi
#######################################################

# aritmetikai muveletekhez hasznalhatjuk a (()) tesztelest, mely akkor igaz ha nem 0 az eredmeny
if ((1)); then echo "It is true."; fi
if ((0)); then echo "It is true."; fi

########################################################
# egyszerusites,mely ket elagazas eseten alkalmazhato
0 -eq 0 && echo "ha a feltetel igaz,ezt hajtja vegre" && echo "ha a feltetel hamis,ezt hajtja vegre"
########################################################

if [[ ! -r ${DATE}.txt ]] ;
then
    echo "a datom fajl nem olvashato/ nem letezik"

elif [[ -r ${DATE}.txt ]] ;
then
    echo "a datum fajl tartalma: $(cat ${DATE}.txt) "

else
    echo "Nincs adat"
fi