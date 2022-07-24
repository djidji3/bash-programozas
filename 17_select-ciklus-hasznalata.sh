#!/bin/bash
echo "SELECT hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "A script neve: $0 a parameterek szama: $#"

# select segitsegevel egy szamot megadva tudsz valasztani a listabol:
select i in "egy" "ketto" "harom" "kilepes"
do
    echo "Ezt valasztottad: ${i}"
    if [[ "$i" = "kilepes"  ]] ;
        then break
    fi
done