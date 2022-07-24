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

