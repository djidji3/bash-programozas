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

# a program legfeljebb 3 kapcsoloval indithato,illetve ezen kivul utolsokent a feldolgozando fajlnevet tartalmazza

# basename parancs az utanna megadott program nevet adja vissza,eleresi utvonal nelkul
PROGRAMNEV=`basename $0`

# programhasznalati infok kiiratasa, ha a parameterek szama nem megfelelo
if [ $# -eq 0 -o $# -gt 4 ]
then
    echo "Hasznalat:  $PROGRAMNEV [-a] [-b] [-c] <feldolgozandoFajlnev>"
    exit 1
fi

kapcsolokSzama=`expr $# - 1`
fajlnev=${!#}

# getops a parameterek kezelesere (fajlnevet kulon kell kezelni)
# leveszi a kapcsolok elol a - jelet
while getopts ":abc" KAPCSOLO
    do
        case $KAPCSOLO in
        "a") 
            echo "-a kapcsolo alkalmazva"
            a=1
            ;;
        "b") 
            echo "-b kapcsolo alkalmazva"
            b=1
            ;;
        "c") 
            echo "-c kapcsolo alkalmazva"
            c=1
            ;;
        "?") 
            echo "Hibas kapcsolot adott meg"
            exit 3
           ;;
        esac
    done

    # az utolso parameterkent megadott fajlnev kerul a valtozoba
    fajlnev=${!#}

    if [[ ! -f $fajlnev ]] > /dev/null
        then
            echo "A megadott fajl ($fajlnev) nem letezik!"
            exit 2
    elif [[ ! -r $fajlnev ]]  > /dev/null
        then
            echo "A megadott fajl ($fajlnev) letezik, de nem olvashato!"
            exit 2
    elif [[ -z $fajlnev ]] > /dev/null
        then
            echo "A megadott fajl ($fajlnev) nem tartalmaz feldolgozhato adatot!"
            exit 2
    else
        # itt tortenik a tenyleges program vegrehajtas
      cat $fajlnev | sed 's/2/X/g'
     
fi

















