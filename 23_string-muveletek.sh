#!/bin/bash
# string hossz:
SZOVEG="Nagy Janika"
echo szoveg karaktereinek szama:${#SZOVEG} #11
echo $(printf "%s" "$SZOVEG" | wc -b) # megszamolja a byte-jait, ami 11

#---------------------------
# kisbetusre alakitas
echo ${SZOVEG,,}
echo "ÁRVÍZTŰRŐ" | awk '{print tolower($0)}'
# nagybetusre alakitas
echo ${SZOVEG^^}
echo "ÁRVÍZTŰRŐ" | awk '{print toupper($0)}'
echo árvíztűrő | iconv -f UTF-8 -t ASCII//TRANSLIT

#-----------------------------------
# tartalmaz-e

pingvalasz="bytes from 8.8.8.8: icmp_seq=2 ttl=119 time=11.3 ms"
if [[ ${pingvalasz} == *ttl=* ]]
then
    echo "jott valasz csomag"
else
    echo "NEM jott valasz csomag"
fi
echo $pingvalasz
#--------------------
#String bejárása karakterenként
a=géza
for((i=0;i<${#a};i++));
do
    echo $i
    # a valtozo i. elemetol 1elem
    echo "${a:$i:1}"
done

#-----------------------------
# String darabolasa megadott karakter menten
str="alma:körte:barack:szilva"
# elvalaszto legyen ez:
IFS=':' 
# beolasas tombbol a tomb nevu tombvaltozoba az str tombvaltozobol
read -ra tomb <<< ${str}
 
echo ${tomb[1]}
#--------------------------------
