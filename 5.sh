#!/bin/bash

# "Felteteles vegrehajtas: IF"

: "${DATE:=$(date +%Y%m%d)}"

echo "A DATE valtozo tartalma: ${DATE}"

if [[ -r mydate.txt ]];
then
    echo "van mydate.txt fajlt"

elif [[ -r ${DATE}.txt ]];
then
    echo "van ilyen datum nevet tartalmazo fajlt"
    echo "a tartalma: $(cat ${DATE}.txt)"

else
    echo "nincs adat"
fi
