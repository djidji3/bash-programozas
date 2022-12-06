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

# irogep,ami a beirt szoveget egy fajlba irja,addig amig egy sor eleje . karaktert nem kap
PROGRAMNEV=`basename $0`

# if [ $1 -gt $2 ]; then
#     echo "$1 nagyobb mint $2"
# elif [ $2 -gt $1 ]; then
#     echo "$2 nagyobb mint $1"
# else
#     echo "$2 es $1 egyenlo"

# fi

OUTPUTFILE=""
# ha 1-nel tobb parancssori parametert adtunk meg,akkor kiirjuk a hasznalatot
if [ $# -gt 1 ] ; then 
    echo "Hasznalat: $PROGRAMNEV <kimenetiFajlNeve>"
    exit 1

# ha nem adtunk meg egyetlen parametert sem ,akkor bekerjuk a felhasznalotol a fajlnevet
elif [ $# -eq 0 ]; then
    # addig csinalja amig az outputfile tartalma ures-e
    while [ `echo -n $OUTPUTFILE | wc -w` -eq 0 ]
            do
                # bekerem a fajlnevet es kiiroam az outputfile valtozoba
                echo -n "A kimeneti fajl neve:"
                read OUTPUTFILE
            done
else # ha van parameter megadva, akkor az a kimeneti fajl neve 
    OUTPUTFILE=$1
fi

echo "ird be a fajl tartalmat!"
echo "A beolvasas egy "." kezdodo ures sorig fog tartani"
while read sor
do
    if echo $sor | grep ^[^\.] > /dev/null
        then    
            echo $sor >> $OUTPUTFILE
        else
            exit 0
    fi
done 
