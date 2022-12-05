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
PROGRAMNEV=`basename $0`

echo "add meg a felhasznaloneved"
read USERNAME
if  grep -q $USERNAME /etc/passwd 
    then
        echo "A megadott usernev mar letezik"
        exit 1
fi
sudo useradd -m -N $
echo "A megadott $USERNAME felhasznalot letrehoztam"

read -p "Add meg hogy mely csoport tagsagot kered:"
sudo addgroup $REPLY $USERNAME 
echo "A $REPLY csoporthoz hozzaadtam a  $USERNAME felhasznalot"


read -p "Add meg milyen shell legyen beallitva a felhasznalonak:" USERSHELL
sudo chsh -s $USERSHELL $USERNAME 
echo "A $USERSHELL be lett allitva a $USERNAME felhasznalonak"
















