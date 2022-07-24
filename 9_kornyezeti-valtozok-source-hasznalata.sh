#!/bin/bash
echo "kornyezeti valtozok hasznalata"

echo A script neve: $0 
echo 1. parameter: $1 
echo parameterek száma: $# 
echo az összes parameter: $@ 
echo az utolsó folyamat kilépési kódja: $? 
echo a script aktuális sora:  $LINENO 
echo hostname ahol fut a script: $HOSTNAME
echo a scriptet futtató felhasználó: $USER 	
echo a futtatás kezdete óta eltelt idő: $SECONDS
echo minden hivatkozáskor más véletlen számot ad: $RANDOM
echo "utolso parameter:${!#}"


echo "A kornyezeti valtozok abban a kornyezetben ertelmezhetoek ahol letre lettek hozva"
echo "Egy script mindig egy subshell-ben fog futni,igy csak a rendszer valtozokat tudjuk benne hasznalni"
echo $targy
echo $USER
echo $PWD
echo $PATH

echo "illetve magaban a scriptben generalt valtozokat tudom hasznalni"
gyumolcs="alma"
echo " A gyumolcs valtozo tartalma: $gyumolcs"

# source hasznalata
echo "Ha nem egy subshellben akarom futtatni a scriptemet akkor igy kell futtatni: source scriptnev.sh"
echo "Masik lehetoseg hogy egy valtozot exportalok: export valtozonev"
echo "targy nevu valtozot deklaraltam a shellben, majd exportaltam, igy ebben a scriptben felhasznalhatom :"
echo "a targy valtozo tartalma: $targy"

