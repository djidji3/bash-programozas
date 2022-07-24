#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

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
