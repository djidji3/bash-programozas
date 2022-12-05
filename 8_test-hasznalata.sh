#!/bin/bash
echo "test hasznalata [expression] hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "utolso parameter szovege: ${#}"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
echo "exit status of last command:$?"
echo "process id of the shell program: $$"
echo Egy feltétel vizsgálatára hogy az igaz-e, a test parancsot használjuk.
# fontosabb parameterei:
# -d konyvtar-e
# -e letezik-e
# -f fajl-e
# -r olvashato-e
# -w irhato-e
# -x vegrehajthato-e
# -z string 0 hosszusagu-e
# -n string nem 0 hosszusagu-e

# fontosabb operatorok:
# -eq egyenlo
# -ne nem egyenlo
# -lt litle then
# -gt gather then
# -ge gather egyenlo
# -l szoveg hossza
# \! a felkialtojel negalja a kifejezest
# && es
# -a es
# || vagy
# -o vagy






if [ 5 -gt 4 ];
echo "5 nagyobb mint 4"
else
echo "a feltetel nem igaz"