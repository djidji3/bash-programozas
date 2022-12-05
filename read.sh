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

# feladat : adott betu elofordulasainak szamlalasa szabvanyos bemenetrol

# read hasznalata: read valtozonev
# ha a muvelet sikeres,akkor a visszateresi ertek 0
# ha adatvege jelet erzekel akkor a visszateresi ertek 1
# igy egy fajlt addig olvas amig van adat
PROGRAMNEV=`basename $0`
if [ $# -ne 1 ]
    then 
        echo "Hasznalat: $PROGRAMNEV <keresendoKarakter>"
        exit 1
    fi

osszesen=0
egy_sorban=0

while read sor
do
    egy_sorban=`echo $sor | awk -v FS="" -v keresendo=$1 \
    'BEGIN {darab=0}
    {for(i=1;i<=NF;i++) if($1==keresendo) darab++}
    END {print darab}'`
    osszesen=`expr $osszesen + $egy_sorban`
    # ha fajlbol okarok olvasni akkor a fajlt iranyitom a bemenetre
         # done < telefonszam.txt
done 
echo $osszesen
exit 0



















