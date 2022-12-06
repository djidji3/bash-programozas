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

# signals
# exit parancs      EXIT          0 a program normal bfejezodesekor,vagy exit parancs kiadasakor
# KIEJELENTKEZES    SIGHUB        1 megszakadt a kapcsolat a terminallal
# CTRL+C            SIGINT        2 felhasznalo leallitotta a programot
# CTRL+\            SIGQUIT       3 kilepes a billentyuzetrol
# KILL              SIGKILL       9 azonnali, feltetel nelkuli leallas
# shutdown/kill     SIGTERM      15 futas befejezese
#                   DEBUG           nyomkovetes, minden parancs utan vegrehajtodik

# ha szukseges hogy egy program csak egy peldanyban futhasson
# ezt egy zarolastjelzo fajl  megletenek vizsgalataval tudjuk megoldani

# feladat : pelda zarolasa

PROGRAMNEV=$(basename $0)
if [ $# -ne 1 ]; then
    echo -e "Program hasznalat: \n$PROGRAMNEV <szerkesztendoFileNev>"
    exit 1
fi

# egy logfile nevet hasznalok
LOCKFILE="/tmp/pidlock"

# parameterkent kapom a szerkesztendo configfile-t
CONFIGFILE=$1

# ha az alabbi signalok erkeznek,akkor toroljuk a zarolo fajlt, majd leallitjuk a programot
trap 'rm $LOCKFILE; exit 2' 1 2 3 15

# ellenorizzuk hogy fut-e mar a program egy peldanya
if [ -f $LOCKFILE ]; then
    echo "Mar fut a program egy peldanya!"
    exit 1
else
    echo $$ >$LOCKFILE
fi

echo -n "uj szoveg: "
read sor
echo $sor >>$CONFIGFILE

# torlom a lockfile-t igy a program ujrafuttathato
rm $LOCKFILE

