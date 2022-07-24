# bash-programozas
linux bash programozas
# egyeb hasznos dokumentacio:
https://szit.hu/doku.php?id=oktatas:linux:shell_programozas#toemboek
# bash script megadasa:
#!/usr/bin/env bash
echo a szoveg idezojelek nelkul is megadhato $PWD
echo "valtozo igy is megadhato $PWD"
echo 'igy a valtozot nem helyettesiti be $PWD'
echo "valtozo igy is megadhato ${PWD}"
echo igy is indithato egy fajlt vegrehajtasra:bash scriptnev.sh.
echo ilyenkor az elso sornak nem kell tartalmaznia a szokasos \#!/bin/bash szoveget
------------------------------------------------
# {} hasznalata
# a kozos reszek utan {} kozott, megadahatom vesszovel elvalasztva a kulonbozo reszeket:
ls -lha /usr/bin/{[,test}
-----------------------------------------------
# source hasznalata:
#!/bin/bash
echo valami $USER
echo source script-neve
echo ekkor nem indit el a script vegrehajtasahoz a bash egy al scriptet,.
echo igy tudom hasznalni a mar beallitott valtozoimat
echo ha egy beallitott sajat valtozot akarok felhasznalhatova tenni egy script reszere
echo akkor hasznalom az 'export valtozonev' parancsot a shellben
echo ezt kovetoen a valtozo elerheto lesz a scriptjeimben is
------------------------------------------------
# parameterek felhasznalasa:
#!/bin/bash
echo "parameterek hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
--------------------------------------------------
# shift es parameterek hasznalata
#!/bin/bash
echo "shift es a parameterek hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "shift parancs segitsegevel tudom eggyel leptetni a parametereket"
echo "vagyis mindig a legelso parametert torli"
echo "igy egy-egy ujabb shift paranccsal be tuom jarni az osszes parametert "
shift
echo "ennyi paramater maradt: $@"
shift
echo "ennyi paramater maradt:$@"
shift
echo "ennyi paramater maradt:$@"
shift
echo "ennyi paramater maradt:$@"
------------------------------------------------
# shift parancs es parameterek hasznalata:
#!/bin/bash
echo "shift es a parameterek hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "shift parancs segitsegevel tudom eggyel leptetni a parametereket"
echo "vagyis mindig a legelso parametert torli"
echo "igy egy-egy ujabb shift paranccsal be tuom jarni az osszes parametert "
shift
echo "ennyi paramater maradt: $@"
shift
echo "ennyi paramater maradt:$@"
shift
echo "ennyi paramater maradt:$@"
shift
echo "ennyi paramater maradt:$@"
------------------------------------------------
# test hasznalata:
#!/bin/bash
echo "test hasznalata vagy [expression] hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

if [ 5 -gt 4 ];
echo "5 nagyobb mint 4"
else
echo "a feltetel nem igaz"
------------------------------------------------
# kornyezeti valtozok hasznalata:
#!/bin/bash
echo "kornyezeti valtozok hasznalata"
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

echo "illetve magaban a scriptben generalt valtozokat tudom hasznalni"
gyumolcs="alma"
echo " A gyumolcs valtozo tartalma: $gyumolcs"

echo "Ha nem egy subshellben akarom futtatni a scriptemet akkor igy kell futtatni: source scriptnev.sh"
echo "Masik lehetoseg hogy egy valtozot exportalok: export valtozonev"
echo "targy nevu valtozot deklaraltam a shellben, majd exportaltam, igy ebben a scriptben felhasznalhatom :"
echo "a targy valtozo tartalma: $targy"
------------------------------------------------
# EOF hasznalata fajlba irasra:
cat <<EOF > valami3.txt
elso sor
masodik sor
harmadik sor
EOF
------------------------------------------------
# EOF hasznalata valtozoba irasra:
PAYLOAD=$(cat <<EOF
elso sor
masodik sor
harmadik sor
EOF
)
------------------------------------------------
# valtozo torlese: 
unset valtozonev
------------------------------------------------
# for ciklus, felsorolva amin vegig akarok menni:
for day in hetfo kedd szerda; 
do 
	./6.sh $day; 
done
------------------------------------------------
# for ciklus, valtozoban megadva, amin vegig akarok menni :
DAYS="hetfo kedd szerda"
for day in $(eval echo ${DAYS}); do ./6.sh $day; done
-----------------------------------------------
# for ciklus, valtozoban megadva, amin vegig akarok menni maskepp:
DAYS="hetfo kedd szerda"
for day in ${DAYS}; do ./6.sh $day; done
------------------------------------------------
# while cikllus hasznalata:
#!/bin/bash
echo "shift, parameterek,while ciklus hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
echo "a megelozo utolso parancs kimeneti kodja: $?"
echo "shift hasznalata egy ciklusban"
echo "jelenleg a parameterek szama $#"
echo "while ciklus kovetkezik"
while [[ $# -gt 0 ]] ;
do
    echo "most ez az elso parameter: $1"
    test -e $1 || exit $?
    echo "a fenti test parancs magyarazata"
    echo " || jel = vagy "
    echo "A $? azt jelenti hogy az elozo parancs sikeres volt-e. 0 jelenti a sikerest"
    file $1
    shift
done
------------------------------------------------
# Tomb megadas shell-ben for ciklusban:
WEEK=([1]="hetfo" [2]="kedd" [3]="szerda")
for i in {1..3}; do echo "$WEEK[${i}] az aktualis valtozo"; done
------------------------------------------------
# Tomb megadas shell-ben for ciklusban egy scriptet felhasznalva:
for i in {1..3}; do ./12_CASE-hasznalata.sh ${WEEK[$i]}; done
------------------------------------------------
# kornyezeti valtozok, DATUM hasznalata:
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
------------------------------------------------
# IF, ELIF hasznalata
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
--------------------------------------------------
# CASE feltetel hasznalata:
#!/usr/bin/env bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "a DATE valtozot megadhatod az elso paramerkent, ha nem adod meg akkor itt beallitom"

case $1 in
    "")
		echo "Nem adtal meg napot"
    ;;

    "hetfo")
		echo "Hetfo a nap amit megadtal"
    ;;

    "kedd")
		echo "Kedd  a nap amit megadtal"
    ;;

    "szerda")
		echo "Szerda  a nap amit megadtaladtal"
    ;;

    "csutortok")
		echo "Csutortok a nap amit megadtal"
    ;;

    "pentek")
		echo "Péntek a nap amit megadtal"
    ;;

    "szombat")
		echo "Szombat a nap amit megadtal"
    ;;

    "vasarnap")
		echo "Vasarnap a nap amit megadtal"
    ;;

    *)
		echo "Na ez most mi: ${1} ??????"
