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

# varakozas bill. lenyomasra
# -s silent mode-azaz nem jelenti meg a beirt karaktereket
# -n1 egy karaktert varunk
# -p promtutan a kiirando szoveget adhatjuk meg
read -s -n1 -p "Nyomj meg egy tetszoleges billentyut"
echo
exit 0



