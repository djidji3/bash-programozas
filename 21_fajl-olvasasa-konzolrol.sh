#!/bin/bash
echo "fajl olvasasa"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
while read SOR
do
    echo $SOR
done < gy.txt
#-----------------------
# Dátum darabolása, miutan beolvastuk az aktualis datumot (itt nem a konzolbol ovassuk be, hanem a programot iranyitjuk ra)
# a datum minden resze egy-egy valtozo lesz, melyeket ki is iratunk
#read Y m d H M <<<$(date "+%Y %m %d %H %M")
read Y m d H M <<< `date "+%Y %m %d %H %M"`
 
echo Az év: $Y
echo A hónap: $m
echo A nap: $d
echo Az óra: $H
echo A perc: $M