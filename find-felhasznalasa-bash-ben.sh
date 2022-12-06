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

# feladat : megadott tartalom keresese,a megadott konyvtarban talalhato fajlok tartalmaban

PROGRAMNEV=$(basename $0) 
if [ $# -ne 2 ]; then
    echo -e "Program hasznalat: \n$PROGRAMNEV <konyvtarAmibenAKeresestVegezzuk> <tartalomAmireKeresunk>"
    exit 1
fi

KONYVTAR=$1
TARTALOM=$2

find $KONYVTAR -type f -exec grep $2 {} \;
