#!/bin/bash
echo "shift, parameterek,while ciklus hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
echo "a megelozo utolso parancs kimeneti kodja: $?"

echo "shift hasznalata egy ciklusban"

echo "jelenleg a parameterek szama $#"

echo "while ciklus kovetkezik"
while [[ $# -gt 0 ]] ;
do
    echo "most ez az elso parameter: $1"
    test -e $1 || exit $?
    echo "a fenti test parancs magyarazata"
    echo " || jel = vagy "
    echo "A $? azt jelenti hogy az elozo parancs sikeres volt-e. 0 jelenti a sikerest"
    file $1
    shift
done
