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

# feladat: szoveg bekerese es egy egyedi fajlba irasa

PROGRAMNEV=$(basename $0)
if [ $# -gt 1 ]; then
    echo "Hasznalat: $PROGRAMNEV <feldolgozandoFajlNeve>"
else
    echo "A beolvasas egy "." kezdodo ures sorig fog tartani"
    echo "Kezd el a begepelest!"

while read sor
do
    if echo $sor | grep ^[^\.] > /dev/null
        then    
            echo $sor >> /tmp/$$.tmp
        else
            exit 0
    fi
done 

fi