exit 1
esac
---------------------------------------------
# WHILE ciklus hasznalata:
#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "A script neve: $0 a parameterek szama: $#"
while [[ $# -gt 0 ]] ;
do
    echo "Aktualis parameter ${1}"
    shift
done
----------------------------------------------
# UNTIL ciklus hasznalata:
#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "A script neve: $0 a parameterek szama: $#"
until [[ $# -lt 1 ]] ;
do
    echo "Aktualis parameter ${1}"
    shift
done

------------------------------------------------
# foggveny hasznalata:
#!/usr/bin/env bash

echo "a DATE valtozot megadhatod az elso paramerkent, ha nem adod meg akkor itt beallitom"
function(){
    case $1 in
    "")
<------>echo "Nem adtal meg napot"
    ;;

    "hetfo")
<------>echo "Hetfo a nap amit megadtal"
    ;;

    "kedd")
<------>echo "Kedd  a nap amit megadtal"
    ;;

    "szerda")
<------>echo "Szerda  a nap amit megadtaladtal"
    ;;

    "csutortok")
<------>echo "Csutortok a nap amit megadtal"
    ;;

    "pentek")
<------>echo "Péntek a nap amit megadtal"
    ;;

    "szombat")
<------>echo "Szombat a nap amit megadtal"
    ;;

    "vasarnap")
<------>echo "Vasarnap a nap amit megadtal"
    ;;

    *)
<------>echo "Na ez most mi: ${1} ??????"
<------>exit 1
    esac
}

WEEK=(\
    [1]="hetfo" \
    [2]="kedd" \
    [3]="szerda") \
    [3]="szerda") \
    [4]="csutortok") \
    [5]="pentek") \
    [6]="szombat") \
    [7]="vasarnap") \
)

for i in {1 7};
do
    echo -n "${WEEK[$i]}:"
    whatontoday ${WEEK[${i}]}
done
------------------------------------------------------




































