#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "a DATE valtozot megadhatod az elso paramerkent, ha nem adod meg akkor itt beallitom"

DATE=$1
echo "a parameterkent kapott DATE valtozo tartalma: ${DATE}"
: "${DATE:=$(date +%Y%m%d)}"
echo "a beallitott DATE valtozo tartalma: ${DATE}"

if [[ ! -r ${DATE}.txt ]] ;
then
    echo "a datom fajl nem olvashato/ nem letezik"

elif [[ -r ${DATE}.txt ]] ;
then
    echo "a datum fajl tartalma: $(cat ${DATE}.txt) "

else
    echo "Nincs adat"
fi