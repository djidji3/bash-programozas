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

# feladat : megadott tartalom keresese,a megadott konyvtarban talalhato fajlok tartalmaban es a 
#           elofordulasi fajlok kiiratasa

PROGRAMNEV=$(basename $0) 
if [ $# -ne 2 ]; then
    echo -e "Program hasznalat: \n$PROGRAMNEV <konyvtarAmibenAKeresestVegezzuk> <keresendoMinta>"
    exit 1
fi

trap 'rm /tmp/$$lista' 1 2 3 15

# az adott konyvtar fajllistajat beleteszem ebbe a fajlba,hogy a masodik lepesben,ezekben keressek
find $1 -type f > /tmp/$$lista

# vegig megyek a listaban levo fajlokon es ha van talalat kiirom
while read sor ; do
    if grep "$2" $sor > /dev/null ; then
        echo "talalat:"
        echo $sor
    fi 
done < /tmp/$$lista
rm /tmp/$$lista

