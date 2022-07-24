#!/bin/bash
echo "beolvasas READ hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
echo
echo  "a kepernyon kiiratok vmit ami jelzi hogy bevitelre van szukseg,"
echo "majd a bevitt adatokat beolvasom egy valtozoba"
echo -n "Kérek egy szamot: "
read SZAM
echo "Ezt a szamot adtad meg: ${SZAM}"

echo "bekeres szoveg kiiras nelkul"
read -p "Felhasznalonev: " USER
echo "Felhasznalonev ${USER}"


# jelszo beolvasasa (nem irja ki es nem jelzi amit beirsz)
echo -n "Jelszo: "
read -s JELSZO
echo
echo "A beirt jelszo: ${JELSZO}"
echo 
# alapertelmezett szovegek megadasa a beolvasaskor:
read -e -i "joska" -p "Felhasznalonev:" USER2
echo "a megadott felhasznalonev: ${USER2}"