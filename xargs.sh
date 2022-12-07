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

# xargs:segitsegevel ugy tudunk meghivni egy linux programot, hogy a linux program parametereit (kapcsoloi,feldolgozando fajlnevek)
# a xargs bemenetere kuldjuk, pl. az echo es a | segitsegevel)
# PL.     linux_parancs_parameterei | xargs linux__parancs
# pl:                     echo -lha | xargs ls
# pl:    . -type f "keresettSzoveg" | xargs find
#                    find . -type f | xargs grep "$1"
#     
# mikor hasznas a hasznalata:
# pl. amikor olyan sok fajlon kell elvegezni egy muvelet, hogy azok nem fernek el egy szamukra fentartott tarteruleten
# ilyenko "Argument list too long" uzenetet kapunk es a muvelet nem hajtodik vegre
# Ha viszont az xargs segitsegevel csinaljuk,akkor biztos hogy vegrehajtodik a parancs
# de az xargs programnak pontosan megmondhatjuk hogy egyszerre 8 parametert adjon at a linuxprogramnak
# igy tuti biztos shell programot irhatunk

#feladat : regkurziv kereses fajltartalomra  a grep paranccsal, biztonsagos megoldassal
PROGRAMNEV=`basename $0`
if [ $# -ne 2 ]  
    then
        echo -e "Program hasznalat: \n$PROGRAMNEV < konyvtarAmibenKeresunk > < keresendo minta >"
        exit 1
fi
find $1 -type f | xargs grep -i "$2"







