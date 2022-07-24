#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
echo "kornyezeti valtozok kiiratasa: `env`"

echo "A kornyezeti valtozok abban a kornyezetben ertelmezhetoek ahol letre lettek hozva"
echo "Egy script mindig egy subshell-ben fog futni,igy csak a rendszer valtozokat tudjuk benne hasznalni"
echo $targy
echo $USER
echo $PWD
echo $PATH

echo "date visszaadja a teljes full datumot es idot"
echo date
echo "A formatumat tovabb parametrezhetjuk a + utan megadva :"
echo date +%Y.%m.%d
echo "valtozoban is letarolhatjuk:"
DATE=$(date +%Y.%m.%d - %H.%M )
echo $DATE

echo "vagy backtick kozott is megadhatom: `date +%Y.%m.%d`"

echo "a DATE valtozo tartalmat -aminek a formatumat megadtuk-  atiranyithajuk fajlba is"
date > ${DATE}.txt
echo "${DATE}.txt"

#----------------------------------------
# Dátum darabolása, miutan beolvastuk az aktualis datumot (itt nem a konzolbol ovassuk be, hanem a programot iranyitjuk ra)
# a datum minden resze egy-egy valtozo lesz, melyeket ki is iratunk
#read Y m d H M <<<$(date "+%Y %m %d %H %M")
read Y m d H M <<< `date "+%Y %m %d %H %M"`
 
echo Az év: $Y
echo A hónap: $m
echo A nap: $d
echo Az óra: $H
echo A perc: $M