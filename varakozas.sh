#!/bin/bash
# "program neve:$0"
# "parameterek szama:$#"
# "1.parameter:$1"
# "2. parameter:$2"
# "utolso parameter szovege:${!#}"
# "utolso parameter szovege: eval "FAJLNEVE=$"$# "
# "osszes parameter kiiratasa:$@"
# "osszes parameter kiiratasa:$*"
# "a program neve:$0"
# "exit status of last command:$?"
# "process id of the shell program: $$"
# "utolso parameter: ${#}"
# eval "FAJLNEVE=$"$#

# feladat : pelda idozitett vegrahajtas, varakozas
# wait varakozik a programbol elinditott hatterfolyamatok befelezodesere
# sleep varakozasiIdoMp : sleep 4 m pl. 4mp-ig varakozik

PROGRAMNEV=$(basename $0)
if [ $# -ne 1 ]; then
    echo -e "Program hasznalat: \n$PROGRAMNEV <fileNev>"
    exit 1
fi

FAJLNEV=$1
i=0
while [ $i -lt 3 ] ; do
    echo -n $i
    if [ -f $FAJLNEV ]; then
        echo "A $FAJLNEV fajl letezik"
        exit 1
    else
        echo "A $FAJLNEV fajl nem letezik,varakozok a letrehozasara"
        touch $FAJLNEV
    fi
    i=`expr $i + 1`
    sleep 3
done
